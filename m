Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10B5F3F21
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjA4LXnk9idot0SYsN9Kxcar6Q5harqDKvpQX7+viJE=; b=SUChjGHP8n0SNP
	eT+uLJidvMlrFS4fHOzOBOvwEauCxwUHWbJznIZmvM7OXR0U5UpiIp5XQxetnlupESz72CgQ3MzYH
	8pITLqjBbYa3om94wyzxZN8F4GxjbW8cBkVGuNpfyh/dgp93nBSCjHD5P926aV51IZzlfEU8TRT6m
	ifZgXkqAA8zUj9VRpQxZyl1PJVQ2EfdXCsU1iW4DA4aDXlutX9gwtxwZ0dOlppJVKvV//IZOeANps
	XajER1xP8ROR3TM70+JaqdejF1hQgDiRiBTdGRZ6nWdu3FiOuRxQdAQLcRBkPcAvdASBNUAz7AEzt
	9SAft/nzoJzbAx46U8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQX-0003bz-U2; Fri, 08 Nov 2019 05:03:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQV-0003aI-C5
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id z24so3297101pgu.4
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1U2TcgCl+q488Lcy6Rw2Q2SDzs6Q+sNvhVBHcMJQe88=;
 b=cfDyjpE3I2f+VuvdvUWYu0vH3oxeEeamFrJPEl+/JWKl2IFqcyVVaY/qKzE1IUbvsp
 DfSroXPLqzarjr1fiUDjkfTo7IKyf9vZF4g/QAio6zcPdVkLDlDbwTSGJES4I2NJT+3k
 b8I+gdiqAIpa5uRjT2A0tmoZ7uhrJ+SgHHhvBwP47JG0nP9ifl0wN87LYS3Ftccz5xyY
 Kda9+939//MuaYl+hjyaMC4Fy8mVXtM7HTdvYC5Mt7yJzWfOBKAf+HZ5FL6iQM97uFDr
 Yx+gCUEgOy6Qd2hCb9/OGJCBEklpMXW4RRwKAwjms5Ks6hebE38yyufb7PrMumcw0kuW
 QYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1U2TcgCl+q488Lcy6Rw2Q2SDzs6Q+sNvhVBHcMJQe88=;
 b=il845tDx3BgUZy/ZqiLkZ+YgmLlTfHTxNbMTAQCe/4ZQx8PP/jxhZ4J76yB/ZqIDcm
 CabSSeKYdGo31T6fmDq4Saj9QjdjI00Gx3yXnlrZRsHRX6vP4AOis9lS5pGED9bzzkkZ
 pxOh396tUrsfk/QVchoHAuSS0bYR+Qi5SmZRhmcprmBf/+F5Q4gRpfkG/dfHxpSH0hvj
 N0RydyDk3ZwXnxLzqO7n/vopLl+d9ca63dwJK62g97UC3eO0RpMliDluAT6NWTmFJzQn
 Uzl3ciJht/Q0JU+ZYH6JUs4ITj8HFC04kkh+f/dcCiXRn9aiqOj0IyM/6LTbU1zPpv8V
 hoYQ==
X-Gm-Message-State: APjAAAUzx/wK0w3mFp5MldUWyhnP1GcAvWFDFE0tB5daLxR1uA7AXQDf
 dEgx20qSudnB17Ndp87ZXhw=
X-Google-Smtp-Source: APXvYqygx214KNaP4zNeV26WqgO/jog72lVQn4kS2wmkQFvT9gaThIF0AmC6xlgaK6PcCv6LIwtbYg==
X-Received: by 2002:aa7:95ad:: with SMTP id a13mr9371605pfk.216.1573189394285; 
 Thu, 07 Nov 2019 21:03:14 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id g14sm4472137pgp.32.2019.11.07.21.03.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:13 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 90236201ACFCA2; Fri,  8 Nov 2019 14:03:11 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 05/37] lkl: memory handling
Date: Fri,  8 Nov 2019 14:02:20 +0900
Message-Id: <8b0c833bde42e761cadfd3542263ad7a8be5eb5b.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210315_410528_1EB43458 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Levente Kurusa <levex@linux.com>,
 Octavian Purdila <tavi.purdila@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Yuan Liu <liuyuan@google.com>, linux-kernel-library@freelists.org,
 Hajime Tazaki <thehajime@gmail.com>
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
 arch/um/lkl/include/asm/page.h          | 14 ++++++
 arch/um/lkl/include/asm/pgtable.h       | 62 +++++++++++++++++++++++
 arch/um/lkl/include/uapi/asm/host_ops.h |  5 ++
 arch/um/lkl/mm/bootmem.c                | 66 +++++++++++++++++++++++++
 4 files changed, 147 insertions(+)
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
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index 7cfb0a93e6a6..6bbc94c120be 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -17,8 +17,13 @@ struct lkl_jmp_buf {
  * These operations must be provided by a host library or by the application
  * itself.
  *
+ * @mem_alloc - allocate memory
+ * @mem_free - free memory
+ *
  */
 struct lkl_host_operations {
+	void *(*mem_alloc)(unsigned long mem);
+	void (*mem_free)(void *mem);
 };
 
 void lkl_bug(const char *fmt, ...);
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
