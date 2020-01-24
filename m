Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED151490A9
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 23:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiZLbQUHQCgyme3aWiLdP2Cow+5se4EEl5fG0x4rt2o=; b=p+ozZ5P42Y6RXI
	HuPLQYbzpgePZS25fKBSaNlisENza+fFwEEt0jxS5QI3u+9wNx10dlaVdLH8GyI49I1xDsuV0Es3C
	aul7n0aK4ooZn5RwPhLLaNP29lBMekeM0fxJwsmfMsajwiOO75Va++juCAS4H5wVTaCzQhQdant3B
	4L8G2U3Fsu562m4WuhKw/hLPdC4jZ/ikpM4WG4EvMmxLgcY+013mtSw0pu16XnREEa0LATBZVxYOB
	fesCppppHa0MVzIMV7BTdra4h8qGWY1ujnq4TW3adgrVjjDWv43eUz2au0HpRnzulHTDC1RlU04sd
	Y2YYBVXcYtMTrdPNdWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv73n-0001QP-B2; Fri, 24 Jan 2020 22:04:15 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv73k-0001Ok-5I
 for linux-um@lists.infradead.org; Fri, 24 Jan 2020 22:04:13 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so422640pjb.5
 for <linux-um@lists.infradead.org>; Fri, 24 Jan 2020 14:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Tu7fGYxh1w4JI5oDptrBZjDZV6uO5rpMw55TTrHWyY=;
 b=J0ZBKrpgdlEKx7+rWEjWYTdZEwl9eqo6un876ziIUM+oZmGL7XmzfNWKx/+R3kGMxa
 zO8U1tvFEW8q7rv4LRGGu2D/nUy/RpxDMypBdT5li6xFrLAIn/qmPyiR+u6qe/ILuLLe
 uYILmbciBmATh272eNyXXe0kbM5oRQhOOGudkMoVkkcIfPxSRdepajsuiGdh0Jyyy7/x
 rO7edwM0bdQSKTpd/K6QRvSLH/bsU9v4KEbYZB+Ak4GFR+/TgkAveltib29sxlJHs91q
 2NY0183yD3ZaK8K1lJPvMzbXc9w569CdAqLaWw6iT1LmWw7tdsRrH75AZHOZrWw+EQck
 Ym8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Tu7fGYxh1w4JI5oDptrBZjDZV6uO5rpMw55TTrHWyY=;
 b=It4Oxv7LgN70m/G2/cSxgnsFO4t9whUFgCurHndAKUFsCH3i1hCHlHGD7tWBC/qfw2
 FMS9M9LVCqqI3TVMLLAweue8ZX4zRf1+YKWHYoHbqulaN6bEPNHOaKSV4fExjMfxhOj8
 vn7Uc6gFeE/BTOWBN/qCNDVmR40ui/AGrhHrOO5/wuvJGiPmFezDbdmJJ60qK06Nve23
 iHSklPSiCLytrfDhy/oPFj3OVmRfckChUvncyVH04KG6/0uFjQkZNL8b92ZOoIVCkq9D
 loe7o8PfRk4rhxQ5YYusBY+zxX/ZGJcGhNRJ9nCN5uZvHHCAQ2AOCOcDeQK8o7meQixS
 Hs4A==
X-Gm-Message-State: APjAAAWf9bra5htDCpaRNNwKpzimm8FBaSc8m0flDANmcxJiEeADAzUC
 KbbA0cu6LK0pBeazjmXKJuDxz7mr/uEO29d0i/bjQw==
X-Google-Smtp-Source: APXvYqxikH2q9A9mI6BFV5t+A/NdFiPPF/6168Oe1eoKJTtNWNvwqFN3FH2sGFO2somKD5beBz0zzVsBTH/2ZEp1m70=
X-Received: by 2002:a17:902:9a4c:: with SMTP id
 x12mr5540413plv.297.1579903446870; 
 Fri, 24 Jan 2020 14:04:06 -0800 (PST)
MIME-Version: 1.0
References: <20200123235914.223178-1-brendanhiggins@google.com>
 <CAMuHMdVLcMXyxnoFvoqkt3KbdmXXk+6Swveez9+A_yowFsWRAg@mail.gmail.com>
In-Reply-To: <CAMuHMdVLcMXyxnoFvoqkt3KbdmXXk+6Swveez9+A_yowFsWRAg@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 24 Jan 2020 14:03:55 -0800
Message-ID: <CAFd5g44u4CYg7RM4EqRhawMCu0FydemeD5akLn_kwWN+4nqWPA@mail.gmail.com>
Subject: Re: [PATCH v2] uml: make CONFIG_STATIC_LINK actually static
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_140412_209133_F83E5E22 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>, James McMechan <james_mcmechan@hotmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 11:51 PM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Brendan,
>
> On Fri, Jan 24, 2020 at 12:59 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> > Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
> > be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
> > UML_NET_PCAP; this is because glibc tries to load NSS which does not
> > support being statically linked. So make CONFIG_STATIC_LINK depend on
> > !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.
> >
> > Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> > Changes since last revision:
> >
> > Incorporated Geert Uytterhoeven's suggestion of using a separate
> > FORBID_STATIC_LINK config option that each driver incompatible with
> > static linking selects.
> > ---
> >  arch/um/Kconfig         | 7 +++++++
> >  arch/um/drivers/Kconfig | 3 +++
> >  2 files changed, 10 insertions(+)
> >
> > diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> > index 0917f8443c285..27a51e7dd59c6 100644
> > --- a/arch/um/Kconfig
> > +++ b/arch/um/Kconfig
> > @@ -62,8 +62,12 @@ config NR_CPUS
> >
> >  source "arch/$(HEADER_ARCH)/um/Kconfig"
> >
> > +config FORBID_STATIC_LINK
> > +       def_bool n
>
>     bool
>
> ("n" is the default)

Whoops, I always forget that.

Thanks for catching that!

> > +
> >  config STATIC_LINK
> >         bool "Force a static link"
> > +       depends on !FORBID_STATIC_LINK
> >         default n
>
> "default n" is the default (preexisting)

I'll go ahead and fix that too, then.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
