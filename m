Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FBB1D5218
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 16:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wawFTlDDKNrbHfBskTm8YslZZwxwSlxBwsI/2i7PaSA=; b=tj9fjbdDjTiHZ1
	TIu90ptZQTa0ywLHWBtn6hk1A65bHI0SbniltL4W46vbkbiS64BOry7PnzLCC1IA/1n9X8rgcH644
	Ri8G0Fq51uiEMY21pzgJ+6wSBlGomnAA2kmLdep37a1yxX16YzMyqFW+10FxDGRpOM49Z3W/wgtEu
	9DI5XQkJTjnTuBXCCEPVyo3dsXxzr8ZVBFmRBWdx3dvadru3bM4TKf+MTU5AFXh62UpF3zPH9nV/8
	OvZsA7lToBk1RxmXIl3edbg9fNVcinRhfXPggVutCmfjYikCLUsa2o2M59yPL8kXQDmicE4V/GbO1
	LU87wNw2oqQ77uNAljuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbYk-0005Tx-TF; Fri, 15 May 2020 14:43:34 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSk-0004PG-IT; Fri, 15 May 2020 14:37:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 12/29] ia64: use asm-generic/cacheflush.h
Date: Fri, 15 May 2020 16:36:29 +0200
Message-Id: <20200515143646.3857579-13-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
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

IA64 needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/ia64/include/asm/cacheflush.h | 28 +++-------------------------
 1 file changed, 3 insertions(+), 25 deletions(-)

diff --git a/arch/ia64/include/asm/cacheflush.h b/arch/ia64/include/asm/cacheflush.h
index 6d3478f8abc89..a8f1c86ac242a 100644
--- a/arch/ia64/include/asm/cacheflush.h
+++ b/arch/ia64/include/asm/cacheflush.h
@@ -12,44 +12,22 @@
 
 #include <asm/page.h>
 
-/*
- * Cache flushing routines.  This is the kind of stuff that can be very expensive, so try
- * to avoid them whenever possible.
- */
-
-#define flush_cache_all()			do { } while (0)
-#define flush_cache_mm(mm)			do { } while (0)
-#define flush_cache_dup_mm(mm)			do { } while (0)
-#define flush_cache_range(vma, start, end)	do { } while (0)
-#define flush_cache_page(vma, vmaddr, pfn)	do { } while (0)
-#define flush_icache_page(vma,page)		do { } while (0)
-#define flush_cache_vmap(start, end)		do { } while (0)
-#define flush_cache_vunmap(start, end)		do { } while (0)
-
 #define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 #define flush_dcache_page(page)			\
 do {						\
 	clear_bit(PG_arch_1, &(page)->flags);	\
 } while (0)
 
-#define flush_dcache_mmap_lock(mapping)		do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
-
-extern void flush_icache_range (unsigned long start, unsigned long end);
+extern void flush_icache_range(unsigned long start, unsigned long end);
+#define flush_icache_range flush_icache_range
 extern void clflush_cache_range(void *addr, int size);
 
-
 #define flush_icache_user_range(vma, page, user_addr, len)					\
 do {												\
 	unsigned long _addr = (unsigned long) page_address(page) + ((user_addr) & ~PAGE_MASK);	\
 	flush_icache_range(_addr, _addr + (len));						\
 } while (0)
 
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-do { memcpy(dst, src, len); \
-     flush_icache_user_range(vma, page, vaddr, len); \
-} while (0)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
+#include <asm-generic/cacheflush.h>
 
 #endif /* _ASM_IA64_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
