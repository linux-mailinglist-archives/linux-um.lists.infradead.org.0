Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CEB14074E
	for <lists+linux-um@lfdr.de>; Fri, 17 Jan 2020 11:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkQW9ogIi1/6CZdDP+kSKYvHNk9R+u3tftGo6lrx7A4=; b=oDsdJ3BxSlwsO/
	mM2NqYhh0zjmy0ed7jDheiBskuFvK7ySlsLzQ4Ut5DSwggj59KwVVOBCCxsDlCiRRQoOXRQmBJefz
	iviyobzpCDtroTUAYqEU3+oaaQ/FxBG2/niOra8PCK/PFu7pdjG9PVJaHMDHyUQ9QQNl+rkHhV4Pe
	Sbl4TpcH01OTDjhHBTOAQgEXTXMTXJRjBg1VnvCE1wXemb0qTNFK2VcdjY9Y92JzgvZRW8rDOLXCw
	Hqojfh2akx+Gffy71cAH9UB3TsM2WSu7v9GnX7lWD/zDQFtVUejRHpdjheRtCDmGafCpP3DCq0Gx0
	PRTq2bt3NSFU5nQjRIYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOVT-0004BG-Ai; Fri, 17 Jan 2020 10:05:35 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOVN-0004AY-K9
 for linux-um@lists.infradead.org; Fri, 17 Jan 2020 10:05:34 +0000
Received: by mail-qk1-x741.google.com with SMTP id z14so22121905qkg.9
 for <linux-um@lists.infradead.org>; Fri, 17 Jan 2020 02:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w/2c5M/UzJFnbWr1rvLc1suSEZvfABkxh5yg/ucrfTY=;
 b=Mw7wWn7P4s/MDlKKDeO2hCa7cduHamni/cV2VqAPosAt6si42jbxLnx+IUNOF7B/Xx
 if4jxxq3BIl5hm8W0DWkksygQWmW3YxDC6CK8ibhrPC2tvqh7HoEKYcJgYAH/Ummi20h
 I9H8RoUJoqUR44gfg1N3dIdTZix4xCDKE/ZjyVYpHXsSBHEr0I552pxJMKvvItl8Yht8
 avKxub0Bu33Sx6p6daRqXSJ5DCOb/u+WPYBvJotCUdVId7Yfj0nw8N5IIYnkMAOEC9DN
 3qXBAQQ/PE+8wLsmLUcvDbH1Mm+8dS7ScL2hkkB4b7S4ofHHpoQafskioxmHEqnka/Vf
 KcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w/2c5M/UzJFnbWr1rvLc1suSEZvfABkxh5yg/ucrfTY=;
 b=idZ3U0gK+2xW/Ri+9cklr5Xlx8EvBc3pfs5LXhk1vgBSsDKCt/wgeAJ9y+MxOg9HQ/
 fFamnyh+8GxfW12RwYKgyDqZ4BPQmXQnuGl8U/8GBt8mmXoETbftKPoy8D1akU4zASD1
 RNYdcAC3oYXV/mk6iEodxYjYbTcnXEB5Kpdk8FWID3xf3n2n+iAji1UvDGZiWaRvcwF5
 yrrW2HDNXr6c5Uj+B4lXi32+U4QsiTzcD9nzyGVkRjU2Vp2wnbuh5vOJDUY9xDe7kbvX
 4ocpR/SLl2MXyQjH5VVRnIC1smdIAYhZNZZdu/GyBykwj+vvefQF2pSuDHzQnsLHBuOK
 1kMg==
X-Gm-Message-State: APjAAAWfenMbIfa3LzOcZNkvu1V5gyfJPNIh0JicNGvBG+6A5AvdKi8V
 uHoj3dUR0R7hDsvO5LimeLMJhIPx6eo/O9C7SKccgg==
X-Google-Smtp-Source: APXvYqzAcVzOjTPbD6iv5XUDBRr1aI5aw0yrjPVM25XzN7IeyHsXe9f0JkYTbzdSlJzJmkpY7VaHrU9F9pCJQUXtoMU=
X-Received: by 2002:a37:5841:: with SMTP id m62mr36462569qkb.256.1579255527934; 
 Fri, 17 Jan 2020 02:05:27 -0800 (PST)
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
 <CACT4Y+bsaZoPC1Q7_rV-e_aO=LVPA-cE3btT_VARStWYk6dcPA@mail.gmail.com>
In-Reply-To: <CACT4Y+bsaZoPC1Q7_rV-e_aO=LVPA-cE3btT_VARStWYk6dcPA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 Jan 2020 11:05:15 +0100
Message-ID: <CACT4Y+Z6_CwVyJhr3SdDejFsrXcM11LVY+gh4oKP6k03Pn95AA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_020529_687664_450A3B0F 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

On Fri, Jan 17, 2020 at 11:03 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Fri, Jan 17, 2020 at 10:59 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Thu, Jan 16, 2020 at 10:39 PM Patricia Alfonso
> > <trishalfonso@google.com> wrote:
> > >
> > > On Thu, Jan 16, 2020 at 1:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > >
> > > > On Thu, Jan 16, 2020 at 10:20 AM Johannes Berg
> > > > <johannes@sipsolutions.net> wrote:
> > > > >
> > > > > On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> > > > > >
> > > > > > Looking at this problem and at the number of KASAN_SANITIZE := n in
> > > > > > Makefiles (some of which are pretty sad, e.g. ignoring string.c,
> > > > > > kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
> > > > > > initialize KASAN too late. I think we need to do roughly what we do in
> > > > > > user-space asan (because it is user-space asan!). Constructors run
> > > > > > before main and it's really good, we need to initialize KASAN from
> > > > > > these constructors. Or if that's not enough in all cases, also add own
> > > > > > constructor/.preinit array entry to initialize as early as possible.
> > > > >
> > >
> > > I am not too happy with the number of KASAN_SANITIZE := n's either.
> > > This sounds like a good idea. Let me look into it; I am not familiar
> > > with constructors or .preint array.
> > >
> > > > > We even control the linker in this case, so we can put something into
> > > > > the .preinit array *first*.
> > > >
> > > > Even better! If we can reliably put something before constructors, we
> > > > don't even need lazy init in constructors.
> > > >
> > > > > > All we need to do is to call mmap syscall, there is really no
> > > > > > dependencies on anything kernel-related.
> > > > >
> > > > > OK. I wasn't really familiar with those details.
> > > > >
> > > > > > This should resolve the problem with constructors (after they
> > > > > > initialize KASAN, they can proceed to do anything they need) and it
> > > > > > should get rid of most KASAN_SANITIZE (in particular, all of
> > > > > > lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> > > > > > (in case it does not work now). The only tiny bit we should not
> > > > > > instrument is the path from constructor up to mmap call.
> > >
> > > This sounds like a great solution. I am getting this KASAN report:
> > > "BUG: KASAN: stack-out-of-bounds in syscall_stub_data+0x2a5/0x2c7",
> > > which is probably because of this stack instrumentation problem you
> > > point out.
> >
> > [reposting to the list]
> >
> > If that part of the code I mentioned is instrumented, manifestation
> > would be different -- stack instrumentation will try to access shadow,
> > shadow is not mapped yet, so it would crash on the shadow access.
> >
> > What you are seeing looks like, well, a kernel bug where it does a bad
> > stack access. Maybe it's KASAN actually _working_? :)
>
> Though, stack instrumentation may have issues with longjmp-like things.
> I would suggest first turning off stack instrumentation and getting
> that work. Solving problems one-by-one is always easier.
> If you need help debugging this, please post more info: patch, what
> you are doing, full kernel output (preferably from start, if it's not
> too lengthy).

I see syscall_stub_data does some weird things with stack (stack
copy?). Maybe we just need to ignore accesses there: individual
accesses, or whole function/file.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
