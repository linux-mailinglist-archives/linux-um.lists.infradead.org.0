Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EEC1CC91F
	for <lists+linux-um@lfdr.de>; Sun, 10 May 2020 10:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avrbW2IZ36EJpvxCrvx40h0ZNxsf7ZvuMiQ2p4oj0Q8=; b=HgwkFrUgfeqbkU
	Yn6Tc8X0HQseWaCQzw7Hq1mhhrw54VEKm11J62wJ9UmmyfAvT7JVf9D5ozA6jzxE4HoYXc3IeEcEW
	8dbby5EqweEf7jYg4TteQ0zlmC2D1vP8wv1nlthIpJj7GxjIS9/Xa/PoZmCgAYpO3hWjaP7Ji7qUc
	hf9b8ekI5GNPRwNO1TXRCYLUb4Wiktrhyv+DQuO0ryhUVxeoEZr6KNB49ifZcDbpxTAUP4HplZ/57
	VOqExwhRtFmp0wKgA6ppE193q1i1OuWjuPuDz7q6+5U8CrUMHMotc24eQqtHc5m/C5blYpNzswoUM
	x3ws3auatr/9fw1rA9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgum-0001gt-Mu; Sun, 10 May 2020 08:02:24 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgon-0000fq-HE; Sun, 10 May 2020 07:56:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 19/31] riscv: use asm-generic/cacheflush.h
Date: Sun, 10 May 2020 09:54:58 +0200
Message-Id: <20200510075510.987823-20-hch@lst.de>
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

RISC-V needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Also remove the pointless __KERNEL__ ifdef while we're at it.
---
 arch/riscv/include/asm/cacheflush.h | 62 ++---------------------------
 1 file changed, 3 insertions(+), 59 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index c8677c75f82cb..a167b4fbdf007 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -8,65 +8,6 @@
 
 #include <linux/mm.h>
 
-#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
-
-/*
- * The cache doesn't need to be flushed when TLB entries change when
- * the cache is mapped to physical memory, not virtual memory
- */
-static inline void flush_cache_all(void)
-{
-}
-
-static inline void flush_cache_mm(struct mm_struct *mm)
-{
-}
-
-static inline void flush_cache_dup_mm(struct mm_struct *mm)
-{
-}
-
-static inline void flush_cache_range(struct vm_area_struct *vma,
-				     unsigned long start,
-				     unsigned long end)
-{
-}
-
-static inline void flush_cache_page(struct vm_area_struct *vma,
-				    unsigned long vmaddr,
-				    unsigned long pfn)
-{
-}
-
-static inline void flush_dcache_mmap_lock(struct address_space *mapping)
-{
-}
-
-static inline void flush_dcache_mmap_unlock(struct address_space *mapping)
-{
-}
-
-static inline void flush_icache_page(struct vm_area_struct *vma,
-				     struct page *page)
-{
-}
-
-static inline void flush_cache_vmap(unsigned long start, unsigned long end)
-{
-}
-
-static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
-{
-}
-
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-	do { \
-		memcpy(dst, src, len); \
-		flush_icache_user_range(vma, page, vaddr, len); \
-	} while (0)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
-
 static inline void local_flush_icache_all(void)
 {
 	asm volatile ("fence.i" ::: "memory");
@@ -79,6 +20,7 @@ static inline void flush_dcache_page(struct page *page)
 	if (test_bit(PG_dcache_clean, &page->flags))
 		clear_bit(PG_dcache_clean, &page->flags);
 }
+#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 
 /*
  * RISC-V doesn't have an instruction to flush parts of the instruction cache,
@@ -105,4 +47,6 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
 #define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL
 #define SYS_RISCV_FLUSH_ICACHE_ALL   (SYS_RISCV_FLUSH_ICACHE_LOCAL)
 
+#include <asm-generic/cacheflush.h>
+
 #endif /* _ASM_RISCV_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
