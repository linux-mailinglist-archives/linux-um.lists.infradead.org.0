Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041D31C6892
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 08:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfOJow1I9XN505utwPcteQmnduZy//cIu2YFcgdXcV0=; b=nPPbOucAYl2KLN
	ct1G8ndApm/o1KgGa+ovXp9/wzJ1POlmV7Au9okRacjDpIX16watpM0kBoI4CW+KxRd7OjhMRNFO4
	aD7O+DYEF6GJMmk8KGeQ0SDZThnTjP9TZ5Qlt0J4vcdf7v0zBQy7/fBjW9ehv6TJSEFfytUedlUtT
	Jfi1q6Yl5hKDKXm96CkXPMb4EI4BqLrad7zMYeuBSxqmqGZDxP+yF/fTPCrq9DkOJR1Cj40qF9+cl
	WSehl0WMHJJKLyaAyAztoAKi/q3ipPfiikfqhqnyKv4BMiX24Zv99nS/7zEcRhuO4NyKxpBZohZfn
	LH474qSTPb9yK94fltMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDSC-0006gS-Dg; Wed, 06 May 2020 06:22:48 +0000
Received: from [2001:4bb8:191:66b6:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDSA-0006e7-KB; Wed, 06 May 2020 06:22:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 07/15] maccess: rename strncpy_from_unsafe_strict to
 strncpy_from_kernel_unsafe
Date: Wed,  6 May 2020 08:22:15 +0200
Message-Id: <20200506062223.30032-8-hch@lst.de>
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
well as match the naming of strncpy_from_user_unsafe.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/x86/mm/maccess.c    | 2 +-
 include/linux/uaccess.h  | 2 +-
 kernel/trace/bpf_trace.c | 2 +-
 mm/maccess.c             | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/mm/maccess.c b/arch/x86/mm/maccess.c
index f5b85bdc0535c..6290e9894fb55 100644
--- a/arch/x86/mm/maccess.c
+++ b/arch/x86/mm/maccess.c
@@ -34,7 +34,7 @@ long probe_kernel_read_strict(void *dst, const void *src, size_t size)
 	return __probe_kernel_read(dst, src, size);
 }
 
-long strncpy_from_unsafe_strict(char *dst, const void *unsafe_addr, long count)
+long strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr, long count)
 {
 	if (unlikely(invalid_probe_range((unsigned long)unsafe_addr)))
 		return -EFAULT;
diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 74db16fac2a04..221d703480b6e 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -310,7 +310,7 @@ extern long notrace probe_kernel_write(void *dst, const void *src, size_t size);
 extern long notrace probe_user_write(void __user *dst, const void *src, size_t size);
 
 extern long strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
-extern long strncpy_from_unsafe_strict(char *dst, const void *unsafe_addr,
+extern long strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr,
 				       long count);
 extern long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
 extern long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index d3989384e515d..e4e202f433903 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -240,7 +240,7 @@ bpf_probe_read_kernel_str_common(void *dst, u32 size, const void *unsafe_ptr,
 	 * is returned that can be used for bpf_perf_event_output() et al.
 	 */
 	ret = compat ? strncpy_from_unsafe(dst, unsafe_ptr, size) :
-	      strncpy_from_unsafe_strict(dst, unsafe_ptr, size);
+	      strncpy_from_kernel_unsafe(dst, unsafe_ptr, size);
 	if (unlikely(ret < 0))
 out:
 		memset(dst, 0, size);
diff --git a/mm/maccess.c b/mm/maccess.c
index 76f9d4dd51300..683b70518a896 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -159,7 +159,7 @@ long probe_user_write(void __user *dst, const void *src, size_t size)
  * If @count is smaller than the length of the string, copies @count-1 bytes,
  * sets the last byte of @dst buffer to NUL and returns @count.
  *
- * Same as strncpy_from_unsafe_strict() except that for architectures with
+ * Same as strncpy_from_kernel_unsafe() except that for architectures with
  * not fully separated user and kernel address spaces this function also works
  * for user address tanges.
  *
@@ -170,7 +170,7 @@ long __weak strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
     __attribute__((alias("__strncpy_from_unsafe")));
 
 /**
- * strncpy_from_unsafe_strict: - Copy a NUL terminated string from unsafe
+ * strncpy_from_kernel_unsafe: - Copy a NUL terminated string from unsafe
  *				 address.
  * @dst:   Destination address, in kernel space.  This buffer must be at
  *         least @count bytes long.
@@ -187,7 +187,7 @@ long __weak strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
  * If @count is smaller than the length of the string, copies @count-1 bytes,
  * sets the last byte of @dst buffer to NUL and returns @count.
  */
-long __weak strncpy_from_unsafe_strict(char *dst, const void *unsafe_addr,
+long __weak strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr,
 				       long count)
     __attribute__((alias("__strncpy_from_unsafe")));
 
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
