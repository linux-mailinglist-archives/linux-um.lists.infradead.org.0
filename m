Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7EE1824F6
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 23:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYSW680nsatTv482u0nOZX003CoY+V3tnRu6sWaflso=; b=b9J67o6jHMCKqT
	329cSGM6oOUaXQSYkaWVrYxAroHi+hib9LPTyOzfjjyjYLNHlJxgwIePxx0ckiWN4U43MsMrFTCwo
	byLUMpNCZ6PtOCL1XadAkGpSaAMNopkuxPPfTZ94tX0xYd/5iBCzkwmdb5/R3bv3HljpbxLVCZdR4
	9/ierbkQRHLx4/akMVUuHcpSd2LHKwNsKY5x9oRVwWQwgVshgMt5N9G0qV7Rfk3aSLqp4r6XP2+5d
	GJxzm2XqJpKobT7kcsFoJRZSqWSo1UAjIsq4hdcJ6T82GwJdrCjotfzcnJWVM6g04UNkX6BcYjsDF
	E0UJaMbN9YerRWFgHHzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9uh-0006sP-HH; Wed, 11 Mar 2020 22:33:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9ud-0006rX-Tv
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 22:33:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id 11so3962694wmo.2
 for <linux-um@lists.infradead.org>; Wed, 11 Mar 2020 15:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P3G5G1ycGcqjr+5+9XmfiHnkfrEJ8jgyfY9rjLHkFkw=;
 b=gM/y9MfWhSnnbm8eeUSasmQXOPlws32nRpKOxYTiGkFzq3ExukIEkdmaPnoFFb+hly
 Edp6/fOWGy1j61w7XjnyjH1XIr5mzwi9mgWMO/08CpAe1+hG3isKsDEhDcckcOwsnsOF
 PYUbHOyDxmEPhKFng1suxUrvzY6MU2VzAhUv+OL9O87ErBDP0pVEc8fPRQbv5tAopIed
 hWiQpv+KEtL+v8CXlOrmccLUJxL27LF2vv7w9hwoB1wvZ7QqwZy49AxpBPt5qkOl5/on
 n+1xF++cKS8oXVEFp3hK69d8Pda0gOSn8pdNHb5SYRp18Yxzg9KC5JeZnBWGgSrsVE1v
 DV4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P3G5G1ycGcqjr+5+9XmfiHnkfrEJ8jgyfY9rjLHkFkw=;
 b=hUGRt7KAy9K/ku6FEDK0JdSD/Szojw5tlnIsOitw4ogM3bxidsSvLkKzsqwcSuGD7g
 GL2sC258M3QIEHdCbsABmwA03lOlTXuNZ0pTSJKvdMuNRF/2WJLBlAYXplnxp/AahGRn
 3Dw+RcvN5ZilpFzQ6anZK1WRqbslnpfu9V0YTUHmP01IXTgxjKxiO7xq/envbj+bcg7I
 4J3Q+Y7g4Y+OcB61a9E5HheyIgVhahmb3Er55tw9ytS8pCXX7vfRRlH1ZMY0gF/FHaqX
 zOAMOuSY5q6qUErjLj56AlHuQJB3pfnhwzv2xLI6zPNqePfle7xM12PJ6vYiQj25OcFX
 w5Ew==
X-Gm-Message-State: ANhLgQ2Q3DtRU6nJkXxaAT6wU08g0dZYNUa4QMTj35/ytFi8Sv6YJuum
 ksM9e0jAHhQij9ZJzToM6vykFzGwVr3MabdWdKS6Xg==
X-Google-Smtp-Source: ADFU+vsVepM/n20MoHSUwvvubq011fZk6aTVCA/59Pxn4eMwXDh8rmcymmIEBVDyPzyZ71E2hiQs3MUCrwoZ0slywhw=
X-Received: by 2002:a1c:8103:: with SMTP id c3mr837777wmd.166.1583965991033;
 Wed, 11 Mar 2020 15:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
In-Reply-To: <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Wed, 11 Mar 2020 15:32:59 -0700
Message-ID: <CAKFsvULGSQRx3hL8HgbYbEt_8GOorZj96CoMVhx6sw=xWEwSwA@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_153315_990183_12F97CC4 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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

On Wed, Mar 11, 2020 at 3:32 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> Hi,
>
> > Hi all, I just want to bump this so we can get all the comments while
> > this is still fresh in everyone's minds. I would love if some UML
> > maintainers could give their thoughts!
>
> I'm not the maintainer,
That's okay! I appreciate that you took the time to look at it.

> and I don't know where Richard is, but I just
> tried with the test_kasan.ko module, and that seems to work. Did you
> test that too? I was surprised to see this because you said you didn't
> test modules, but surely this would've been the easiest way?
>
I had not tested with test_kasan.ko. I have been using KUnit to test
KASAN from the beginning so to be completely honest, I hadn't even
learned how to run modules until today.

> Anyway, as expected, stack (and of course alloca) OOB access is not
> detected right now, but otherwise it seems great.
>
Great! Thanks for putting time into this.

> Here's the log:
> https://p.sipsolutions.net/ca9b4157776110fe.txt
>
> I'll repost my module init thing as a proper patch then, I guess.
>
That would be really helpful, thank you!

>
> I do see issues with modules though, e.g.
> https://p.sipsolutions.net/1a2df5f65d885937.txt
>
> where we seem to get some real confusion when lockdep is storing the
> stack trace??
>
> And https://p.sipsolutions.net/9a97e8f68d8d24b7.txt, where something
> convinces ASAN that an address is a user address (it might even be
> right?) and it disallows kernel access to it?
>
>
I'll need some time to investigate these all myself. Having just
gotten my first module to run about an hour ago, any more information
about how you got these errors would be helpful so I can try to
reproduce them on my own.

> Also, do you have any intention to work on the stack later? For me,
> enabling that doesn't even report any issues, it just hangs at 'boot'.
>
I was originally planning on it, but it's not a high priority for me
or my team at this time.

> johannes
>

-- 
Best,
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
