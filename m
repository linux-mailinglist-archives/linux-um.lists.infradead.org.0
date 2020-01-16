Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A205E13D6BC
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 10:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sa9kOliNcQ1rfL5hG/nyVdJI4kIP2OXwGkr1SHYKWd0=; b=LViUOSx5y0954h
	XFqDkGrS3XewPI9DudS7QEwRZNKmiEp2J8AkXwQpCBWd2ftxguDFiS06TEqJPI9FwnKqwI4UfjeS+
	r8KHvYuFo0jLuNUEdYqFN2SPgzi06iACLHXRTCSttPge1wt6KBB4QZug8Zr3DCvrL6+xFXGoMoFI3
	/UoMMHjQOB+YmfIbis3IbX6iSf/0ypRE//6x6TwOzx5myKULMv/idI8CQ3n6LlY5QGYEaH29IDom0
	BIa+LSS4pwRKALKyav9ryueX+V8KGq9OPeFHhxdjsFJrJtFsMJpvOXXwm7J7sP0OollzHsH1m8Ka8
	Mt2PusmoBloHAZjJN4+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1N4-0005rN-2Q; Thu, 16 Jan 2020 09:23:22 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1My-0005qb-OM
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 09:23:21 +0000
Received: by mail-qk1-x744.google.com with SMTP id d71so18504877qkc.0
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 01:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RqTHK7EsHlkxZxI0RjfjnnG8P6WuHcl1Hv4xLIayM+k=;
 b=HpLbf4uxq8fRi3bKhNWhpU5pHPQckZfZ59vh4lK7H3xBt3xhQD10n+b7yfJQNUjRlE
 6lrTGckCWoGJ80lqWQEPzJAX/y8viSSaP6MmBJp5ZRrJ5bO1Tvvcn7dNK6JAAuiRFgJ0
 vUsyFFsl7D86NxAhTcG3FNEpM3lkaEpRs02bNjsI0wTbwnCMr6jQX9+ehe2MlUysBU5d
 FPEjlJw1uTPm0hz5FMQZcvBd2m+HJhpZQaHVy0Ge8LZ/k8ygGX1GdF//REwrGXAZp+Z/
 KTczAg81N3qZYs0gBnM03cA3l54YK4/Du1xkipH5D01C69gU++YuCiMObidhYiQSV67a
 bo5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RqTHK7EsHlkxZxI0RjfjnnG8P6WuHcl1Hv4xLIayM+k=;
 b=L3DQ83HHeUlGjL5SNHQczsgRq3h1rvX4ylfbE6tYZvVUDQf5piJPrMZaB/jJRnCliX
 TbNTsKoFlRKpYFu9MrX7oj+XBTFW9R6KCc0lmTui4W58qngrmSQp8dHedC72c6IyFq+w
 GWHbLNm2ax1W9s6JOOcGOlU8bVhdmGHoYRPmVpXXo/Yj+DKAXKquudcW3IyaM/w/Z0Al
 KBJZlB+rtAuMV/kVp6hL8rz2dEGl7eaND6sCsfgDqdYua3SSvg3TcA2c+lYTxE40PMKY
 DPCu//0dLr3xPTlp8xX/HUZEjNJq8EdmmX77svh+93Fp5rJWrTEnY7/ljAZURWihMi+4
 yVcA==
X-Gm-Message-State: APjAAAWgeZsyYSmOjMVFO8SGOxX9iqcidAWxmp1f6oqJODQZ1Tjui7hi
 MpFAp2rNWcJeq2zXW6d+Gw7MPO5C2e0ot+RkUJJiUFas
X-Google-Smtp-Source: APXvYqzRcOD1MwxQn8qYqwSzfmgb2otB+rAxauBC2WSZWrut8reYJRkAHaY0kX+FVmBcUlxUEcZQgk3dsF7IF5+sa10=
X-Received: by 2002:ae9:eb48:: with SMTP id b69mr31201094qkg.43.1579166595511; 
 Thu, 16 Jan 2020 01:23:15 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
 <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
 <2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel@sipsolutions.net>
In-Reply-To: <2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 10:23:04 +0100
Message-ID: <CACT4Y+b6C+y9sDfMYPDy-nh=WTt5+u2kLcWx2LQmHc1A5L7y0A@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_012316_821581_754006EB 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

On Thu, Jan 16, 2020 at 10:20 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> >
> > Looking at this problem and at the number of KASAN_SANITIZE := n in
> > Makefiles (some of which are pretty sad, e.g. ignoring string.c,
> > kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
> > initialize KASAN too late. I think we need to do roughly what we do in
> > user-space asan (because it is user-space asan!). Constructors run
> > before main and it's really good, we need to initialize KASAN from
> > these constructors. Or if that's not enough in all cases, also add own
> > constructor/.preinit array entry to initialize as early as possible.
>
> We even control the linker in this case, so we can put something into
> the .preinit array *first*.

Even better! If we can reliably put something before constructors, we
don't even need lazy init in constructors.

> > All we need to do is to call mmap syscall, there is really no
> > dependencies on anything kernel-related.
>
> OK. I wasn't really familiar with those details.
>
> > This should resolve the problem with constructors (after they
> > initialize KASAN, they can proceed to do anything they need) and it
> > should get rid of most KASAN_SANITIZE (in particular, all of
> > lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> > (in case it does not work now). The only tiny bit we should not
> > instrument is the path from constructor up to mmap call.
>
> That'd be great :)
>
> johannes
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel%40sipsolutions.net.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
