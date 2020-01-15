Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EAF13CC85
	for <lists+linux-um@lfdr.de>; Wed, 15 Jan 2020 19:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1ptLZZqyaY9tkbn6Zb2CaU9MZMQqiqrVGA9+joLyb8=; b=FdEVpWBW2ISCVa
	/sl/T8aAFdJklMrYaJkjIn92XsbMPPbmeRv8etc6bmIne5wPDakkVeJPahIbF8ioLXdsNyGuYbRGm
	pyC0L564y0XRQZdaWsuzhBUGgdSd5pwlLWVcMWb1oEeA+ChYt4hElIkFAjxgAL9loHIJ4ksbPa9gI
	26D4P5C+t9iZpS625MK8b9NFVtLvraO8mvLhVeYQ8chGsc+XbdnNhqyLaPYCT8kyJiZq4pksV4ysP
	3Hel9v3qLe99mg41gIhl/28USiStuhQBReM6PcCrZ1cEXUE7oaJ/HiWT/h+Ysq3MZ9tCya5LKXkUH
	DwKv3ZQVNTMBu3ZMfyNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irniV-0005oH-Fs; Wed, 15 Jan 2020 18:48:35 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irniO-0005kp-Ah
 for linux-um@lists.infradead.org; Wed, 15 Jan 2020 18:48:34 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1irniB-009spe-PH; Wed, 15 Jan 2020 19:48:15 +0100
Message-ID: <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>, jdike@addtoit.com, 
 richard@nod.at, anton.ivanov@cambridgegreys.com, aryabinin@virtuozzo.com, 
 dvyukov@google.com, davidgow@google.com, brendanhiggins@google.com
Date: Wed, 15 Jan 2020 19:48:13 +0100
In-Reply-To: <20200115182816.33892-1-trishalfonso@google.com>
References: <20200115182816.33892-1-trishalfonso@google.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_104828_363926_11501DB7 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Patricia,

On Wed, 2020-01-15 at 10:28 -0800, Patricia Alfonso wrote:
> Make KASAN run on User Mode Linux on x86_64.

Oh wow, awesome! Just what I always wanted :-)

I tried this before and failed miserably ... mostly I thought we
actually needed CONFIG_CONSTRUCTORS, which doesn't work (at least I hope
my patch for it was reverted?) - do you know what's up with that?

Couple questions, if you don't mind.

> +#ifdef CONFIG_X86_64
> +#define KASAN_SHADOW_SIZE 0x100000000000UL
> +#else
> +#error "KASAN_SHADOW_SIZE is not defined in this sub-architecture"
> +#endif

Is it even possible today to compile ARCH=um on anything but x86_64? If
yes, perhaps the above should be

	select HAVE_ARCH_KASAN if X86_64

or so? I assume KASAN itself has some dependencies though, but perhaps
ARM 64-bit or POWERPC 64-bit could possibly run into this, if not X86
32-bit.

> +++ b/arch/um/kernel/skas/Makefile
> @@ -5,6 +5,12 @@
>  
>  obj-y := clone.o mmu.o process.o syscall.o uaccess.o
>  
> +ifdef CONFIG_UML
> +# Do not instrument until after start_uml() because KASAN is not
> +# initialized yet
> +KASAN_SANITIZE	:= n
> +endif

Not sure I understand this, can anything in this file even get compiled
without CONFIG_UML?

> +++ b/kernel/Makefile
> @@ -32,6 +32,12 @@ KCOV_INSTRUMENT_kcov.o := n
>  KASAN_SANITIZE_kcov.o := n
>  CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
>  
> +ifdef CONFIG_UML
> +# Do not istrument kasan on panic because it can be called before KASAN

typo there - 'instrument'

> +# is initialized
> +KASAN_SANITIZE_panic.o := n
> +endif

but maybe UML shouldn't call panic() in such contexts, instead of this?
I've had some major trouble with calling into the kernel before things
are ready (or after we've started tearing things down), so that might be
a good thing overall anyway?

Could just do it this way and fix it later too though I guess.

> +++ b/lib/Makefile
> @@ -17,6 +17,16 @@ KCOV_INSTRUMENT_list_debug.o := n
>  KCOV_INSTRUMENT_debugobjects.o := n
>  KCOV_INSTRUMENT_dynamic_debug.o := n
>  
> +# Don't sanatize 

typo

> vsprintf or string functions in UM because they are used
> +# before KASAN is initialized from cmdline parsing cmdline and kstrtox are
> +# also called during uml initialization before KASAN is instrumented
> +ifdef CONFIG_UML
> +KASAN_SANITIZE_vsprintf.o := n
> +KASAN_SANITIZE_string.o := n
> +KASAN_SANITIZE_cmdline.o := n
> +KASAN_SANITIZE_kstrtox.o := n
> +endif

I guess this can't be avoided.


Very cool, I look forward to trying this out! :-)

Thanks,
johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
