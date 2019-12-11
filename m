Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28611A5FE
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 09:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84EmjlD9En+FkcaHER2oJCjPIFbxBjqHjN8DAkmppCg=; b=S0keJDDUxB+neX
	XobBfKPVpgvn2KLOAu39lB/y4gpUJzGC4YnGUGKrI1iHh7fQAt40RIc02CphovmKxry38cYfvEiXz
	BETrZT0pMW/g4N85Ba1P6x5pBbdHwrCXxWSkwc7tCAmJdPClHxmMCFkCS9aYHeqQCP9UrCte31bIL
	PVTAJV8ZgVOB9Np0tSpufUNHxZEJldmAaLUulNCE4m6mx8kIdZO79rigDg1oKlGn2FeeJRR3Ztjhu
	Jue+ekH8T2YJ/36OpQU/a37r1LqkrFdTTBsw1NgPXguzpsmNHgpeiSsKynmlImQSQN4ROcNHa9eqs
	CYqEYb3JO+ZTU2KhlMkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexXI-0003BK-PG; Wed, 11 Dec 2019 08:39:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexXF-0003Af-Ff
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 08:39:55 +0000
Received: by mail-oi1-f195.google.com with SMTP id v10so12485304oiv.12
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 00:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mq+nJWNrU10kDl2/GzcnaogYUfjOD4ecwSEbpxiarc4=;
 b=kUbD0N43g5c1nAeSoqBhXNJaOkYpK+UVAfa/tZLo7qrcY6wD6m7jJCZA3APREeJmKu
 bnUG/UtaN/JouGT8mTCwnpJ+mhFdzC+JJtklLxZJ4T+as50dusgs5oz/eUzrCNS5kfTv
 NZnxUNrYbT8Jxw9oOVjIrpHeWA6XwTYr+4/8lFbhyEs00TAQCMmY0rFf8fQAEFkjbsaT
 YEE8q5NFOeAx/WcUjHwvwK/BOWD1AYCPzHemUQ90Q147N9vP+CVAGXsSx5Mf9Ei9s5Dp
 FyWc9Ssub25/B0/+xneEWsbyuR+/CCEzenT2fpCByfipIOeLbmEU8XRqPDu12WMePhGD
 p42w==
X-Gm-Message-State: APjAAAX2M/I2RPQ2g9bnmiQ8woeuhRrIkcKjAy8piNJxuV/+dsfjbJl4
 inZ0BcM0I4KFezdmot3WyB5Iu/1JaXW2+/ckXqY=
X-Google-Smtp-Source: APXvYqxIsG86kgBilRQBdKKrWwzgfwKqOs9z8nWWpdZuWkCuANAZE1sBk07t6w7+r4AIumoCnXkRxblAO1YsWJlBUNY=
X-Received: by 2002:a05:6808:8ec:: with SMTP id
 d12mr1735907oic.131.1576053591964; 
 Wed, 11 Dec 2019 00:39:51 -0800 (PST)
MIME-Version: 1.0
References: <20191210212108.222514-1-brendanhiggins@google.com>
In-Reply-To: <20191210212108.222514-1-brendanhiggins@google.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Dec 2019 09:39:41 +0100
Message-ID: <CAMuHMdVyjjZAoO3Q-Vr88fUGFwrn4EoiSxBmG_FV+o87BuBmwQ@mail.gmail.com>
Subject: Re: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_003953_522036_6C010E2B 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, davidgow@google.com,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Brendan,

On Tue, Dec 10, 2019 at 10:21 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
> Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
> be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
> UML_NET_PCAP; this is because glibc tries to load NSS which does not
> support being statically linked. So make CONFIG_STATIC_LINK depend on
> !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.
>
> Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  arch/um/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 2a6d04fcb3e91..1ddc8745123f2 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -63,6 +63,7 @@ source "arch/$(HEADER_ARCH)/um/Kconfig"
>
>  config STATIC_LINK
>         bool "Force a static link"
> +       depends on !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP

"depends on !FORBID_STATIC_LINK"?

Then all the drivers that are incompatible with static linking can just
select FORBID_STATIC_LINK in their own Kconfig block.

>         default n
>         help
>           This option gives you the ability to force a static link of UML.
> @@ -72,6 +73,9 @@ config STATIC_LINK
>           Additionally, this option enables using higher memory spaces (up to
>           2.75G) for UML.
>
> +         NOTE: This option is incompatible with some networking features which
> +         depend on features that require being dynamically loaded (like NSS).
> +
>  config LD_SCRIPT_STATIC
>         bool
>         default y
> --
> 2.24.0.525.g8f36a354ae-goog

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
