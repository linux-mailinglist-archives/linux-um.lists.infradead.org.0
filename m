Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA55D109528
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 22:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCtPFNeqrqc6/y78hToIchGs5PqvEl/GklBfm6xsVYA=; b=fiFG5Tb/iEGBy+
	3uFdF7HPnC1kTtpQb58lBF4lyA/UAQHSQDV+eCD1d6t1IF/SVPsixahSSz7Yy/agWtUT7+wf1t9Uz
	QF/bQ9uNaneI6UyQ1d8Cb0iDwV6Os21/7DfHtxKg/1Yucq20/I0uL6zlCu36wp2ROQPs/EL1A0FXz
	VKnNmGjdeSxs4VhT7pjeHEO1tKP3xZ7KNUIAb3Sy7R9s67OksDiiUxHPXFfhVsakgOuW6IhKN198u
	T7fdCf3CRmZ310o0WZc1Ep5dHu6/fxDc4z9KnRGre3Vx+827GfQ4l61xdjpOT2xzSW/w3ik8apDFM
	R8vwHuTk+lqV+jKHmOWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLyq-0007ND-Oj; Mon, 25 Nov 2019 21:33:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLyn-0007Mo-GE
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 21:33:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id f129so954209wmf.2
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 13:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S/lgB6fa5w74fXfpDuYLzmrcJ2fjfrbYTfoFkTsi1hw=;
 b=CXTL9lH5xw5FwYrK6Uzj2FV1Rbfgno9IGw8np8SlyzVdkjGNeByIlotuoETaWVTATj
 QSH//bAlfnhhyzJ2zDLS0gaH7TX4IiFc78EZTI++qrexHoAf/PWtREPL/oGXtOodeFWV
 EgW263MvKWW8uB4VZJ+fZUgMnFlmqt390ccsm/tGJItlWeba/M3SDX8jcYVYJQJlCFGN
 1LShQFXmNwwTJVD0GODwKL0AmboUek8cKgLaP0Mj67g3ORrfr1ytjPCF06es0G+4/HE2
 tHiY/gFeH7MwZL0hyB0QUJF+lLgxJIL9C6+zQM+bVq2K2jhlNpwFR6HPUSQ6ZRavnRt4
 /vZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S/lgB6fa5w74fXfpDuYLzmrcJ2fjfrbYTfoFkTsi1hw=;
 b=Vt3ISNkTp8MWy42sMatQGeDYIUjyOfhT0zq/GgmEdR1aTSwULQhIRK32jhTJ/yA6i2
 VaF7G5+Hym/BuYTJlusdkGXHBLIXuAbyhhNcDIEwDFILJpaWd30utZX+oZNqoQnyU7yu
 GTzU8xP0KOB75WFyGvNaXVqBUm/rao0v67mh+yyoWGiPpwluVqI5+QZIEo4c/pLtbS89
 AcqjdabyYOTuBS06ymzj/YAf7nL2Ddfl2OFHlP4JGbYdiZbGFjie/S2qVaGUkxw/syO5
 Wj6otwXCVo6arR9BGsqw/YInQEMlgtwu7h2xWCeEAKMgVCXNP7QVH1+St8wVLFjwRbgh
 3G+g==
X-Gm-Message-State: APjAAAV3XdDSoHF+qQ85HBUyF7rCZWoy+EAJkBIx63K/3dv20QTfnbXI
 n/gpdM2P+XfvJI4quDRb0zq34pJWjNuUDHMqBFY=
X-Google-Smtp-Source: APXvYqynBLWaNhTtnqO7Z8qxkp++D/AZZDeqbZN2Uv7uq9fRWFGBJRYKOsK4P4Efj59vQfl96PC1PyX81pxb7ewg974=
X-Received: by 2002:a7b:c651:: with SMTP id q17mr747190wmk.109.1574717586874; 
 Mon, 25 Nov 2019 13:33:06 -0800 (PST)
MIME-Version: 1.0
References: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
 <202276c5253b7a510f513925c201edf180e1886b.camel@debian.org>
In-Reply-To: <202276c5253b7a510f513925c201edf180e1886b.camel@debian.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 22:32:55 +0100
Message-ID: <CAFLxGvy3ssM2xmp1W3-jdVwOw+oozP0eO9H-X5vcsdLg+ODGsA@mail.gmail.com>
Subject: Re: [PATCH] um: Add back support for extra userspace libraries
To: Ritesh Raj Sarraf <rrs@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_133309_544267_49D10D5F 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: 938962@bugs.debian.org, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 1:32 PM Ritesh Raj Sarraf <rrs@debian.org> wrote:
>
> Hello Anton,
>
> Thank you so much for working on this fix. I tested this patch and it
> works. Some comments below though.
>
> On Wed, 2019-10-16 at 15:13 +0100, Anton Ivanov wrote:
> > PCAP and VDE network transports require linking with userspace
> > libraries. The current build system has no means of passing these
> > as arguments.
> >
> > This patch adds a script to expand the library list for linking
> > for these transports as well as any future driver that needs to
> > rely on additional libraries on the userspace side.
> >
> > Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> > ---
> >  arch/um/scripts/extra-libs.sh | 10 ++++++++++
> >  scripts/link-vmlinux.sh       |  4 +++-
> >  2 files changed, 13 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/um/scripts/extra-libs.sh
> >
> > diff --git a/arch/um/scripts/extra-libs.sh b/arch/um/scripts/extra-
> > libs.sh
> > new file mode 100644
> > index 000000000000..0592485e0675
> > --- /dev/null
> > +++ b/arch/um/scripts/extra-libs.sh
> > @@ -0,0 +1,10 @@
> > +#!/bin/sh
> > +
> > +# This file should be included from link-vmlinux, not executed!!!
> > +
> > +if [ "${CONFIG_UML_NET_VDE}" = "y" ] ; then
> > +     UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lvde -lvdeplug"
> > +fi
> > +if [ "${CONFIG_UML_NET_PCAP}" = "y" ] ; then
> > +     UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lpcap"
> > +fi
>
> -lvde is not understood. I added the build dependency to libvde-dev on
> Debian but that still did not help.
>
> So instead I dropped it to get the build going. And my tests about
> networking look fine.
>
> The revised patch that I'm using is attached with this email.
>
>
> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > index 06495379fcd8..15f9e5096da0 100755
> > --- a/scripts/link-vmlinux.sh
> > +++ b/scripts/link-vmlinux.sh
> > @@ -90,11 +90,13 @@ vmlinux_link()
> >                       -Wl,--end-group                         \
> >                       ${@}"
> >
> > +             . arch/um/scripts/extra-libs.sh
> > +
> >               ${CC} ${CFLAGS_vmlinux}                         \
> >                       -o ${output}                            \
> >                       -Wl,-T,${lds}                           \
> >                       ${objects}                              \
> > -                     -lutil -lrt -lpthread
> > +                     -lutil -lrt -lpthread ${UML_EXTRA_LIBS}
> >               rm -f linux
> >       fi
> >  }

I fear without an ACK from kbuild folks I'm unable to monkey this patch.
No need to worry, this one can be merged after -rc1.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
