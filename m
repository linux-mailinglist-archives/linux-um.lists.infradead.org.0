Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD362EC001
	for <lists+linux-um@lfdr.de>; Fri,  1 Nov 2019 09:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fNDyaETW75CyPtHI1L8rCGNWHKZxi22aAJmucs6114=; b=jE6Ma0/kNkIUgVyfIxD6vxswkp
	N93saHEqTvRzNOvPlO9/dtjIu+s6jrFs6MUb0M0+8LljC7q/lx28hvtTvGgKLaZhoXaxz47pfm7xZ
	2IYahYYQaKuuWbla+XX2OIWr3MvelJPJ3uk/fkQYR4bvy4xtikzP3CKYYE76EvVo+mrCH6pidYGtR
	FExp1TouX8XoS3vc3YxqC6KwI23qK9f1UWuc9dTeDl0cJQA3+qZHYXqOX17af0sfmk94t3nLjn/lj
	c+XOlZmc/s8I19FGYdper6eNRnSXx5I91t0XVb002E1gLHvBgxEJn6bA5yCPrHqdICYF5jwyqx53T
	9RR3QcqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSdN-00027w-1z; Fri, 01 Nov 2019 08:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSVD-0001E9-7w; Fri, 01 Nov 2019 08:41:53 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B8C7217F9;
 Fri,  1 Nov 2019 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572597710;
 bh=0lGj0AI/IfAJbVTLRfdK6fD/lMA7GlT+qoua/5oNwys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xDN/oYfqISunxv0VTK/om6jqzJocqdXTriMHJm1P+NqMT6Y/ALN8nHxLQXCfaHkdy
 RtA6uUV+Cw5RB2jOnf2+JpfiCOvEsDzOaFFCeVoBiP0n1wqhVNdYGRlvqk8jsJ7zxI
 uzkR+lXTbzGXzS8RlIb07uxyo4yxqPnB+LhVMVQw=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v2 13/13] mm: remove __ARCH_HAS_4LEVEL_HACK and
 include/asm-generic/4level-fixup.h
Date: Fri,  1 Nov 2019 10:39:44 +0200
Message-Id: <1572597584-6390-14-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572597584-6390-1-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014151_435251_72DD77E0 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

There are no architectures that use include/asm-generic/4level-fixup.h
therefore it can be removed along with __ARCH_HAS_4LEVEL_HACK define.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 include/asm-generic/4level-fixup.h | 40 --------------------------------------
 include/asm-generic/tlb.h          |  2 --
 include/linux/mm.h                 | 10 +++++-----
 mm/memory.c                        |  8 --------
 4 files changed, 5 insertions(+), 55 deletions(-)
 delete mode 100644 include/asm-generic/4level-fixup.h

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
deleted file mode 100644
index e3667c9..0000000
--- a/include/asm-generic/4level-fixup.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _4LEVEL_FIXUP_H
-#define _4LEVEL_FIXUP_H
-
-#define __ARCH_HAS_4LEVEL_HACK
-#define __PAGETABLE_PUD_FOLDED 1
-
-#define PUD_SHIFT			PGDIR_SHIFT
-#define PUD_SIZE			PGDIR_SIZE
-#define PUD_MASK			PGDIR_MASK
-#define PTRS_PER_PUD			1
-
-#define pud_t				pgd_t
-
-#define pmd_alloc(mm, pud, address) \
-	((unlikely(pgd_none(*(pud))) && __pmd_alloc(mm, pud, address))? \
- 		NULL: pmd_offset(pud, address))
-
-#define pud_offset(pgd, start)		(pgd)
-#define pud_none(pud)			0
-#define pud_bad(pud)			0
-#define pud_present(pud)		1
-#define pud_ERROR(pud)			do { } while (0)
-#define pud_clear(pud)			pgd_clear(pud)
-#define pud_val(pud)			pgd_val(pud)
-#define pud_populate(mm, pud, pmd)	pgd_populate(mm, pud, pmd)
-#define pud_page(pud)			pgd_page(pud)
-#define pud_page_vaddr(pud)		pgd_page_vaddr(pud)
-
-#undef pud_free_tlb
-#define pud_free_tlb(tlb, x, addr)	do { } while (0)
-#define pud_free(mm, x)			do { } while (0)
-#define __pud_free_tlb(tlb, x, addr)	do { } while (0)
-
-#undef  pud_addr_end
-#define pud_addr_end(addr, end)		(end)
-
-#include <asm-generic/5level-fixup.h>
-
-#endif
diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index 04c0644..5e0c2d0 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -584,7 +584,6 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 	} while (0)
 #endif
 
-#ifndef __ARCH_HAS_4LEVEL_HACK
 #ifndef pud_free_tlb
 #define pud_free_tlb(tlb, pudp, address)			\
 	do {							\
@@ -594,7 +593,6 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 		__pud_free_tlb(tlb, pudp, address);		\
 	} while (0)
 #endif
-#endif
 
 #ifndef __ARCH_HAS_5LEVEL_HACK
 #ifndef p4d_free_tlb
diff --git a/include/linux/mm.h b/include/linux/mm.h
index cc29227..477b52a 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1850,12 +1850,12 @@ static inline void mm_dec_nr_ptes(struct mm_struct *mm) {}
 int __pte_alloc(struct mm_struct *mm, pmd_t *pmd);
 int __pte_alloc_kernel(pmd_t *pmd);
 
+#if defined(CONFIG_MMU)
+
 /*
- * The following ifdef needed to get the 4level-fixup.h header to work.
- * Remove it when 4level-fixup.h has been removed.
+ * The following ifdef needed to get the 5level-fixup.h header to work.
+ * Remove it when 5level-fixup.h has been removed.
  */
-#if defined(CONFIG_MMU) && !defined(__ARCH_HAS_4LEVEL_HACK)
-
 #ifndef __ARCH_HAS_5LEVEL_HACK
 static inline p4d_t *p4d_alloc(struct mm_struct *mm, pgd_t *pgd,
 		unsigned long address)
@@ -1877,7 +1877,7 @@ static inline pmd_t *pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long a
 	return (unlikely(pud_none(*pud)) && __pmd_alloc(mm, pud, address))?
 		NULL: pmd_offset(pud, address);
 }
-#endif /* CONFIG_MMU && !__ARCH_HAS_4LEVEL_HACK */
+#endif /* CONFIG_MMU */
 
 #if USE_SPLIT_PTE_PTLOCKS
 #if ALLOC_SPLIT_PTLOCKS
diff --git a/mm/memory.c b/mm/memory.c
index b1ca51a..50300f0 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -4095,19 +4095,11 @@ int __pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long address)
 	smp_wmb(); /* See comment in __pte_alloc */
 
 	ptl = pud_lock(mm, pud);
-#ifndef __ARCH_HAS_4LEVEL_HACK
 	if (!pud_present(*pud)) {
 		mm_inc_nr_pmds(mm);
 		pud_populate(mm, pud, new);
 	} else	/* Another has populated it */
 		pmd_free(mm, new);
-#else
-	if (!pgd_present(*pud)) {
-		mm_inc_nr_pmds(mm);
-		pgd_populate(mm, pud, new);
-	} else /* Another has populated it */
-		pmd_free(mm, new);
-#endif /* __ARCH_HAS_4LEVEL_HACK */
 	spin_unlock(ptl);
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
