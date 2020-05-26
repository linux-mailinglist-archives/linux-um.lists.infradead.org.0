Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9617B1D1116
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 13:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/7SWxUlG9vboKi+1BO/PjB6A6eiGNINRS9DzlbvgD8=; b=isTheAR7aiutfXHzkN8d5oYxQ
	5uUJ8DR2lrRInMwRfAMbNrNhorNp9NOR4rkFuGK9efLZ4QXpRHzuf4MXpjxMCTkOk4qhln0L8ZlsR
	Qc3U6KNrynRF3bqQIUme6kWuobIPb1NlHaWsr3tXS4SJ8VxHTDa8fu1FUiiUx6eRe1B3ARfdD01iz
	LoM6fTUMsx2anaTi/j3Xi+SlD9hYHJqUi/XcdRTkRtEhoGPPxId7ImMli0+Q++l9S+849o4weuXLU
	aozyBpSTx+q1LQRe5qzqGHHrcw6EzPzr50T+CUW6j/x8Hk1vdtYVEvBXggFgWSTTOaiDxxmhNpnrN
	2jDc+4FyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpQv-0003Fg-27; Wed, 13 May 2020 11:20:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpQn-0002dj-6r; Wed, 13 May 2020 11:20:11 +0000
Received: from [10.44.0.192] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2F70206E5;
 Wed, 13 May 2020 11:19:49 +0000 (UTC)
Subject: Re: [PATCH 06/12] m68k/mm: move {cache,nocahe}_page() definitions
 close to their user
To: Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org
References: <20200512184422.12418-1-rppt@kernel.org>
 <20200512184422.12418-7-rppt@kernel.org>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <b59ef7eb-537e-c092-949f-225322f94e2c@linux-m68k.org>
Date: Wed, 13 May 2020 21:19:45 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512184422.12418-7-rppt@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_042009_309918_20220ABE 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
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
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Mike,

On 13/5/20 4:44 am, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The cache_page() and nocache_page() functions are only used by the morotola
                                                                      ^^^^^^^^
                                                                      motorola

> MMU variant for setting caching attributes for the page table pages.
> 
> Move the definitions of these functions from
> arch/m68k/include/asm/motorola_pgtable.h closer to their usage in
> arch/m68k/mm/motorola.c and drop unused definition in
> arch/m68k/include/asm/mcf_pgtable.h.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Greg Ungerer <gerg@linux-m68k.org>

Regards
Greg


> ---
>   arch/m68k/include/asm/mcf_pgtable.h      | 40 ---------------------
>   arch/m68k/include/asm/motorola_pgtable.h | 44 ------------------------
>   arch/m68k/mm/motorola.c                  | 43 +++++++++++++++++++++++
>   3 files changed, 43 insertions(+), 84 deletions(-)
> 
> diff --git a/arch/m68k/include/asm/mcf_pgtable.h b/arch/m68k/include/asm/mcf_pgtable.h
> index 0031cd387b75..737e826294f3 100644
> --- a/arch/m68k/include/asm/mcf_pgtable.h
> +++ b/arch/m68k/include/asm/mcf_pgtable.h
> @@ -328,46 +328,6 @@ extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
>   #define pte_offset_kernel(dir, address) \
>   	((pte_t *) __pmd_page(*(dir)) + __pte_offset(address))
>   
> -/*
> - * Disable caching for page at given kernel virtual address.
> - */
> -static inline void nocache_page(void *vaddr)
> -{
> -	pgd_t *dir;
> -	p4d_t *p4dp;
> -	pud_t *pudp;
> -	pmd_t *pmdp;
> -	pte_t *ptep;
> -	unsigned long addr = (unsigned long) vaddr;
> -
> -	dir = pgd_offset_k(addr);
> -	p4dp = p4d_offset(dir, addr);
> -	pudp = pud_offset(p4dp, addr);
> -	pmdp = pmd_offset(pudp, addr);
> -	ptep = pte_offset_kernel(pmdp, addr);
> -	*ptep = pte_mknocache(*ptep);
> -}
> -
> -/*
> - * Enable caching for page at given kernel virtual address.
> - */
> -static inline void cache_page(void *vaddr)
> -{
> -	pgd_t *dir;
> -	p4d_t *p4dp;
> -	pud_t *pudp;
> -	pmd_t *pmdp;
> -	pte_t *ptep;
> -	unsigned long addr = (unsigned long) vaddr;
> -
> -	dir = pgd_offset_k(addr);
> -	p4dp = p4d_offset(dir, addr);
> -	pudp = pud_offset(p4dp, addr);
> -	pmdp = pmd_offset(pudp, addr);
> -	ptep = pte_offset_kernel(pmdp, addr);
> -	*ptep = pte_mkcache(*ptep);
> -}
> -
>   /*
>    * Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e))
>    */
> diff --git a/arch/m68k/include/asm/motorola_pgtable.h b/arch/m68k/include/asm/motorola_pgtable.h
> index 9e5a3de21e15..e1594acf7c7e 100644
> --- a/arch/m68k/include/asm/motorola_pgtable.h
> +++ b/arch/m68k/include/asm/motorola_pgtable.h
> @@ -227,50 +227,6 @@ static inline pte_t *pte_offset_kernel(pmd_t *pmdp, unsigned long address)
>   #define pte_offset_map(pmdp,address) ((pte_t *)__pmd_page(*pmdp) + (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
>   #define pte_unmap(pte)		((void)0)
>   
> -/* Prior to calling these routines, the page should have been flushed
> - * from both the cache and ATC, or the CPU might not notice that the
> - * cache setting for the page has been changed. -jskov
> - */
> -static inline void nocache_page(void *vaddr)
> -{
> -	unsigned long addr = (unsigned long)vaddr;
> -
> -	if (CPU_IS_040_OR_060) {
> -		pgd_t *dir;
> -		p4d_t *p4dp;
> -		pud_t *pudp;
> -		pmd_t *pmdp;
> -		pte_t *ptep;
> -
> -		dir = pgd_offset_k(addr);
> -		p4dp = p4d_offset(dir, addr);
> -		pudp = pud_offset(p4dp, addr);
> -		pmdp = pmd_offset(pudp, addr);
> -		ptep = pte_offset_kernel(pmdp, addr);
> -		*ptep = pte_mknocache(*ptep);
> -	}
> -}
> -
> -static inline void cache_page(void *vaddr)
> -{
> -	unsigned long addr = (unsigned long)vaddr;
> -
> -	if (CPU_IS_040_OR_060) {
> -		pgd_t *dir;
> -		p4d_t *p4dp;
> -		pud_t *pudp;
> -		pmd_t *pmdp;
> -		pte_t *ptep;
> -
> -		dir = pgd_offset_k(addr);
> -		p4dp = p4d_offset(dir, addr);
> -		pudp = pud_offset(p4dp, addr);
> -		pmdp = pmd_offset(pudp, addr);
> -		ptep = pte_offset_kernel(pmdp, addr);
> -		*ptep = pte_mkcache(*ptep);
> -	}
> -}
> -
>   /* Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e)) */
>   #define __swp_type(x)		(((x).val >> 4) & 0xff)
>   #define __swp_offset(x)		((x).val >> 12)
> diff --git a/arch/m68k/mm/motorola.c b/arch/m68k/mm/motorola.c
> index 904c2a663977..8e5e74121a78 100644
> --- a/arch/m68k/mm/motorola.c
> +++ b/arch/m68k/mm/motorola.c
> @@ -45,6 +45,49 @@ unsigned long mm_cachebits;
>   EXPORT_SYMBOL(mm_cachebits);
>   #endif
>   
> +/* Prior to calling these routines, the page should have been flushed
> + * from both the cache and ATC, or the CPU might not notice that the
> + * cache setting for the page has been changed. -jskov
> + */
> +static inline void nocache_page(void *vaddr)
> +{
> +	unsigned long addr = (unsigned long)vaddr;
> +
> +	if (CPU_IS_040_OR_060) {
> +		pgd_t *dir;
> +		p4d_t *p4dp;
> +		pud_t *pudp;
> +		pmd_t *pmdp;
> +		pte_t *ptep;
> +
> +		dir = pgd_offset_k(addr);
> +		p4dp = p4d_offset(dir, addr);
> +		pudp = pud_offset(p4dp, addr);
> +		pmdp = pmd_offset(pudp, addr);
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		*ptep = pte_mknocache(*ptep);
> +	}
> +}
> +
> +static inline void cache_page(void *vaddr)
> +{
> +	unsigned long addr = (unsigned long)vaddr;
> +
> +	if (CPU_IS_040_OR_060) {
> +		pgd_t *dir;
> +		p4d_t *p4dp;
> +		pud_t *pudp;
> +		pmd_t *pmdp;
> +		pte_t *ptep;
> +
> +		dir = pgd_offset_k(addr);
> +		p4dp = p4d_offset(dir, addr);
> +		pudp = pud_offset(p4dp, addr);
> +		pmdp = pmd_offset(pudp, addr);
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		*ptep = pte_mkcache(*ptep);
> +	}
> +}
>   
>   /*
>    * Motorola 680x0 user's manual recommends using uncached memory for address
> 

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
