Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7011DD132
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jwli+wYFkNqC+25LjqLk77/9F1/5N4usPHR+Gt7vT2s=; b=Xo6LJDMCIzH3R+
	vHKXuEybcB+wh8Ex+U6zIctFgKydDVyty2KCJp7uMpLAoyW4S/HuqmQam7VrezMpuiFti+rE/u9vh
	i3NtI3bK44OTr4wg5lEO31B01gMW44vuMztVwfFI76v1T8wO66RWH5QwgK80JwXLia+/KUbFNcEf5
	cfDOM9dz6lMb8mvmUAPGlSgkfYvgWaORoZmUX+Z0hZiCqqn8RtZsG2FZZJ0iKpDnbEK00LbPqdSfP
	TueeCW7X7VLziOHL7Zl4C/KGWu1zMdlxu+RIfPWb1duF5JCwctbEoR/4DpUwTWLKJgCXcj62G86Cg
	+K0rBP1/xpQG8glfo7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2j-0004PZ-Ev; Thu, 21 May 2020 15:23:33 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2h-0004NA-0e; Thu, 21 May 2020 15:23:31 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 09/23] maccess: remove probe_read_common and probe_write_common
Date: Thu, 21 May 2020 17:22:47 +0200
Message-Id: <20200521152301.2587579-10-hch@lst.de>
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

Each of the helpers has just two callers, which also different in
dealing with kernel or userspace pointers.  Just open code the logic
in the callers.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 63 ++++++++++++++++++++++++----------------------------
 1 file changed, 29 insertions(+), 34 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index e783ebfccd542..31cf6604e7fff 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -6,30 +6,6 @@
 #include <linux/mm.h>
 #include <linux/uaccess.h>
 
-static __always_inline long
-probe_read_common(void *dst, const void __user *src, size_t size)
-{
-	long ret;
-
-	pagefault_disable();
-	ret = __copy_from_user_inatomic(dst, src, size);
-	pagefault_enable();
-
-	return ret ? -EFAULT : 0;
-}
-
-static __always_inline long
-probe_write_common(void __user *dst, const void *src, size_t size)
-{
-	long ret;
-
-	pagefault_disable();
-	ret = __copy_to_user_inatomic(dst, src, size);
-	pagefault_enable();
-
-	return ret ? -EFAULT : 0;
-}
-
 /**
  * probe_kernel_read(): safely attempt to read from any location
  * @dst: pointer to the buffer that shall take the data
@@ -69,10 +45,15 @@ long __probe_kernel_read(void *dst, const void *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	set_fs(KERNEL_DS);
-	ret = probe_read_common(dst, (__force const void __user *)src, size);
+	pagefault_disable();
+	ret = __copy_from_user_inatomic(dst, (__force const void __user *)src,
+			size);
+	pagefault_enable();
 	set_fs(old_fs);
 
-	return ret;
+	if (ret)
+		return -EFAULT;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(probe_kernel_read);
 
@@ -91,11 +72,16 @@ long probe_user_read(void *dst, const void __user *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	set_fs(USER_DS);
-	if (access_ok(src, size))
-		ret = probe_read_common(dst, src, size);
+	if (access_ok(src, size)) {
+		pagefault_disable();
+		ret = __copy_from_user_inatomic(dst, src, size);
+		pagefault_enable();
+	}
 	set_fs(old_fs);
 
-	return ret;
+	if (ret)
+		return -EFAULT;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(probe_user_read);
 
@@ -114,10 +100,14 @@ long probe_kernel_write(void *dst, const void *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	set_fs(KERNEL_DS);
-	ret = probe_write_common((__force void __user *)dst, src, size);
+	pagefault_disable();
+	ret = __copy_to_user_inatomic((__force void __user *)dst, src, size);
+	pagefault_enable();
 	set_fs(old_fs);
 
-	return ret;
+	if (ret)
+		return -EFAULT;
+	return 0;
 }
 
 /**
@@ -135,11 +125,16 @@ long probe_user_write(void __user *dst, const void *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	set_fs(USER_DS);
-	if (access_ok(dst, size))
-		ret = probe_write_common(dst, src, size);
+	if (access_ok(dst, size)) {
+		pagefault_disable();
+		ret = __copy_to_user_inatomic(dst, src, size);
+		pagefault_enable();
+	}
 	set_fs(old_fs);
 
-	return ret;
+	if (ret)
+		return -EFAULT;
+	return 0;
 }
 
 /**
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
