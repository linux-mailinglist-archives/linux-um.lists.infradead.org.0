Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F9814203E
	for <lists+linux-um@lfdr.de>; Sun, 19 Jan 2020 22:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOjtoV+bcMlLz9wIvlsRBeYwpci59kwxJyDenzqGxds=; b=Nd/Mfo7vg0hlPH
	2wqQZPVEbcJr79kGL+wu8MZqnvg2sMlqXIPfH/ZGQ37xaq8pbtl6eFDiHX2vJmkcijzTSHzIY4oCC
	erc0m+lH74VygM2MBzW94EkkiDJLhbk7Km2sVDJ4QCLcqwjDbWKDkfMd7lwoMcJYMNtHB69bJIhjo
	Kz2FTKJW5x8ARHOhN0t939pGvOIxljSeTiobeoBTMg80UGYHTombvrig30M1PR8d77swws3aqBD5L
	74q97wB4ByY//kF6YZAcslgaDbnYX2wvbNmTiDfyy8h8gea6pb44bfb+AmyEX3qpQt3CadT8RmVE3
	cT2M1T2WM4CfkhMskbRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIJ0-0003lG-Ol; Sun, 19 Jan 2020 21:40:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIIy-0003kR-3p
 for linux-um@lists.infradead.org; Sun, 19 Jan 2020 21:40:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so12788893wmf.2
 for <linux-um@lists.infradead.org>; Sun, 19 Jan 2020 13:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=asiPmtRmLRuG8iYLNhrmmXL1PmWfY69n+vUdZEEnRBI=;
 b=mk3vJeFOLJiVoWCN/ieoID5pyZ+AjcVEy9Y5wvlqGVfGMIaL+RA5vFZ0nERUqnj3gT
 zpLJtZaj4+6gMq0mhXHBjexAtdSLpC+ectpziCEVc96JZ0oYykIAsdFW4QvRX3FaBYfx
 2tZoHzdVCSaPPy08gSaT2ECr+7Ymf1G572lJfiYOssEzN1/jhP3ncU77P/ug0/MUvnow
 zvJoxl1DAPYbcIhixSz/aFGOI7swKzRN+KINuVxAfnSOBehNKzX5S5LL0s5XIsWARQEd
 tA2xjSqE0AcnJo8IXT46sv8IC9AAnztAJc/5DwZccNHd4m17nY50iOepiv742jheKqPP
 JgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=asiPmtRmLRuG8iYLNhrmmXL1PmWfY69n+vUdZEEnRBI=;
 b=WWIJS3MYl4DBGhv4DWOD/ud6kwHEkHQ8slUlp0oomnIuJMjr5ijm5K0lsed/v4zw0V
 7+z6kTiKXhwVrfQ0WIysU0cEIhH9TPJ0XqaxFh/rp6FBa8VLXyBLRPm0lRjZt8gO2r8s
 Or9tSVTPx/NwFmbhTrbA4XxflMMlhH4nrT7B3fT9hWbL4nYrL12mHot6UL9CUDBEXwuZ
 5bIyaHxM+TuXnwpNT+aTsyn0C/fjRnjPnnNJNiGWXo+sKrjcQoUfb2cacN+Sq6aLMdau
 KTZnjKvrjlA7DTmfZ6bkGQdWPFOJQjWHTPL4vBRbyFY9qnsYd/VI4OsbQWMM6G3Re5xc
 9CRg==
X-Gm-Message-State: APjAAAU+zmWCLfDUK9Cub2DfozuM/Z9UbepqNSWbprQ3xKIMZePG/Rv3
 8ugHgoMfm4x8JrQJqvkXWDlwEicXvboI562YP5w=
X-Google-Smtp-Source: APXvYqxa29DZ8SIHSKa9e8RKhphlEYfnefUq8OEmoveTEJv1S3CzgFG5Q5HsQ6yWcpFLbs9pko3VHF12RmFrYMhwgv0=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr16601137wmk.68.1579470022651; 
 Sun, 19 Jan 2020 13:40:22 -0800 (PST)
MIME-Version: 1.0
References: <20191210212108.222514-1-brendanhiggins@google.com>
 <CAMuHMdVyjjZAoO3Q-Vr88fUGFwrn4EoiSxBmG_FV+o87BuBmwQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVyjjZAoO3Q-Vr88fUGFwrn4EoiSxBmG_FV+o87BuBmwQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 22:40:11 +0100
Message-ID: <CAFLxGvzMf1Fni4va1EM1ta_o7zDjkM8iAr=j+t74+G79wq=XOA@mail.gmail.com>
Subject: Re: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_134024_157128_1E047AD1 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, davidgow@google.com,
 Brendan Higgins <brendanhiggins@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 9:40 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Brendan,
>
> On Tue, Dec 10, 2019 at 10:21 PM Brendan Higgins
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
> >  arch/um/Kconfig | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> > index 2a6d04fcb3e91..1ddc8745123f2 100644
> > --- a/arch/um/Kconfig
> > +++ b/arch/um/Kconfig
> > @@ -63,6 +63,7 @@ source "arch/$(HEADER_ARCH)/um/Kconfig"
> >
> >  config STATIC_LINK
> >         bool "Force a static link"
> > +       depends on !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP
>
> "depends on !FORBID_STATIC_LINK"?
>
> Then all the drivers that are incompatible with static linking can just
> select FORBID_STATIC_LINK in their own Kconfig block.

Makes sense!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
