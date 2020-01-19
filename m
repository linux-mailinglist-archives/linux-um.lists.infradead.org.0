Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97207142038
	for <lists+linux-um@lfdr.de>; Sun, 19 Jan 2020 22:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVtYZkeyn95sRyNM70wabF2M7QNdNuaveKbt2RR1EaE=; b=B7JeLRtwZ6HxGG
	1pguiaKRWBAvNpsMqNr7IvoFYgGiygbgR7mcDzOe7fGJnO3Dg27ACuUnfvPfZGVErP9UylEqUFgvk
	68d1QJR40wI+IfikMbJm0WeMaAKiZNmOMk+KYK3K1WQGr7ssa6HZG481MmPkOwUSE4D0YPQ9kArwv
	RTvtiJNl1QzgtLOkeeRzuCQs4Uc5qrPT4XZg/Z/jyVzNJ1L4ClnYq0Kzavm8tVA3NUZ+Vs3sqfW3t
	EOFeWUDxQbFVXLq+ranBWez49HVbUPeJDXadERymITvo7cUwUnsQSCJo+UQ1ItlYgsfIQXiuS9z2m
	Wge9cQWikJLLDIKMVf/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIGz-0002DI-Pa; Sun, 19 Jan 2020 21:38:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIGw-0002Bf-WB
 for linux-um@lists.infradead.org; Sun, 19 Jan 2020 21:38:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so27651339wru.4
 for <linux-um@lists.infradead.org>; Sun, 19 Jan 2020 13:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgf6yNAQ5PTiozZwIZP30hPxDsKkPPcwKTnS9SOUa+E=;
 b=Bwo/nlC6IePRsMLaCsNI4WnoGCqOiFcMf9Z/aWWm7jhKjiC2zRp9GTJIUtB0EXYy5t
 jYUaNTaeWjTsOk//Nj5NZer7c+5ZNnckqLLjcCZ/0UgLSAgATV7NrxOtAohm2T3OfY/g
 expUV3tEB52UDsQ3r1nRvrxZdoMMKORAbeLJGZ5zPapc4u5Jr/ABli7/s5pO1gis3dEb
 crucaBJtyLgfn1+gcmX2e8a0c2dUG57MxvG/01a//R8o1zMk3JpOZM3z+eW1FylBhbsH
 Iub3YjRvImehr4PmyivVqjpBxbgLAUiyAfhtiRJYb1JHACKiZld+VT5MRQM+dria9EW/
 N7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgf6yNAQ5PTiozZwIZP30hPxDsKkPPcwKTnS9SOUa+E=;
 b=ghS2mNm37K5noCjSpw1bHsjEgsKaYRFbnBJgSUl4wff+dPnP0Z8lOh9YRg5w3XElUI
 UUHWgJ4aAi/QeFDpyf9GVRi7c3N2Pxt/75/ha7KnpTIee+x+Sr2j7kMjEwYTZIGutN97
 bD1HMCaAltci7UAM5R52yBpNCGPmSWa0OUa0a18J9ym9kw4TNyRPcDPzI9Af0ZzXmLMD
 6121NsTGEjl49k7jlhe/fOd2syWTfLPonWad8EhCMzdyMChh3QHFYgEf9f5ew4C48Kfq
 pH3PcFpb7pGxMPsr2YGz4/SMLUD9jGfRMGzcFRRPq2jLd+XVu2ePUNoLtrvVqlIOtwx3
 yW2w==
X-Gm-Message-State: APjAAAUtdW7owhBy7IjJjwCrG9nE+b2v4WEF73m/Q/aSYTRAmDu9/uuc
 +buGTuAXooA+3rf5g1bhDA10qPWEH/yCtaNw/mk=
X-Google-Smtp-Source: APXvYqwBx6e3f1YLwGvAWWeUW+8QdRQJua2vFvjAYpswZF3xfOneP2hAC5He8pDXAeKULQ/A7QyywCnqTMzIuY+xc+M=
X-Received: by 2002:a5d:494b:: with SMTP id r11mr14595307wrs.184.1579469897756; 
 Sun, 19 Jan 2020 13:38:17 -0800 (PST)
MIME-Version: 1.0
References: <4913d030-84c0-0eb9-f8b2-c006a1dd0757@cambridgegreys.com>
 <20191204174346.78dfd358bd15.I19e7eb2601fbdc0270fb1e1b647a75301e9e4503@changeid>
 <6581dcc9-daef-5a14-194c-1b351e3b8f85@cambridgegreys.com>
In-Reply-To: <6581dcc9-daef-5a14-194c-1b351e3b8f85@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 22:38:06 +0100
Message-ID: <CAFLxGvyEwz93JryMDH+e9-ObyUj_jLhQBKSHNJ7nLZ_0LyfRiQ@mail.gmail.com>
Subject: Re: [PATCH] Revert "um: Enable CONFIG_CONSTRUCTORS"
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_133819_041531_2AEC9ACC 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, linux-um <linux-um@lists.infradead.org>,
 stable <stable@vger.kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 7:35 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 04/12/2019 16:43, Johannes Berg wrote:
> > From: Johannes Berg <johannes.berg@intel.com>
> >
> > This reverts commit 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS").
> >
> > There are two issues with this commit, uncovered by Anton in tests
> > on some (Debian) systems:
> >
> > 1) I completely forgot to call any constructors if CONFIG_CONSTRUCTORS
> >     isn't set. Don't recall now if it just wasn't needed on my system, or
> >     if I never tested this case.
> >
> > 2) With that fixed, it works - with CONFIG_CONSTRUCTORS *unset*. If I
> >     set CONFIG_CONSTRUCTORS, it fails again, which isn't totally
> >     unexpected since whatever wanted to run is likely to have to run
> >     before the kernel init etc. that calls the constructors in this case.
> >
> > Basically, some constructors that gcc emits (libc has?) need to run
> > very early during init; the failure mode otherwise was that the ptrace
> > fork test already failed:
> >
> > ----------------------
> > $ ./linux mem=512M
> > Core dump limits :
> >       soft - 0
> >       hard - NONE
> > Checking that ptrace can change system call numbers...check_ptrace : child exited with exitcode 6, while expecting 0; status 0x67f
> > Aborted
> > ----------------------
> >
> > Thinking more about this, it's clear that we simply cannot support
> > CONFIG_CONSTRUCTORS in UML. All the cases we need now (gcov, kasan)
> > involve not use of the __attribute__((constructor)), but instead
> > some constructor code/entry generated by gcc. Therefore, we cannot
> > distinguish between kernel constructors and system constructors.
> >
> > Thus, revert this commit.
> >
> > Cc: stable@vger.kernel.org [5.4+]
> > Fixes: 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS")
> > Reported-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> > ---
> >   arch/um/include/asm/common.lds.S | 2 +-
> >   arch/um/kernel/dyn.lds.S         | 1 +
> >   init/Kconfig                     | 1 +
> >   kernel/gcov/Kconfig              | 2 +-
> >   4 files changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
> > index d7086b985f27..4049f2c46387 100644
> > --- a/arch/um/include/asm/common.lds.S
> > +++ b/arch/um/include/asm/common.lds.S
> > @@ -83,8 +83,8 @@
> >       __preinit_array_end = .;
> >     }
> >     .init_array : {
> > -        /* dummy - we call this ourselves */
> >       __init_array_start = .;
> > +     *(.init_array)
> >       __init_array_end = .;
> >     }
> >     .fini_array : {
> > diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
> > index c69d69ee96be..f5001481010c 100644
> > --- a/arch/um/kernel/dyn.lds.S
> > +++ b/arch/um/kernel/dyn.lds.S
> > @@ -103,6 +103,7 @@ SECTIONS
> >        be empty, which isn't pretty.  */
> >     . = ALIGN(32 / 8);
> >     .preinit_array     : { *(.preinit_array) }
> > +  .init_array     : { *(.init_array) }
> >     .fini_array     : { *(.fini_array) }
> >     .data           : {
> >       INIT_TASK_DATA(KERNEL_STACK_SIZE)
> > diff --git a/init/Kconfig b/init/Kconfig
> > index b4daad2bac23..0328b53d09ad 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -54,6 +54,7 @@ config CC_DISABLE_WARN_MAYBE_UNINITIALIZED
> >
> >   config CONSTRUCTORS
> >       bool
> > +     depends on !UML
> >
> >   config IRQ_WORK
> >       bool
> > diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> > index 060e8e726755..3941a9c48f83 100644
> > --- a/kernel/gcov/Kconfig
> > +++ b/kernel/gcov/Kconfig
> > @@ -4,7 +4,7 @@ menu "GCOV-based kernel profiling"
> >   config GCOV_KERNEL
> >       bool "Enable gcov-based kernel profiling"
> >       depends on DEBUG_FS
> > -     select CONSTRUCTORS
> > +     select CONSTRUCTORS if !UML
> >       default n
> >       ---help---
> >       This option enables gcov-based code profiling (e.g. for code coverage
> >
>
> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

Applied. Thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
