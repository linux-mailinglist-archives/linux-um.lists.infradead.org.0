Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5E156234
	for <lists+linux-um@lfdr.de>; Sat,  8 Feb 2020 02:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXwo4YpfzEJieFdvpyv+1B515cLYwiSVWbks+dL+kjY=; b=c/h7L0/LZHGeMY
	7i4wGsx7iK81jMMsOOMrqfgUSKcZc/8S3OMnYf9M/9AvgaJtryOi7uiGUrKbiUDvDtew+T3XX6tkn
	b/ySri29GWnfvwc7gR5EMx0hbqW4a6wIFnKwlq8OBYXaNxIjjldlDKqUC5TfV9YB2JEe9rmhAnKKC
	Or57N2O4EwiIkvp87oDF5/ufLZCCNv3lwnNOzGpucBoUj/nn8JZDVrhI1RWR82mCGGbljUQJJlbVk
	YP4GGjcTVGN4cr5Pp+xhNkK6tp5WcvAwEhQNuUPuWD3TcRm3/18n+lbqEYDC2t6v3g4DttWQ/l2+Z
	GIngspF1UlWkJN6wJaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0EbU-0002N7-MM; Sat, 08 Feb 2020 01:08:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0EbR-0002Lt-Vy
 for linux-um@lists.infradead.org; Sat, 08 Feb 2020 01:08:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id a6so440982plm.3
 for <linux-um@lists.infradead.org>; Fri, 07 Feb 2020 17:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c8Omrr9pFTToDd+rF07svRekidnIs/Si9O3nVW03Ilk=;
 b=LJFc15HhLy700n54m2oq0f+y2nBxljFHS94MUSpBpJ5KGnTqFcKidi5pQsqqmiRNsT
 p5oKYa63oxRjZORIKogqkkMIMqoXaymQ6McBlDEeLsNDNep5MwUDnKcvuzmDvM1+N3K4
 n/4Roy7lXr8+BQ0CpPjSXTYLrfIHk/X/aEAbUABFMw7UxT+/k0437V26lBDMCN8PVJyW
 QVEhABhoAfgabM2H3f6egFH9IvB02Cu/Pn+DJuIZRuh8TYwRmfaIdsDsqarAoQ4q6P63
 vkhnXPx3jAuzM5xTds5NOgIMHMZsStYTNCTtEppKKKNCtuk2u+mC0ffPIK7ZCgi1udR0
 MiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c8Omrr9pFTToDd+rF07svRekidnIs/Si9O3nVW03Ilk=;
 b=Z00o7veDgQsC08lVKd1xwLtlcc14eewtqhNxeSnY8ZAYErU8nhNu2eqdtqAbVZtDGY
 ns8qWyyeab62SxoW8fstNzLhf262a0XewnyUr5wZwPU/hQ9VGjsB+knbztPR5EazfBOn
 q4//DPLBouOKacpurJMVCf8x4asNo7M3U6Zio8Fe1dOWRPnwt8h9TtDLxO7v28LQCy0e
 MA5dwp48uK82XjfS7Bg8muzscF8+5VdIUWTkfWw9r7mHyUjHu86fEo2a/68pyb454mJf
 V25QaQVL/GaWLXUo3s3A6Ho3uRfh+imLKFVWg8QHja7DlYtmz9Jvc5JBJ5Y1/dL2TygE
 Cfug==
X-Gm-Message-State: APjAAAXoV2GIKyYGZ2xhiFOLyHSEuVlGg5rtA8RhrdjMgQEhFJKKf2Y3
 NKBqitHia2wiaJ37bRMUmzFlumYfW4TA8wTJwdu4sw==
X-Google-Smtp-Source: APXvYqzNnpKSPiZYsKItVTyJPLRI9g9m8Emo/1j3z598AdEoajkzBOQw5aq/73K5EKpX/Eg5JlsyWKUbcVBvPS7hm6A=
X-Received: by 2002:a17:902:9a4c:: with SMTP id
 x12mr1098572plv.297.1581124086566; 
 Fri, 07 Feb 2020 17:08:06 -0800 (PST)
MIME-Version: 1.0
References: <20200124221401.210449-1-brendanhiggins@google.com>
In-Reply-To: <20200124221401.210449-1-brendanhiggins@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 7 Feb 2020 17:07:54 -0800
Message-ID: <CAFd5g44eznV-9cPf4JVpsJo93+R8YCqUwBqRf+PbjaRMizy1aQ@mail.gmail.com>
Subject: Re: [PATCH v3] uml: make CONFIG_STATIC_LINK actually static
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 James McMechan <james_mcmechan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_170810_053614_D0311D4F 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 2:14 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
> be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
> UML_NET_PCAP; this is because glibc tries to load NSS which does not
> support being statically linked. So make CONFIG_STATIC_LINK depend on
> !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.
>
> Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Ping.

>  arch/um/Kconfig         | 8 +++++++-
>  arch/um/drivers/Kconfig | 3 +++
>  2 files changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c285..28d62151fb2ed 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -62,9 +62,12 @@ config NR_CPUS
>
>  source "arch/$(HEADER_ARCH)/um/Kconfig"
>
> +config FORBID_STATIC_LINK
> +       bool
> +
>  config STATIC_LINK
>         bool "Force a static link"
> -       default n
> +       depends on !FORBID_STATIC_LINK
>         help
>           This option gives you the ability to force a static link of UML.
>           Normally, UML is linked as a shared binary.  This is inconvenient for
> @@ -73,6 +76,9 @@ config STATIC_LINK
>           Additionally, this option enables using higher memory spaces (up to
>           2.75G) for UML.
>
> +         NOTE: This option is incompatible with some networking features which
> +         depend on features that require being dynamically loaded (like NSS).
> +
>  config LD_SCRIPT_STATIC
>         bool
>         default y
> diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
> index 72d4170557820..9160ead56e33c 100644
> --- a/arch/um/drivers/Kconfig
> +++ b/arch/um/drivers/Kconfig
> @@ -234,6 +234,7 @@ config UML_NET_DAEMON
>  config UML_NET_VECTOR
>         bool "Vector I/O high performance network devices"
>         depends on UML_NET
> +       select FORBID_STATIC_LINK
>         help
>         This User-Mode Linux network driver uses multi-message send
>         and receive functions. The host running the UML guest must have
> @@ -245,6 +246,7 @@ config UML_NET_VECTOR
>  config UML_NET_VDE
>         bool "VDE transport (obsolete)"
>         depends on UML_NET
> +       select FORBID_STATIC_LINK
>         help
>         This User-Mode Linux network transport allows one or more running
>         UMLs on a single host to communicate with each other and also
> @@ -292,6 +294,7 @@ config UML_NET_MCAST
>  config UML_NET_PCAP
>         bool "pcap transport (obsolete)"
>         depends on UML_NET
> +       select FORBID_STATIC_LINK
>         help
>         The pcap transport makes a pcap packet stream on the host look
>         like an ethernet device inside UML.  This is useful for making
> --
> 2.25.0.341.g760bfbb309-goog
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
