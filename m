Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CE615B5F2
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 01:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+DcwUP56v89YJxNUvKgtKU4bVcfn6kczDqzuTO3JWs=; b=h+u+NijJ44kBx1
	fQyT3YSIbkJ8kT9rebkypQlDFiKWodXUfgBfS56bNzBy9R5xye3PftMlp9embi24JBtieJciC4XFA
	jdDc00KSmsbFlha6crtJ/nm0b0q50FxVHVRB79zkAFoqn9PyIRS6ZAp8c1eJJLN766jFV0RjuXafF
	r1DeZFqV0nGVZo3pAEGlJL8i69Yf1Pe3g2WPjtGv4ESnhtBcyFJWUl0rvpOJLt1BuoIz9ADjt5ehz
	JKY/rSttQbLdZggeoEJf1EcEMf4RaAbtqBm2ErKod3AyJGadoqamqq5MGpUNFvIR1A+eD1DkuDTRL
	IYYcbbR1Q9EjoXlThwTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j22WG-0002Xn-AO; Thu, 13 Feb 2020 00:38:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j22WD-0002XI-Co
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 00:38:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so4555174wrl.13
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 16:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uu9p1NHkE2MkYSqLVKem4JSGakNOnN3LkVvsdFKxSS0=;
 b=C1VSERI1Zhn2+zwNq4GK6omW9Pu8n04thGggoaimCH1HofOfRHUCOQ5eRuXLOKllFc
 RX9W6HYCh+X9U4q+03sYtLor09rSeoyf+ckAi45iIrgRkMtyJ3kibvnFsEqp1eDBlTfS
 mVMLsY3zEFVRNDD+XeN5jD4tizPm7byE3GOwlkb74Wkh7GebPOjUPkIZ44B8cGktU+J5
 apRTM6MlGFpSrFIFlPyktFh92vU1H4Y/SVS01GeIKVbPKR5M9wObqBORQb9PgTcZCBXe
 Dxbzv2zhc8mDcI2DbOKhVb7TLu4fn4zJMQ06LjAnab5mTAb2GUkRaqil7WQ3dRCt7VQd
 6lOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uu9p1NHkE2MkYSqLVKem4JSGakNOnN3LkVvsdFKxSS0=;
 b=HVAnDuuiaFC+9WXBhDWfkyb3aJpN/V3gWBodcNRsLA1oLOrgo+jpPl9JSfvG3VwjAk
 i1dmA36C5AscFwIHZniQRrlzFvRwDgo48zKmjZmafKjQ0jY4reAY/GyPJwH3kFTRYMhe
 UfZ+OKsUWC8Hjo9oqMW2a6J3rHP9gIUiwLcXkFCqFU9fxFyDxkzQxtxlhvGRY7daOhrq
 gyJz5cZN5pqDp2mNYnIAtzQGCHuz3tb18NCzlA9Ssygiqa0ccFIsQJiNBnt3NII5DzvT
 b4LnFU2iPFDKmb+g72DfSmuFXnV/9C4h+XYTJCTn7cV+uYmFw1EelhUUUAqiiAcPKM5o
 788A==
X-Gm-Message-State: APjAAAU2CoAaSTQ2LtcLlDUfPx4nwACLCZ4EmnQ1+L2eZaiY8EC23Un7
 CaALvWAoUctyQk4B269yoSJf2/X2S++1BLP+PZ5I+Q==
X-Google-Smtp-Source: APXvYqz7SKVv+770ZaFi2dowLu+8kazlXKxtMl134e8KL6iEs1D3IFyj0n8c6LkAkAZ7K4ZgRmQZxxhDp/pwxZbULu0=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr17109059wra.23.1581554291169; 
 Wed, 12 Feb 2020 16:38:11 -0800 (PST)
MIME-Version: 1.0
References: <20200210225806.249297-1-trishalfonso@google.com>
 <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
In-Reply-To: <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Wed, 12 Feb 2020 16:37:59 -0800
Message-ID: <CAKFsvUKaixKXbUqvVvjzjkty26GS+Ckshg2t7-+erqiN2LVS-g@mail.gmail.com>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_163813_462214_FF20481F 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 12:21 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> Hi,
>
> Looks very nice! Some questions/comments below:
>
> > Depends on Constructor support in UML and is based off of
> > "[RFC PATCH] um: implement CONFIG_CONSTRUCTORS for modules"
> > (https://patchwork.ozlabs.org/patch/1234551/)
>
> I guess I should resend this as a proper patch then. Did you test
> modules? I can try (later) too.
>
I have not tested modules - you might want to test modules before
sending it at a proper patch. I just know that it works for the
purposes of this KASAN project.

> > The location of the KASAN shadow memory, starting at
> > KASAN_SHADOW_OFFSET, can be configured using the
> > KASAN_SHADOW_OFFSET option. UML uses roughly 18TB of address
> > space, and KASAN requires 1/8th of this.
>
> That also means if I have say 512MB memory allocated for UML, KASAN will
> use an *additional* 64, unlike on a "real" system, where KASAN will take
> about 1/8th of the available physical memory, right?
>
Currently, the amount of shadow memory allocated is a constant based
on the amount of user space address space in x86_64 since this is the
host architecture I have focused on.

> > +     help
> > +       This is the offset at which the ~2.25TB of shadow memory is
> > +       initialized
>
> Maybe that should say "mapped" instead of "initialized", since there are
> relatively few machines on which it could actually all all be used?
>
Valid point!

> > +// used in kasan_mem_to_shadow to divide by 8
> > +#define KASAN_SHADOW_SCALE_SHIFT 3
>
> nit: use /* */ style comments
>
Will do

> > +#define KASAN_SHADOW_START (KASAN_SHADOW_OFFSET)
> > +#define KASAN_SHADOW_END (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
> > +
> > +#ifdef CONFIG_KASAN
> > +void kasan_init(void);
> > +#else
> > +static inline void kasan_init(void) { }
> > +#endif /* CONFIG_KASAN */
> > +
> > +void kasan_map_memory(void *start, unsigned long len);
> > +void kasan_unpoison_shadow(const void *address, size_t size);
> > +
> > +#endif /* __ASM_UM_KASAN_H */
> > diff --git a/arch/um/kernel/Makefile b/arch/um/kernel/Makefile
> > index 5aa882011e04..875e1827588b 100644
> > --- a/arch/um/kernel/Makefile
> > +++ b/arch/um/kernel/Makefile
> > @@ -8,6 +8,28 @@
> >  # kernel.
> >  KCOV_INSTRUMENT                := n
> >
> > +# The way UMl deals with the stack causes seemingly false positive KASAN
> > +# reports such as:
> > +# BUG: KASAN: stack-out-of-bounds in show_stack+0x15e/0x1fb
> > +# Read of size 8 at addr 000000006184bbb0 by task swapper/1
> > +# ==================================================================
> > +# BUG: KASAN: stack-out-of-bounds in dump_trace+0x141/0x1c5
> > +# Read of size 8 at addr 0000000071057eb8 by task swapper/1
> > +# ==================================================================
> > +# BUG: KASAN: stack-out-of-bounds in get_wchan+0xd7/0x138
> > +# Read of size 8 at addr 0000000070e8fc80 by task systemd/1
> > +#
> > +# With these files removed from instrumentation, those reports are
> > +# eliminated, but KASAN still repeatedly reports a bug on syscall_stub_data:
> > +# ==================================================================
> > +# BUG: KASAN: stack-out-of-bounds in syscall_stub_data+0x299/0x2bf
> > +# Read of size 128 at addr 0000000071457c50 by task swapper/1
>
> So that's actually something to fix still? Just trying to understand,
> I'll test it later.
>
Yes, I have not found a fix for these issues yet and even with these
few files excluded from instrumentation, the syscall_stub_data error
occurs(unless CONFIG_STACK is disabled, but CONFIG_STACK is enabled by
default when using gcc to compile). It is unclear whether this is a
bug that KASAN has found in UML or it is a mismatch of KASAN error
detection on UML.

> > -extern int printf(const char *msg, ...);
> > -static void early_print(void)
> > +#ifdef CONFIG_KASAN
> > +void kasan_init(void)
> >  {
> > -     printf("I'm super early, before constructors\n");
> > +     kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
>
> Heh, you *actually* based it on my patch, in git terms, not just in code
> terms. I think you should just pick up the few lines that you need from
> that patch and squash them into this one, I just posted that to
> demonstrate more clearly what I meant :-)
>
I did base this on your patch. I figured it was more likely to get
merged before this patch anyway. To clarify, do you want me to include
your constructors patch with this one as a patchset?

> > +/**
> > + * kasan_map_memory() - maps memory from @start with a size of @len.
>
> I think the () shouldn't be there?
>
Okay!

> > +void kasan_map_memory(void *start, size_t len)
> > +{
> > +     if (mmap(start,
> > +              len,
> > +              PROT_READ|PROT_WRITE,
> > +              MAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE|MAP_NORESERVE,
> > +              -1,
> > +              0) == MAP_FAILED)
> > +             os_info("Couldn't allocate shadow memory %s", strerror(errno));
>
> If that fails, can we even continue?
>
Probably not, but with this executing before main(), what is the best
way to have an error occur? Or maybe there's a way we can just
continue without KASAN enabled and print to the console that KASAN
failed to initialize?

> johannes
>

-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
