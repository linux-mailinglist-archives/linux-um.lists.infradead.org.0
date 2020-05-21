Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297A11DD136
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YUJJSqtfTx4AzzNMwct4NlWDh3WSI+LKwhQ5tD9MnU=; b=idLvrTlGIDtCPD
	ppBNtPX6tDrCPOBXNfBc4ftJazMk/iMwmiXUdU89Y4YAjtBqTvfzPvTqizp7qA/CZwF8d+/dAVmlR
	YhrhxVZtr6gFksJ8F2UFO6SEzVgVglO97uxqwm4l2IKwhaLi6hjq5t59Z8+EAYmQZBbdC4LarW5lk
	aJi2fvfCLt04NPMDcJBvDC/0WlgHcMNftWgi9+OmF4QQJNDqN4oRG1AaIMeZF5JBvYfj9yg2INCQP
	OVwaUMU3TCn65/Cicr2e5VcAy1MtEbxge5uzettSQONNYGop7HSnfMb2HNSs8GcIVfEo2tg8ErbZg
	+m5VhcpyR79RfMdfzfMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2u-0004Wl-EB; Thu, 21 May 2020 15:23:44 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2s-0004Uz-Fg; Thu, 21 May 2020 15:23:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 13/23] bpf: rework the compat kernel probe handling
Date: Thu, 21 May 2020 17:22:51 +0200
Message-Id: <20200521152301.2587579-14-hch@lst.de>
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
helpers, rework the compat probes to check if an address is a kernel or
userspace one, and then use the low-level kernel or user probe helper
shared by the proper kernel and user probe helpers.  This slightly
changes behavior as the compat probe on a user address doesn't check
the lockdown flags, just as the pure user probes do.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/trace/bpf_trace.c | 109 ++++++++++++++++++++++++---------------
 1 file changed, 67 insertions(+), 42 deletions(-)

diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index 737d739230a6b..43566cd2a8180 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -136,17 +136,23 @@ static const struct bpf_func_proto bpf_override_return_proto = {
 };
 #endif
 
-BPF_CALL_3(bpf_probe_read_user, void *, dst, u32, size,
-	   const void __user *, unsafe_ptr)
+static __always_inline int
+bpf_probe_read_user_common(void *dst, u32 size, const void __user *unsafe_ptr)
 {
-	int ret = probe_user_read(dst, unsafe_ptr, size);
+	int ret;
 
+	ret = probe_user_read(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
 		memset(dst, 0, size);
-
 	return ret;
 }
 
+BPF_CALL_3(bpf_probe_read_user, void *, dst, u32, size,
+	   const void __user *, unsafe_ptr)
+{
+	return bpf_probe_read_user_common(dst, size, unsafe_ptr);
+}
+
 static const struct bpf_func_proto bpf_probe_read_user_proto = {
 	.func		= bpf_probe_read_user,
 	.gpl_only	= true,
@@ -156,17 +162,24 @@ static const struct bpf_func_proto bpf_probe_read_user_proto = {
 	.arg3_type	= ARG_ANYTHING,
 };
 
-BPF_CALL_3(bpf_probe_read_user_str, void *, dst, u32, size,
-	   const void __user *, unsafe_ptr)
+static __always_inline int
+bpf_probe_read_user_str_common(void *dst, u32 size,
+			       const void __user *unsafe_ptr)
 {
-	int ret = strncpy_from_user_nofault(dst, unsafe_ptr, size);
+	int ret;
 
+	ret = strncpy_from_user_nofault(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
 		memset(dst, 0, size);
-
 	return ret;
 }
 
+BPF_CALL_3(bpf_probe_read_user_str, void *, dst, u32, size,
+	   const void __user *, unsafe_ptr)
+{
+	return bpf_probe_read_user_str_common(dst, size, unsafe_ptr);
+}
+
 static const struct bpf_func_proto bpf_probe_read_user_str_proto = {
 	.func		= bpf_probe_read_user_str,
 	.gpl_only	= true,
@@ -177,25 +190,25 @@ static const struct bpf_func_proto bpf_probe_read_user_str_proto = {
 };
 
 static __always_inline int
-bpf_probe_read_kernel_common(void *dst, u32 size, const void *unsafe_ptr,
-			     const bool compat)
+bpf_probe_read_kernel_common(void *dst, u32 size, const void *unsafe_ptr)
 {
 	int ret = security_locked_down(LOCKDOWN_BPF_READ);
 
 	if (unlikely(ret < 0))
-		goto out;
-	ret = compat ? probe_kernel_read(dst, unsafe_ptr, size) :
-	      probe_kernel_read_strict(dst, unsafe_ptr, size);
+		goto fail;
+	ret = probe_kernel_read_strict(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
-out:
-		memset(dst, 0, size);
+		goto fail;
+	return ret;
+fail:
+	memset(dst, 0, size);
 	return ret;
 }
 
 BPF_CALL_3(bpf_probe_read_kernel, void *, dst, u32, size,
 	   const void *, unsafe_ptr)
 {
-	return bpf_probe_read_kernel_common(dst, size, unsafe_ptr, false);
+	return bpf_probe_read_kernel_common(dst, size, unsafe_ptr);
 }
 
 static const struct bpf_func_proto bpf_probe_read_kernel_proto = {
@@ -207,50 +220,37 @@ static const struct bpf_func_proto bpf_probe_read_kernel_proto = {
 	.arg3_type	= ARG_ANYTHING,
 };
 
-BPF_CALL_3(bpf_probe_read_compat, void *, dst, u32, size,
-	   const void *, unsafe_ptr)
-{
-	return bpf_probe_read_kernel_common(dst, size, unsafe_ptr, true);
-}
-
-static const struct bpf_func_proto bpf_probe_read_compat_proto = {
-	.func		= bpf_probe_read_compat,
-	.gpl_only	= true,
-	.ret_type	= RET_INTEGER,
-	.arg1_type	= ARG_PTR_TO_UNINIT_MEM,
-	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
-	.arg3_type	= ARG_ANYTHING,
-};
-
 static __always_inline int
-bpf_probe_read_kernel_str_common(void *dst, u32 size, const void *unsafe_ptr,
-				 const bool compat)
+bpf_probe_read_kernel_str_common(void *dst, u32 size, const void *unsafe_ptr)
 {
 	int ret = security_locked_down(LOCKDOWN_BPF_READ);
 
 	if (unlikely(ret < 0))
-		goto out;
+		goto fail;
+
 	/*
-	 * The strncpy_from_unsafe_*() call will likely not fill the entire
-	 * buffer, but that's okay in this circumstance as we're probing
+	 * The strncpy_from_kernel_nofault() call will likely not fill the
+	 * entire buffer, but that's okay in this circumstance as we're probing
 	 * arbitrary memory anyway similar to bpf_probe_read_*() and might
 	 * as well probe the stack. Thus, memory is explicitly cleared
 	 * only in error case, so that improper users ignoring return
 	 * code altogether don't copy garbage; otherwise length of string
 	 * is returned that can be used for bpf_perf_event_output() et al.
 	 */
-	ret = compat ? strncpy_from_unsafe(dst, unsafe_ptr, size) :
-	      strncpy_from_kernel_nofault(dst, unsafe_ptr, size);
+	ret = strncpy_from_kernel_nofault(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
-out:
-		memset(dst, 0, size);
+		goto fail;
+
+	return 0;
+fail:
+	memset(dst, 0, size);
 	return ret;
 }
 
 BPF_CALL_3(bpf_probe_read_kernel_str, void *, dst, u32, size,
 	   const void *, unsafe_ptr)
 {
-	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr, false);
+	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr);
 }
 
 static const struct bpf_func_proto bpf_probe_read_kernel_str_proto = {
@@ -262,10 +262,34 @@ static const struct bpf_func_proto bpf_probe_read_kernel_str_proto = {
 	.arg3_type	= ARG_ANYTHING,
 };
 
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+BPF_CALL_3(bpf_probe_read_compat, void *, dst, u32, size,
+	   const void *, unsafe_ptr)
+{
+	if ((unsigned long)unsafe_ptr < TASK_SIZE) {
+		return bpf_probe_read_user_common(dst, size,
+				(__force void __user *)unsafe_ptr);
+	}
+	return bpf_probe_read_kernel_common(dst, size, unsafe_ptr);
+}
+
+static const struct bpf_func_proto bpf_probe_read_compat_proto = {
+	.func		= bpf_probe_read_compat,
+	.gpl_only	= true,
+	.ret_type	= RET_INTEGER,
+	.arg1_type	= ARG_PTR_TO_UNINIT_MEM,
+	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
+	.arg3_type	= ARG_ANYTHING,
+};
+
 BPF_CALL_3(bpf_probe_read_compat_str, void *, dst, u32, size,
 	   const void *, unsafe_ptr)
 {
-	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr, true);
+	if ((unsigned long)unsafe_ptr < TASK_SIZE) {
+		return bpf_probe_read_user_str_common(dst, size,
+				(__force void __user *)unsafe_ptr);
+	}
+	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr);
 }
 
 static const struct bpf_func_proto bpf_probe_read_compat_str_proto = {
@@ -276,6 +300,7 @@ static const struct bpf_func_proto bpf_probe_read_compat_str_proto = {
 	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
 	.arg3_type	= ARG_ANYTHING,
 };
+#endif /* CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE */
 
 BPF_CALL_3(bpf_probe_write_user, void __user *, unsafe_ptr, const void *, src,
 	   u32, size)
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
