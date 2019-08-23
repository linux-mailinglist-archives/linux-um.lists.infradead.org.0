Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784549B8A7
	for <lists+linux-um@lfdr.de>; Sat, 24 Aug 2019 00:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OyvcsDMuz8HC9YKY+o2gSKZnFkHGi1CbskxJWXB1MUM=; b=g3MnI/M2n7HIU/
	gz9sMB2UEi2aYezbkshrMWIuIs0WOuR+iwmzktJy5nykuBVpyaPEvPOTVle/4EYp/D+LqkIk0WpdZ
	3NA4wYn6cit3fonkNfDQXGC7y/inwMEhiBQfGQirmdI6ckUBVvW+rTSpPzbiOmUgID/7U8WutYdNx
	OyzC5+UCNaXcnoUBV1UlxBab/BBriFBv3MBlceOKcLXkQ/iK+IU54i92gxI75/tXFaqu3R412fRqz
	YgMF6o4mLYYo+i2EA1HCoXimi6ysB5crzBK2BRpzV+h1In37wDNoSNqkV9pEm1DociaK+HTdOXCrN
	YjlR1Og16/aLvXQm+sOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1IW9-00056o-QR; Fri, 23 Aug 2019 22:58:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1IW6-00056S-4s
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 22:58:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i1IW0-0008UI-Hb; Sat, 24 Aug 2019 00:58:40 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: implement memory protection
Date: Sat, 24 Aug 2019 00:58:31 +0200
Message-Id: <20190823225831.23517-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_155846_193231_FBE65088 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Implement memory protection, namely
 * ARCH_HAS_SET_MEMORY
 * ARCH_HAS_STRICT_KERNEL_RWX
 * ARCH_HAS_STRICT_MODULE_RWX

The .text section is marked as RO.
The rodata is marked as RO & NX.
The remaining data is marked NX.

Move the .kstrtab to be covered by the NX.

Note that you can now enable CONFIG_DEBUG_RODATA_TEST,
but it's broken as the fixup is broken - it'll just
crash with

 Kernel panic - not syncing: Segfault with no mm

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/Kconfig               |  3 ++
 arch/um/include/asm/pgtable.h |  2 +
 arch/um/kernel/dyn.lds.S      |  4 +-
 arch/um/kernel/mem.c          | 76 +++++++++++++++++++++++++++++++++++
 4 files changed, 83 insertions(+), 2 deletions(-)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 3c3adfc486f2..e84264be26c9 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -18,6 +18,9 @@ config UML
 	select GENERIC_CLOCKEVENTS
 	select HAVE_GCC_PLUGINS
 	select TTY # Needed for line.c
+	select ARCH_HAS_SET_MEMORY
+	select ARCH_HAS_STRICT_KERNEL_RWX
+	select ARCH_HAS_STRICT_MODULE_RWX
 
 config MMU
 	bool
diff --git a/arch/um/include/asm/pgtable.h b/arch/um/include/asm/pgtable.h
index b377df76cc28..0e6cda3516c6 100644
--- a/arch/um/include/asm/pgtable.h
+++ b/arch/um/include/asm/pgtable.h
@@ -17,6 +17,8 @@
 #define _PAGE_USER	0x040
 #define _PAGE_ACCESSED	0x080
 #define _PAGE_DIRTY	0x100
+#define _PAGE_RO	0x200
+#define _PAGE_NX	0x400
 /* If _PAGE_PRESENT is clear, we use these: */
 #define _PAGE_PROTNONE	0x010	/* if the user mapped it with PROT_NONE;
 				   pte_present gives true */
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index c69d69ee96be..da6b42793e0a 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -89,10 +89,10 @@ SECTIONS
     KEEP (*(.fini))
   } =0x90909090
 
-  .kstrtab : { *(.kstrtab) }
-
   #include <asm/common.lds.S>
 
+  .kstrtab : { *(.kstrtab) }
+
   __init_begin = .;
   init.data : { INIT_DATA }
   __init_end = .;
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index f256be1d77bd..7ce445bfa58f 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -10,6 +10,7 @@
 #include <linux/mm.h>
 #include <linux/swap.h>
 #include <linux/slab.h>
+#include <asm/set_memory.h>
 #include <asm/fixmap.h>
 #include <asm/page.h>
 #include <as-layout.h>
@@ -37,6 +38,22 @@ int kmalloc_ok = 0;
 /* Used during early boot */
 static unsigned long brk_end;
 
+void mark_rodata_ro(void)
+{
+	unsigned long text_start = PFN_ALIGN(_text);
+	unsigned long rodata_start = PFN_ALIGN(__start_rodata);
+	unsigned long rodata_end = PFN_ALIGN(&__end_rodata);
+	unsigned long all_end = PFN_ALIGN(&__bss_stop);
+
+	printk(KERN_INFO "Write protecting the kernel read-only data: %luk\n",
+	       (rodata_end - text_start) >> 10);
+
+	set_memory_ro(text_start,
+		      (rodata_end - text_start) >> PAGE_SHIFT);
+	set_memory_nx(rodata_start,
+		      (all_end - rodata_start) >> PAGE_SHIFT);
+}
+
 void __init mem_init(void)
 {
 	/* clear the zero-page */
@@ -225,3 +242,62 @@ void *uml_kmalloc(int size, int flags)
 {
 	return kmalloc(size, flags);
 }
+
+struct page_change_data {
+	u32 set, clear;
+};
+
+static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
+{
+	struct page_change_data *cdata = data;
+	pte_t pte = READ_ONCE(*ptep);
+
+	pte_clear_bits(pte, cdata->clear);
+	pte_set_bits(pte, cdata->set);
+
+	set_pte(ptep, pte);
+
+	os_protect_memory((void *)addr, PAGE_SIZE,
+			  1, !(pte.pte & _PAGE_RO), !(pte.pte & _PAGE_NX));
+	return 0;
+}
+
+static int change_memory_common(unsigned long addr, int numpages,
+				u32 set, u32 clear)
+{
+	unsigned long start = addr & PAGE_MASK;
+	unsigned long end = PAGE_ALIGN(addr) + numpages * PAGE_SIZE;
+	unsigned long size = end - start;
+	struct page_change_data data;
+
+	WARN_ON_ONCE(start != addr);
+
+	if (!size)
+		return 0;
+
+	data.set = set;
+	data.clear = clear;
+
+	return apply_to_page_range(&init_mm, start, size, change_page_range,
+				   &data);
+}
+
+int set_memory_ro(unsigned long addr, int numpages)
+{
+	return change_memory_common(addr, numpages, _PAGE_RO, 0);
+}
+
+int set_memory_rw(unsigned long addr, int numpages)
+{
+	return change_memory_common(addr, numpages, 0, _PAGE_RO);
+}
+
+int set_memory_nx(unsigned long addr, int numpages)
+{
+	return change_memory_common(addr, numpages, _PAGE_NX, 0);
+}
+
+int set_memory_x(unsigned long addr, int numpages)
+{
+	return change_memory_common(addr, numpages, 0, _PAGE_NX);
+}
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
