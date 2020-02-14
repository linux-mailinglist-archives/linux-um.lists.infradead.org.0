Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E315CF41
	for <lists+linux-um@lfdr.de>; Fri, 14 Feb 2020 01:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAHj5PnbgGHk4I6/yGsr2dEECAbcm7HWUj4NRo5MS5c=; b=KPSKfUqmP7lEJz
	/mnqoqAKQXzpWctBjMnxVqTGD57tIX8BThotmqBWvf9jdTydZACgt4DC2zazmPV/F8lFTCouzPSpR
	40j1GSU+SuJPu653ERnO1xipmr7Gm6xv8FSbw/xpdheI4RlImNrZBPf7KbJ0QgZySZswbITXFX+Ab
	Ay9+ueKVe6ZbxMK1xaf7XuQfwcjleLsQJqgsljq1rqF/kie9crkj90uPk37sMMQ9fjIq4X2G+s1Fz
	n+3IlCpX4lleprXm0nsO0s11zyLjQNJbMVDte7rgbko0rTO3XB626b1VUTNGctERD6gE9+f4jp7GC
	nRufi4bANpaq2GvU70fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2PFx-0004vb-J0; Fri, 14 Feb 2020 00:54:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2PFv-0004vA-5w
 for linux-um@lists.infradead.org; Fri, 14 Feb 2020 00:54:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id m10so907424wmc.0
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 16:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ik5Lp9/74mcaPuHZovIpPmbd4aGXGDxcFYnSBT9/TXw=;
 b=cGa0u271dSwrep1s8CVSVu7e7UoM/mxummeltvrPtdivYNmoHkF0Z9L8BYVmUxFGRT
 /tz/vfItOrtE5xaaiwuxfLWS2NhZjxqiMPXyNrfp+vG60XTmqxdHOHc/UypbQMJXcp2k
 c++Xvq3H9it7X7FlHW6ar1ByDuu2JJN4MHJx6GqCl82VW+S/h0RejvG/eN+KQU5OOQlU
 UWoZoNB5ahJZlQ+SjlG9tNF6xPcMKPRpTF1kMk9KYJsC5hNbgkokteoYlqwz8YpJ7SP3
 d+gSNyULDIJVhIhQF2DHtubyemgZXqFuPwxcZV0Z7HgX6/Khxwwp8PuyGMOCuyxFP2BW
 2x7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ik5Lp9/74mcaPuHZovIpPmbd4aGXGDxcFYnSBT9/TXw=;
 b=BC/9D202L2oNGzhuI+9w299GSynkZ6pZutdYyzMeMp+EhkwWg4bzlAPTOl/zgU4C88
 5J63ZZCPECHWwh5hsC12q8x1Zm3MuYjvDj68hu1X4CeKrh7yw16mpsKICay2H0C6gQ0b
 45/KwBW1ZCCigZQkZgYterHFScPYlP+QXoL47c4AlyF510i+4itNz1tePKjMHMV8tr7+
 im3vle6m1E7b5+n9jMKBKM4YMSLNO96W7a6a35PSFhm+mkuW2vLsZGwLaKTf3kzvPJa+
 Vw/+EwaKGOLCXf3tweTtoKJzWZfdk7bqB0NJmg34Kj4rRYDaCEfjLT3/Lbf61fsfITWR
 LtYQ==
X-Gm-Message-State: APjAAAUyLt5vh8KYq/ou3zTcm4QMDVqbCxxGEaBQBdVUOIpkS8VELFae
 HYY6FPH/cAvuEdkvz8VAPTK92ctF4/ieX4ls7oSZ1Q==
X-Google-Smtp-Source: APXvYqzKeNuGIqzQG9e2TKL1ySUELnvG6LNlGD+yRnSvhT27cffkqhcwWnX0sAsDc3po4Xs4AjKUAnWBurtzmv1nNfY=
X-Received: by 2002:a1c:16:: with SMTP id 22mr878442wma.8.1581641693059; Thu,
 13 Feb 2020 16:54:53 -0800 (PST)
MIME-Version: 1.0
References: <20200210225806.249297-1-trishalfonso@google.com>
 <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
 <CAKFsvUKaixKXbUqvVvjzjkty26GS+Ckshg2t7-+erqiN2LVS-g@mail.gmail.com>
 <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
In-Reply-To: <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 13 Feb 2020 16:54:41 -0800
Message-ID: <CAKFsvULfrFC_t4CJN5evwu3EnbzbVF1UGs30uHc1Jad-Sd=s9Q@mail.gmail.com>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_165455_247152_D4F9253A 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> Well I had two patches:
>  (1) the module constructors one - I guess we need to test it, but you
>      can include it here if you like. I'm kinda swamped with other
>      things right now, no promises I can actually test it soon, though I
>      really do want to because that's the case I need :)
>  (2) the [DEMO] patch - you should just take the few lines you need from
>      that (in the linker script) and stick it into this patch. Don't
>      even credit me for that, I only wrote it as a patch instead of a
>      normal text email reply because I couldn't figure out how to word
>      things in an understandable way...
>
> Then we end up with 2 patches again, the (1) and your KASAN one. There's
> no point in keeping the [DEMO] separate, and
>
Okay, so I'll rebase onto (1) and just add the lines I need from the
[DEMO]. Are you sure you don't want to be named as a co-developed-by
at least?

>
> > > > +     if (mmap(start,
> > > > +              len,
> > > > +              PROT_READ|PROT_WRITE,
> > > > +              MAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE|MAP_NORESERVE,
> > > > +              -1,
> > > > +              0) == MAP_FAILED)
> > > > +             os_info("Couldn't allocate shadow memory %s", strerror(errno));
> > >
> > > If that fails, can we even continue?
> > >
> > Probably not, but with this executing before main(), what is the best
> > way to have an error occur? Or maybe there's a way we can just
> > continue without KASAN enabled and print to the console that KASAN
> > failed to initialize?
>
> You can always "exit(17)" or something.
>
> I'm not sure you can continue without KASAN?
>
> Arguably it's better to fail loudly anyway if something as simple as the
> mmap() here fails - after all, that probably means the KASAN offset in
> Kconfig needs to be adjusted?
>
> johannes
>
Yeah, failing loudly does seem to be the best option here.

-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
