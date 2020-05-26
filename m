Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1B71C689D
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 08:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=783QNIEK/70lU+RfxxIR09xwvme8Z6SNzhBcmDdG4LE=; b=SUW3YlBwRqKtnI
	nAVBbkODCGATDabPOL53+N2N6kjEQTlAn69w7jawFq/xNapcD0SCIElZmf2BOz3iWod0mN2Amyr0O
	eFDCis3KtR+qdckmV4U2de+3EG9n1/CVb1on9XH2nIiWKqWMgr+eXrDewVtowEsYeAm9gO5VZYFhE
	r65v9LggK+5RGgeHkInKAH4ulZKPlfhGOVubIbArjf3CNGj0orcHzQnh0nm4B0lA1rmzCOxQHUU0Q
	RAvMJXQ0H9tJfxgmAu2BMb7kHlsC6IUIHd9t4+BBcdemqJzWUf9sE+oLsn6wkXSe+W5esaYIDKBqv
	XzKUc5ldZyyOFnrplEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDSR-0006ou-BE; Wed, 06 May 2020 06:23:03 +0000
Received: from [2001:4bb8:191:66b6:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDSP-0006n7-Lf; Wed, 06 May 2020 06:23:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 12/15] maccess: always use strict semantics for
 probe_kernel_read
Date: Wed,  6 May 2020 08:22:20 +0200
Message-Id: <20200506062223.30032-13-hch@lst.de>
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

Except for historical confusion in the kprobes/uprobes and bpf tracers
there is no good reason to ever allow user memory accesses from
probe_kernel_read.  Make the tracers fall back to a probe_user_read
if the probe_kernel_read falls to keep the core API clean.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/parisc/lib/memcpy.c    |  3 +--
 arch/um/kernel/maccess.c    |  3 +--
 arch/x86/mm/maccess.c       |  5 +----
 include/linux/uaccess.h     |  4 +---
 kernel/trace/bpf_trace.c    | 20 +++++++++++++------
 kernel/trace/trace_kprobe.c | 11 ++++++++++-
 mm/maccess.c                | 39 ++++++-------------------------------
 7 files changed, 34 insertions(+), 51 deletions(-)

diff --git a/arch/parisc/lib/memcpy.c b/arch/parisc/lib/memcpy.c
index 5ef648bd33119..9fe662b3b5604 100644
--- a/arch/parisc/lib/memcpy.c
+++ b/arch/parisc/lib/memcpy.c
@@ -57,8 +57,7 @@ void * memcpy(void * dst,const void *src, size_t count)
 EXPORT_SYMBOL(raw_copy_in_user);
 EXPORT_SYMBOL(memcpy);
 
-bool probe_kernel_read_allowed(void *dst, const void *unsafe_src, size_t size,
-		bool strict)
+bool probe_kernel_read_allowed(void *dst, const void *unsafe_src, size_t size)
 {
 	if ((unsigned long)unsafe_src < PAGE_SIZE)
 		return false;
diff --git a/arch/um/kernel/maccess.c b/arch/um/kernel/maccess.c
index 90a1bec923158..734f3d7e57c0f 100644
--- a/arch/um/kernel/maccess.c
+++ b/arch/um/kernel/maccess.c
@@ -7,8 +7,7 @@
 #include <linux/kernel.h>
 #include <os.h>
 
-bool probe_kernel_read_allowed(void *dst, const void *src, size_t size,
-		bool strict)
+bool probe_kernel_read_allowed(void *dst, const void *src, size_t size)
 {
 	void *psrc = (void *)rounddown((unsigned long)src, PAGE_SIZE);
 
diff --git a/arch/x86/mm/maccess.c b/arch/x86/mm/maccess.c
index 5c323ab187b27..a1bd81677aa72 100644
--- a/arch/x86/mm/maccess.c
+++ b/arch/x86/mm/maccess.c
@@ -26,10 +26,7 @@ static __always_inline bool invalid_probe_range(u64 vaddr)
 }
 #endif
 
-bool probe_kernel_read_allowed(void *dst, const void *unsafe_src, size_t size,
-		bool strict)
+bool probe_kernel_read_allowed(void *dst, const void *unsafe_src, size_t size)
 {
-	if (!strict)
-		return true;
 	return !invalid_probe_range((unsigned long)unsafe_src);
 }
diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 09d6e358883cc..99e2c2a41164a 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -301,11 +301,9 @@ copy_struct_from_user(void *dst, size_t ksize, const void __user *src,
 	return 0;
 }
 
-bool probe_kernel_read_allowed(void *dst, const void *unsafe_src,
-		size_t size, bool strict);
+bool probe_kernel_read_allowed(void *dst, const void *unsafe_src, size_t size);
 
 extern long probe_kernel_read(void *dst, const void *src, size_t size);
-extern long probe_kernel_read_strict(void *dst, const void *src, size_t size);
 extern long probe_user_read(void *dst, const void __user *src, size_t size);
 
 extern long notrace probe_kernel_write(void *dst, const void *src, size_t size);
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index ffe841433caa1..f694befe8ec9b 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -183,12 +183,20 @@ bpf_probe_read_kernel_common(void *dst, u32 size, const void *unsafe_ptr,
 	int ret = security_locked_down(LOCKDOWN_BPF_READ);
 
 	if (unlikely(ret < 0))
-		goto out;
-	ret = compat ? probe_kernel_read(dst, unsafe_ptr, size) :
-	      probe_kernel_read_strict(dst, unsafe_ptr, size);
-	if (unlikely(ret < 0))
-out:
-		memset(dst, 0, size);
+		goto fail;
+
+	ret = probe_kernel_read(dst, unsafe_ptr, size);
+	if (unlikely(ret < 0)) {
+		if (compat)
+			ret = probe_user_read(dst,
+				(__force const void __user *)unsafe_ptr, size);
+		if (unlikely(ret < 0))
+			goto fail;
+	}
+
+	return 0;
+fail:
+	memset(dst, 0, size);
 	return ret;
 }
 
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index 525d12137325c..1300c9fd5c755 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1203,6 +1203,9 @@ fetch_store_strlen(unsigned long addr)
 
 	do {
 		ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
+		if (ret)
+			ret = probe_user_read(&c,
+				(__force u8 __user *)addr + len, 1);
 		len++;
 	} while (c && ret == 0 && len < MAX_STRING_SIZE);
 
@@ -1275,7 +1278,13 @@ fetch_store_string_user(unsigned long addr, void *dest, void *base)
 static nokprobe_inline int
 probe_mem_read(void *dest, void *src, size_t size)
 {
-	return probe_kernel_read(dest, src, size);
+	int ret;
+
+	ret = probe_kernel_read(dest, src, size);
+	if (ret)
+		ret = probe_user_read(dest, (__force const void __user *)src,
+				size);
+	return ret;
 }
 
 static nokprobe_inline int
diff --git a/mm/maccess.c b/mm/maccess.c
index cbd9d668aa46e..811f49e8de113 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -6,36 +6,14 @@
 #include <linux/mm.h>
 #include <linux/uaccess.h>
 
-static long __probe_kernel_read(void *dst, const void *src, size_t size,
-		bool strict);
-
 bool __weak probe_kernel_read_allowed(void *dst, const void *unsafe_src,
-		size_t size, bool strict)
+		size_t size)
 {
 	return true;
 }
 
 /**
- * probe_kernel_read(): safely attempt to read from any location
- * @dst: pointer to the buffer that shall take the data
- * @src: address to read from
- * @size: size of the data chunk
- *
- * Same as probe_kernel_read_strict() except that for architectures with
- * not fully separated user and kernel address spaces this function also works
- * for user address tanges.
- *
- * DO NOT USE THIS FUNCTION - it is broken on architectures with entirely
- * separate kernel and user address spaces, and also a bad idea otherwise.
- */
-long probe_kernel_read(void *dst, const void *src, size_t size)
-{
-	return __probe_kernel_read(dst, src, size, false);
-}
-EXPORT_SYMBOL_GPL(probe_kernel_read);
-
-/**
- * probe_kernel_read_strict(): safely attempt to read from kernel-space
+ * probe_kernel_read(): safely attempt to read from kernel-space
  * @dst: pointer to the buffer that shall take the data
  * @src: address to read from
  * @size: size of the data chunk
@@ -48,18 +26,12 @@ EXPORT_SYMBOL_GPL(probe_kernel_read);
  * probe_kernel_read() suitable for use within regions where the caller
  * already holds mmap_sem, or other locks which nest inside mmap_sem.
  */
-long probe_kernel_read_strict(void *dst, const void *src, size_t size)
-{
-	return __probe_kernel_read(dst, src, size, true);
-}
-
-static long __probe_kernel_read(void *dst, const void *src, size_t size,
-		bool strict)
+long probe_kernel_read(void *dst, const void *src, size_t size)
 {
 	long ret;
 	mm_segment_t old_fs = get_fs();
 
-	if (!probe_kernel_read_allowed(dst, src, size, strict))
+	if (!probe_kernel_read_allowed(dst, src, size))
 		return -EFAULT;
 
 	set_fs(KERNEL_DS);
@@ -73,6 +45,7 @@ static long __probe_kernel_read(void *dst, const void *src, size_t size,
 		return -EFAULT;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(probe_kernel_read);
 
 /**
  * probe_user_read(): safely attempt to read from a user-space location
@@ -180,7 +153,7 @@ long strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr, long count)
 
 	if (unlikely(count <= 0))
 		return 0;
-	if (!probe_kernel_read_allowed(dst, unsafe_addr, count, true))
+	if (!probe_kernel_read_allowed(dst, unsafe_addr, count))
 		return -EFAULT;
 
 	set_fs(KERNEL_DS);
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
