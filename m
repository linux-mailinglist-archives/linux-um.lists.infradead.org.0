Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC70140747
	for <lists+linux-um@lfdr.de>; Fri, 17 Jan 2020 11:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxAF28w3vghRW0aEt8UZIgArO7nSv6359AMg7HZG7tA=; b=X3HEfIXanhF0ju
	Xr53X/ZT8MoPBbceSw2Kmzo8MUckpveNWl4nMtGwqFMxiyb//GgMskl1EzwZrlIgcuj91umXovi6M
	y2/QJQZzD+rcc/tVno4kg38fZxoFGi1aMePI1f+PJcjnGcrm0+DYfmEDNCc8PMmiiykJ8Qgk9HYGn
	KVgb+p30AmofPsBBrklwGfLUQ6Gp2jG/q7uyNw9tPb419cpuP6ke3CLJUGIvSkuciulE4mdogEQnh
	VqaB1c8EfOJWI1C01n7JSFBQNXiox833LOFAWDYESUjGZcD1KlRPazYJNzC4Sr3NQpUsMpPIHDp8I
	7rd4xahPcGq1McP6XLgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOTS-0002n4-Th; Fri, 17 Jan 2020 10:03:30 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOTM-0002gO-TX
 for linux-um@lists.infradead.org; Fri, 17 Jan 2020 10:03:29 +0000
Received: by mail-qt1-x844.google.com with SMTP id w30so21284993qtd.12
 for <linux-um@lists.infradead.org>; Fri, 17 Jan 2020 02:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kN9jFTsuucSemoNqf4dJLa9bNAFNxkxyRhdletZB1KA=;
 b=uMUCEpzDOb/YhPzJDKgHLZVBqvCippkuTHyQxxp2Cmnpz40yntAZP2m+g1FEG6tExR
 LFWi1AdXr+eAjej1PGMgGvob4wKuvYLxCLUH6GqPqhEFe83i0lTFH9W7wJR1MbKHKMMl
 uY7xC1fZdWlpU+eCfoSoeM1EJOvyX1xDyaJIPHusSH7gbW4L3Sv7X8jPKhabFm4jEUX1
 gBHm5RJ1SAHQugvdz0i52hpuEXVFgdBm6NXxab0lOrWJxbi4gWwFZIlg2ukDVOBnD9U0
 Ml5rETIniSPU8xMl5Ynb2ANw3+Nag/pkH0bmbsKR+tyvRUjKYor6GazB+AVaJ5aXCvCl
 gqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kN9jFTsuucSemoNqf4dJLa9bNAFNxkxyRhdletZB1KA=;
 b=OlGdUq7mwjbPb7hzQkNBswW8pOFpV/SBT34qZwIgNn9KUugk3khUSl+TF+40oZDomJ
 3xiZisDVDOrR/vtF5WwMltpRFQIT0dgw5ldi0reKg4OSnD+tjztiRU+Uve2q/aQSXzdn
 IvAqPHiGy6YUkBDAA1fDenFrJPwi95zHgEtI9/cJ7A1o4Y76Rv+swaoCbBnycRELThTL
 fCUdAHR5HWAggOrpO4zUrCezmvuqOggV2qTzSvpG783qZpXxgSlB5bKxkpgHT/1BWLRw
 eEVXPakvIHZ0nzeCma/oK/HRoZv16AisIr5/VIu9xpCNNbhiH38cfCSg64JAHNjOecDE
 owKA==
X-Gm-Message-State: APjAAAXymKFchgnMwIaDXmcQXoBKtYOOOAJeHZOro9XHgfYkTIV3Xt/q
 /brsJOJ+cGYGT8vC3JR8rF1/B8ButbledHpbN0g/yg==
X-Google-Smtp-Source: APXvYqzlZ86gy24oNdkpo3koZv9DQIH6cw6viAFVT92FEneqyzCrEOi79ncFmZ9Ch2Cod0dIRUvP1mHoUo69WbtuvFA=
X-Received: by 2002:ac8:30f7:: with SMTP id w52mr6677250qta.380.1579255399591; 
 Fri, 17 Jan 2020 02:03:19 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
 <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
 <2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel@sipsolutions.net>
 <CACT4Y+b6C+y9sDfMYPDy-nh=WTt5+u2kLcWx2LQmHc1A5L7y0A@mail.gmail.com>
 <CACT4Y+atPME1RYvusmr2EQpv_mNkKJ2_LjMeANv0HxF=+Uu5hw@mail.gmail.com>
In-Reply-To: <CACT4Y+atPME1RYvusmr2EQpv_mNkKJ2_LjMeANv0HxF=+Uu5hw@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 Jan 2020 11:03:07 +0100
Message-ID: <CACT4Y+bsaZoPC1Q7_rV-e_aO=LVPA-cE3btT_VARStWYk6dcPA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_020325_031564_5B461838 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Jan 17, 2020 at 10:59 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Jan 16, 2020 at 10:39 PM Patricia Alfonso
> <trishalfonso@google.com> wrote:
> >
> > On Thu, Jan 16, 2020 at 1:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > On Thu, Jan 16, 2020 at 10:20 AM Johannes Berg
> > > <johannes@sipsolutions.net> wrote:
> > > >
> > > > On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> > > > >
> > > > > Looking at this problem and at the number of KASAN_SANITIZE := n in
> > > > > Makefiles (some of which are pretty sad, e.g. ignoring string.c,
> > > > > kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
> > > > > initialize KASAN too late. I think we need to do roughly what we do in
> > > > > user-space asan (because it is user-space asan!). Constructors run
> > > > > before main and it's really good, we need to initialize KASAN from
> > > > > these constructors. Or if that's not enough in all cases, also add own
> > > > > constructor/.preinit array entry to initialize as early as possible.
> > > >
> >
> > I am not too happy with the number of KASAN_SANITIZE := n's either.
> > This sounds like a good idea. Let me look into it; I am not familiar
> > with constructors or .preint array.
> >
> > > > We even control the linker in this case, so we can put something into
> > > > the .preinit array *first*.
> > >
> > > Even better! If we can reliably put something before constructors, we
> > > don't even need lazy init in constructors.
> > >
> > > > > All we need to do is to call mmap syscall, there is really no
> > > > > dependencies on anything kernel-related.
> > > >
> > > > OK. I wasn't really familiar with those details.
> > > >
> > > > > This should resolve the problem with constructors (after they
> > > > > initialize KASAN, they can proceed to do anything they need) and it
> > > > > should get rid of most KASAN_SANITIZE (in particular, all of
> > > > > lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> > > > > (in case it does not work now). The only tiny bit we should not
> > > > > instrument is the path from constructor up to mmap call.
> >
> > This sounds like a great solution. I am getting this KASAN report:
> > "BUG: KASAN: stack-out-of-bounds in syscall_stub_data+0x2a5/0x2c7",
> > which is probably because of this stack instrumentation problem you
> > point out.
>
> [reposting to the list]
>
> If that part of the code I mentioned is instrumented, manifestation
> would be different -- stack instrumentation will try to access shadow,
> shadow is not mapped yet, so it would crash on the shadow access.
>
> What you are seeing looks like, well, a kernel bug where it does a bad
> stack access. Maybe it's KASAN actually _working_? :)

Though, stack instrumentation may have issues with longjmp-like things.
I would suggest first turning off stack instrumentation and getting
that work. Solving problems one-by-one is always easier.
If you need help debugging this, please post more info: patch, what
you are doing, full kernel output (preferably from start, if it's not
too lengthy).

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
