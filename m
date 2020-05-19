Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FEE1D9827
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMBsugJkCdqXl7GE68+AmUfx47DGFdZogyaMVFgqp/M=; b=FeiaLE4M92gu/V
	Q5oKFwpmY+whbCpIEa9GqT1R1EapWQ1Kq8zummbAQcAg1NKtenttpdEXHW7ECKT84nR+aUZO/Ru+o
	mjhv7ocTzNqTxprx7HUYpokxjzYloyTaNUQfL2GENRL21QFZWYshe7k4mhqgWYwiI3gRLjYYuPajq
	nXRsajd6ay6nk8m6CYlG/vzPnqmL2s4Mh+gzdY5hfMQ5bgKN5hD2CnNQF/LbxY6KVNKi4iTZgUp3p
	dkoSQ63+RsG6w9GilPVRw4nf67m3JIF9q5GnMddgbOBmLdycnKpXPI59IJr8MgPW3fS4jdYH2CLOC
	q1fjmwfC2QFY/EHDUQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Yj-0003k9-1p; Tue, 19 May 2020 13:45:29 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Yg-0003iN-Qa; Tue, 19 May 2020 13:45:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 11/20] bpf: factor out a bpf_trace_copy_string helper
Date: Tue, 19 May 2020 15:44:40 +0200
Message-Id: <20200519134449.1466624-12-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519134449.1466624-1-hch@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Split out a helper to do the fault free access to the string pointer
to get it out of a crazy indentation level.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/trace/bpf_trace.c | 42 +++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index f5231ffea85b9..9d4080590f711 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -321,6 +321,28 @@ static const struct bpf_func_proto *bpf_get_probe_write_proto(void)
 	return &bpf_probe_write_user_proto;
 }
 
+static void bpf_trace_copy_string(char *buf, void *unsafe_ptr, char fmt_ptype,
+		size_t bufsz)
+{
+	void __user *user_ptr = (__force void __user *)unsafe_ptr;
+
+	buf[0] = 0;
+
+	switch (fmt_ptype) {
+	case 's':
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+		strncpy_from_unsafe(buf, unsafe_ptr, bufsz);
+		break;
+#endif
+	case 'k':
+		strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);
+		break;
+	case 'u':
+		strncpy_from_user_nofault(buf, user_ptr, bufsz);
+		break;
+	}
+}
+
 /*
  * Only limited trace_printk() conversion specifiers allowed:
  * %d %i %u %x %ld %li %lu %lx %lld %lli %llu %llx %p %pks %pus %s
@@ -403,24 +425,8 @@ BPF_CALL_5(bpf_trace_printk, char *, fmt, u32, fmt_size, u64, arg1,
 				break;
 			}
 
-			buf[0] = 0;
-			switch (fmt_ptype) {
-			case 's':
-#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
-				strncpy_from_unsafe(buf, unsafe_ptr,
-						    sizeof(buf));
-				break;
-#endif
-			case 'k':
-				strncpy_from_kernel_nofault(buf, unsafe_ptr,
-							   sizeof(buf));
-				break;
-			case 'u':
-				strncpy_from_user_nofault(buf,
-					(__force void __user *)unsafe_ptr,
-							 sizeof(buf));
-				break;
-			}
+			bpf_trace_copy_string(buf, unsafe_ptr, fmt_ptype,
+					sizeof(buf));
 			goto fmt_next;
 		}
 
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
