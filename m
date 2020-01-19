Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE084142033
	for <lists+linux-um@lfdr.de>; Sun, 19 Jan 2020 22:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21qzpObBSiPgeFVPQagTFAN+AbXIeABoFxYd32cESLg=; b=TpFl0dhaMDH+Us
	8HhsPVstLTdefrf/yDpmseoSFv4OxMqWqOQOr92n3RcwVCneXvKHygzEHQ1vVX9Lrh/JFmLIprw4W
	n4gYc39K6JAp3Hf6zOS/qIx43ylSaHg5u277DI4DuQrqUwJ5OklfJkcmmx9TVksloLPViwt8UHY+3
	ZcCavM8VIkwBc9DA6hNE90cSyIym47SRLrNFuCUWvQo7fSONwA1lbGxI+UaW7tWa6YvhnSdwJKJfO
	OpsrJnTSjkhZcZTO6rvhMORmdfinr36YHnx/m5K1Js+V71MEimobRt4LgmoB53W9cfQduILUTnhNM
	gRX8CCxA9KZ+FRUweFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIEl-0001ze-Az; Sun, 19 Jan 2020 21:36:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIEi-0001z9-H0
 for linux-um@lists.infradead.org; Sun, 19 Jan 2020 21:36:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so12527496wmj.5
 for <linux-um@lists.infradead.org>; Sun, 19 Jan 2020 13:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7XtrPleWokJAdJqzMxdbahxAVw1VbvWedpeJkRsmOi0=;
 b=uentf34RvUl4TYATno3V5Zw2rZLs/kN0JkuqURQiy0+JwznK/M3PB5f6Jz+UJOhkbP
 rxe3/wkILfXLTWAaY0JCniPV8zLP93CC3SJIVWRrEvn/v75Gh5F/V4idWAzOKCD/mYWN
 fkkf/uKF7Luy6p1r1MWZzAO/gbBG4UVDXGTC6lZLCtKSJYD9WJ9Jw1BoDpn+gMWD4Y2W
 FvqwWnZ/ZSRpwLmeCdEc8XiPjk5JP+NtS+MuLO4253Yug0OH1RPVzvxNOyNx0OIywKkO
 e7bbfQjZAMCaheNGXVsRdk4PxIhUAoIq+uPy4iloz/yYqIuTudkIvzjeYVpXgWFt9K4J
 4rbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7XtrPleWokJAdJqzMxdbahxAVw1VbvWedpeJkRsmOi0=;
 b=sH1n9MAgMWLmY6hY5uXNdfrr8XH8fIGrSAHh0Q49luHpg5+2lf3ZYimCcmPj0odYxq
 XieGmtjcWFASWfyXcTESRAgwm7zH4LhjmNldVuNqZVY1DWU3ioSVZx7IDx1Xr8EboXLR
 pXgvJO66iTvSSICIn9nYi7NX5o6tSq8ihl0TTMv1o0EH4BtP0b8GGpZaHxkIAf7Bw5zI
 qwH9NkUikbMTuAXriozTyBtRiHVTIiw8MtxSWJH31UiHLFbRzxAaZQ/q7LKdSm5dWFnp
 zvaPYtLxmBJwpo0z3zVUaCtr5xbgk5uJE12Xvhl1f6r7lkeN8cgwxW0EVqqfpvXKy/sr
 D5FA==
X-Gm-Message-State: APjAAAVjOWWGOsKwIdhc6cgcsydlcOkB8H1vaualuguPblPGT769XAR2
 OqnFsqTmhmGmNBK7TGh7YQLo2knMVNiSAbzs0V1H+2aP
X-Google-Smtp-Source: APXvYqwOZ3SfiwvasCOOtCV4Mz1nREjiAMnpfvhz+v4Fw8nl8VOhQtSFKUF93I8bKEnVHg9O0tYFor8kLUbtjZBjnSI=
X-Received: by 2002:a1c:e38b:: with SMTP id a133mr1444101wmh.1.1579469757590; 
 Sun, 19 Jan 2020 13:35:57 -0800 (PST)
MIME-Version: 1.0
References: <20191213100128.04075cf409e9.Id772dc879535c85524c32b81fd392bbbfd515741@changeid>
 <5bec5e3f-ad17-e60f-eb9f-7b2d7a08ed27@kot-begemot.co.uk>
In-Reply-To: <5bec5e3f-ad17-e60f-eb9f-7b2d7a08ed27@kot-begemot.co.uk>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 22:35:46 +0100
Message-ID: <CAFLxGvxsATuz=-weO3MKBTzJOdoSoEhXusyK+114Xc0ma-HD_w@mail.gmail.com>
Subject: Re: [PATCH] um: fix time-travel=inf-cpu with xor/raid6
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_133600_589117_82A4C38B 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 11:32 AM Anton Ivanov
<anton.ivanov@kot-begemot.co.uk> wrote:
>
>
>
> On 13/12/2019 09:01, Johannes Berg wrote:
> > From: Johannes Berg <johannes.berg@intel.com>
> >
> > Today, I erroneously built a time-travel configuration with btrfs
> > enabled, and noticed it cannot boot in time-travel=inf-cpu mode,
> > both xor and raid6 speed measurement gets stuck.
> >
> > For xor, work around it by picking the first algorithm if inf-cpu
> > mode is enabled.
> >
> > For raid6, I didn't find such a workaround, so disallow enabling
> > time-travel mode if RAID6_PQ_BENCHMARK is enabled.
> >
> > With this, and RAID6_PQ_BENCHMARK disabled, I can boot a kernel
> > that has btrfs enabled in time-travel=inf-cpu mode.
> >
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> > ---
> >   arch/um/Kconfig            | 2 ++
> >   arch/um/include/asm/Kbuild | 1 -
> >   arch/um/include/asm/xor.h  | 7 +++++++
> >   3 files changed, 9 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/um/include/asm/xor.h
> >
> > diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> > index 2a6d04fcb3e9..a8bf60b5c208 100644
> > --- a/arch/um/Kconfig
> > +++ b/arch/um/Kconfig
> > @@ -188,6 +188,8 @@ config SECCOMP
> >   config UML_TIME_TRAVEL_SUPPORT
> >       bool
> >       prompt "Support time-travel mode (e.g. for test execution)"
> > +     # inf-cpu mode is incompatible with the benchmarking
> > +     depends on !RAID6_PQ_BENCHMARK
> >       help
> >         Enable this option to support time travel inside the UML instance.
> >
> > diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
> > index 398006d27e40..db7d9d4e30d8 100644
> > --- a/arch/um/include/asm/Kbuild
> > +++ b/arch/um/include/asm/Kbuild
> > @@ -25,5 +25,4 @@ generic-y += switch_to.h
> >   generic-y += topology.h
> >   generic-y += trace_clock.h
> >   generic-y += word-at-a-time.h
> > -generic-y += xor.h
> >   generic-y += kprobes.h
> > diff --git a/arch/um/include/asm/xor.h b/arch/um/include/asm/xor.h
> > new file mode 100644
> > index 000000000000..7a3208c47cfc
> > --- /dev/null
> > +++ b/arch/um/include/asm/xor.h
> > @@ -0,0 +1,7 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#include <asm-generic/xor.h>
> > +#include <shared/timer-internal.h>
> > +
> > +/* pick an arbitrary one - measuring isn't possible with inf-cpu */
> > +#define XOR_SELECT_TEMPLATE(x)       \
> > +     (time_travel_mode == TT_MODE_INFCPU ? &xor_block_8regs : NULL)
> >
>
> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Applied. Thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
