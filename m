Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5111413D060
	for <lists+linux-um@lfdr.de>; Wed, 15 Jan 2020 23:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXMzEsaE0vPnrU4gcjpJF8IwNU2URfxGfaX9MGqRspw=; b=abpfZ37+peWy6e
	XHCEh/B325UMR+ArnQJEy9RXZwWveZjjqVpa4bAw4pkjhBTp0kz8syok3Q4XiWXhxEMVg7UOrtuyH
	8kGBWaFqKGQEqkFYb7TNRabqDO7e73i0IfDjfkK3f3EBmM9F5ofURvWMZ46/D5fSVpYdQ2atJ1YNw
	VLZqjg9WiDkrVeEMDawAR1VMYuAYFOZ7z6dc+8cVEbnvlkT91Lwkuexbo0YiIFzigWir7QJ/kwZiS
	HKHFCMqvm4obWBumLHqccM4MeeNdqA+dG+VGw67mWmf6u7edoTyl9829nqnENJ+sjyhSvUAKzoHa4
	HO0GsTYMqNc6cxCJaerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irrav-0007hQ-9Y; Wed, 15 Jan 2020 22:57:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irras-0007gM-Hr
 for linux-um@lists.infradead.org; Wed, 15 Jan 2020 22:56:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id w5so5817732wmi.1
 for <linux-um@lists.infradead.org>; Wed, 15 Jan 2020 14:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WOruGbo3ihqEelkLm7kTR9rgnvVG+704WzoO70mY5DI=;
 b=axDANLEvzn0+6KXIOulqklysHdcGJXxnHb8JFp+eDXmTC2DBKPTAF1YZQggw7kJy3M
 r3ahq3WMS9unizcJC8lG9qFEUrpjG/5zsxS9aCzx1LiZKtWCtWETSeG0GN4eyg0L8QdN
 ddsCQ4rCnL+pjf6u9qy5oC4pm9GDYhicASpg1IQw7r9VP9sdoXmslO1qJj9AvFJjUsaK
 kRkB9xMqMtgWwl6Ca89Ztyw1N1z4bli+Zvq8sf00pSvQhZxEMmWch64m4oKN+WY31sCW
 MPJnVQddMYd65MgLX6KIG6CSJ7n9j14+AWFxXlIiADGD6Ckb1rz6YD97zZobOQV2cDdB
 m0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WOruGbo3ihqEelkLm7kTR9rgnvVG+704WzoO70mY5DI=;
 b=ANBGhpC4yukJJAkomPE/Sk3d1CBEN97fMenl7/ABvJArBpHhc2f4QeOK57aN4ibVkb
 V08znyZDs2mEV/YtoDNGDktrqDO04l7f7d9z/Sw2hJRT+rcxtW68kMzUe3T1Yqs3Ex6m
 rUpQGwV1vC0gSwZENbjIq/VBrzRdQhzKw5vO2U2+D3XtcHouPTHnFW8PhVlHjo/ejfo9
 U8pzCHr5Nf7brRM8/KtQFEjR6DDLGNZR2XmmhCjDq0/zBQ/ej4RqvDzz3IjcQLVkt846
 4Hs6PvVJHrO2IfSDt9xJ3KTIryoSgJyn18cfvbJbed6PMH/bzzqoQ/tkC8tavhitsUBt
 znJQ==
X-Gm-Message-State: APjAAAWeVQZ2ER5wDpC6qS69XrCDi/QPLzi65Zb7DsDknlPwTxpAy5rG
 XivbRP95SBblv09m6ZdDTrIqlbzNsMWNvOv2toWKCw==
X-Google-Smtp-Source: APXvYqxj8YNDlGv+pawLENmpumCqEjab5rwVbWmYyrD3AYTvRqCIvB6NM4qMMYjWMz6W7FsZ+HEy0Kx2vl5LVgnpZu8=
X-Received: by 2002:a1c:3d07:: with SMTP id k7mr2576689wma.79.1579129010626;
 Wed, 15 Jan 2020 14:56:50 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
In-Reply-To: <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Wed, 15 Jan 2020 14:56:39 -0800
Message-ID: <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_145658_595572_FD384DA2 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, jdike@addtoit.com,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-um@lists.infradead.org,
 David Gow <davidgow@google.com>, aryabinin@virtuozzo.com, dvyukov@google.com,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 10:48 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
> Couple questions, if you don't mind.
>
> > +#ifdef CONFIG_X86_64
> > +#define KASAN_SHADOW_SIZE 0x100000000000UL
> > +#else
> > +#error "KASAN_SHADOW_SIZE is not defined in this sub-architecture"
> > +#endif
>
> Is it even possible today to compile ARCH=um on anything but x86_64? If
> yes, perhaps the above should be
>
>         select HAVE_ARCH_KASAN if X86_64
>
> or so? I assume KASAN itself has some dependencies though, but perhaps
> ARM 64-bit or POWERPC 64-bit could possibly run into this, if not X86
> 32-bit.
>

This seems like a good idea. I'll keep the #ifdef around
KASAN_SHADOW_SIZE, but add "select HAVE_ARCH_KASAN if X86_64" as well.
This will make extending it later easier.

> > +++ b/arch/um/kernel/skas/Makefile
> > @@ -5,6 +5,12 @@
> >
> >  obj-y := clone.o mmu.o process.o syscall.o uaccess.o
> >
> > +ifdef CONFIG_UML
> > +# Do not instrument until after start_uml() because KASAN is not
> > +# initialized yet
> > +KASAN_SANITIZE       := n
> > +endif
>
> Not sure I understand this, can anything in this file even get compiled
> without CONFIG_UML?
>

You are correct; this #ifdef was unnecessary. I will remove it. Thanks!

> > +++ b/kernel/Makefile
> > @@ -32,6 +32,12 @@ KCOV_INSTRUMENT_kcov.o := n
> >  KASAN_SANITIZE_kcov.o := n
> >  CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
> >
> > +ifdef CONFIG_UML
> > +# Do not istrument kasan on panic because it can be called before KASAN
>
> typo there - 'instrument'
>

Thanks for catching that!

> > +++ b/lib/Makefile
> > @@ -17,6 +17,16 @@ KCOV_INSTRUMENT_list_debug.o := n
> >  KCOV_INSTRUMENT_debugobjects.o := n
> >  KCOV_INSTRUMENT_dynamic_debug.o := n
> >
> > +# Don't sanatize
>
> typo
>

Thanks for catching this, too!

> Very cool, I look forward to trying this out! :-)
>
> Thanks,
> johannes
>

Thank you so much for the comments!

Best,
Patricia


--

Patricia Alfonso
Software Engineer
trishalfonso@google.com

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
