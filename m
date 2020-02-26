Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0420A16F4F3
	for <lists+linux-um@lfdr.de>; Wed, 26 Feb 2020 02:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=In4PIUsNHTnsc4q5/sUhw9xsRV6Qu3ewV/0vAU36zQM=; b=HjTh6Nl7FQTQmo
	A0qlaMfrLk5Kcz1xZM+BVOdEdNThoisd01BkvKNpByQwyMlAzQjtot2NTKnEsJ6ikmw2CVxjCanWU
	X9kJCYy+TI93Ts+O2uoVvPfjiNBEVl+QPehzy8LiEz3iTEg6LAMw39YRBII8SA79x4V2amiaR1hUY
	zHYvAuOAJ0ORFB/ePni6eWrUO+Luj1u7LLjACxUujaWZy1W1gcRlQ9GzvulmnkXJAFFV2mOXwZEH/
	YsjDVfZYAzRi4+cbumQpNXoSicu2JXiPVMt8fuHc9Nq7xscfkiLL11iWWUg0P3kZaPcK21987h43J
	dwHoC/EJ+PMDskFicNRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lMT-0000vI-1u; Wed, 26 Feb 2020 01:19:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lMP-0000uR-VS
 for linux-um@lists.infradead.org; Wed, 26 Feb 2020 01:19:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so524384pfa.8
 for <linux-um@lists.infradead.org>; Tue, 25 Feb 2020 17:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V+WJdtiodK7smJaw6cytKeNqvxCywC6JW8awTtYsnT4=;
 b=l4604xpw1I8955q9AJdeAjThTj77w5HfTFVsOgRzhxDZ0vM6gMjC8oeO4rqZCFsaox
 ZL/o13PdpDkiVgbVPLqS6E4izZOSUR739tueSpiptZML8g4LElY0KhMqkuFeS5sObhOF
 JOwdK51GnNpY+2ZwrKbnYeyV+VFN6Du8fjnf3/1QsQPpwNPdNxhHtDj5pkuJlxDpVS2R
 GhGoL68sm/V/cldSwdhNvaxy4/NszTqHPJLbJPMUZmgJKwjoLJu60kFbSsur5dceh/zE
 WEd4v0dzMW8UnaLMEd6VNNLYRRyYIg9MqkoKj1DKF8Svrkj+Fg2YjvcbJYCRg7b1NOzN
 c4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V+WJdtiodK7smJaw6cytKeNqvxCywC6JW8awTtYsnT4=;
 b=GABLYQS0mTjaeRWoklYeAkSusk8DoTWGg87/NE44ZS6lLGQdPJQJGDF8oVZ7oJp8yU
 Fa+uZEpMdNMbE7Q/S8t5ezjQcdqflIHeOfnOSpZhSLJgr2PY+khczQDIODRS3r1wdWIT
 ifWtlalnhW6qZE4t4aDsTsvM987cNiAyRdZAv2jrN7HX4ybJ0MCTQR7o8fcVIFN7yzp4
 THnwgR1plTBebdX460h7Vg7kZ0pQC1OOp04A47xilnxiPDdp3GdWGcoZug8Me8ZKtDe2
 tvRqfURt3tPsSGxrsx+HfVO40Cbuh/SyCSAs86WLBccba7qszJnJV/5MEIncXS5+99Cb
 Z4ag==
X-Gm-Message-State: APjAAAVamlqQSXPF2OFuxIGtKIXQoBnhRuZQzwqP8xia/zVfkkeXyQgE
 3Aa8SknwbPBHdG3/A5vtt97NOqbox262vjV25UTVYA==
X-Google-Smtp-Source: APXvYqyFxxd/7WafHcDRoH/+bFVruaVRPaqgsu+toTd8xnHclFNprOOCvoG32q9BcOQU7IT9T9jFz+V88xx6R08lb38=
X-Received: by 2002:aa7:8545:: with SMTP id y5mr1551644pfn.185.1582679973137; 
 Tue, 25 Feb 2020 17:19:33 -0800 (PST)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
In-Reply-To: <20200226004608.8128-1-trishalfonso@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Feb 2020 17:19:21 -0800
Message-ID: <CAFd5g45gqZcJ6v3KSDuBffgBzfZ+=GJ2oCuSurYehoMHBK0Grg@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171938_071840_465E0AB2 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com, David Gow <davidgow@google.com>,
 aryabinin@virtuozzo.com, Johannes Berg <johannes@sipsolutions.net>,
 Dmitry Vyukov <dvyukov@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 4:46 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
>
> Make KASAN run on User Mode Linux on x86_64.
>
> Depends on Constructor support in UML - "[RFC PATCH] um:
> implement CONFIG_CONSTRUCTORS for modules"
> (https://patchwork.ozlabs.org/patch/1234551/) by Johannes Berg.
>
> The location of the KASAN shadow memory, starting at
> KASAN_SHADOW_OFFSET, can be configured using the
> KASAN_SHADOW_OFFSET option. UML uses roughly 18TB of address
> space, and KASAN requires 1/8th of this. The default location of
> this offset is 0x7fff8000 as suggested by Dmitry Vyukov. There is
> usually enough free space at this location; however, it is a config
> option so that it can be easily changed if needed.
>
> The UML-specific KASAN initializer uses mmap to map
> the roughly 2.25TB of shadow memory to the location defined by
> KASAN_SHADOW_OFFSET. kasan_init() utilizes constructors to initialize
> KASAN before main().
>
> Disable stack instrumentation on UML via KASAN_STACK config option to
> avoid false positive KASAN reports.
>
> Signed-off-by: Patricia Alfonso <trishalfonso@google.com>

A couple of minor nits (well one nit and one question), but overall
this looks good to me.

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

> ---
>  arch/um/Kconfig                  | 13 +++++++++++++
>  arch/um/Makefile                 |  6 ++++++
>  arch/um/include/asm/common.lds.S |  1 +
>  arch/um/include/asm/kasan.h      | 32 ++++++++++++++++++++++++++++++++
>  arch/um/kernel/dyn.lds.S         |  5 ++++-
>  arch/um/kernel/mem.c             | 18 ++++++++++++++++++
>  arch/um/os-Linux/mem.c           | 22 ++++++++++++++++++++++
>  arch/um/os-Linux/user_syms.c     |  4 ++--
>  arch/x86/um/Makefile             |  3 ++-
>  arch/x86/um/vdso/Makefile        |  3 +++
>  lib/Kconfig.kasan                |  2 +-
>  11 files changed, 104 insertions(+), 5 deletions(-)
>  create mode 100644 arch/um/include/asm/kasan.h
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c28..fb2ad1fb05fd 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -8,6 +8,7 @@ config UML
>         select ARCH_HAS_KCOV
>         select ARCH_NO_PREEMPT
>         select HAVE_ARCH_AUDITSYSCALL
> +       select HAVE_ARCH_KASAN if X86_64
>         select HAVE_ARCH_SECCOMP_FILTER
>         select HAVE_ASM_MODVERSIONS
>         select HAVE_UID16
> @@ -200,6 +201,18 @@ config UML_TIME_TRAVEL_SUPPORT
>
>           It is safe to say Y, but you probably don't need this.
>
> +config KASAN_SHADOW_OFFSET
> +       hex
> +       depends on KASAN
> +       default 0x7fff8000

nit: It looks like you chose the default that Dmitry suggested. Some
explanation of this in the help would probably be good.

> +       help
> +         This is the offset at which the ~2.25TB of shadow memory is
> +         mapped and used by KASAN for memory debugging. This can be any
> +         address that has at least KASAN_SHADOW_SIZE(total address space divided
> +         by 8) amount of space so that the KASAN shadow memory does not conflict
> +         with anything. The default is 0x7fff8000, as it fits into immediate of
> +         most instructions.
> +
>  endmenu

[...]

> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..5b54f3c9a741 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -125,7 +125,7 @@ config KASAN_STACK_ENABLE
>
>  config KASAN_STACK
>         int
> -       default 1 if KASAN_STACK_ENABLE || CC_IS_GCC
> +       default 1 if (KASAN_STACK_ENABLE || CC_IS_GCC) && !UML

Up to the KASAN people, but I think you can probably move this to
arch/um/Kconfig. There is some advantage to having all the UML
specific Kconfigery in arch/um/Kconfig, but there are also already a
lot of things that specify !UML outside of arch/um/.

>         default 0
>
>  config KASAN_S390_4_LEVEL_PAGING
> --
> 2.25.0.265.gbab2e86ba0-goog
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
