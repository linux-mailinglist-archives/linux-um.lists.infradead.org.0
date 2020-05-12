Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687D81CFDA3
	for <lists+linux-um@lfdr.de>; Tue, 12 May 2020 20:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCedQXyUlRhh3AN5XEgw0+upRmhujt0LuMVPKusytB0=; b=rlNNXVj+YQiCyT
	EwQMBaoWSs1F2nJAV5O8Qep9+QjfmL6b9sun1JsDWcsTab+d7Zpmx18Yq2sxsxYm3R0UWhQ45mmQw
	lQrCAd9Q+F9udnB7r1casWnWimu/8bYBl/8LB7KaRcJwUoanzYUntKtBbzZo9gt9lEAE3XpXxhBMv
	XTm5JiI0VPDH87fb+Df4C2LzcuQDPQsEoFVyeXW4yukmaLY4JGomanP17PBgxT49lpvgB5Cs1+R3B
	F4awsJ3PLwqHlhYGPs0fT00/EvjqgHIE2d7GHmsbQ7FlXmcakJTwlUP0xJf+7QdtNW4+kK6TsYrxb
	taDsVYLCW9XjHXIMiWlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZvH-0004Cd-Kx; Tue, 12 May 2020 18:46:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZvC-00049i-KS; Tue, 12 May 2020 18:46:32 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47CAC20673;
 Tue, 12 May 2020 18:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589309190;
 bh=AQUJn6mfzeNGdr4PJCFIJ/VJeHCNxPfcmfbaSimbRTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FlkStUOfxg2XidXXkPETlQBTEywMyia/LTgxg4q7Dzwj4/scd/IOqNS0FX4FdPne6
 hdQC26B46vkm/CAAnLsu+j6YvUdXBfTwW3bT3abkPzHmPelfNFfG0LEeFZxv40RUZi
 Cah4ENld4CoU+xFamDONbiLpiwhMjnTGO/VyxIdI=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/12] x86/mm: simplify init_trampoline() and surrounding logic
Date: Tue, 12 May 2020 21:44:17 +0300
Message-Id: <20200512184422.12418-8-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200512184422.12418-1-rppt@kernel.org>
References: <20200512184422.12418-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_114630_710910_3F04A7A9 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Will Deacon <will@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Brian Cain <bcain@codeaurora.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-parisc@vger.kernel.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Thomas Gleixner <tglx@linutronix.de>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

There are three cases for the trampoline initialization:
* 32-bit does nothing
* 64-bit with kaslr disabled simply copies a PGD entry from the direct map
  to the trampoline PGD
* 64-bit with kaslr enabled maps the real mode trampoline at PUD level

These cases are currently differentiated by a bunch of ifdefs inside
asm/include/pgtable.h and the case of 64-bits with kaslr on uses
pgd_index() helper.

Replacing the ifdefs with a static function in arch/x86/mm/init.c gives
clearer code and allows moving pgd_index() to the generic implementation in
include/linux/pgtable.h

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/x86/include/asm/kaslr.h   |  2 ++
 arch/x86/include/asm/pgtable.h | 15 +--------------
 arch/x86/include/asm/setup.h   |  9 +++++++++
 arch/x86/mm/init.c             | 22 ++++++++++++++++++++++
 arch/x86/mm/kaslr.c            | 33 +--------------------------------
 5 files changed, 35 insertions(+), 46 deletions(-)

diff --git a/arch/x86/include/asm/kaslr.h b/arch/x86/include/asm/kaslr.h
index db7ba2feb947..0648190467ba 100644
--- a/arch/x86/include/asm/kaslr.h
+++ b/arch/x86/include/asm/kaslr.h
@@ -6,8 +6,10 @@ unsigned long kaslr_get_random_long(const char *purpose);
 
 #ifdef CONFIG_RANDOMIZE_MEMORY
 void kernel_randomize_memory(void);
+void init_trampoline_kaslr(void);
 #else
 static inline void kernel_randomize_memory(void) { }
+static inline void init_trampoline_kaslr(void) {}
 #endif /* CONFIG_RANDOMIZE_MEMORY */
 
 #endif
diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index d24f8e1f7250..6366136b0e46 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -1070,27 +1070,14 @@ void init_mem_mapping(void);
 void early_alloc_pgt_buf(void);
 extern void memblock_find_dma_reserve(void);
 
+
 #ifdef CONFIG_X86_64
-/* Realmode trampoline initialization. */
 extern pgd_t trampoline_pgd_entry;
-static inline void __meminit init_trampoline_default(void)
-{
-	/* Default trampoline pgd value */
-	trampoline_pgd_entry = init_top_pgt[pgd_index(__PAGE_OFFSET)];
-}
 
 void __init poking_init(void);
 
 unsigned long init_memory_mapping(unsigned long start,
 				  unsigned long end, pgprot_t prot);
-
-# ifdef CONFIG_RANDOMIZE_MEMORY
-void __meminit init_trampoline(void);
-# else
-#  define init_trampoline init_trampoline_default
-# endif
-#else
-static inline void init_trampoline(void) { }
 #endif
 
 /* local pte updates need not use xchg for locking */
diff --git a/arch/x86/include/asm/setup.h b/arch/x86/include/asm/setup.h
index ed8ec011a9fd..d95cacf210bb 100644
--- a/arch/x86/include/asm/setup.h
+++ b/arch/x86/include/asm/setup.h
@@ -78,6 +78,15 @@ static inline bool kaslr_enabled(void)
 	return !!(boot_params.hdr.loadflags & KASLR_FLAG);
 }
 
+/*
+ * Apply no randomization if KASLR was disabled at boot or if KASAN
+ * is enabled. KASAN shadow mappings rely on regions being PGD aligned.
+ */
+static inline bool kaslr_memory_enabled(void)
+{
+	return kaslr_enabled() && !IS_ENABLED(CONFIG_KASAN);
+}
+
 static inline unsigned long kaslr_offset(void)
 {
 	return (unsigned long)&_text - __START_KERNEL;
diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
index 235dd0e35741..e225ebb25197 100644
--- a/arch/x86/mm/init.c
+++ b/arch/x86/mm/init.c
@@ -682,6 +682,28 @@ static void __init memory_map_bottom_up(unsigned long map_start,
 	}
 }
 
+/*
+ * The real mode trampoline, which is required for bootstrapping CPUs
+ * occupies only a small area under the low 1MB.  See reserve_real_mode()
+ * for details.
+ *
+ * If KASLR is disabled the first PGD entry of the direct mapping is copied
+ * to map the real mode trampoline.
+ *
+ * If KASLR is enabled, copy only the PUD which covers the low 1MB
+ * area. This limits the randomization granularity to 1GB for both 4-level
+ * and 5-level paging.
+ */
+static void __init init_trampoline(void)
+{
+#ifdef CONFIG_X86_64
+	if (!kaslr_memory_enabled())
+		trampoline_pgd_entry = init_top_pgt[pgd_index(__PAGE_OFFSET)];
+	else
+		init_trampoline_kaslr();
+#endif
+}
+
 void __init init_mem_mapping(void)
 {
 	unsigned long end;
diff --git a/arch/x86/mm/kaslr.c b/arch/x86/mm/kaslr.c
index faf02e1e1517..fb620fd9dae9 100644
--- a/arch/x86/mm/kaslr.c
+++ b/arch/x86/mm/kaslr.c
@@ -61,15 +61,6 @@ static inline unsigned long get_padding(struct kaslr_memory_region *region)
 	return (region->size_tb << TB_SHIFT);
 }
 
-/*
- * Apply no randomization if KASLR was disabled at boot or if KASAN
- * is enabled. KASAN shadow mappings rely on regions being PGD aligned.
- */
-static inline bool kaslr_memory_enabled(void)
-{
-	return kaslr_enabled() && !IS_ENABLED(CONFIG_KASAN);
-}
-
 /* Initialize base and padding for each memory region randomized with KASLR */
 void __init kernel_randomize_memory(void)
 {
@@ -148,7 +139,7 @@ void __init kernel_randomize_memory(void)
 	}
 }
 
-static void __meminit init_trampoline_pud(void)
+void __meminit init_trampoline_kaslr(void)
 {
 	pud_t *pud_page_tramp, *pud, *pud_tramp;
 	p4d_t *p4d_page_tramp, *p4d, *p4d_tramp;
@@ -189,25 +180,3 @@ static void __meminit init_trampoline_pud(void)
 			__pgd(_KERNPG_TABLE | __pa(pud_page_tramp)));
 	}
 }
-
-/*
- * The real mode trampoline, which is required for bootstrapping CPUs
- * occupies only a small area under the low 1MB.  See reserve_real_mode()
- * for details.
- *
- * If KASLR is disabled the first PGD entry of the direct mapping is copied
- * to map the real mode trampoline.
- *
- * If KASLR is enabled, copy only the PUD which covers the low 1MB
- * area. This limits the randomization granularity to 1GB for both 4-level
- * and 5-level paging.
- */
-void __meminit init_trampoline(void)
-{
-	if (!kaslr_memory_enabled()) {
-		init_trampoline_default();
-		return;
-	}
-
-	init_trampoline_pud();
-}
-- 
2.26.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
