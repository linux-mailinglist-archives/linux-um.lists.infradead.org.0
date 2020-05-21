Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5F81DD13A
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpqMtRaauLBsb5NE/lDyvTCFSeoe/UuXYOlxIyasNkE=; b=f47+lV03etv9Y2
	4VZ4RcwzwrqngEB5JH5NmOoUTp6b8VeyEKen/+EBfEloLYbsDkpHSUkSWq2l6LsFvFNoi9LK8VKdN
	RrzLJspCetqFDpj9gvwOLj4gpVoS+mBsugSeIsCd2/Y/EKdg/wYOn5/fIhPkOubVoXy/8djhBamPm
	syh9N8ucqkno4kuic7tODZ18DAtcwjf/VWcNvd1Dfsnv3F0cWoAsBfeibWqkvXnAljLHB3yWsyC62
	MgjKF8aRNjbtALrb3Z3Ky4OvdWm8VVWgeM1vyRwxi3Ebv48iYFtH5T+LDbGfpukHbu0VBvesbjLyY
	9rvgjhdBwbhhQK9KW7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn36-0004dr-AK; Thu, 21 May 2020 15:23:56 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn34-0004bq-Cs; Thu, 21 May 2020 15:23:55 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 17/23] maccess: move user access routines together
Date: Thu, 21 May 2020 17:22:55 +0200
Message-Id: <20200521152301.2587579-18-hch@lst.de>
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

Move kernel access vs user access routines together to ease upcoming
ifdefs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 110 +++++++++++++++++++++++++--------------------------
 1 file changed, 55 insertions(+), 55 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 81a85c1e71165..ffde1ae86ec51 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -46,34 +46,6 @@ long probe_kernel_read(void *dst, const void *src, size_t size)
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
@@ -99,33 +71,6 @@ long probe_kernel_write(void *dst, const void *src, size_t size)
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
@@ -169,6 +114,61 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
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
