Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DA5147911
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 08:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+COmlRVhi6PApYNBqY03ezqaO28ZydcrVoQVCUoHPpQ=; b=hOiyZU3Bcbgkyu
	NURkPVY/ECFF/iWW0kWDpfUB31wZmwY4Qk0VfbSw9dUCIA8brPYsHP9I0HOwswrqaTthuvVeo593F
	oHPFZ/8eYmkruyFNtqF+EvE777FDD5GOWowSD4FJHqny7JJ/t0EAWH9rYWnWvt3ni5xSyWnotxuMN
	x0LGsGYjq19t8u0UB2wSlKirPWEOQrtFfJpUE8jbNMR/1P3Se267z/FxTw1Px/1hCX+p70PNu13hr
	UgnRvV2Y8TfR9UGwJKPwkbMr53KureecsQfUKE31gb4EGXUpIFAIeE6+H4Efya9oK/XAyBn1bIYhL
	O/b12vd0CrQ3Wch67eMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iutkD-0005a3-MY; Fri, 24 Jan 2020 07:51:09 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iutkA-0005ZK-K8
 for linux-um@lists.infradead.org; Fri, 24 Jan 2020 07:51:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so1029272oia.11
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 23:51:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HT2x788AM1A0+5HwkBHH4G8cjfc7f1MBnQHIXAFoYnI=;
 b=PyXw07VbOPk4fxPSOYWLCKFvB0TBqRNTnr2idYKRy+u7DAFJiKlfehVLTJKfv88drT
 OEeCP9GFo28bNLmvnTthyewWhmIhVRseeatPCwGxc5+j90RxZ4xGxVNpy9hZDoESRkIh
 MLhiLR4A1/iT4l1Kme+Tg57cYVF514/CR4M8LHxlpqezKQ2K9GqoRGzQ2zUj2Ct3SHiZ
 hl4+WdeG+20QLbVKb/iZSSidX1bYDSh9VlNla7O1dPrDwueJhvcWMyZ+yriA6HO4uCE+
 MVFH98L9DOFWAQyXxNzQUWd5lbGhxfAX4+npr7mps0dSY7gkYoGuhFq4A9m4hI7xarvh
 SGHA==
X-Gm-Message-State: APjAAAXEdAcgr8djnfmi8EdW+U9JXvjSJkp7yNrGOc7SfEVV+qAJah8F
 fgbE6qbpQADsl1twssYQADZ/yEgKLBCJdGU2qCg=
X-Google-Smtp-Source: APXvYqxJaLWdwe0RsmxfvQT+clUM3Yv9RXsCnLaveOqiQ7fXlM1Pe5Surtf6FmC+XS21csvE3aA1QZhj3B5AHfJ27SY=
X-Received: by 2002:aca:5905:: with SMTP id n5mr1256281oib.54.1579852262583;
 Thu, 23 Jan 2020 23:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20200123235914.223178-1-brendanhiggins@google.com>
In-Reply-To: <20200123235914.223178-1-brendanhiggins@google.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Jan 2020 08:50:51 +0100
Message-ID: <CAMuHMdVLcMXyxnoFvoqkt3KbdmXXk+6Swveez9+A_yowFsWRAg@mail.gmail.com>
Subject: Re: [PATCH v2] uml: make CONFIG_STATIC_LINK actually static
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_235106_664448_E9AF9CA7 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>, James McMechan <james_mcmechan@hotmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Brendan,

On Fri, Jan 24, 2020 at 12:59 AM Brendan Higgins
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
> Changes since last revision:
>
> Incorporated Geert Uytterhoeven's suggestion of using a separate
> FORBID_STATIC_LINK config option that each driver incompatible with
> static linking selects.
> ---
>  arch/um/Kconfig         | 7 +++++++
>  arch/um/drivers/Kconfig | 3 +++
>  2 files changed, 10 insertions(+)
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c285..27a51e7dd59c6 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -62,8 +62,12 @@ config NR_CPUS
>
>  source "arch/$(HEADER_ARCH)/um/Kconfig"
>
> +config FORBID_STATIC_LINK
> +       def_bool n

    bool

("n" is the default)

> +
>  config STATIC_LINK
>         bool "Force a static link"
> +       depends on !FORBID_STATIC_LINK
>         default n

"default n" is the default (preexisting)

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
