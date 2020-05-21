Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EC61DD137
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeY/SYA5Foo61KIHR01/pzv/Zw577g5LR9hVnJzjxjI=; b=OL8dPxYdaGgF1D
	MfqpPFUmxzYssQkFWCjbveuBrQFWNdAWuOELzrnn1k11EQQBa5CWN44mXhYeBaTRQ5KgwpZFL7gMk
	7+/z2+iszEJVHZm5b6DQSZC20PChQI7/0qVda/4xvt93hcGsUFJFGpS3P6ks551TNGCR4PDmuvSmw
	M525Zxh2tVEUhXm1CYz6hXORZEoMEdTJvyOYeM6mpeHc2kCLhwg/Q05iNSk1H6NgkMaWWIJKB1yFd
	5qO9JEusEkAD3qiPBg7/iHAuEGvhjrlnIuglPPeh4T3pEaoLapey39ujxWgvHLvODO9A/cMIrD3x/
	i9axqsbqfdLQQnWKa+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2x-0004YU-Jt; Thu, 21 May 2020 15:23:47 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2v-0004WX-EX; Thu, 21 May 2020 15:23:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 14/23] tracing/kprobes: handle mixed kernel/userspace probes
 better
Date: Thu, 21 May 2020 17:22:52 +0200
Message-Id: <20200521152301.2587579-15-hch@lst.de>
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

Instead of using the dangerous probe_kernel_read and strncpy_from_unsafe
helpers, rework probes to try a user probe based on the address if the
architecture has a common address space for kernel and userspace.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/trace/trace_kprobe.c | 72 ++++++++++++++++++++++---------------
 1 file changed, 43 insertions(+), 29 deletions(-)

diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index 4325f9e7fadaa..4aeaef53ba970 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1200,6 +1200,15 @@ static const struct file_operations kprobe_profile_ops = {
 
 /* Kprobe specific fetch functions */
 
+/* Return the length of string -- including null terminal byte */
+static nokprobe_inline int
+fetch_store_strlen_user(unsigned long addr)
+{
+	const void __user *uaddr =  (__force const void __user *)addr;
+
+	return strnlen_user_nofault(uaddr, MAX_STRING_SIZE);
+}
+
 /* Return the length of string -- including null terminal byte */
 static nokprobe_inline int
 fetch_store_strlen(unsigned long addr)
@@ -1207,30 +1216,27 @@ fetch_store_strlen(unsigned long addr)
 	int ret, len = 0;
 	u8 c;
 
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+	if (addr < TASK_SIZE)
+		return fetch_store_strlen_user(addr);
+#endif
+
 	do {
-		ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
+		ret = probe_kernel_read_strict(&c, (u8 *)addr + len, 1);
 		len++;
 	} while (c && ret == 0 && len < MAX_STRING_SIZE);
 
 	return (ret < 0) ? ret : len;
 }
 
-/* Return the length of string -- including null terminal byte */
-static nokprobe_inline int
-fetch_store_strlen_user(unsigned long addr)
-{
-	const void __user *uaddr =  (__force const void __user *)addr;
-
-	return strnlen_user_nofault(uaddr, MAX_STRING_SIZE);
-}
-
 /*
- * Fetch a null-terminated string. Caller MUST set *(u32 *)buf with max
- * length and relative data location.
+ * Fetch a null-terminated string from user. Caller MUST set *(u32 *)buf
+ * with max length and relative data location.
  */
 static nokprobe_inline int
-fetch_store_string(unsigned long addr, void *dest, void *base)
+fetch_store_string_user(unsigned long addr, void *dest, void *base)
 {
+	const void __user *uaddr =  (__force const void __user *)addr;
 	int maxlen = get_loc_len(*(u32 *)dest);
 	void *__dest;
 	long ret;
@@ -1240,11 +1246,7 @@ fetch_store_string(unsigned long addr, void *dest, void *base)
 
 	__dest = get_loc_data(dest, base);
 
-	/*
-	 * Try to get string again, since the string can be changed while
-	 * probing.
-	 */
-	ret = strncpy_from_unsafe(__dest, (void *)addr, maxlen);
+	ret = strncpy_from_user_nofault(__dest, uaddr, maxlen);
 	if (ret >= 0)
 		*(u32 *)dest = make_data_loc(ret, __dest - base);
 
@@ -1252,35 +1254,37 @@ fetch_store_string(unsigned long addr, void *dest, void *base)
 }
 
 /*
- * Fetch a null-terminated string from user. Caller MUST set *(u32 *)buf
- * with max length and relative data location.
+ * Fetch a null-terminated string. Caller MUST set *(u32 *)buf with max
+ * length and relative data location.
  */
 static nokprobe_inline int
-fetch_store_string_user(unsigned long addr, void *dest, void *base)
+fetch_store_string(unsigned long addr, void *dest, void *base)
 {
-	const void __user *uaddr =  (__force const void __user *)addr;
 	int maxlen = get_loc_len(*(u32 *)dest);
 	void *__dest;
 	long ret;
 
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+	if ((unsigned long)addr < TASK_SIZE)
+		return fetch_store_string_user(addr, dest, base);
+#endif
+
 	if (unlikely(!maxlen))
 		return -ENOMEM;
 
 	__dest = get_loc_data(dest, base);
 
-	ret = strncpy_from_user_nofault(__dest, uaddr, maxlen);
+	/*
+	 * Try to get string again, since the string can be changed while
+	 * probing.
+	 */
+	ret = strncpy_from_user_nofault(__dest, (void *)addr, maxlen);
 	if (ret >= 0)
 		*(u32 *)dest = make_data_loc(ret, __dest - base);
 
 	return ret;
 }
 
-static nokprobe_inline int
-probe_mem_read(void *dest, void *src, size_t size)
-{
-	return probe_kernel_read(dest, src, size);
-}
-
 static nokprobe_inline int
 probe_mem_read_user(void *dest, void *src, size_t size)
 {
@@ -1289,6 +1293,16 @@ probe_mem_read_user(void *dest, void *src, size_t size)
 	return probe_user_read(dest, uaddr, size);
 }
 
+static nokprobe_inline int
+probe_mem_read(void *dest, void *src, size_t size)
+{
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+	if ((unsigned long)src < TASK_SIZE)
+		return probe_mem_read_user(dest, src, size);
+#endif
+	return probe_kernel_read_strict(dest, src, size);
+}
+
 /* Note that we don't verify it, since the code does not come from user space */
 static int
 process_fetch_insn(struct fetch_insn *code, struct pt_regs *regs, void *dest,
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
