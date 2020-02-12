Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFBB15A13C
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 07:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpdd26ILHXunh6j1HdCcBTslUw7IvVBryg6lbGfFML8=; b=JvN5NbhvOiELVl
	tb8BzL4Qz1Z7//AcRL/PjjXLFZfBu+7uQh0DHFwmgNyboC+34LNP142ZQARZtYhfy2tQ7thaKkPsE
	zso8UtgKb1ikuV/B3d4dFOVHVAu8IFDs/sRWHqvfTZd6yFoH/i6KHtp9o/WkJYi4NBz6bvIGo5PHr
	pSm9uCybv5UQrQfcW+bHD578oRLy1OsB2KtD4KmLsqOD/SKbAZV+UoNJE3rTXFAbyBcizIBmOmC77
	e2RicV+bGdEBBtN16MFBT7J1+eTtKY3FEXfAbk2pd+tVUVn8qqJaxv98KJ2L6HgHBXmZUp7vgkG29
	adBaQhTBWGhyCCTv4R9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1lQr-0004wl-5L; Wed, 12 Feb 2020 06:23:33 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1lQo-0004vn-PH
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 06:23:32 +0000
Received: by mail-qt1-x842.google.com with SMTP id h12so822394qtu.1
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 22:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wCIGTDCK3CFLiIsiFAwO9TOgJOimjyz3BYLMXapp1co=;
 b=qwHaZKo3KsqKr8AlD7RU0Lj3K3IPFPgtOiJTCzqROhD3TL0MYBfbu5JO95ACseI2Z3
 SbQRysvUUuqdnFfo7RAvxd5OpiCrU7ezqjcq0TsOs2kGpdM0azBqCYoAKnbHUlk+l1dK
 Zztydhox5XLGXe1NSAS6X90916opnB7psuUEz3IcHy6+Zwp/A1lO8jKH+h2goUAeUyyd
 mF8WJ1b+II1J7STjDKQ1K90mhkRivAMI/y3geqANhrCwd2nt1o1VAzFeJlfuPRwPQnpv
 n6WnTu0fTh9a9V3ckvGqg/uw8ZNBkJHDX3mM/FiCivYM/GQ3PdGog9h2GpSItggcT5xS
 cadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wCIGTDCK3CFLiIsiFAwO9TOgJOimjyz3BYLMXapp1co=;
 b=nJ9twsiRF6YWAKmPTc/7hnQeTbNsmv9+3Pm47ki8OOmkiAgQIFelsU152m+NzXlqgr
 3a+ZqcBJ38HLMhZtKq0oxhLbpzW7AzcpE9j2OeUUarQaGIqwgVzZVb6+aA49JOdke8pe
 JPl8KANvdIGtjSwsdpKhAlLBsYWO8FlFbFkDPVRSqY9J2BOnT6gPqHPpR/znjLzrNKQ/
 76sARGEc2e9VQ/TNKD9ucMbQWX3rf9psPQbWTe5RJUY56V+EEnOxCc5GmsS/1Vy9inl8
 zuUrS9wNzssGEXUTYU8Rf1bY7H4Dp7Z3z4PA012UltcI5ne+c1O4i2FymdhbkyDYOEK7
 Q97w==
X-Gm-Message-State: APjAAAXZidOn7e+T7KcU5QpYe/TbPqV3dIU6e4i4wYpIqf4y8HzcL3AO
 yXBb7+QQ+0IcKxvkm91D1kaDRPtnSkKZfT/VvVbmSw==
X-Google-Smtp-Source: APXvYqzFx6k10gUgdOT63zuzi1P3uHNFriTd2XVMEv/caoOhPibQxYxk5pUIa+ygHIDuwfr2kaKBHXeZBfRntB2PXkw=
X-Received: by 2002:ac8:7159:: with SMTP id h25mr5774429qtp.380.1581488608196; 
 Tue, 11 Feb 2020 22:23:28 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+bPzRbWw-dPQkLVENPKy_DBdjrbSce0f6XE3=W7RhfhBA@mail.gmail.com>
 <CAKFsvUKhwAOV9O+LWBr=-zLEJCFJvKOH-ePsXMMVJzHotqd3Ug@mail.gmail.com>
In-Reply-To: <CAKFsvUKhwAOV9O+LWBr=-zLEJCFJvKOH-ePsXMMVJzHotqd3Ug@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 12 Feb 2020 07:23:16 +0100
Message-ID: <CACT4Y+aRq9j=3GODWBcnDnW=Pgp4e=N2++FTYEuq-00OmfXpbw@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_222330_846173_E5C5D81A 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:48 AM Patricia Alfonso
<trishalfonso@google.com> wrote:
>
> On Thu, Jan 16, 2020 at 12:44 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Wed, Jan 15, 2020 at 7:28 PM Patricia Alfonso
> > <trishalfonso@google.com> wrote:
> > > +config KASAN_SHADOW_OFFSET
> > > +       hex
> > > +       depends on KASAN
> > > +       default 0x100000000000
> > > +       help
> > > +         This is the offset at which the ~2.25TB of shadow memory is
> > > +         initialized and used by KASAN for memory debugging. The default
> > > +         is 0x100000000000.
> >
> > What are restrictions on this value?
> The only restriction is that there is enough space there to map all of
> the KASAN shadow memory without conflicting with anything else.
>
> > In user-space we use 0x7fff8000 as a base (just below 2GB) and it's
> > extremely profitable wrt codegen since it fits into immediate of most
> > instructions.
> > We can load and add the base with a short instruction:
> >     2d8c: 48 81 c2 00 80 ff 7f    add    $0x7fff8000,%rdx
> > Or even add base, load shadow and check it with a single 7-byte instruction:
> >      1e4: 80 b8 00 80 ff 7f 00    cmpb   $0x0,0x7fff8000(%rax)
> >
> I just tested with 0x7fff8000 as the KASAN_SHADOW_OFFSET and it worked
> so I can make that the default if it will be more efficient.

I think it's the right thing to do if it works.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
