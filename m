Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8421D5B3D
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 23:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogHtuizwqFx2gwqMVUwVMrjAWh5DWzJEhqThbLvTEc8=; b=jdyz8O7L1wSd6z
	Rkx1pVIHf5NV1CxmAsF1+/ql+QU6/p/3urSGrKxIdxthQmji7oMNFWX+QtONddQ3eg7+x/uk9tKxY
	G0cs7363ogimkTAxxZhQubCK3/1IxRnqRzFCsEuCBIHBVb9S1k4nFxcyeAZcqwb9NVUJ2aAhZKwzx
	m463d742X3yKmuH7CU1HFW4TgN3AaYFzxvQmPBLkGmr1q22PyCxP6NQEPrs06xagFcuOpeV02WdQb
	0VIY87muh4w+Vf90MrJae8tTqtzRInP6z33MUNUb+TyVDdZ53787tZ3kPItjabnhr/lDZIWbzP2KA
	TFvIgk0Zlc0e1Xjlkcwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhcy-0008D2-N3; Fri, 15 May 2020 21:12:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhcu-0008Ak-Ft; Fri, 15 May 2020 21:12:17 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 658E2205CB;
 Fri, 15 May 2020 21:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589577135;
 bh=UmRPGOLdKmuTI3Qv0jzWmP0JQ6FJlc6TDky71yMCXsw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nxT0Ssf9yY8pLVLUEFt5SAsZlyL5o6RvbYcpe/Ogb/hZ+Ibv3VYpsIHopMwIvk69A
 +v0QRtIwEwpLk0FCwhPrY/meT71ffNnp97a68i1ipAlCz7NidwUH9DVZrUpfKzkMPS
 TuSlq3nyhe5fsuqvT1isjduKVkMQeXc1Kt6J9V7M=
Date: Fri, 15 May 2020 14:12:11 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 00/12] mm: consolidate definitions of page table
 accessors
Message-Id: <20200515141211.653db07a4e7142107a57cf24@linux-foundation.org>
In-Reply-To: <20200514170327.31389-1-rppt@kernel.org>
References: <20200514170327.31389-1-rppt@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_141216_567331_A35B7D6D 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-m68k@vger.kernel.org, Rich Felker <dalias@libc.org>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 linux-csky@vger.kernel.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Thomas Gleixner <tglx@linutronix.de>, Richard Weinberger <richard@nod.at>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 20:03:15 +0300 Mike Rapoport <rppt@kernel.org> wrote:

> The low level page table accessors (pXY_index(), pXY_offset()) are
> duplicated across all architectures and sometimes more than once. For
> instance, we have 31 definition of pgd_offset() for 25 supported
> architectures.
> 
> Most of these definitions are actually identical and typically it boils
> down to, e.g. 
> 
> static inline unsigned long pmd_index(unsigned long address)
> {
>         return (address >> PMD_SHIFT) & (PTRS_PER_PMD - 1);
> }
> 
> static inline pmd_t *pmd_offset(pud_t *pud, unsigned long address)
> {
>         return (pmd_t *)pud_page_vaddr(*pud) + pmd_index(address);
> }
> 
> These definitions can be shared among 90% of the arches provided XYZ_SHIFT,
> PTRS_PER_XYZ and xyz_page_vaddr() are defined.
> 
> For architectures that really need a custom version there is always
> possibility to override the generic version with the usual ifdefs magic.
> 
> These patches introduce include/linux/pgtable.h that replaces
> include/asm-generic/pgtable.h and add the definitions of the page table
> accessors to the new header.

hm,

>  712 files changed, 684 insertions(+), 2021 deletions(-)

big!

There's a lot of stuff going on at present (I suspect everyone is
sitting at home coding up a storm).  However this all merged up fairly
cleanly, haven't tried compiling it yet.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
