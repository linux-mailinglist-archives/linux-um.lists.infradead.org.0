Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D842C1DD135
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRWbuGrArEAaoZhXpOJtPl6f7x9GHKtTV7XDqWzN2Cw=; b=Q8K7b/G+ubm2hz
	fcLmeMUaEzsGltgnD+CdxZgW9W+ncJCY/frX+54LyDcAMDLPdIPcvtRX20DGbb/aXtByH1CLU0zXa
	LYEluEVP6/K6FWzp44aTVbSMB7f7TV6jRaiI7BZNfDWmcTwPnLfcIipzqtxVZ9kvXV8+TBnLv4Mj7
	Xn1thxG34I0msQfCnoAinlowNcfjPEUjVuMtcuuBqMDoj+KSP6wFFt6kKEpvF81vj7x3qr3inD30V
	s7wyWnw6wBhICy190ywisbfxvhtHxyX1BIIcQ16It/UfZ0Puq0n4v/yGzUWFzJScnvQnEbHwaP80I
	sp54cKKijSoNKiXglQQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2r-0004V5-74; Thu, 21 May 2020 15:23:41 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2p-0004TG-H2; Thu, 21 May 2020 15:23:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 12/23] bpf: handle the compat string in bpf_trace_copy_string
 better
Date: Thu, 21 May 2020 17:22:50 +0200
Message-Id: <20200521152301.2587579-13-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521152301.2587579-1-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
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

User the proper helper for kernel or userspace addresses based on
TASK_SIZE instead of the dangerous strncpy_from_unsafe function.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/trace/bpf_trace.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index 9d4080590f711..737d739230a6b 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -331,8 +331,11 @@ static void bpf_trace_copy_string(char *buf, void *unsafe_ptr, char fmt_ptype,
 	switch (fmt_ptype) {
 	case 's':
 #ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
-		strncpy_from_unsafe(buf, unsafe_ptr, bufsz);
-		break;
+		if ((unsigned long)unsafe_ptr < TASK_SIZE) {
+			strncpy_from_user_nofault(buf, user_ptr, bufsz);
+			break;
+		}
+		fallthrough;
 #endif
 	case 'k':
 		strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
