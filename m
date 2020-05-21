Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C416A1DD139
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0rsE18quAWj53qTd3zSIqqb++TscEJXiVh/rKw55O8=; b=HJI0NhyhFmgOxG
	txRn6WYpR7Ky9XtLL4tCY6DdruHq1WWUh+fY6suxN9K1fKSf5JV0/a5QolWsaCF50PcdfnC8Giap6
	iHZ67tM+ep4pgR666sPjaoDWuwxaMF6+xi+biXcqtbJvpPACwgVSsHX/xUvGR4H2J+EDy4P9AaA6B
	AGngNYrPqMcj8ZNJJZOpTVdvvuZkMUKiV6eBCwelubClI6hRZ64ykmJTK1f2IdOjDpGeo8ZrzROKd
	sft0rlmzqhUbDPtabe4b15HlBPmxJkIumrCm6E0RjDJ1rFKjYVdoxE3g7BvaX6ty4fxieDNeBvsjL
	Q5avX1PkqD8/UO+ZDITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn34-0004c1-4q; Thu, 21 May 2020 15:23:54 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn31-0004a8-Lr; Thu, 21 May 2020 15:23:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 16/23] maccess: always use strict semantics for
 probe_kernel_read
Date: Thu, 21 May 2020 17:22:54 +0200
Message-Id: <20200521152301.2587579-17-hch@lst.de>
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

Except for historical confusion in the kprobes/uprobes and bpf tracers,
which has been fixed now, there is no good reason to ever allow user
memory accesses from probe_kernel_read.  Switch probe_kernel_read to only
read from kernel memory.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/parisc/lib/memcpy.c    |  2 +-
 arch/um/kernel/maccess.c    |  2 +-
 arch/x86/mm/maccess.c       |  9 ++-------
 include/linux/uaccess.h     |  4 +---
 kernel/trace/bpf_trace.c    |  2 +-
 kernel/trace/trace_kprobe.c |  4 ++--
 mm/maccess.c                | 40 ++++++-------------------------------
 7 files changed, 14 insertions(+), 49 deletions(-)

diff --git a/arch/parisc/lib/memcpy.c b/arch/parisc/lib/memcpy.c
index 5b75c35d1da0d..94a9fe2702c2f 100644
--- a/arch/parisc/lib/memcpy.c
+++ b/arch/parisc/lib/memcpy.c
@@ -57,7 +57,7 @@ void * memcpy(void * dst,const void *src, size_t count)
 EXPORT_SYMBOL(raw_copy_in_user);
 EXPORT_SYMBOL(memcpy);
 
-bool probe_kernel_read_allowed(const void *unsafe_src, size_t size, bool strict)
+bool probe_kernel_read_allowed(const void *unsafe_src, size_t size)
 {
 	if ((unsigned long)unsafe_src < PAGE_SIZE)
 		return false;
diff --git a/arch/um/kernel/maccess.c b/arch/um/kernel/maccess.c
index ad2c538ce497c..e929c0966696c 100644
--- a/arch/um/kernel/maccess.c
+++ b/arch/um/kernel/maccess.c
@@ -7,7 +7,7 @@
 #include <linux/kernel.h>
 #include <os.h>
 
-bool probe_kernel_read_allowed(const void *src, size_t size, bool strict)
+bool probe_kernel_read_allowed(const void *src, size_t size)
 {
 	void *psrc = (void *)rounddown((unsigned long)src, PAGE_SIZE);
 
diff --git a/arch/x86/mm/maccess.c b/arch/x86/mm/maccess.c
index a96a56ff16109..a5ed03ac9b10f 100644
--- a/arch/x86/mm/maccess.c
+++ b/arch/x86/mm/maccess.c
@@ -9,13 +9,10 @@ static __always_inline u64 canonical_address(u64 vaddr, u8 vaddr_bits)
 	return ((s64)vaddr << (64 - vaddr_bits)) >> (64 - vaddr_bits);
 }
 
-bool probe_kernel_read_allowed(const void *unsafe_src, size_t size, bool strict)
+bool probe_kernel_read_allowed(const void *unsafe_src, size_t size)
 {
 	unsigned long vaddr = (unsigned long)unsafe_src;
 
-	if (!strict)
-		return true;
-
 	/*
 	 * Range covering the highest possible canonical userspace address
 	 * as well as non-canonical address range. For the canonical range
@@ -25,10 +22,8 @@ bool probe_kernel_read_allowed(const void *unsafe_src, size_t size, bool strict)
 	       canonical_address(vaddr, boot_cpu_data.x86_virt_bits) == vaddr;
 }
 #else
-bool probe_kernel_read_allowed(const void *unsafe_src, size_t size, bool strict)
+bool probe_kernel_read_allowed(const void *unsafe_src, size_t size)
 {
-	if (!strict)
-		return true;
 	return (unsigned long)vaddr >= TASK_SIZE_MAX;
 }
 #endif
diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index d7d98ff345b3d..58e9f3dc1cf13 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -301,11 +301,9 @@ copy_struct_from_user(void *dst, size_t ksize, const void __user *src,
 	return 0;
 }
 
-bool probe_kernel_read_allowed(const void *unsafe_src, size_t size,
-		bool strict);
+bool probe_kernel_read_allowed(const void *unsafe_src, size_t size);
 
 extern long probe_kernel_read(void *dst, const void *src, size_t size);
-extern long probe_kernel_read_strict(void *dst, const void *src, size_t size);
 extern long probe_user_read(void *dst, const void __user *src, size_t size);
 
 extern long notrace probe_kernel_write(void *dst, const void *src, size_t size);
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index 43566cd2a8180..d9781c894c38b 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -196,7 +196,7 @@ bpf_probe_read_kernel_common(void *dst, u32 size, const void *unsafe_ptr)
 
 	if (unlikely(ret < 0))
 		goto fail;
-	ret = probe_kernel_read_strict(dst, unsafe_ptr, size);
+	ret = probe_kernel_read(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
 		goto fail;
 	return ret;
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index 4aeaef53ba970..b1f21d558e454 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1222,7 +1222,7 @@ fetch_store_strlen(unsigned long addr)
 #endif
 
 	do {
-		ret = probe_kernel_read_strict(&c, (u8 *)addr + len, 1);
+		ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
 		len++;
 	} while (c && ret == 0 && len < MAX_STRING_SIZE);
 
@@ -1300,7 +1300,7 @@ probe_mem_read(void *dest, void *src, size_t size)
 	if ((unsigned long)src < TASK_SIZE)
 		return probe_mem_read_user(dest, src, size);
 #endif
-	return probe_kernel_read_strict(dest, src, size);
+	return probe_kernel_read(dest, src, size);
 }
 
 /* Note that we don't verify it, since the code does not come from user space */
diff --git a/mm/maccess.c b/mm/maccess.c
index df82fde34307f..81a85c1e71165 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -6,36 +6,13 @@
 #include <linux/mm.h>
 #include <linux/uaccess.h>
 
-static long __probe_kernel_read(void *dst, const void *src, size_t size,
-		bool strict);
-
-bool __weak probe_kernel_read_allowed(const void *unsafe_src, size_t size,
-		bool strict)
+bool __weak probe_kernel_read_allowed(const void *unsafe_src, size_t size)
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
@@ -48,18 +25,12 @@ EXPORT_SYMBOL_GPL(probe_kernel_read);
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
 
-	if (!probe_kernel_read_allowed(src, size, strict))
+	if (!probe_kernel_read_allowed(src, size))
 		return -EFAULT;
 
 	set_fs(KERNEL_DS);
@@ -73,6 +44,7 @@ static long __probe_kernel_read(void *dst, const void *src, size_t size,
 		return -EFAULT;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(probe_kernel_read);
 
 /**
  * probe_user_read(): safely attempt to read from a user-space location
@@ -180,7 +152,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 
 	if (unlikely(count <= 0))
 		return 0;
-	if (!probe_kernel_read_allowed(unsafe_addr, count, true))
+	if (!probe_kernel_read_allowed(unsafe_addr, count))
 		return -EFAULT;
 
 	set_fs(KERNEL_DS);
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
