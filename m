Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969713D693
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 10:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgjldNfxG+3WjyHQTBANWSJIkaElbMJHWyiYrduZA/w=; b=KUafedSH1ml7yX
	Pmxte7xIsv2z8452xiF8WoJ8X71qev1UQCE/SVOqznmawvEvYFJ5ODgu/KkdeQSqsCNjcGXGNIeDt
	UAU/AF7nglEbpHKGYaAvqEwk8A01N46yxHcXyObHIP4kuVzD4tozjoLggOjPjp4YcM53sN5QBtS1u
	Ldwl5ml2tPKE4gfhZD/SWP2QsGGUtSDnYSGxpvXksGARotmDfBkDuXAuk3ANz2dO1rKr8Er4IqNDw
	pRb9tr6dvcsj32aQ5+RpdCUUAbKL8iegLeELn5NlZL12V0EG0KOeDPPUVSnGG/VDyYRUZHFJ7Lp37
	/wBXpPg0iA8MM1OH984g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1IZ-0003Oq-LS; Thu, 16 Jan 2020 09:18:43 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1IU-0003Nl-3k
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 09:18:42 +0000
Received: by mail-qv1-xf43.google.com with SMTP id o18so8754025qvf.1
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 01:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6aUm9IZBoyzrmlaZrE7sKzVINYzfYj5bNqwcb9Va7iI=;
 b=SYYbnAVSUXIa9qjPlD9vE1jh2fCqbJAF0lK3PwmNSVGUE7fZ33KjX8Jp/FflTWJ3X3
 WibzlMsnD5C7Lt1GTydrGs3zVxD8rnwiOHiHoAqyvYvBPqP+yN8skqAviLHJbytc34rv
 r1N+iQyRTkh4D60kFtO93fnagprGQQ5hdkH4p3eNquV3KT22+JlLvIVEGK+Qfg3Cqtud
 YwSEufB3R8cxmXBfTlzweLnBxfWw4pN4N+aUud8u7/3DBko8z2RIlzUQuZ5ZlFpc51wW
 YGQ0KyakrxLSLYaMN/REc/+8bH2bZEvxQJlQfK6XAmp7Y9HFCC7PWOPxaSvQeqFWXvcK
 jD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6aUm9IZBoyzrmlaZrE7sKzVINYzfYj5bNqwcb9Va7iI=;
 b=Cw1khAGc8J/z3MC57iFLSSGns1I8QYnUoatJpyC3emY3FsZhlZG5/ivtXAqUggD4kf
 jUxd3IIlkdCfNlbTqlZ2MEIxrXgbR07k4KW6qgNaXzikbzalKutuSlU+U73hGBoEakQO
 0TK/WMVTTg3KONfayZH0tDruKKqhk4fbActnpfBfauTc3q6iUuQltl/+ApQSOqRiVGl6
 LwSzFu3FIX4dd1Yy2Tx23bSj/x+TXkQNIGmn6iQUMy/usZRbKQOmeJMF3X32E6JxbNAl
 yS0VO/RaBsbu81ZXuGOdZ+sFoA3i3uhF2T1iqaVlFD3H1QPKCeBKoscjBV5gIRRLoQw3
 WUlQ==
X-Gm-Message-State: APjAAAUWKVbDoCi65/QHDyRgg7Il11nZGOGiVxfEjP7BVb7S5FyPWbhl
 IGJu4AINSGKBwe6YGz7TgmQDxpFEXJuwxtBZ40A1lA==
X-Google-Smtp-Source: APXvYqy8Op/c5GLfMYnJNdYmkCHYv+E4mN5Di6Wm/C4K++nSC7o+Ugdr1I5vYW/3smKnFkB3fD9x/EAI4aY8HUteVFQ=
X-Received: by 2002:a05:6214:1103:: with SMTP id
 e3mr1646963qvs.159.1579166316797; 
 Thu, 16 Jan 2020 01:18:36 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
In-Reply-To: <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 10:18:25 +0100
Message-ID: <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011838_178661_80A9E4C7 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, Jan 16, 2020 at 9:03 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Thu, 2020-01-16 at 08:57 +0100, Johannes Berg wrote:
> >
> > And if I remember from looking at KASAN, some of the constructors there
> > depended on initializing after the KASAN data structures were set up (or
> > at least allocated)? It may be that you solved that by allocating the
> > shadow so very early though.
>
> Actually, no ... it's still after main(), and the constructors run
> before.
>
> So I _think_ with the CONFIG_CONSTRUCTORS revert, this will no longer
> work (but happy to be proven wrong!), if so then I guess we do have to
> find a way to initialize the KASAN things from another (somehow
> earlier?) constructor ...
>
> Or find a way to fix CONFIG_CONSTRUCTORS and not revert, but I looked at
> it quite a bit and didn't.

Looking at this problem and at the number of KASAN_SANITIZE := n in
Makefiles (some of which are pretty sad, e.g. ignoring string.c,
kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
initialize KASAN too late. I think we need to do roughly what we do in
user-space asan (because it is user-space asan!). Constructors run
before main and it's really good, we need to initialize KASAN from
these constructors. Or if that's not enough in all cases, also add own
constructor/.preinit array entry to initialize as early as possible.
All we need to do is to call mmap syscall, there is really no
dependencies on anything kernel-related.
This should resolve the problem with constructors (after they
initialize KASAN, they can proceed to do anything they need) and it
should get rid of most KASAN_SANITIZE (in particular, all of
lib/Makefile and kernel/Makefile) and should fix stack instrumentation
(in case it does not work now). The only tiny bit we should not
instrument is the path from constructor up to mmap call.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
