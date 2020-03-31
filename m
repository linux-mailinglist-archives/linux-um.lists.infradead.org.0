Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFE2199BDA
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 18:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0PcxFJw207NEoe38HmriKcKmKyFDkGaJjeHRRt0o+4=; b=h5sEuFAXZbGMG8
	J1k5yBA5i9k1z6JsUgLA01zkgtA49V3o8kLmFIJLzrh2JTtfV8d44s+9mTLfxqOki2a2UHaZV7VO2
	NNrQfzuBHmdMS5zgRwi9GNTLrTlM/0PjhTQGcr208ZSlnx6Co9ADnO4gIrlO+3aidC5x/QN82wXHX
	ak0Q4tCeYdWs7PB9ojq0KIL9pXpAODgfKQxneHHL+S9qUEEJG21/MMgSmzlDGFum0y+JIzp+jOK3T
	Lbaozmcbzgf9bzK7XNpYsmJrLwkUqa2A0ZrjjD3uHtCBp68cK8s41HxhkWo/tIFrn4w7kDAkz6UfQ
	7ynQ7pMBF6ofJJKwQuhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJvP-0003ce-7o; Tue, 31 Mar 2020 16:39:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJvM-0003bs-7J
 for linux-um@lists.infradead.org; Tue, 31 Mar 2020 16:39:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id a81so3548836wmf.5
 for <linux-um@lists.infradead.org>; Tue, 31 Mar 2020 09:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QgoMF0cL9ZUADYdGprv6AZfHS2idq4rpQGViQrbTh3g=;
 b=MOyCc4PgavB5gSASpI6clKEFNY8K2buCcld4kUOHT2U6+ZQD2QBLgweg819jEBdBmH
 3B9tDDscrZBDI4FwQuUuqfjtvh/MpztQ9r8K3LEqBZcOaSxJKvQSfcPYIF9azVlNiLbz
 tZmwU4/gZX2ta8YRKxbZdzOAyUVZaSHjXVx2q2W4Ua+HLIgmzpHsU+tejH9k/rNScbFv
 9wfBwW3l4EVy/+GM/Rb4eRtSonYmvPKq9PAvjlzVq5lUsw+7+RYt3c0Fq34dWNp2i8TA
 0lcLJZlx0N4M0KVXGD6kjXWagBLecurFWWNfg7DyVUj76MCGtAZB869ZvlLV340LEuyR
 L5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QgoMF0cL9ZUADYdGprv6AZfHS2idq4rpQGViQrbTh3g=;
 b=hAWvbxGX7rnWd7PPA1j4Pfb4w6BnfIMMlqDDTWBF00kIDzKDwJZosMrTBXRY09CgHk
 xMmTTjhX/gRUR0btJ6sukAkzcNoxFZsEXJezalTHdSjt3xLsW2B+0Lu2DrATbKPfG20v
 ciLayaCVGzzASx7HeH9TApn37JoCRKcJgJNXLXNpOI6M1PMKuN5lRGzNYNJ98jEtk5/O
 6BisqwzC2tfKR62imP6u/h+Jjith7/6YibPdSLdADGuj6awMffsefFGji6yUwlWO4T2n
 aF5zfaVMVOTtaGOOERr7HqU0jM0n+4qgKfT7TtA//CjJ8/3bh5CJLJG3TtkDMs+xiJT9
 rKMg==
X-Gm-Message-State: ANhLgQ1GgtzuzMFOgtupHUBGtrsq+MfXSLq76tNRh6bL/1p1XCSWy7X5
 CrgRhJqBH1Qgh7CCYytPkn+ZdK08MylA5JqRybMGHQ==
X-Google-Smtp-Source: ADFU+vvhJPSVd5yxnSsDuvriYVo33KEBmUD4VOfuBWlib7JCT2jIdpNHf/MvE4O71XY1jLiZ7wL2mWmFGr62DUp1Pxw=
X-Received: by 2002:a1c:62c5:: with SMTP id w188mr4444781wmb.112.1585672772708; 
 Tue, 31 Mar 2020 09:39:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
 <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
 <a51643dbff58e16cc91f33273dbc95dded57d3e6.camel@sipsolutions.net>
In-Reply-To: <a51643dbff58e16cc91f33273dbc95dded57d3e6.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Tue, 31 Mar 2020 09:39:21 -0700
Message-ID: <CAKFsvULjkQ7T6QhspHg87nnDpo-VW1qg2M3jJGB+NcwTQNeXGQ@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_093936_290754_E6C1263B 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 1:41 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Mon, 2020-03-30 at 10:38 +0200, Dmitry Vyukov wrote:
> > On Mon, Mar 30, 2020 at 9:44 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > On Fri, 2020-03-20 at 16:18 +0100, Dmitry Vyukov wrote:
> > > > > Wait ... Now you say 0x7fbfffc000, but that is almost fine? I think you
> > > > > confused the values - because I see, on userspace, the following:
> > > >
> > > > Oh, sorry, I copy-pasted wrong number. I meant 0x7fff8000.
> > >
> > > Right, ok.
> > >
> > > > Then I would expect 0x1000 0000 0000 to work, but you say it doesn't...
> > >
> > > So it just occurred to me - as I was mentioning this whole thing to
> > > Richard - that there's probably somewhere some check about whether some
> > > space is userspace or not.
> > >

Yeah, it seems the "Kernel panic - not syncing: Segfault with no mm",
"Kernel mode fault at addr...", and "Kernel tried to access user
memory at addr..." errors all come from segv() in
arch/um/kernel/trap.c due to what I think is this type of check
whether the address is
in userspace or not.

> > > I'm beginning to think that we shouldn't just map this outside of the
> > > kernel memory system, but properly treat it as part of the memory that's
> > > inside. And also use KASAN_VMALLOC.
> > >
> > > We can probably still have it at 0x7fff8000, just need to make sure we
> > > actually map it? I tried with vm_area_add_early() but it didn't really
> > > work once you have vmalloc() stuff...
> >

What x86 does when KASAN_VMALLOC is disabled is make all vmalloc
region accesses succeed by default
by using the early shadow memory to have completely unpoisoned and
unpoisonable read-only pages for all of vmalloc (which includes
modules). When KASAN_VMALLOC is enabled in x86, the shadow memory is not
allocated for the vmalloc region at startup. New chunks of shadow
memory are allocated and unpoisoned every time there's a vmalloc()
call. A similar thing might have to be done here by mprotect()ing
the vmalloc space as read only, unpoisoned without KASAN_VMALLOC. This
issue here is that
kasan_init runs so early in the process that the vmalloc region for
uml is not setup yet.


> > But we do mmap it, no? See kasan_init() -> kasan_map_memory() -> mmap.
>
> Of course. But I meant inside the UML PTE system. We end up *unmapping*
> it when loading modules, because it overlaps vmalloc space, and then we
> vfree() something again, and unmap it ... because of the overlap.
>
> And if it's *not* in the vmalloc area, then the kernel doesn't consider
> it valid, and we seem to often just fault when trying to determine
> whether it's valid kernel memory or not ... Though I'm not really sure I
> understand the failure part of this case well yet.
>

I have been testing this issue in a multitude of ways and have only
been getting more confused. It's still very unclear where exactly the
problem occurs, mostly because the errors I found most frequently were
reported in segv(), but the stack traces never contained segv.

Does anyone know if/how UML determines if memory being accessed is
kernel or user memory?

> johannes
>


--
Best,
Patricia

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
