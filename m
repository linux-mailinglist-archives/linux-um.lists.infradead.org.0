Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CE918D2AC
	for <lists+linux-um@lfdr.de>; Fri, 20 Mar 2020 16:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdwvdyfFv+cBpfMPQ5tCO06xy51lgpPFAL53Y5sVqC8=; b=nlV2KW9yUbz6RK
	JOpbRiZfa91xGhbxIhDPJJmfrNGre1Ppb7RNVLanKt9uD28+cgWNmiB6SBQLUwFqkaYiawKBkZMWe
	/3IOMeXi3GPlXheZSYgNXjMC/Pc4CW2dphHyM+NrrpqrpNMPLwKCm+zOids6/r/Q5oV6QlhCLmh1G
	O8LL/+f7JX6ZpIvi2g+SFxpayWqnwQ8JQynGUX/tjnQHGkBs5SOqyCQADsLcmg8LSf42E4M5kRe8t
	K9vlDEqObwa6+oo5t1bdFB0aoNQckjeRgX0V7Tf6FJGh6bKH2bcZ0inW0OU2Uy/Vct09xMY4jjHW8
	0uw6zb2qDhug3ddbwLWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJQ9-0006Ft-8v; Fri, 20 Mar 2020 15:18:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJQ6-0006F2-NK
 for linux-um@lists.infradead.org; Fri, 20 Mar 2020 15:18:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id p6so7215294qkm.0
 for <linux-um@lists.infradead.org>; Fri, 20 Mar 2020 08:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CMdn/vEztvR1JjJusqBbOT1Y2kMsnjTOnNP0m/IulTk=;
 b=Dyq1YvhzCMXXJn5C3ZtTSfvSLGH/jsTRYChDT+32XwQEgscbnwPh3yTchjEuWiOl7y
 gqyHg15oGFEyqu9dRA9MQ9zJs1BUkymVQwrs589VVRq9LP/7lfpwwBhs7eW8A0ifbXwm
 AfP0CpEXgSQNeN5tnkDHE78f3txWsKMmHpdm2r+G0/InoZbJwhIl2TtIK3/JIuWhor18
 er4D8FHEDc4bzwueUYtW+ONFWM8JZ4BcxQl7Y+U4T2RRB85Epu9HhCTTCoADot4PRsIb
 Ps0omVR6YqqE6fhI7uvdlZ4GZ/3uyRPr9hpjljGF51PBLEamauaDTCUqzPPy0Q85Dicm
 4v9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CMdn/vEztvR1JjJusqBbOT1Y2kMsnjTOnNP0m/IulTk=;
 b=NTHAKJXEFnUfcxVCxv3mA1EF4jouJcV6UNmBuyj7liUn9KF3gboQumcZjzyLpcatN9
 eUIGTSAQblD5bTd2aaTQasKTp0Nig3xdRzNUsL25Oja8BdkX5QUKSPwlds9/1BPLdhjg
 cH8KQI6V6SzPcbnuUwc16qJBXvU+Oz7e6eUie/9Y83GLBy7z+ebGxZ4FvdhF3QcWiB8W
 gRkN5m5cC9c5QVKQ77a1dIs51bDoAyg9q8BL/Gvo5tmlQaO3b+MH296jurBjRZJhDCdx
 427RTfJpQ8Rnax5aC8lDeFy+7sXXqngr/50IzbyLhGvk7pgY3lmhWi0gJoAk9jG4SkcD
 WEOQ==
X-Gm-Message-State: ANhLgQ0vz1KWm+0iyfzaQdKcMP4wZdDjPbZ9kQr4mK89e13qMRfn1yBI
 nTysLPhjdpv2DAwiDusARfF5mpVbG3C4LszlXyMdCA==
X-Google-Smtp-Source: ADFU+vtzr7VU58zGNc4KSQSr/KCr50ImaVWUg3vTbElEM7j6/APuIlOpZtpoy4ufI1XzPHmHv/tIvaQBOrIhaQmySrU=
X-Received: by 2002:a37:8b01:: with SMTP id n1mr7514871qkd.407.1584717521649; 
 Fri, 20 Mar 2020 08:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
In-Reply-To: <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 20 Mar 2020 16:18:30 +0100
Message-ID: <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_081846_788135_AE06EA41 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 2:39 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Wed, 2020-03-11 at 18:34 +0100, Dmitry Vyukov wrote:
>
> > > $ gdb -p ...
> > > (gdb) p/x task_size
> > > $1 = 0x7fc0000000
> > > (gdb) p/x __end_of_fixed_addresses
> > > $2 = 0x0
> > > (gdb) p/x end_iomem
> > > $3 = 0x70000000
> > > (gdb) p/x __va_space
> > >
> > > #define TASK_SIZE (task_size)
> > > #define FIXADDR_TOP        (TASK_SIZE - 2 * PAGE_SIZE)
> > >
> > > #define FIXADDR_START      (FIXADDR_TOP - FIXADDR_SIZE)
> > > #define FIXADDR_SIZE       (__end_of_fixed_addresses << PAGE_SHIFT)
> > >
> > > #define VMALLOC_END       (FIXADDR_START-2*PAGE_SIZE)
> > >
> > > #define MODULES_VADDR   VMALLOC_START
> > > #define MODULES_END       VMALLOC_END
> > > #define VMALLOC_START ((end_iomem + VMALLOC_OFFSET) & ~(VMALLOC_OFFSET-1))
> > > #define VMALLOC_OFFSET  (__va_space)
> > > #define __va_space (8*1024*1024)
> > >
> > >
> > > So from that, it would look like the UML vmalloc area is from
> > > 0x  70800000 all the way to
> > > 0x7fbfffc000, which obviously clashes with the KASAN_SHADOW_OFFSET being
> > > just 0x7fff8000.
> > >
> > >
> > > I'm guessing that basically the module loading overwrote the kasan
> > > shadow then?
> >
> > Well, ok, this is definitely not going to fly :)
>
> Yeah, not with vmalloc/modules at least, but you can't really prevent
> vmalloc :)
>
> > I don't know if it's easy to move modules to a different location.
>
> We'd have to not just move modules, but also vmalloc space. They're one
> and the same in UML.
>
> > It
> > would be nice because 0x7fbfffc000 is the shadow start that's used in
> > userspace asan and it allows to faster instrumentation (if offset is
> > within first 2 gigs, the instruction encoding is much more compact,
> > for >2gigs it will require several instructions).
>
> Wait ... Now you say 0x7fbfffc000, but that is almost fine? I think you
> confused the values - because I see, on userspace, the following:

Oh, sorry, I copy-pasted wrong number. I meant 0x7fff8000. Here is the
user-space mapping that uses it:
https://github.com/llvm/llvm-project/blob/master/compiler-rt/lib/asan/asan_mapping.h#L25


> || `[0x10007fff8000, 0x7fffffffffff]` || HighMem    ||
> || `[0x02008fff7000, 0x10007fff7fff]` || HighShadow ||
> || `[0x00008fff7000, 0x02008fff6fff]` || ShadowGap  ||
> || `[0x00007fff8000, 0x00008fff6fff]` || LowShadow  ||
> || `[0x000000000000, 0x00007fff7fff]` || LowMem     ||
>
>
> Now, I also don't really understand what UML is doing here -
> os_get_top_address() determines some sort of "top address"? But all that
> is only on 32-bit, on 64-bit, that's always 0x7fc0000000.

Then I would expect 0x1000 0000 0000 to work, but you say it doesn't...

> So basically that means it's just _slightly_ higher than what you
> suggested as the KASAN_SHADOW_OFFSET now (even if erroneously?), and
> shouldn't actually clash (and we can just change the top address value
> to be slightly lower anyway to prevent clashing).
>
> > But if it's not really easy, I guess we go with a large shadow start
> > (at least initially). A slower but working KASAN is better than fast
> > non-working KASAN :)
>
> Indeed, but I can't even get it to work regardless of the offset.
>
> Note that I have lockdep enabled, and at least some crashes appear to be
> because of the stack unwinding code that is called by lockdep in various
> situations...

This is something new, right? The previous stacks you posted did not
mention lockdep.

> > > I tried changing it
> > >
> > >  config KASAN_SHADOW_OFFSET
> > >         hex
> > >         depends on KASAN
> > > -       default 0x7fff8000
> > > +       default 0x8000000000
> > >
> > >
> > > and also put a check in like this:
> > >
> > > +++ b/arch/um/kernel/um_arch.c
> > > @@ -13,6 +13,7 @@
> > >  #include <linux/sched.h>
> > >  #include <linux/sched/task.h>
> > >  #include <linux/kmsg_dump.h>
> > > +#include <linux/kasan.h>
> > >
> > >  #include <asm/pgtable.h>
> > >  #include <asm/processor.h>
> > > @@ -267,9 +268,11 @@ int __init linux_main(int argc, char **argv)
> > >         /*
> > >          * TASK_SIZE needs to be PGDIR_SIZE aligned or else exit_mmap craps
> > >          * out
> > >          */
> > >         task_size = host_task_size & PGDIR_MASK;
> > >
> > > +       if (task_size > KASAN_SHADOW_OFFSET)
> > > +               panic("KASAN shadow offset must be bigger than task size");
> > >
> > >
> > > but now I just crash accessing the shadow even though it was mapped fine?
> >
> > Yes, this is puzzling.
> > I noticed that RIP is the same in both cases and it relates to vmap code.
> > A support for shadow for vmalloced-memory was added to KASAN recently
> > and I suspect it may conflict with UML.
>
> This can't be it - HAVE_ARCH_KASAN_VMALLOC isn't selected, so
> KASAN_VMALLOC isn't set.
>
> > What does pte-manipulation code even do under UML?
>
> No idea.
>
> > Looking at the code around, kasan_mem_notifier may be a problem too,
> > or at least excessive and confusing. We already have shadow for
> > everything, we don't need _any_ of dynamic/lazy shadow mapping.
>
> CONFIG_MEMORY_HOTPLUG is also not supported in ARCH=um, or at least not
> used in my config.

Ack.

Maybe if you dump /proc/self/maps for the process, it will shed some light.
Or is it possible to run it under strace? If we get all
mmap/munmap/mprotect, we will maybe see the offender that messes the
shadow...

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
