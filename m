Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AA21C6893
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 08:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R12Ejy4JWqww4pKEJIpYJuUuZo94uKFkZY9qEGFW4uk=; b=bfqgNW7Y4v/IgH
	FtG1mu4Eg1eiZgPKETwDNfh/Gp1Rsy5VKZHPMT4YUr8sZe6lsOM9gpOmF8sAqHZdZwrWSfWvKD8eV
	3hAogeEXjj9IDXP3PwFYxHb80+PsFvrK5dwEqf4DP320ZVlYm86AH5spliFA3i7dTXZ+5siur84Ma
	MzNHnYWh7uY6yshllcwDvK6Sc5NdhM41nP6B01skvFyH5fj6yoO3pGzK9UKgRLqJzJ6424luzwFss
	hnjCVqTJJukz82204QaQ1JgYa2iiFSei9OI/fCMndwa3IujbPow9py5rwJP1imb/KeXGDR35YMdTG
	qQ5/g8+b0s1NnRmIbQ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDSF-0006iD-KQ; Wed, 06 May 2020 06:22:51 +0000
Received: from [2001:4bb8:191:66b6:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDSD-0006g6-MF; Wed, 06 May 2020 06:22:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 08/15] maccess: rename strnlen_unsafe_user to
 strnlen_user_unsafe
Date: Wed,  6 May 2020 08:22:16 +0200
Message-Id: <20200506062223.30032-9-hch@lst.de>
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
 include/linux/uaccess.h     | 2 +-
 kernel/trace/trace_kprobe.c | 2 +-
 mm/maccess.c                | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 221d703480b6e..77909cafde5a8 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -315,7 +315,7 @@ extern long strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr,
 extern long __strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
 extern long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
 				     long count);
-extern long strnlen_unsafe_user(const void __user *unsafe_addr, long count);
+extern long strnlen_user_unsafe(const void __user *unsafe_addr, long count);
 
 /**
  * probe_kernel_address(): safely attempt to read from a location
diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
index 67ed9655afc51..a7f43c7ec9880 100644
--- a/kernel/trace/trace_kprobe.c
+++ b/kernel/trace/trace_kprobe.c
@@ -1215,7 +1215,7 @@ fetch_store_strlen_user(unsigned long addr)
 {
 	const void __user *uaddr =  (__force const void __user *)addr;
 
-	return strnlen_unsafe_user(uaddr, MAX_STRING_SIZE);
+	return strnlen_user_unsafe(uaddr, MAX_STRING_SIZE);
 }
 
 /*
diff --git a/mm/maccess.c b/mm/maccess.c
index 683b70518a896..95f2bf97e5ad7 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -258,7 +258,7 @@ long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
 }
 
 /**
- * strnlen_unsafe_user: - Get the size of a user string INCLUDING final NUL.
+ * strnlen_user_unsafe: - Get the size of a user string INCLUDING final NUL.
  * @unsafe_addr: The string to measure.
  * @count: Maximum count (including NUL)
  *
@@ -273,7 +273,7 @@ long strncpy_from_user_unsafe(char *dst, const void __user *unsafe_addr,
  * Unlike strnlen_user, this can be used from IRQ handler etc. because
  * it disables pagefaults.
  */
-long strnlen_unsafe_user(const void __user *unsafe_addr, long count)
+long strnlen_user_unsafe(const void __user *unsafe_addr, long count)
 {
 	mm_segment_t old_fs = get_fs();
 	int ret;
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
