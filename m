Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C91D9834
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNqa31lE5FoigXy+2B4b4g3IO5dN8MTXSCvzgdf+tQ8=; b=NKxkXndSWMIQg4
	gL1SsEgaZluffAa6YZmw0FkF8jkltxzqSLBGP6wRJo7yHqdhbytpMnz4qDvs5cWg5+k6Bm1/I7+lu
	8+epUh8SAERD2Y0sHJaHcjGOiE1By20PLoybJWeizNFa8NrIPhpifQy8Wamm1Kfni5H+A0ppN9xFp
	mmJLrG7U7ziN0nwh8KKCN8t8uqlh7YFLUcze1GFg9rkojp3u1dEKq/kb/y5/GGOUQnHSAtTf7ZPXE
	lTJyOmBkbdYRGRU9M/MPDWkbPwB2/CpWolnV7voXRhwpwYExvRh38Oa/a318hmwPwVuCGqLpXTjYb
	gvjmSd4QGTizOOM04NbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Ys-0003pC-Aq; Tue, 19 May 2020 13:45:38 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Yq-0003nF-Ec; Tue, 19 May 2020 13:45:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 14/20] maccess: move user access routines together
Date: Tue, 19 May 2020 15:44:43 +0200
Message-Id: <20200519134449.1466624-15-hch@lst.de>
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

Move kernel access vs user access routines together to ease upcoming
ifdefs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 110 +++++++++++++++++++++++++--------------------------
 1 file changed, 55 insertions(+), 55 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 05c44d490b4e3..9773e2253b495 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -47,34 +47,6 @@ long probe_kernel_read(void *dst, const void *src, size_t size)
 }
 EXPORT_SYMBOL_GPL(probe_kernel_read);
 
-/**
- * probe_user_read(): safely attempt to read from a user-space location
- * @dst: pointer to the buffer that shall take the data
- * @src: address to read from. This must be a user address.
- * @size: size of the data chunk
- *
- * Safely read from user address @src to the buffer at @dst. If a kernel fault
- * happens, handle that and return -EFAULT.
- */
-long probe_user_read(void *dst, const void __user *src, size_t size)
-{
-	long ret = -EFAULT;
-	mm_segment_t old_fs = get_fs();
-
-	set_fs(USER_DS);
-	if (access_ok(src, size)) {
-		pagefault_disable();
-		ret = __copy_from_user_inatomic(dst, src, size);
-		pagefault_enable();
-	}
-	set_fs(old_fs);
-
-	if (ret)
-		return -EFAULT;
-	return 0;
-}
-EXPORT_SYMBOL_GPL(probe_user_read);
-
 /**
  * probe_kernel_write(): safely attempt to write to a location
  * @dst: address to write to
@@ -100,33 +72,6 @@ long probe_kernel_write(void *dst, const void *src, size_t size)
 	return 0;
 }
 
-/**
- * probe_user_write(): safely attempt to write to a user-space location
- * @dst: address to write to
- * @src: pointer to the data that shall be written
- * @size: size of the data chunk
- *
- * Safely write to address @dst from the buffer at @src.  If a kernel fault
- * happens, handle that and return -EFAULT.
- */
-long probe_user_write(void __user *dst, const void *src, size_t size)
-{
-	long ret = -EFAULT;
-	mm_segment_t old_fs = get_fs();
-
-	set_fs(USER_DS);
-	if (access_ok(dst, size)) {
-		pagefault_disable();
-		ret = __copy_to_user_inatomic(dst, src, size);
-		pagefault_enable();
-	}
-	set_fs(old_fs);
-
-	if (ret)
-		return -EFAULT;
-	return 0;
-}
-
 /**
  * strncpy_from_kernel_nofault: - Copy a NUL terminated string from unsafe
  *				 address.
@@ -170,6 +115,61 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 	return ret ? -EFAULT : src - unsafe_addr;
 }
 
+/**
+ * probe_user_read(): safely attempt to read from a user-space location
+ * @dst: pointer to the buffer that shall take the data
+ * @src: address to read from. This must be a user address.
+ * @size: size of the data chunk
+ *
+ * Safely read from user address @src to the buffer at @dst. If a kernel fault
+ * happens, handle that and return -EFAULT.
+ */
+long probe_user_read(void *dst, const void __user *src, size_t size)
+{
+	long ret = -EFAULT;
+	mm_segment_t old_fs = get_fs();
+
+	set_fs(USER_DS);
+	if (access_ok(src, size)) {
+		pagefault_disable();
+		ret = __copy_from_user_inatomic(dst, src, size);
+		pagefault_enable();
+	}
+	set_fs(old_fs);
+
+	if (ret)
+		return -EFAULT;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(probe_user_read);
+
+/**
+ * probe_user_write(): safely attempt to write to a user-space location
+ * @dst: address to write to
+ * @src: pointer to the data that shall be written
+ * @size: size of the data chunk
+ *
+ * Safely write to address @dst from the buffer at @src.  If a kernel fault
+ * happens, handle that and return -EFAULT.
+ */
+long probe_user_write(void __user *dst, const void *src, size_t size)
+{
+	long ret = -EFAULT;
+	mm_segment_t old_fs = get_fs();
+
+	set_fs(USER_DS);
+	if (access_ok(dst, size)) {
+		pagefault_disable();
+		ret = __copy_to_user_inatomic(dst, src, size);
+		pagefault_enable();
+	}
+	set_fs(old_fs);
+
+	if (ret)
+		return -EFAULT;
+	return 0;
+}
+
 /**
  * strncpy_from_user_nofault: - Copy a NUL terminated string from unsafe user
  *				address.
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
