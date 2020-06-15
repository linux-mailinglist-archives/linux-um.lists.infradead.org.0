Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BB41F8DAF
	for <lists+linux-um@lfdr.de>; Mon, 15 Jun 2020 08:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yz9XgBbwzCHDgerUFnGhp3S9OxAF+QEWLa+/ikJC4NM=; b=ieXi+9gTuEFBeV
	5yhjYa6DISQT27vhxBSTQch4P2/7RnHF4e4+lRGFHl5r/5j4yUYNaPVdb6FD3HlYU5hZ8JDxTBXj7
	2yuTQnDa5rkq3l359B2qNEygljaSb2yLiUH6R76m/XUPBCT2aNmyKDiROp3pBtSsjquYgVprjIjFT
	aObMAGH9NxfRmf5sMIMZ4g7m8+yZdxX91E1drX+kOg3t9DWVM6F6/qz6t6rhoNX2PmQEdTshP4p0f
	49irFAEgtko/5l5MNi9DW33xQ60FZ8EKel3zE5gIMWnL54nfqq9nJmFpUbK1HqBO/VRugreJtWSYh
	JNhJa0iz5XiaRNGkTKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkiWG-00045v-Jy; Mon, 15 Jun 2020 06:22:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiWB-00043l-Uz; Mon, 15 Jun 2020 06:22:53 +0000
Received: from kernel.org (unknown [87.70.26.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B91020679;
 Mon, 15 Jun 2020 06:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592202170;
 bh=IKJvBvjeDqS8XxYjcYKMghfxByCgZw7vR9AeiQrgnp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S3UP8AeeMsW+v5i18Wx1TbAZ8Ci6uCYg9fR4ByYtTpOdS7/JA4RJHwdk/5UC+Ci6O
 KVADb/LwUMXlZyQ1/wXlmdBnhEry8xB5YILPg9s3jHQ+IqKIE1ZBXLOg7MWig6SY9w
 Mm31hVNJqLf3PP+UItsGUlwES2gS+vhdSe8ZCWkU=
Date: Mon, 15 Jun 2020 09:22:34 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH 04/21] mm: free_area_init: use maximal zone PFNs rather
 than zone sizes
Message-ID: <20200615062234.GA7882@kernel.org>
References: <20200412194859.12663-5-rppt@kernel.org>
 <f53e68db-ed81-6ef6-5087-c7246d010ea2@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f53e68db-ed81-6ef6-5087-c7246d010ea2@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_232252_041694_B83746D4 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dalias@libc.org, linux-ia64@vger.kernel.org, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, heiko.carstens@de.ibm.com, x86@kernel.org,
 linux-mips@vger.kernel.org, James.Bottomley@hansenpartnership.com,
 jcmvbkbc@gmail.com, guoren@kernel.org, linux-csky@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, bcain@codeaurora.org, corbet@lwn.net,
 mpe@ellerman.id.au, linux-hexagon@vger.kernel.org, deller@gmx.de,
 linux-sh@vger.kernel.org, linux@armlinux.org.uk, ley.foon.tan@intel.com,
 rppt@linux.ibm.com, ysato@users.sourceforge.jp, geert@linux-m68k.org,
 linux-arm-kernel@lists.infradead.org, msalter@redhat.com, mattst88@gmail.com,
 linux-snps-arc@lists.infradead.org, uclinux-h8-devel@lists.sourceforge.jp,
 linux-xtensa@linux-xtensa.org, nickhu@andestech.com,
 linux-um@lists.infradead.org, richard@nod.at, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, green.hu@gmail.com, paul.walmsley@sifive.com,
 shorne@gmail.com, mhocko@kernel.org, gxt@pku.edu.cn,
 Hoan@os.amperecomputing.com, monstr@monstr.eu, tony.luck@intel.com,
 bhe@redhat.com, linux-parisc@vger.kernel.org, linux-mm@kvack.org,
 vgupta@synopsys.com, linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, tsbogend@alpha.franken.de,
 linuxppc-dev@lists.ozlabs.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Greg,

On Mon, Jun 15, 2020 at 01:53:42PM +1000, Greg Ungerer wrote:
> Hi Mike,
> 
> From: Mike Rapoport <rppt@linux.ibm.com>
> > Currently, architectures that use free_area_init() to initialize memory map
> > and node and zone structures need to calculate zone and hole sizes. We can
> > use free_area_init_nodes() instead and let it detect the zone boundaries
> > while the architectures will only have to supply the possible limits for
> > the zones.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> 
> This is causing some new warnings for me on boot on at least one non-MMU m68k target:

There were a couple of changes that cause this. The free_area_init()
now relies on memblock data and architectural limits for zone sizes
rather than on explisit pfns calculated by the arch code. I've update
motorola variant and missed coldfire. Angelo sent a fix for mcfmmu.c
[1] and I've updated it to include nommu as well

[1] https://lore.kernel.org/linux-m68k/20200614225119.777702-1-angelo.dureghello@timesys.com

From 55b8523df2a5c4565b132c0691990f0821040fec Mon Sep 17 00:00:00 2001
From: Angelo Dureghello <angelo.dureghello@timesys.com>
Date: Mon, 15 Jun 2020 00:51:19 +0200
Subject: [PATCH] m68k: fix registration of memory regions with memblock

Commit 3f08a302f533 ("mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP option")
introduced assumption that UMA systems have their memory at node 0 and
updated most of them, but it forgot nommu and coldfire variants of m68k.

The later change in free area initialization in commit fa3354e4ea39 ("mm:
free_area_init: use maximal zone PFNs rather than zone sizes") exposed that
and caused a lot of "BUG: Bad page state in process swapper" reports.

Using memblock_add_node() with nid = 0 to register memory banks solves the
problem.

Fixes: 3f08a302f533 ("mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP option")
Fixes: fa3354e4ea39 ("mm: free_area_init: use maximal zone PFNs rather than zone sizes")
Signed-off-by: Angelo Dureghello <angelo.dureghello@timesys.com>
Co-developed-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/m68k/kernel/setup_no.c | 2 +-
 arch/m68k/mm/mcfmmu.c       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/m68k/kernel/setup_no.c b/arch/m68k/kernel/setup_no.c
index e779b19e0193..0c4589a39ba9 100644
--- a/arch/m68k/kernel/setup_no.c
+++ b/arch/m68k/kernel/setup_no.c
@@ -138,7 +138,7 @@ void __init setup_arch(char **cmdline_p)
 	pr_debug("MEMORY -> ROMFS=0x%p-0x%06lx MEM=0x%06lx-0x%06lx\n ",
 		 __bss_stop, memory_start, memory_start, memory_end);
 
-	memblock_add(memory_start, memory_end - memory_start);
+	memblock_add_node(memory_start, memory_end - memory_start, 0);
 
 	/* Keep a copy of command line */
 	*cmdline_p = &command_line[0];
diff --git a/arch/m68k/mm/mcfmmu.c b/arch/m68k/mm/mcfmmu.c
index 29f47923aa46..7d04210d34f0 100644
--- a/arch/m68k/mm/mcfmmu.c
+++ b/arch/m68k/mm/mcfmmu.c
@@ -174,7 +174,7 @@ void __init cf_bootmem_alloc(void)
 	m68k_memory[0].addr = _rambase;
 	m68k_memory[0].size = _ramend - _rambase;
 
-	memblock_add(m68k_memory[0].addr, m68k_memory[0].size);
+	memblock_add_node(m68k_memory[0].addr, m68k_memory[0].size, 0);
 
 	/* compute total pages in system */
 	num_pages = PFN_DOWN(_ramend - _rambase);
-- 
2.26.2


> ...
> NET: Registered protocol family 17
> BUG: Bad page state in process swapper  pfn:20165
> page:41fe0ca0 refcount:0 mapcount:1 mapping:00000000 index:0x0
> flags: 0x0()
> raw: 00000000 00000100 00000122 00000000 00000000 00000000 00000000 00000000
> page dumped because: nonzero mapcount
> CPU: 0 PID: 1 Comm: swapper Not tainted 5.8.0-rc1-00001-g3a38f8a60c65-dirty #1
> Stack from 404c9ebc:
>         404c9ebc 4029ab28 4029ab28 40088470 41fe0ca0 40299e21 40299df1 404ba2a4
>         00020165 00000000 41fd2c10 402c7ba0 41fd2c04 40088504 41fe0ca0 40299e21
>         00000000 40088a12 41fe0ca0 41fe0ca4 0000020a 00000000 00000001 402ca000
>         00000000 41fe0ca0 41fd2c10 41fd2c10 00000000 00000000 402b2388 00000001

...

> 
> System boots pretty much as normal through user space after this.
> Seems to be fully operational despite all those BUGONs.
> 
> Specifically this is a M5208EVB target (arch/m68k/configs/m5208evb).
> 
> 
> [snip]
> > diff --git a/arch/m68k/mm/init.c b/arch/m68k/mm/init.c
> > index b88d510d4fe3..6d3147662ff2 100644
> > --- a/arch/m68k/mm/init.c
> > +++ b/arch/m68k/mm/init.c
> > @@ -84,7 +84,7 @@ void __init paging_init(void)
> >  	 * page_alloc get different views of the world.
> >  	 */
> >  	unsigned long end_mem = memory_end & PAGE_MASK;
> > -	unsigned long zones_size[MAX_NR_ZONES] = { 0, };
> > +	unsigned long max_zone_pfn[MAX_NR_ZONES] = { 0, };
> >  	high_memory = (void *) end_mem;
> > @@ -98,8 +98,8 @@ void __init paging_init(void)
> >  	 */
> >  	set_fs (USER_DS);
> > -	zones_size[ZONE_DMA] = (end_mem - PAGE_OFFSET) >> PAGE_SHIFT;
> > -	free_area_init(zones_size);
> > +	max_zone_pfn[ZONE_DMA] = end_mem >> PAGE_SHIFT;
> > +	free_area_init(max_zone_pfn);
> 
> This worries me a little. On this target PAGE_OFFSET will be non-0.
> Thoughts?

The initialization in free_area_init() takes into account the actual
physical memory sizing from memblock and max_zone_pfn as the
architectural limit for possible zone extents. This (and the patch
above) is enough to properly setup node and zones. 

> Regards
> Greg
> 
> 
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
