Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973351D520F
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 16:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa2qsQRzIvkXneGu4rwQcBo2bl6YLRRCDr8N2qgE5EE=; b=fwUm19hGLuZvox
	JOIrlRKzRw0nOodjOqCVrj+XPWc/MQ7TvAYoOR37iIbo4kQ8bOXeAOL0OOoiMeVN6Ozho5SnZH6rN
	/P5xvTYLebs/o+zeh+rOIO3OuwhB/hcIy1MT0dsrTt2dK9YJVWVrkGepQuT8IoUJqjP8VgNGKnuSo
	MXI/lAC9ntlQh9SHxrT60KjhIq/bM8F67PMUcp1NldY9A9TDN2FAMItzCDAO9CJJFTIh6UYrsS+yh
	T89PGQbJkqspt+ItkKFZU/qXDbvccUYx0zjlTA/wxe6ckwcwc3jcpIXlA6gSPdDBOJ+9riDqdVJbH
	pkh+82Ds1/z6y+iwdzDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbYM-0004sm-Di; Fri, 15 May 2020 14:43:10 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSn-0004V0-Qz; Fri, 15 May 2020 14:37:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 13/29] microblaze: use asm-generic/cacheflush.h
Date: Fri, 15 May 2020 16:36:30 +0200
Message-Id: <20200515143646.3857579-14-hch@lst.de>
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

Microblaze needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/microblaze/include/asm/cacheflush.h | 29 ++----------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/arch/microblaze/include/asm/cacheflush.h b/arch/microblaze/include/asm/cacheflush.h
index 11f56c85056bb..39f8fb6768d8b 100644
--- a/arch/microblaze/include/asm/cacheflush.h
+++ b/arch/microblaze/include/asm/cacheflush.h
@@ -57,9 +57,6 @@ void microblaze_cache_init(void);
 #define invalidate_icache()				mbc->iin();
 #define invalidate_icache_range(start, end)		mbc->iinr(start, end);
 
-#define flush_icache_user_range(vma, pg, adr, len)	flush_icache();
-#define flush_icache_page(vma, pg)			do { } while (0)
-
 #define enable_dcache()					mbc->de();
 #define disable_dcache()				mbc->dd();
 /* FIXME for LL-temac driver */
@@ -77,27 +74,9 @@ do { \
 	flush_dcache_range((unsigned) (addr), (unsigned) (addr) + PAGE_SIZE); \
 } while (0);
 
-#define flush_dcache_mmap_lock(mapping)		do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
-
-#define flush_cache_dup_mm(mm)				do { } while (0)
-#define flush_cache_vmap(start, end)			do { } while (0)
-#define flush_cache_vunmap(start, end)			do { } while (0)
-#define flush_cache_mm(mm)			do { } while (0)
-
 #define flush_cache_page(vma, vmaddr, pfn) \
 	flush_dcache_range(pfn << PAGE_SHIFT, (pfn << PAGE_SHIFT) + PAGE_SIZE);
 
-/* MS: kgdb code use this macro, wrong len with FLASH */
-#if 0
-#define flush_cache_range(vma, start, len)	{	\
-	flush_icache_range((unsigned) (start), (unsigned) (start) + (len)); \
-	flush_dcache_range((unsigned) (start), (unsigned) (start) + (len)); \
-}
-#endif
-
-#define flush_cache_range(vma, start, len) do { } while (0)
-
 static inline void copy_to_user_page(struct vm_area_struct *vma,
 				     struct page *page, unsigned long vaddr,
 				     void *dst, void *src, int len)
@@ -109,12 +88,8 @@ static inline void copy_to_user_page(struct vm_area_struct *vma,
 		flush_dcache_range(addr, addr + PAGE_SIZE);
 	}
 }
+#define copy_to_user_page copy_to_user_page
 
-static inline void copy_from_user_page(struct vm_area_struct *vma,
-				       struct page *page, unsigned long vaddr,
-				       void *dst, void *src, int len)
-{
-	memcpy(dst, src, len);
-}
+#include <asm-generic/cacheflush.h>
 
 #endif /* _ASM_MICROBLAZE_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
