Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCA21BE3DD
	for <lists+linux-um@lfdr.de>; Wed, 29 Apr 2020 18:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAtKubNn5V+fHkZDSpzDLbA3Lf7rt395IsXrFXjsmkU=; b=JYTkXZw4BO7Xqc
	GWXVMUoHOQltEWsAnRGdwPkU0XZexFcr+1CLLEY52sRfbQnktHF+jiY/Do4OQs5py/fyV/xjKhYNT
	9cV96ZUEtTz1UjtXjVoJfsdEQYSV1EPHduPawRso0lv8nszy3SR/SgdOZK3II1nyIoJ4NhXX48BvG
	JNtHNmlV3FW/MuUB3Q/jYeHB1rj9YJ2caNRM3myfGoaxM+Nx2DKrfn55t6UcxbWxWgYZMhWrhdZjm
	VjCygCwipH/9B+wuNPekWULnd8zJE0m+SKbQSAsTYrv9u9D1ZjoQs+nUFiwAh6LkOAug6pa17yIs2
	FfenFUoMsz/nS0A1dneA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpax-0006mY-NF; Wed, 29 Apr 2020 16:29:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpas-0006iJ-6h; Wed, 29 Apr 2020 16:29:55 +0000
Received: from kernel.org (unknown [87.70.161.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4622D2073E;
 Wed, 29 Apr 2020 16:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588177793;
 bh=0WLAW3RaOJqIeviw62D+1sbYIwOWpLfyLvSFzBZ/1RI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bX4UmI7YY7MbsM77fB95EYPVrNNMyR/EBLX8BbChEAsts+ChnIZnmlY0s5J3v1ES0
 21Fy8E5o4VRlcz1gU4A9jUkztNYslFtzPSQ8j0i0q67mtFD7Z5RqJBXEJMqoU2jMSR
 FjIyjtx7U4phJ9zZIH0PgtWqCfz1Qfs4hHO4D1HM=
Date: Wed, 29 Apr 2020 19:29:17 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2.5 16/20] mm: remove early_pfn_in_nid() and
 CONFIG_NODES_SPAN_OTHER_NODES
Message-ID: <20200429162917.GL14260@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-17-rppt@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429121126.17989-17-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092954_287113_205FC5E9 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org, Baoquan He <bhe@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-sh@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-mips@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Qian Cai <cai@lca.pw>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:11:22PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The commit f47ac088c406 ("mm: memmap_init: iterate over memblock regions
> rather that check each PFN") made early_pfn_in_nid() obsolete and since
> CONFIG_NODES_SPAN_OTHER_NODES is only used to pick a stub or a real
> implementation of early_pfn_in_nid() it is also not needed anymore.
> 
> Remove both early_pfn_in_nid() and the CONFIG_NODES_SPAN_OTHER_NODES.
> 
> Co-developed-by: Hoan Tran <Hoan@os.amperecomputing.com>
> Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---

Here's the version with the updated changelog:

From 7415d1a9b7000c6eecd9f63770592e4d4a8d2463 Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Sat, 11 Apr 2020 11:26:49 +0300
Subject: [PATCH v2.5] mm: remove early_pfn_in_nid() and CONFIG_NODES_SPAN_OTHER_NODES

The memmap_init() function was made to iterate over memblock regions and as
the result the early_pfn_in_nid() function became obsolete.
Since CONFIG_NODES_SPAN_OTHER_NODES is only used to pick a stub or a real
implementation of early_pfn_in_nid(), it is also not needed anymore.

Remove both early_pfn_in_nid() and the CONFIG_NODES_SPAN_OTHER_NODES.

Co-developed-by: Hoan Tran <Hoan@os.amperecomputing.com>
Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/powerpc/Kconfig |  9 ---------
 arch/sparc/Kconfig   |  9 ---------
 arch/x86/Kconfig     |  9 ---------
 mm/page_alloc.c      | 20 --------------------
 4 files changed, 47 deletions(-)

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 5f86b22b7d2c..74f316deeae1 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -685,15 +685,6 @@ config ARCH_MEMORY_PROBE
 	def_bool y
 	depends on MEMORY_HOTPLUG
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.  Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.  See memmap_init_zone()
-# for details.
-config NODES_SPAN_OTHER_NODES
-	def_bool y
-	depends on NEED_MULTIPLE_NODES
-
 config STDBINUTILS
 	bool "Using standard binutils settings"
 	depends on 44x
diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index 795206b7b552..0e4f3891b904 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -286,15 +286,6 @@ config NODES_SHIFT
 	  Specify the maximum number of NUMA Nodes available on the target
 	  system.  Increases memory reserved to accommodate various tables.
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.  Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.  See memmap_init_zone()
-# for details.
-config NODES_SPAN_OTHER_NODES
-	def_bool y
-	depends on NEED_MULTIPLE_NODES
-
 config ARCH_SPARSEMEM_ENABLE
 	def_bool y if SPARC64
 	select SPARSEMEM_VMEMMAP_ENABLE
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index f8bf218a169c..1ec2a5e2fef6 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -1581,15 +1581,6 @@ config X86_64_ACPI_NUMA
 	---help---
 	  Enable ACPI SRAT based node topology detection.
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.  Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.  See memmap_init_zone()
-# for details.
-config NODES_SPAN_OTHER_NODES
-	def_bool y
-	depends on X86_64_ACPI_NUMA
-
 config NUMA_EMU
 	bool "NUMA emulation"
 	depends on NUMA
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 8d112defaead..d35ca0996a09 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -1541,26 +1541,6 @@ int __meminit early_pfn_to_nid(unsigned long pfn)
 }
 #endif /* CONFIG_NEED_MULTIPLE_NODES */
 
-#ifdef CONFIG_NODES_SPAN_OTHER_NODES
-/* Only safe to use early in boot when initialisation is single-threaded */
-static inline bool __meminit early_pfn_in_nid(unsigned long pfn, int node)
-{
-	int nid;
-
-	nid = __early_pfn_to_nid(pfn, &early_pfnnid_cache);
-	if (nid >= 0 && nid != node)
-		return false;
-	return true;
-}
-
-#else
-static inline bool __meminit early_pfn_in_nid(unsigned long pfn, int node)
-{
-	return true;
-}
-#endif
-
-
 void __init memblock_free_pages(struct page *page, unsigned long pfn,
 							unsigned int order)
 {
-- 
2.26.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
