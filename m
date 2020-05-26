Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69E91D9822
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13gq6eL7BWxi7BDDdEo6jtACNSRt2nePkGRCzuYMYdU=; b=vChSO/9mffThNp
	jbQI5sTSmpm8h/zBRw666vzrGW8Z0pySWs4wTrHpyLUs4V/HgcElo8yLTzEjA8vlJyXCPedn6GCy9
	o6FJGRKNiXnt0KqkvaEqPw2pwAT2JZl1FkgZVzon7r0IGEhnwV05R7skNMg2O7vR+Wk5sjdY4NqU1
	kp9/1l7esn9g3I7NuiQjhg6qUG5VH9R9WhvwQRAc28EXIqt8zBWf7NYgaa0xRHgesPPiSDfKrHvtC
	sEDD0Zc3RcYcYusCMuit8c46ZYO7ovYscrK9JLx1qV+cLKjEGkEfU5pRbOqLX5ajI7L7RFeTMM1v+
	rOokg9vF1AXGcSII5xuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2YT-0003T5-SI; Tue, 19 May 2020 13:45:13 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2YR-0002c6-4O; Tue, 19 May 2020 13:45:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 06/20] maccess: rename strncpy_from_unsafe_user to
 strncpy_from_user_nofault
Date: Tue, 19 May 2020 15:44:35 +0200
Message-Id: <20200519134449.1466624-7-hch@lst.de>
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

This matches the naming of strncpy_from_user, and also makes it more
clear what the function is supposed to do.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/uaccess.h     | 4 ++--
 kernel/trace/bpf_trace.c    | 4 ++--
 kernel/trace/trace_kprobe.c | 2 +-
 mm/maccess.c                | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 5a36a298a85f8..b983cb1c1216a 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -313,8 +313,8 @@ extern long strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
 extern long strncpy_from_unsafe_strict(char *dst, const void *unsafe_addr,
 				       long count);
 extern long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
-extern long strncpy_from_unsafe_user(char *dst, const void __user *unsafe_addr,
-				     long count);
+long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
+		long count);
 extern long strnlen_unsafe_user(const void __user *unsafe_addr, long count);
 
 /**
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index a010edc37ee02..4e20bf1d95832 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -159,7 +159,7 @@ static const struct bpf_func_proto bpf_probe_read_user_proto = {
 BPF_CALL_3(bpf_probe_read_user_str, void *, dst, u32, size,
 	   const void __user *, unsafe_ptr)
 {
-	int ret = strncpy_from_unsafe_user(dst, unsafe_ptr, size);
+	int ret = strncpy_from_user_nofault(dst, unsafe_ptr, size);
 
 	if (unlikely(ret < 0))
 		memset(dst, 0, size);
@@ -416,7 +416,7 @@ BPF_CALL_5(bpf_trace_printk, char *, fmt, u32, fmt_size, u64, arg1,
 							   sizeof(buf));
 				break;
 			case 'u':
-				strncpy_from_unsafe_user(buf,
+				strncpy_from_user_nofault(buf,
 					(__force void __user *)unsafe_ptr,
 							 sizeof(buf));
 				break;
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index 35989383ae113..d600f41fda1ca 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1268,7 +1268,7 @@ fetch_store_string_user(unsigned long addr, void *dest, void *base)
 
 	__dest = get_loc_data(dest, base);
 
-	ret = strncpy_from_unsafe_user(__dest, uaddr, maxlen);
+	ret = strncpy_from_user_nofault(__dest, uaddr, maxlen);
 	if (ret >= 0)
 		*(u32 *)dest = make_data_loc(ret, __dest - base);
 
diff --git a/mm/maccess.c b/mm/maccess.c
index 65880ba2ca376..457d8f9bf714f 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -215,7 +215,7 @@ long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
 }
 
 /**
- * strncpy_from_unsafe_user: - Copy a NUL terminated string from unsafe user
+ * strncpy_from_user_nofault: - Copy a NUL terminated string from unsafe user
  *				address.
  * @dst:   Destination address, in kernel space.  This buffer must be at
  *         least @count bytes long.
@@ -232,7 +232,7 @@ long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count)
  * If @count is smaller than the length of the string, copies @count-1 bytes,
  * sets the last byte of @dst buffer to NUL and returns @count.
  */
-long strncpy_from_unsafe_user(char *dst, const void __user *unsafe_addr,
+long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
 			      long count)
 {
 	mm_segment_t old_fs = get_fs();
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
