Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75514073A
	for <lists+linux-um@lfdr.de>; Fri, 17 Jan 2020 11:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98dUgJpdpJM+8zKd8590MilbKfFMgg8NGkylghrToSQ=; b=o8sx/e/nOPe0ef
	/JPGnRZIq8DlXZKDSI6Qnk39oStVVYA6ds7Ss6hasRJlBLS6r0gOpCzfBwxlmbL8NyDeNQwpJQXAv
	D5KRpCmDfwPh2YcPpWn3w6dd28sGucXm14rF2sny7j0y5jeMr3v99ejz4aZ2FX7vhTWBjDtAV/Z+l
	K47lYaW8CEfm7JYEfW1OrjZgAUilfwWSnZEdkrbuHmmrqHRXVekMiy5LEBQkzCujdJPjfASIkxuoV
	eewc1WjVU8tFpavZD1N4SIgo5KNVfoLy+V0PVHgWab9qPVcyKNBDDzwnDSF1MHuwsQbPgwicNnbEJ
	CIubDAc4z/21OreRtSjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOQC-0001zf-NT; Fri, 17 Jan 2020 10:00:08 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOQ6-0000pR-3P
 for linux-um@lists.infradead.org; Fri, 17 Jan 2020 10:00:06 +0000
Received: by mail-qk1-x744.google.com with SMTP id j9so22144122qkk.1
 for <linux-um@lists.infradead.org>; Fri, 17 Jan 2020 01:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jC/gslMBQjozVdraFcTbF5iK/wO0zoAIUa/gx2s21AI=;
 b=dFb8Zxd4b6QhukcYJeb/+Y1gu5WKTtG8UOyyGTYW62kJkCoWulv38wWhEZdFdDofO0
 8aXS+I429dwmMs9njLgs55rvt5XlKGAEKvpQ2Fz74/9Loq0byAqUCJ12PQJIorTIjPNM
 SsBenxpwGvX1aipe0a5zMQnuBerkXI1m/qtErOzKPebtD8zEjOGMSS1Qkh6ZTSxhkIzk
 Of/K4apTIvBkdWab834TrlBi8Kshg8CTVS0J+5mBW5wncAIb7l2/ucKjrwve657r/ZtB
 +JYMMYrvPJ7I5x+hT23ADe9chNut8lArojNJKe3RS2xJrKJ7ZrETtU/+Q83k2rlDmhLw
 sbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jC/gslMBQjozVdraFcTbF5iK/wO0zoAIUa/gx2s21AI=;
 b=bUa/i0KSgKUkllZwb7YAbb5TKHREKcd14itfrWp1IybRT5fcSCfOfEjH+V4/DaD8lb
 obclBlZ9uC/PT+UJl3asGqFhQGcY7Vcy5+Sd5JDOhX0Ze0mq8mzm3WSjqI+ksU1DYRA7
 EU5vSscH6HtVNLMU8H0yiKuLkCeoPnw/kS4N2GU2lQNayWa0Grw0zZxc7CuGqUQgtnYb
 txjOM96gJB1iOkE7p1cNmern9AdtW5s3A9OHAkkvtsyJCYCOAA0Na3DozFR/97lU9DrI
 UYxZiig9R3ApXuUvMEtnD3Q67iilcfIks1o/Di4v4XDz8sdigfyZxyIGrgz/fvzM99KB
 5fvg==
X-Gm-Message-State: APjAAAXoLrvQxfv/Va4D5yM5sN84cjfgVbAswldhv3Cm22jheuozo1jz
 2dvHlo3QwseN+B+89kZKFkpgXy8Gfxisl/oQa05SOw==
X-Google-Smtp-Source: APXvYqz9Y/DwCHrtW3J0WM4wXtrXil5LTa8i28aydOOQb5lrmQrvTTR0sGVZSbXd6saTas+zx7z5338Z0M8xp1dnfT0=
X-Received: by 2002:a05:620a:1136:: with SMTP id
 p22mr37899734qkk.8.1579255195666; 
 Fri, 17 Jan 2020 01:59:55 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
 <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
 <2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel@sipsolutions.net>
 <CACT4Y+b6C+y9sDfMYPDy-nh=WTt5+u2kLcWx2LQmHc1A5L7y0A@mail.gmail.com>
In-Reply-To: <CACT4Y+b6C+y9sDfMYPDy-nh=WTt5+u2kLcWx2LQmHc1A5L7y0A@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 Jan 2020 10:59:44 +0100
Message-ID: <CACT4Y+atPME1RYvusmr2EQpv_mNkKJ2_LjMeANv0HxF=+Uu5hw@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_020002_178267_8256917F 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

On Thu, Jan 16, 2020 at 10:39 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
>
> On Thu, Jan 16, 2020 at 1:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Thu, Jan 16, 2020 at 10:20 AM Johannes Berg
> > <johannes@sipsolutions.net> wrote:
> > >
> > > On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> > > >
> > > > Looking at this problem and at the number of KASAN_SANITIZE := n in
> > > > Makefiles (some of which are pretty sad, e.g. ignoring string.c,
> > > > kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
> > > > initialize KASAN too late. I think we need to do roughly what we do in
> > > > user-space asan (because it is user-space asan!). Constructors run
> > > > before main and it's really good, we need to initialize KASAN from
> > > > these constructors. Or if that's not enough in all cases, also add own
> > > > constructor/.preinit array entry to initialize as early as possible.
> > >
>
> I am not too happy with the number of KASAN_SANITIZE := n's either.
> This sounds like a good idea. Let me look into it; I am not familiar
> with constructors or .preint array.
>
> > > We even control the linker in this case, so we can put something into
> > > the .preinit array *first*.
> >
> > Even better! If we can reliably put something before constructors, we
> > don't even need lazy init in constructors.
> >
> > > > All we need to do is to call mmap syscall, there is really no
> > > > dependencies on anything kernel-related.
> > >
> > > OK. I wasn't really familiar with those details.
> > >
> > > > This should resolve the problem with constructors (after they
> > > > initialize KASAN, they can proceed to do anything they need) and it
> > > > should get rid of most KASAN_SANITIZE (in particular, all of
> > > > lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> > > > (in case it does not work now). The only tiny bit we should not
> > > > instrument is the path from constructor up to mmap call.
>
> This sounds like a great solution. I am getting this KASAN report:
> "BUG: KASAN: stack-out-of-bounds in syscall_stub_data+0x2a5/0x2c7",
> which is probably because of this stack instrumentation problem you
> point out.

[reposting to the list]

If that part of the code I mentioned is instrumented, manifestation
would be different -- stack instrumentation will try to access shadow,
shadow is not mapped yet, so it would crash on the shadow access.

What you are seeing looks like, well, a kernel bug where it does a bad
stack access. Maybe it's KASAN actually _working_? :)

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
