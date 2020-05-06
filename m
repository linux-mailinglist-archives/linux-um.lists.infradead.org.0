Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E491C688D
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 08:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0pG8vu0YKGjIou3zjmzkM942MFtt5a2wSAwUAu0Vgg=; b=kxC4Kh5mG9rn/D
	ZYv6mkDiHN2CG8CvQ4XPXlzFA1BIbvrBvwAhFwqqgf4I2Rm+PR8EdLZCeNr05JgGEDlkI65sQuxVp
	LK8m99vK57ZfJ+A4NNUcqLv1KfydQOw3h682z2J4c1Dd31zNuLV/8i1Ly+pC+hteURkMT/IYbsLIs
	qxFa01xA09YNJnUXeNChnccf4nJltogwyVJ8MWFhAy0Wl5lWqWYc8v2UoY4Fg4PbsIM9S6TTogARn
	O2t+g2ORyVDB9VZI+ae20x5TPuSUO/YPQM2SAJfpa02X06hPJXuQw9p2mLcEHHt+7iRwjvoHTeBrY
	KWs6j6i7b+chKQLe3qvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDS9-0006eH-8X; Wed, 06 May 2020 06:22:45 +0000
Received: from [2001:4bb8:191:66b6:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDS7-0006c4-L4; Wed, 06 May 2020 06:22:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 06/15] maccess: rename strncpy_from_unsafe_user to
 strncpy_from_user_unsafe
Date: Wed,  6 May 2020 08:22:14 +0200
Message-Id: <20200506062223.30032-7-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200506062223.30032-1-hch@lst.de>
References: <20200506062223.30032-1-hch@lst.de>
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

This matches the convention of always having _unsafe as a suffix, as
well as match the naming of strncpy_from_user.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/uaccess.h     | 2 +-
 kernel/trace/bpf_trace.c    | 2 +-
 kernel/trace/trace_kprobe.c | 2 +-
 mm/maccess.c                | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 5a36a298a85f8..74db16fac2a04 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -313,7 +313,7 @@ extern long strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
 extern long strncpy_from_unsafe_strict(char *dst, const void *unsafe_addr,
 				       long count);
 extern long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
-extern long strncpy_from_unsafe_user(char *dst, const void __user *unsafe_addr,
+extern long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
 				     long count);
 extern long strnlen_unsafe_user(const void __user *unsafe_addr, long count);
 
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index ca1796747a773..d3989384e515d 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -159,7 +159,7 @@ static const struct bpf_func_proto bpf_probe_read_user_proto = {
 BPF_CALL_3(bpf_probe_read_user_str, void *, dst, u32, size,
 	   const void __user *, unsafe_ptr)
 {
-	int ret = strncpy_from_unsafe_user(dst, unsafe_ptr, size);
+	int ret = strncpy_from_user_unsafe(dst, unsafe_ptr, size);
 
 	if (unlikely(ret < 0))
 		memset(dst, 0, size);
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index d0568af4a0ef6..67ed9655afc51 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1262,7 +1262,7 @@ fetch_store_string_user(unsigned long addr, void *dest, void *base)
 
 	__dest = get_loc_data(dest, base);
 
-	ret = strncpy_from_unsafe_user(__dest, uaddr, maxlen);
+	ret = strncpy_from_user_unsafe(__dest, uaddr, maxlen);
 	if (ret >= 0)
 		*(u32 *)dest = make_data_loc(ret, __dest - base);
 
diff --git a/mm/maccess.c b/mm/maccess.c
index 65880ba2ca376..76f9d4dd51300 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -215,7 +215,7 @@ long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
 }
 
 /**
- * strncpy_from_unsafe_user: - Copy a NUL terminated string from unsafe user
+ * strncpy_from_user_unsafe: - Copy a NUL terminated string from unsafe user
  *				address.
  * @dst:   Destination address, in kernel space.  This buffer must be at
  *         least @count bytes long.
@@ -232,7 +232,7 @@ long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
  * If @count is smaller than the length of the string, copies @count-1 bytes,
  * sets the last byte of @dst buffer to NUL and returns @count.
  */
-long strncpy_from_unsafe_user(char *dst, const void __user *unsafe_addr,
+long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
 			      long count)
 {
 	mm_segment_t old_fs = get_fs();
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
