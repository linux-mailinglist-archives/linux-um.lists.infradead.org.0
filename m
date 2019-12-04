Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50FF113510
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 19:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OWtOnU4sLMGq7OIAy70mnpsJ96RWxvyLK/Zj0brpWF4=; b=BS4PPsGHMRqpFhUzeYh08I2C3
	8M17f83wFFt5sYkwDjaa3Aozaezijw3zqZoZ8R4wdWLnLmDzxTbZQpH3WLv2zLkYtg0X++nXmFEm3
	dh1hnre4zsKkvbcux5As96K61yi0baB41yZaPLHAqmcnQxLga90xwbXa2r356z7h4jXF7tUrNherk
	b3zpx6OPjJA6+7jibMsxng2sAzB99jcH6brhqlEi5Imr5vmkMRf3BX8xSJtsXceBgxewY8VPAMsjb
	XXxc6oAuaodzTX9xAoXqJoXmbur++bti60iIEUoUakdV5IakSK4dmG9RHnvgKT8KFpvymTH+FRiPK
	vho3cbxMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZUJ-00022b-Dz; Wed, 04 Dec 2019 18:34:59 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZUG-00021r-BU
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 18:34:58 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icZU4-0000uf-2a; Wed, 04 Dec 2019 18:34:44 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icZU1-0000AM-Jv; Wed, 04 Dec 2019 18:34:43 +0000
Subject: Re: [PATCH] Revert "um: Enable CONFIG_CONSTRUCTORS"
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <4913d030-84c0-0eb9-f8b2-c006a1dd0757@cambridgegreys.com>
 <20191204174346.78dfd358bd15.I19e7eb2601fbdc0270fb1e1b647a75301e9e4503@changeid>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <6581dcc9-daef-5a14-194c-1b351e3b8f85@cambridgegreys.com>
Date: Wed, 4 Dec 2019 18:34:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204174346.78dfd358bd15.I19e7eb2601fbdc0270fb1e1b647a75301e9e4503@changeid>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_103456_395895_E06A09FE 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Richard Weinberger <richard@nod.at>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Johannes Berg <johannes.berg@intel.com>, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 04/12/2019 16:43, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> This reverts commit 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS").
> 
> There are two issues with this commit, uncovered by Anton in tests
> on some (Debian) systems:
> 
> 1) I completely forgot to call any constructors if CONFIG_CONSTRUCTORS
>     isn't set. Don't recall now if it just wasn't needed on my system, or
>     if I never tested this case.
> 
> 2) With that fixed, it works - with CONFIG_CONSTRUCTORS *unset*. If I
>     set CONFIG_CONSTRUCTORS, it fails again, which isn't totally
>     unexpected since whatever wanted to run is likely to have to run
>     before the kernel init etc. that calls the constructors in this case.
> 
> Basically, some constructors that gcc emits (libc has?) need to run
> very early during init; the failure mode otherwise was that the ptrace
> fork test already failed:
> 
> ----------------------
> $ ./linux mem=512M
> Core dump limits :
> 	soft - 0
> 	hard - NONE
> Checking that ptrace can change system call numbers...check_ptrace : child exited with exitcode 6, while expecting 0; status 0x67f
> Aborted
> ----------------------
> 
> Thinking more about this, it's clear that we simply cannot support
> CONFIG_CONSTRUCTORS in UML. All the cases we need now (gcov, kasan)
> involve not use of the __attribute__((constructor)), but instead
> some constructor code/entry generated by gcc. Therefore, we cannot
> distinguish between kernel constructors and system constructors.
> 
> Thus, revert this commit.
> 
> Cc: stable@vger.kernel.org [5.4+]
> Fixes: 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS")
> Reported-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/include/asm/common.lds.S | 2 +-
>   arch/um/kernel/dyn.lds.S         | 1 +
>   init/Kconfig                     | 1 +
>   kernel/gcov/Kconfig              | 2 +-
>   4 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
> index d7086b985f27..4049f2c46387 100644
> --- a/arch/um/include/asm/common.lds.S
> +++ b/arch/um/include/asm/common.lds.S
> @@ -83,8 +83,8 @@
>   	__preinit_array_end = .;
>     }
>     .init_array : {
> -        /* dummy - we call this ourselves */
>   	__init_array_start = .;
> +	*(.init_array)
>   	__init_array_end = .;
>     }
>     .fini_array : {
> diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
> index c69d69ee96be..f5001481010c 100644
> --- a/arch/um/kernel/dyn.lds.S
> +++ b/arch/um/kernel/dyn.lds.S
> @@ -103,6 +103,7 @@ SECTIONS
>        be empty, which isn't pretty.  */
>     . = ALIGN(32 / 8);
>     .preinit_array     : { *(.preinit_array) }
> +  .init_array     : { *(.init_array) }
>     .fini_array     : { *(.fini_array) }
>     .data           : {
>       INIT_TASK_DATA(KERNEL_STACK_SIZE)
> diff --git a/init/Kconfig b/init/Kconfig
> index b4daad2bac23..0328b53d09ad 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -54,6 +54,7 @@ config CC_DISABLE_WARN_MAYBE_UNINITIALIZED
>   
>   config CONSTRUCTORS
>   	bool
> +	depends on !UML
>   
>   config IRQ_WORK
>   	bool
> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> index 060e8e726755..3941a9c48f83 100644
> --- a/kernel/gcov/Kconfig
> +++ b/kernel/gcov/Kconfig
> @@ -4,7 +4,7 @@ menu "GCOV-based kernel profiling"
>   config GCOV_KERNEL
>   	bool "Enable gcov-based kernel profiling"
>   	depends on DEBUG_FS
> -	select CONSTRUCTORS
> +	select CONSTRUCTORS if !UML
>   	default n
>   	---help---
>   	This option enables gcov-based code profiling (e.g. for code coverage
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
