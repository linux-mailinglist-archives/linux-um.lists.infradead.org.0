Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A781B2200
	for <lists+linux-um@lfdr.de>; Tue, 21 Apr 2020 10:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVA59yfQ+EmLq6xP2RB0jeGoqy56BlJbjX8/GsWvrlo=; b=leaCZ1cjgokOBK
	sco6XIKbRMS0OeNojz4e++0M1v66NvNIww3aGiU95jALeFMyaoCGYxgHSvnmp6VsCAULR6zbLQX78
	K5lNGBWBZyYHlH60uqvp1I3AND0ombZ6t0X8D01b4ygELyPynRT2hk/wzrlXYWhYYRJ4yB9ZK2r66
	CauNCqOvdZ6PpcbLCtvbwkCoosNaGVL56i2jCYnVdRFsLsheMkao6kHkNsQfwWIdW7wdhAhpUbD7D
	ocT+gm2bA2usjwnxdj3aYQwd3pwK1hHnF9ck827OMD1bNhcsu77X9p9eFIrD9KFJnIoAIztknLeva
	2+V4RmgRzbwIKUQ902Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQobd-0000cX-An; Tue, 21 Apr 2020 08:50:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQobS-0007IK-ML; Tue, 21 Apr 2020 08:50:04 +0000
Received: from kernel.org (unknown [87.71.41.92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8A7620B1F;
 Tue, 21 Apr 2020 08:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587459002;
 bh=9AREcPZgTLZoOQNS4HkOJCkkvxOi7Qh0sUZN50XGXA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xtIDLhOks9I+BKS5TYEqFJ9Vfc6A4ZSXltBCpypI67DEgioqz+65m6OacsoeIkbAA
 88yc/lqmFc8Ow2Y9SNd9/Z87ieKFQpgU+8EamCx23Pk7I9SAqDmbfCbYt/WaMhGXv6
 fkQQCkLj5UymWDJxhVN8pD6iX/cTrOoL+hLaJy1Q=
Date: Tue, 21 Apr 2020 11:49:35 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 02/21] mm: make early_pfn_to_nid() and related defintions
 close to each other
Message-ID: <20200421084935.GB14260@kernel.org>
References: <20200412194859.12663-1-rppt@kernel.org>
 <20200412194859.12663-3-rppt@kernel.org>
 <20200421022435.GP4247@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421022435.GP4247@MiWiFi-R3L-srv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_015002_800746_4ADF9C11 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-mips@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 10:24:35AM +0800, Baoquan He wrote:
> On 04/12/20 at 10:48pm, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > The early_pfn_to_nid() and it's helper __early_pfn_to_nid() are spread
> > around include/linux/mm.h, include/linux/mmzone.h and mm/page_alloc.c.
> > 
> > Drop unused stub for __early_pfn_to_nid() and move its actual generic
> > implementation close to its users.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  include/linux/mm.h     |  4 ++--
> >  include/linux/mmzone.h |  9 --------
> >  mm/page_alloc.c        | 51 +++++++++++++++++++++---------------------
> >  3 files changed, 27 insertions(+), 37 deletions(-)
> > 
> > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > index 5a323422d783..a404026d14d4 100644
> > --- a/include/linux/mm.h
> > +++ b/include/linux/mm.h
> > @@ -2388,9 +2388,9 @@ extern void sparse_memory_present_with_active_regions(int nid);
> >  
> >  #if !defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP) && \
> >      !defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID)
> > -static inline int __early_pfn_to_nid(unsigned long pfn,
> > -					struct mminit_pfnnid_cache *state)
> > +static inline int early_pfn_to_nid(unsigned long pfn)
> >  {
> > +	BUILD_BUG_ON(IS_ENABLED(CONFIG_NUMA));
> >  	return 0;
> >  }
> 
> It's better to make a separate patch to drop __early_pfn_to_nid() here.

Not sure it's really worth it.
This patch anyway only moves the code around without any actual changes.

> >  #else
> > diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> > index 1b9de7d220fb..7b5b6eba402f 100644
> > --- a/include/linux/mmzone.h
> > +++ b/include/linux/mmzone.h
> > @@ -1078,15 +1078,6 @@ static inline struct zoneref *first_zones_zonelist(struct zonelist *zonelist,
> >  #include <asm/sparsemem.h>
> >  #endif
> >  
> > -#if !defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID) && \
> > -	!defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP)
> > -static inline unsigned long early_pfn_to_nid(unsigned long pfn)
> > -{
> > -	BUILD_BUG_ON(IS_ENABLED(CONFIG_NUMA));
> > -	return 0;
> > -}
> > -#endif
> > -
> >  #ifdef CONFIG_FLATMEM
> >  #define pfn_to_nid(pfn)		(0)
> >  #endif
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index 0d012eda1694..1ac775bfc9cf 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -1504,6 +1504,31 @@ void __free_pages_core(struct page *page, unsigned int order)
> 
> #if defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID) || \
>         defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP)
> 
> This is the upper layer of ifdeffery scope.
> >  
> >  static struct mminit_pfnnid_cache early_pfnnid_cache __meminitdata;
> >  
> > +#ifndef CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID
> 
> Moving __early_pfn_to_nid() here makes the upper layer of ifdeferry
> scope a little werid. But seems no better way to optimize it.

It gets a bit better after patch 3 :)

> Otherwise, this patch looks good to me.
> 
> Reviewed-by: Baoquan He <bhe@redhat.com>

Thanks!

> > +
> > +/*
> > + * Required by SPARSEMEM. Given a PFN, return what node the PFN is on.
> > + */
> > +int __meminit __early_pfn_to_nid(unsigned long pfn,
> > +					struct mminit_pfnnid_cache *state)
> > +{
> > +	unsigned long start_pfn, end_pfn;
> > +	int nid;
> > +
> > +	if (state->last_start <= pfn && pfn < state->last_end)
> > +		return state->last_nid;
> > +
> > +	nid = memblock_search_pfn_nid(pfn, &start_pfn, &end_pfn);
> > +	if (nid != NUMA_NO_NODE) {
> > +		state->last_start = start_pfn;
> > +		state->last_end = end_pfn;
> > +		state->last_nid = nid;
> > +	}
> > +
> > +	return nid;
> > +}
> > +#endif /* CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID */
> > +
> >  int __meminit early_pfn_to_nid(unsigned long pfn)
> >  {
> >  	static DEFINE_SPINLOCK(early_pfn_lock);
> > @@ -6298,32 +6323,6 @@ void __meminit init_currently_empty_zone(struct zone *zone,
> >  	zone->initialized = 1;
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> > -#ifndef CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID
> > -
> > -/*
> > - * Required by SPARSEMEM. Given a PFN, return what node the PFN is on.
> > - */
> > -int __meminit __early_pfn_to_nid(unsigned long pfn,
> > -					struct mminit_pfnnid_cache *state)
> > -{
> > -	unsigned long start_pfn, end_pfn;
> > -	int nid;
> > -
> > -	if (state->last_start <= pfn && pfn < state->last_end)
> > -		return state->last_nid;
> > -
> > -	nid = memblock_search_pfn_nid(pfn, &start_pfn, &end_pfn);
> > -	if (nid != NUMA_NO_NODE) {
> > -		state->last_start = start_pfn;
> > -		state->last_end = end_pfn;
> > -		state->last_nid = nid;
> > -	}
> > -
> > -	return nid;
> > -}
> > -#endif /* CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID */
> > -
> >  /**
> >   * free_bootmem_with_active_regions - Call memblock_free_early_nid for each active range
> >   * @nid: The node to free memory on. If MAX_NUMNODES, all nodes are freed.
> > -- 
> > 2.25.1
> > 
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
