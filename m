Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9187A15399
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 20:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=QfpBaQAkEIoV0+/fXfCxBXcvpSBRY2qS8n4NPbl/mPU=; b=nCeyNPRuasPpd/qLt5pWVXZ+I
	q1s4Wu4vqGFrZ5oB0KnfbOrx0xluLnGZqbep373Wuu0IP37ZvD0nYW/7T73B9f0owc2fW0qLlLggj
	00KCqB6eTuoQHZ37YV9kSlFQ1oCjJcLiAjeRctpFvpQ80P3+cyRE2Q1KmqnJBy9HQzRMh6agg24qc
	R/RxgbbM8jkXjz6Uj6hdStSvu01Wjz4A7SEacii5TNDQ62AZJkw4Iv52lDZEx/ER4OtMhPiif1q3a
	X8XS283fvf1uKAP4BXeXt7b3vZQqJC9L7KIbYeSlVUAxf+X2V09sWLF8trbEWdYlwfhwCSw5sTre7
	S3ywihCJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNiJL-00057x-1U; Mon, 06 May 2019 18:25:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNiJI-00056c-Mk
 for linux-um@lists.infradead.org; Mon, 06 May 2019 18:25:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so6854262pgi.12
 for <linux-um@lists.infradead.org>; Mon, 06 May 2019 11:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=NXCCd9DEwpVv+CkVk+97oddxbHXiAPPbrF6iGBSrYgc=;
 b=NKrWKCiGbzmza35fOtOMvL+ftXETfh3uUcp/GkaCXcI8/XzVP8qVDBZioaj7yzgwas
 2tQRRTKTuRAtOwQhT+kcUBv2qp2jRZVnznAovTkgFRvmAuuaShMFB+Nx1bbVUNa9A7OX
 8BLulEh57QbYge20tVCIr34v+fwMGVGOSH1ehzMLel+zcPUV1nVeQpw7cWLe4F7TLSOw
 ++VBDFOhS3lKU6/bS8dLLIX6A8ANpsIH1DryjqnbCnoWXwVNSYR3C7RBe/CPhV/P7ncT
 Cg2Mr2IcrlFerHMT/L21aU76jEgkMtiGDQAE6F2Y4uyRJKfpkAmDpf2MCdenO33CvIPF
 KysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=NXCCd9DEwpVv+CkVk+97oddxbHXiAPPbrF6iGBSrYgc=;
 b=PpqCN/UAOqANrhSNTTInMNjT0tcJX0KpMtZcidpjCxZ/IQz+y7NtwnAmExHH0CX02f
 VOHr4Y54WxE14xSmnh/kg1bXpIQlGMb7WeeCHznwqRncAsjn7uQbFr93IbNbxGlkeD0i
 cEuuBviXAeKFubgIBI6k7DOubB7A1f6VY4MUXR+spa3Z9d6oxopYLJe1xHXnQhpZvdor
 mBWybJSG5sJvFCwaU1ZUhZqSVAoSP4trtbtWGyowf0sVaf2z/k4DIDN5DbN03SnOWPuj
 sPSw7dDIqf3O+9NHoiHfSInygaHmz6ud5+yrJwLkXYfk3GqZ5qHfuef3Z8IOjuJIBcFN
 +GpA==
X-Gm-Message-State: APjAAAUydVEfwLaOfn+2xSECc8i934M9RoM8c222fx1a+TsCWp6v8IAx
 i/GPqxymrqehsZNxWFgmHCm8+w==
X-Google-Smtp-Source: APXvYqz/rXdpBxODnklgvIEL8bDQcS0bWQdd3xgt2Ribpt+WuSOewfTAdZg7WDT5L829vlRrQKqfdA==
X-Received: by 2002:a62:121c:: with SMTP id a28mr34935323pfj.58.1557167153191; 
 Mon, 06 May 2019 11:25:53 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id x66sm15776570pfb.78.2019.05.06.11.25.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 11:25:52 -0700 (PDT)
Date: Mon, 06 May 2019 11:25:52 -0700 (PDT)
X-Google-Original-Date: Mon, 06 May 2019 11:25:42 PDT (-0700)
Subject: Re: [PATCH 13/15] riscv: switch to generic version of pte allocation
In-Reply-To: <1556810922-20248-14-git-send-email-rppt@linux.ibm.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: rppt@linux.ibm.com
Message-ID: <mhng-c23d2e8b-1dc0-48db-a4cf-d6964ca650c0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_112556_756874_EA9F7B05 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: mhocko@suse.com, catalin.marinas@arm.com, linux-mips@vger.kernel.org,
 guoren@kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 mpe@ellerman.id.au, deller@gmx.de, x86@kernel.org, linux@armlinux.org.uk,
 willy@infradead.org, rppt@linux.ibm.com, geert@linux-m68k.org,
 mattst88@gmail.com, sammy@sammy.net, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, richard@nod.at, linux-m68k@lists.linux-m68k.org,
 green.hu@gmail.com, nios2-dev@lists.rocketboards.org, gxt@pku.edu.cn,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, rkuo@codeaurora.org, paul.burton@mips.com,
 linux-alpha@vger.kernel.org, lftan@altera.com, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 02 May 2019 08:28:40 PDT (-0700), rppt@linux.ibm.com wrote:
> The only difference between the generic and RISC-V implementation of PTE
> allocation is the usage of __GFP_RETRY_MAYFAIL for both kernel and user
> PTEs and the absence of __GFP_ACCOUNT for the user PTEs.
>
> The conversion to the generic version removes the __GFP_RETRY_MAYFAIL and
> ensures that GFP_ACCOUNT is used for the user PTE allocations.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

I'm assuming this is going in along with the rest of the patches, so I'm not
going to add it to my tree.

>
> The pte_free() and pte_free_kernel() versions are identical to the generic
> ones and can be simply dropped.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/riscv/include/asm/pgalloc.h | 29 ++---------------------------
>  1 file changed, 2 insertions(+), 27 deletions(-)
>
> diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
> index 94043cf..48f28bb 100644
> --- a/arch/riscv/include/asm/pgalloc.h
> +++ b/arch/riscv/include/asm/pgalloc.h
> @@ -18,6 +18,8 @@
>  #include <linux/mm.h>
>  #include <asm/tlb.h>
>
> +#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
> +
>  static inline void pmd_populate_kernel(struct mm_struct *mm,
>  	pmd_t *pmd, pte_t *pte)
>  {
> @@ -82,33 +84,6 @@ static inline void pmd_free(struct mm_struct *mm, pmd_t *pmd)
>
>  #endif /* __PAGETABLE_PMD_FOLDED */
>
> -static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
> -{
> -	return (pte_t *)__get_free_page(
> -		GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_ZERO);
> -}
> -
> -static inline struct page *pte_alloc_one(struct mm_struct *mm)
> -{
> -	struct page *pte;
> -
> -	pte = alloc_page(GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_ZERO);
> -	if (likely(pte != NULL))
> -		pgtable_page_ctor(pte);
> -	return pte;
> -}
> -
> -static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
> -{
> -	free_page((unsigned long)pte);
> -}
> -
> -static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
> -{
> -	pgtable_page_dtor(pte);
> -	__free_page(pte);
> -}
> -
>  #define __pte_free_tlb(tlb, pte, buf)   \
>  do {                                    \
>  	pgtable_page_dtor(pte);         \

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
