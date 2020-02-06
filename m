Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28611154B33
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 19:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GWODjS9bJVYmBbM5cAQVYrzAZn1ynn8ZUc1N8imtYY=; b=WHz0tWRgqJiQUF
	Mis2GbJHF5IZ/W6VrzduY8CCnyidre5NGElSlaAUC8VpDQMMjOyw6U7YYylCEKKLVAh1AjRjUsw3w
	Qii/V6x/B9sPvnkAr8UoO+yyACUyJMOZ8kHmDDE7R7jrmkiviLm1w8JY5ROwUJ7vlv6U/tPD+L4r8
	Lb0JQ00z2KJQSKDfiCua6VliKl8xRMNOu866Sf0lKa7GsbV3ruDWz9/S7VBfFKDjNQ2giDoydIsKz
	/GIkju6LxsRg8aD5T4LYlK67Al7Y6pfVTYYJM5Ez9YRTUO6XDApHf1Pf7uKFST+io+cy0kwwzfA4d
	2lANJ8iAxy+nYhQWJx4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izlxs-0001Iz-Jv; Thu, 06 Feb 2020 18:33:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izlxp-0001IY-Nt
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 18:33:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id a6so8380443wrx.12
 for <linux-um@lists.infradead.org>; Thu, 06 Feb 2020 10:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/o0TABmh3sA91z50JGeWR2QdDzZnMyxEswlhRW37yD8=;
 b=HR7uoCJJz73XXlC0tOxO2Tberzt+iuXFO7P4ixPw59zFnM5LttKSdf1tK9bRyAf3ka
 Cez5zxvwnBT7fJBnQ67tpaiouvNPQkKlpM62Rege6LCx2tSl2klKpsGsNk1zSshJSFRu
 FuGRvMh/ZCCsriTwBwTmSYNjePD9OPMT33VMFZSVk0gM5mYVnvt+OEMeWjL6dkKTVCgF
 sM0DFsahxxbvFSeltgIWn/b6lzvQQmDgav9bM2cUnKE9gHSBknhyx1jhX4s6EETMLgBX
 +EjI/i9GazD9vusTFNnsYDo9J3GXYXUZTO47N9ILD/BLLdwQYAt85BoFNwitlYdzsY/d
 /nsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/o0TABmh3sA91z50JGeWR2QdDzZnMyxEswlhRW37yD8=;
 b=OtTMuHtbhAA/p6Y/c4jGj5zKieMlRgq0JBK/4iqWAlW81kfI7Qn0yk32XFseqTvQyl
 9mfA2a54DWa9lK8RnzOGOWmu/GcZaOqpm0620ZsAZUbcvGiLpWIdMZhb+7+gri556dhl
 GnM13UYOUuWg9+MzKpDcJb0QJYVAi/P08y77std/0SnMXac4+4rtBCHufPx1Aoepzud1
 4Csiv0E2ZNrWtgSwlW41ev6Ey6GNVsl/JHUfjuFZNEbdk0FTVj466hIpPIorXfV2OoxG
 OTxoFR7dfu0Bfb3wk7120ph3XX0/my1BJwOhtX5hhzgON6qR8mWqhJiWt1P3s96pvAW+
 NsKw==
X-Gm-Message-State: APjAAAWUOY9V+RtJDj7ZfGbRQzjznKDAnnRbX66SqwLOkf8W03w9XWxI
 XIfTDFrsL/4R/M6iYyDDPA2k11F1VSiFEaMPPPSbgw==
X-Google-Smtp-Source: APXvYqyO7B6UBrWxHoZXCXiOleCEOatPxvuRTAcGxPS9KZaihVadCBanUHVq7vvpyCENHPfeoHcATMP4/PrwGyfLELQ=
X-Received: by 2002:a05:6000:108e:: with SMTP id
 y14mr5254368wrw.338.1581013999924; 
 Thu, 06 Feb 2020 10:33:19 -0800 (PST)
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
 <CACT4Y+Z6_CwVyJhr3SdDejFsrXcM11LVY+gh4oKP6k03Pn95AA@mail.gmail.com>
In-Reply-To: <CACT4Y+Z6_CwVyJhr3SdDejFsrXcM11LVY+gh4oKP6k03Pn95AA@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 6 Feb 2020 10:33:08 -0800
Message-ID: <CAKFsvULhg7i=tuw1LMS9avy4-NgDDfK2k-_kCa3CH3sNRXa0Qw@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_103321_804606_C1204B0A 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Johannes Berg <johannes@sipsolutions.net>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 2:05 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Fri, Jan 17, 2020 at 11:03 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Fri, Jan 17, 2020 at 10:59 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > On Thu, Jan 16, 2020 at 10:39 PM Patricia Alfonso
> > > <trishalfonso@google.com> wrote:
> > > >
> > > > On Thu, Jan 16, 2020 at 1:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > > >
> > > > > On Thu, Jan 16, 2020 at 10:20 AM Johannes Berg
> > > > > <johannes@sipsolutions.net> wrote:
> > > > > >
> > > > > > On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> > > > > > >
> > > > > > > This should resolve the problem with constructors (after they
> > > > > > > initialize KASAN, they can proceed to do anything they need) and it
> > > > > > > should get rid of most KASAN_SANITIZE (in particular, all of
> > > > > > > lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> > > > > > > (in case it does not work now). The only tiny bit we should not
> > > > > > > instrument is the path from constructor up to mmap call.
> > > >

By initializing KASAN as the first thing that executes, I have been
able to get rid of most of the "KASAN_SANITIZE := n" lines and I am
very happy about that. Thanks for the suggestions!

> > > If that part of the code I mentioned is instrumented, manifestation
> > > would be different -- stack instrumentation will try to access shadow,
> > > shadow is not mapped yet, so it would crash on the shadow access.
> > >
> > > What you are seeing looks like, well, a kernel bug where it does a bad
> > > stack access. Maybe it's KASAN actually _working_? :)
> >
> > Though, stack instrumentation may have issues with longjmp-like things.
> > I would suggest first turning off stack instrumentation and getting
> > that work. Solving problems one-by-one is always easier.
> > If you need help debugging this, please post more info: patch, what
> > you are doing, full kernel output (preferably from start, if it's not
> > too lengthy).
>
> I see syscall_stub_data does some weird things with stack (stack
> copy?). Maybe we just need to ignore accesses there: individual
> accesses, or whole function/file.

It is still not clear whether the syscall_stub_data errors are false
positives, but while moving the kasan_init() to be as early as
possible in main(), I ran into a few more stack-related errors like
this(show_stack, dump_trace, and get_wchan). I will be taking your
advice to focus on one thing at a time and temporarily disable stack
instrumentation wherever possible.

--
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
