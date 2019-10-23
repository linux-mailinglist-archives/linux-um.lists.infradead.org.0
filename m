Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A02FE1107
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyqufqXAUjSTVrlp2hA/l/90X4RQNNWa4n9ZPLPK+rE=; b=NZka7rHbUoXgRf
	V10OWIRXCUDS5OY1ws/Fk1Vlan49tf2V06WpKvtAIruwk+8IJ5CaQjHYn9XHYe68Be0nMSzcYxSjX
	4FI2zDzedyjI2Wk2CrzFSD6VgQqa1Jh36V0baTW3f5tEuIM/P0wH7/tLrXu/PASuXcRjlZ5NhU7wO
	Q439xKUP+eX+cDmtNEKD5Bqc+0ptJp+ALGRNjcWA8YC649z468EwWY3PS9zsfSfu/zMQ+sBs/6Fgu
	J28qAJ5U5yAvIkJOjGgpqsD3I8QSDefu6v38ul0KgRXVfM8W+Otno1LBY1Otll+JcEBbDw0yQ3X31
	3B/0/Aa8R+nSfqFn39kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QI-0001lJ-7E; Wed, 23 Oct 2019 04:39:02 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QD-0001iQ-Uh
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:38:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id a2so12079807pfo.10
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M5ZXiEdi6IwxmWXUaeTaVbVGIvATL4QFpdWoaCSbgVk=;
 b=VmCojc4x6iqkwE1VbMTOjb/9SzsR4XfPJmMCOKTCK5j+k1z1T0BhSiQRfHDaYI5cHj
 +3lEfbzSotyvHEFFdnF/PwqcDaUQxtHUIg90u7dHY8yk2A1KFqTbMxny+cwMwazXQixt
 rAjxu1u+RIwA6KCv05cZkzqtu/zAZuw2EJgPZ/lTt50lC2uxmbKNLsK3ZJcved1qLdyI
 heNK3jv0jQDhxpw5icUq9XK3kU28qyaGpZCPGzupn97UWCLNSWUW8RgkcJKYmsFqBtdW
 gLkYOIwi4C1Wm/ICS5hZTF3jENw7qGAquWDf9Rj3UGaHatBrA2leC/wBtCx10pr4K28c
 BucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M5ZXiEdi6IwxmWXUaeTaVbVGIvATL4QFpdWoaCSbgVk=;
 b=ffPOauUymmyczG2CplQSWMG+OaFmJXjKhIBFY54HXzSI4yN/d36kzGYfpbNY2HHQh7
 C3WXhRcnLHFMuSmRmro8W+tGRwWAXPIG/jtZ8lJPvIpb80KcSEwSCLckV8CqCu+3baL4
 ht0p4MulA/qZTGqH5bL9YsCYCyXed1EqM9CrCBaYWu/Ut0bNTLMAFKZxS/qBJuVURpci
 FE6ctOI3mdf/jiBlfQLWbWfK1jPDnA5Civz359/03DMyz3D0uONMXDVkP3QAjFBWdI06
 WOfBYXJ1wJwwMVH3MQXO/Jv1fXXJAaVOjLWhc1HoxDESGhUeu77aSgUI3/Cn+h7B0Z3S
 t4pw==
X-Gm-Message-State: APjAAAU7mOsdbrpqSGZX2ItwTsrEmiiBDGSL1BEOLDPPjF0b5OZHxdVh
 l46Vz8/VnKR8+z3kJTbD0Y8=
X-Google-Smtp-Source: APXvYqy6WRkmurKyvgXART4mVYYlFvQQvBgB4lGI4iVSq7v9fqUQuCcAOu6Zltv9BQlO7Wae1rDS3g==
X-Received: by 2002:a63:5847:: with SMTP id i7mr7401132pgm.387.1571805536796; 
 Tue, 22 Oct 2019 21:38:56 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id b3sm18236246pjp.13.2019.10.22.21.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:54 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 411662019957FC; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 05/47] lkl: memory handling
Date: Wed, 23 Oct 2019 13:37:39 +0900
Message-Id: <98f540e974077726ebe09ce575ba3f8eefc05ee8.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213858_007129_192CF99A 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "H . K . Jerry Chu" <hkchu@google.com>, Levente Kurusa <levex@linux.com>,
 Octavian Purdila <tavi.purdila@gmail.com>, Hajime Tazaki <thehajime@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

LKL is a non MMU architecture and hence there is not much work left to
do other than initializing the boot allocator and providing the page
and page table definitions.

The backstore memory is allocated via a host operation and the memory
size to be used is specified when the kernel is started, in the
lkl_start_kernel call.

Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Levente Kurusa <levex@linux.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/page.h    | 14 +++++++
 arch/um/lkl/include/asm/pgtable.h | 62 +++++++++++++++++++++++++++++
 arch/um/lkl/mm/bootmem.c          | 66 +++++++++++++++++++++++++++++++
 3 files changed, 142 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/page.h
 create mode 100644 arch/um/lkl/include/asm/pgtable.h
 create mode 100644 arch/um/lkl/mm/bootmem.c

diff --git a/arch/um/lkl/include/asm/page.h b/arch/um/lkl/include/asm/page.h
new file mode 100644
index 000000000000..e77f3da22031
--- /dev/null
+++ b/arch/um/lkl/include/asm/page.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_LKL_PAGE_H
+#define _ASM_LKL_PAGE_H
+
+#define CONFIG_KERNEL_RAM_BASE_ADDRESS memory_start
+
+#ifndef __ASSEMBLY__
+void free_mem(void);
+void bootmem_init(unsigned long mem_size);
+#endif
+
+#include <asm-generic/page.h>
+
+#endif /* _ASM_LKL_PAGE_H */
diff --git a/arch/um/lkl/include/asm/pgtable.h b/arch/um/lkl/include/asm/pgtable.h
new file mode 100644
index 000000000000..b790296abfac
--- /dev/null
+++ b/arch/um/lkl/include/asm/pgtable.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LKL_PGTABLE_H
+#define _LKL_PGTABLE_H
+
+#include <asm-generic/4level-fixup.h>
+
+/*
+ * (C) Copyright 2000-2002, Greg Ungerer <gerg@snapgear.com>
+ */
+
+#include <linux/slab.h>
+#include <asm/processor.h>
+#include <asm/io.h>
+
+#define pgd_present(pgd)	(1)
+#define pgd_none(pgd)		(0)
+#define pgd_bad(pgd)		(0)
+#define pgd_clear(pgdp)
+#define kern_addr_valid(addr)	(1)
+#define	pmd_offset(a, b)	((void *)0)
+
+#define PAGE_NONE		__pgprot(0)
+#define PAGE_SHARED		__pgprot(0)
+#define PAGE_COPY		__pgprot(0)
+#define PAGE_READONLY		__pgprot(0)
+#define PAGE_KERNEL		__pgprot(0)
+
+void paging_init(void);
+#define swapper_pg_dir		((pgd_t *)0)
+
+#define __swp_type(x)		(0)
+#define __swp_offset(x)		(0)
+#define __swp_entry(typ, off)	((swp_entry_t) { ((typ) | ((off) << 7)) })
+#define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
+#define __swp_entry_to_pte(x)	((pte_t) { (x).val })
+
+/*
+ * ZERO_PAGE is a global shared page that is always zero: used
+ * for zero-mapped memory areas etc..
+ */
+extern void *empty_zero_page;
+#define ZERO_PAGE(vaddr)	(virt_to_page(empty_zero_page))
+
+/*
+ * No page table caches to initialise.
+ */
+#define pgtable_cache_init()	do { } while (0)
+
+/*
+ * All 32bit addresses are effectively valid for vmalloc...
+ * Sort of meaningless for non-VM targets.
+ */
+#define	VMALLOC_START		0
+#define	VMALLOC_END		0xffffffff
+#define	KMAP_START		0
+#define	KMAP_END		0xffffffff
+
+#include <asm-generic/pgtable.h>
+
+#define check_pgt_cache()	do { } while (0)
+
+#endif
diff --git a/arch/um/lkl/mm/bootmem.c b/arch/um/lkl/mm/bootmem.c
new file mode 100644
index 000000000000..39dd0d22b44e
--- /dev/null
+++ b/arch/um/lkl/mm/bootmem.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/memblock.h>
+#include <linux/mm.h>
+#include <linux/swap.h>
+
+unsigned long memory_start, memory_end;
+static unsigned long _memory_start, mem_size;
+
+void *empty_zero_page;
+
+void __init bootmem_init(unsigned long mem_sz)
+{
+	mem_size = mem_sz;
+
+	_memory_start = (unsigned long)lkl_ops->mem_alloc(mem_size);
+	memory_start = _memory_start;
+	WARN_ON(!memory_start);
+	memory_end = memory_start + mem_size;
+
+	if (PAGE_ALIGN(memory_start) != memory_start) {
+		mem_size -= PAGE_ALIGN(memory_start) - memory_start;
+		memory_start = PAGE_ALIGN(memory_start);
+		mem_size = (mem_size / PAGE_SIZE) * PAGE_SIZE;
+	}
+	pr_info("memblock address range: 0x%lx - 0x%lx\n", memory_start,
+		memory_start + mem_size);
+	/*
+	 * Give all the memory to the bootmap allocator, tell it to put the
+	 * boot mem_map at the start of memory.
+	 */
+	max_low_pfn = virt_to_pfn(memory_end);
+	min_low_pfn = virt_to_pfn(memory_start);
+	memblock_add(memory_start, mem_size);
+
+	empty_zero_page = memblock_alloc(PAGE_SIZE, PAGE_SIZE);
+	memset((void *)empty_zero_page, 0, PAGE_SIZE);
+
+	{
+		unsigned long zones_size[MAX_NR_ZONES] = {0, };
+
+		zones_size[ZONE_NORMAL] = (mem_size) >> PAGE_SHIFT;
+		free_area_init(zones_size);
+	}
+}
+
+void __init mem_init(void)
+{
+	max_mapnr = (((unsigned long)high_memory) - PAGE_OFFSET) >> PAGE_SHIFT;
+	/* this will put all memory onto the freelists */
+	totalram_pages_add(memblock_free_all());
+	pr_info("Memory available: %luk/%luk RAM\n",
+		(nr_free_pages() << PAGE_SHIFT) >> 10, mem_size >> 10);
+}
+
+/*
+ * In our case __init memory is not part of the page allocator so there is
+ * nothing to free.
+ */
+void free_initmem(void)
+{
+}
+
+void free_mem(void)
+{
+	lkl_ops->mem_free((void *)_memory_start);
+}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
