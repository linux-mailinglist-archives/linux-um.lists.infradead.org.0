Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366881CC921
	for <lists+linux-um@lfdr.de>; Sun, 10 May 2020 10:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVlSaPfEV8ac/WX6HLBv+FaaII1jPRCPs99/I1NnTGk=; b=AhZ27tKz3VZ0yZ
	TPVTDALd3Pto9/C/D9Nrd3B2qUz5RInTVor09o4u8kmgLMEzLrwJi0+G8Sh/BPUawL5xdr7aH1KIS
	zG+3NLR31R/tsD8Jq2iQGc0aIyvlu6nDKAsBBYPwBpGkSK3NLbIyNMUFCIsyChHjdjNRHARk0zlH3
	jrVdBUXFt/vkPemfwiHP6AOyWewILps32F7/G2hcwOnWqaUemvgwLoGsEgVndM10L1Fq7zk6OmU6Z
	6Zndo54HrHi5DSxBvVRh5Q+D5nHIfMHnEMhXrfcuDEZNj3zku5Kf6a0qJzAmu1Aev6ymVuuB5Mqbj
	AwvpvDXWDuWlSfN7PU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgv7-00024p-Mj; Sun, 10 May 2020 08:02:45 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgoq-0000j0-Lx; Sun, 10 May 2020 07:56:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 20/31] arm,sparc,unicore32: remove flush_icache_user_range
Date: Sun, 10 May 2020 09:54:59 +0200
Message-Id: <20200510075510.987823-21-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

flush_icache_user_range is only used by <asm-generic/cacheflush.h>, so
remove it from the architectures that implement it, but don't use
<asm-generic/cacheflush.h>.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/cacheflush.h       | 3 ---
 arch/sparc/include/asm/cacheflush_32.h  | 2 --
 arch/sparc/include/asm/cacheflush_64.h  | 1 -
 arch/unicore32/include/asm/cacheflush.h | 3 ---
 4 files changed, 9 deletions(-)

diff --git a/arch/arm/include/asm/cacheflush.h b/arch/arm/include/asm/cacheflush.h
index 7114b9aa46b87..c78e14fcfb5df 100644
--- a/arch/arm/include/asm/cacheflush.h
+++ b/arch/arm/include/asm/cacheflush.h
@@ -318,9 +318,6 @@ extern void flush_kernel_dcache_page(struct page *);
 #define flush_dcache_mmap_lock(mapping)		xa_lock_irq(&mapping->i_pages)
 #define flush_dcache_mmap_unlock(mapping)	xa_unlock_irq(&mapping->i_pages)
 
-#define flush_icache_user_range(vma,page,addr,len) \
-	flush_dcache_page(page)
-
 /*
  * We don't appear to need to do anything here.  In fact, if we did, we'd
  * duplicate cache flushing elsewhere performed by flush_dcache_page().
diff --git a/arch/sparc/include/asm/cacheflush_32.h b/arch/sparc/include/asm/cacheflush_32.h
index fb66094a2c30c..41c6d734a4741 100644
--- a/arch/sparc/include/asm/cacheflush_32.h
+++ b/arch/sparc/include/asm/cacheflush_32.h
@@ -17,8 +17,6 @@
 #define flush_icache_range(start, end)		do { } while (0)
 #define flush_icache_page(vma, pg)		do { } while (0)
 
-#define flush_icache_user_range(vma,pg,adr,len)	do { } while (0)
-
 #define copy_to_user_page(vma, page, vaddr, dst, src, len) \
 	do {							\
 		flush_cache_page(vma, vaddr, page_to_pfn(page));\
diff --git a/arch/sparc/include/asm/cacheflush_64.h b/arch/sparc/include/asm/cacheflush_64.h
index e7517434d1fa6..b9341836597ec 100644
--- a/arch/sparc/include/asm/cacheflush_64.h
+++ b/arch/sparc/include/asm/cacheflush_64.h
@@ -49,7 +49,6 @@ void __flush_dcache_range(unsigned long start, unsigned long end);
 void flush_dcache_page(struct page *page);
 
 #define flush_icache_page(vma, pg)	do { } while(0)
-#define flush_icache_user_range(vma,pg,adr,len)	do { } while (0)
 
 void flush_ptrace_access(struct vm_area_struct *, struct page *,
 			 unsigned long uaddr, void *kaddr,
diff --git a/arch/unicore32/include/asm/cacheflush.h b/arch/unicore32/include/asm/cacheflush.h
index 9393ca4047e93..ff0be92ebc320 100644
--- a/arch/unicore32/include/asm/cacheflush.h
+++ b/arch/unicore32/include/asm/cacheflush.h
@@ -162,9 +162,6 @@ extern void flush_dcache_page(struct page *);
 #define flush_dcache_mmap_lock(mapping)		do { } while (0)
 #define flush_dcache_mmap_unlock(mapping)	do { } while (0)
 
-#define flush_icache_user_range(vma, page, addr, len)	\
-	flush_dcache_page(page)
-
 /*
  * We don't appear to need to do anything here.  In fact, if we did, we'd
  * duplicate cache flushing elsewhere performed by flush_dcache_page().
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
