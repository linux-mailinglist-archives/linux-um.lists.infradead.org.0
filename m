Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4EC1DD140
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNtg27FoSKTtpxOYN5ZcUTkWc9HUz8AtEuzq5JWVMRc=; b=ValAHUoZZTNd7B
	QVLmpFWbwUPYOPkjuvTz0GUC/gEkum6/TzqAtHxURoXZtJn25KBCIHWcT1hDVktDquKCCSd2W9RTG
	+f5DExgoUcPpU4LZhecneIiS3M9p0DQMyH2FErU8a9l+Zn0rOSfkEj5yspc6lUYSTEMu4kBVuoxfU
	fSqOxohrIVpcTTphfaLgwqTI2/nJllNvkL6M+mE9XEtQ4bWh3gQ7bU2sRQjsGAdLQ3Ss3RVJyuMGI
	vS0ao/0kj+YX+ATmTcEaU4DYSWbalqkzjjcCeEEYRBYlCx1vphUmAJyl2r0SinDq9RqNTyo40wbEC
	tmrtnFr6FnzRuWzP2c3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn3N-00052w-77; Thu, 21 May 2020 15:24:13 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn3K-0004wA-Sz; Thu, 21 May 2020 15:24:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 23/23] maccess: return -ERANGE when
 copy_from_kernel_nofault_allowed fails
Date: Thu, 21 May 2020 17:23:01 +0200
Message-Id: <20200521152301.2587579-24-hch@lst.de>
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

Allow the callers to distinguish a real unmapped address vs a range
that can't be probed.

Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 mm/maccess.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 349b6cb14426c..d317f8b8095ca 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -25,7 +25,7 @@ bool __weak copy_from_kernel_nofault_allowed(const void *unsafe_src,
 long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
 {
 	if (!copy_from_kernel_nofault_allowed(src, size))
-		return -EFAULT;
+		return -ERANGE;
 
 	pagefault_disable();
 	copy_from_kernel_nofault_loop(dst, src, size, u64, Efault);
@@ -69,7 +69,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 	if (unlikely(count <= 0))
 		return 0;
 	if (!copy_from_kernel_nofault_allowed(unsafe_addr, count))
-		return -EFAULT;
+		return -ERANGE;
 
 	pagefault_disable();
 	do {
@@ -94,7 +94,8 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
  * @size: size of the data chunk
  *
  * Safely read from kernel address @src to the buffer at @dst.  If a kernel
- * fault happens, handle that and return -EFAULT.
+ * fault happens, handle that and return -EFAULT.  If @src is not a valid kernel
+ * address, return -ERANGE.
  *
  * We ensure that the copy_from_user is executed in atomic context so that
  * do_page_fault() doesn't attempt to take mmap_sem.  This makes
@@ -107,7 +108,7 @@ long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	if (!copy_from_kernel_nofault_allowed(src, size))
-		return -EFAULT;
+		return -ERANGE;
 
 	set_fs(KERNEL_DS);
 	pagefault_disable();
@@ -159,8 +160,9 @@ long copy_to_kernel_nofault(void *dst, const void *src, size_t size)
  *
  * On success, returns the length of the string INCLUDING the trailing NUL.
  *
- * If access fails, returns -EFAULT (some data may have been copied
- * and the trailing NUL added).
+ * If access fails, returns -EFAULT (some data may have been copied and the
+ * trailing NUL added).  If @unsafe_addr is not a valid kernel address, return
+ * -ERANGE.
  *
  * If @count is smaller than the length of the string, copies @count-1 bytes,
  * sets the last byte of @dst buffer to NUL and returns @count.
@@ -174,7 +176,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 	if (unlikely(count <= 0))
 		return 0;
 	if (!copy_from_kernel_nofault_allowed(unsafe_addr, count))
-		return -EFAULT;
+		return -ERANGE;
 
 	set_fs(KERNEL_DS);
 	pagefault_disable();
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
