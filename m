Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210A51DD130
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS5v+wfocETc1JhlmTjqPsYSfYEZi2n3RpVzffxUCzg=; b=jZjOgSkLgJJxVp
	SaFdeXWPXf03r5zuhxqNCoqfwTV/D2K+WpV/wQeD6xbXlkGFmkjIBm77fQL6csNUTfLY99S0zPrIW
	gIe7eQoBjT+Ph2o3P2rdWVKGQdVyrL9/y6ZCOqsF17Ws3aIEP/clQeJalFmCP/BHwFKzSyZiXLuJF
	g1Ldty8hJ0hzbZRkMdwcGKk5daeRlWE6WYPgDUpChBlsDUOivAcanDhQ1hjEeN6OWm+dexMNgfASV
	2aij0DlDPUqrSMCb4Hs2TaRJ0uasWcja0/Rsp/NhvkJh6bolskabDhZgNscMWP4F1u1YDeLjWLovl
	KtRbyQ/vpCCKxLDPI/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2h-0004OD-57; Thu, 21 May 2020 15:23:31 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2e-0004Jj-1M; Thu, 21 May 2020 15:23:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 08/23] maccess: rename strnlen_unsafe_user to
 strnlen_user_nofault
Date: Thu, 21 May 2020 17:22:46 +0200
Message-Id: <20200521152301.2587579-9-hch@lst.de>
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

This matches the naming of strnlen_user, and also makes it more clear
what the function is supposed to do.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/uaccess.h     | 2 +-
 kernel/trace/trace_kprobe.c | 2 +-
 mm/maccess.c                | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 134ff9c1c151b..d8366f8468664 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -315,7 +315,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr,
 extern long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
 long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
 		long count);
-extern long strnlen_unsafe_user(const void __user *unsafe_addr, long count);
+long strnlen_user_nofault(const void __user *unsafe_addr, long count);
 
 /**
  * probe_kernel_address(): safely attempt to read from a location
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index d600f41fda1ca..4325f9e7fadaa 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1221,7 +1221,7 @@ fetch_store_strlen_user(unsigned long addr)
 {
 	const void __user *uaddr =  (__force const void __user *)addr;
 
-	return strnlen_unsafe_user(uaddr, MAX_STRING_SIZE);
+	return strnlen_user_nofault(uaddr, MAX_STRING_SIZE);
 }
 
 /*
diff --git a/mm/maccess.c b/mm/maccess.c
index c8748c2809096..e783ebfccd542 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -258,7 +258,7 @@ long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
 }
 
 /**
- * strnlen_unsafe_user: - Get the size of a user string INCLUDING final NUL.
+ * strnlen_user_nofault: - Get the size of a user string INCLUDING final NUL.
  * @unsafe_addr: The string to measure.
  * @count: Maximum count (including NUL)
  *
@@ -273,7 +273,7 @@ long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
  * Unlike strnlen_user, this can be used from IRQ handler etc. because
  * it disables pagefaults.
  */
-long strnlen_unsafe_user(const void __user *unsafe_addr, long count)
+long strnlen_user_nofault(const void __user *unsafe_addr, long count)
 {
 	mm_segment_t old_fs = get_fs();
 	int ret;
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
