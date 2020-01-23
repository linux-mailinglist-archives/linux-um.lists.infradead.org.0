Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEA21473A4
	for <lists+linux-um@lfdr.de>; Thu, 23 Jan 2020 23:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ExYa00CP3EAa2Q1QYUG64/iyWZlpi8XhyTvVk48+Xs=; b=qr9MAzfutsrbP6
	k13iTi/fuIzliUmXdg1F7NlEQzSF6tzpVIksGVULBEzW2blDMSkZFez7fg3s0pEhZApdA1pMNEIQw
	Qfx+SUfafi16qhPd9lJp/unfXyXq7h7IhiBLsTZlV5AVCLCv9rVvkfYZSidzXH66OLdDYRUGE/JR8
	AJ1nEJ6i3E6yGic/I7Dl9cyorQc1Lce3M6bv+Vq6L1MgHhtRPiiIx5gVHIB8suVEEVc17MBXDLcdF
	HN6F0a6bKSzR5STkXQt+QYnhyBEy0b1o3i67ipG5+75vz4+lfSZxMR2vMADqBore4Jn3QnU258PxU
	1zDm7VBOckXjC4XnlTBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iukl9-0005LN-S0; Thu, 23 Jan 2020 22:15:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iukl6-0005Kl-HD
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 22:15:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so2096366pgk.2
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 14:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tXBwxhPJLlGlsNaOTHSkvCkjScA/qmIHT8AzKeFydO8=;
 b=sjK3dNrIhnT59AxIccgYBllx19BQGy09eIHs6Xza5RECBLrH81Q0N6IZNxqQsOUm4e
 2CeGJhJR5oByJjb7DAdHCzom/7osgyWHaVehLZF59dO05VIChggrcIa4b7UubLHPGtm9
 /p0hwCYEeFFyi7UWUv+6ahVXnReFYX1HDhjzYmMvx+lNRdPlRhAnRsWBTaUKS+MFk8in
 Z5cK+NAmrcy4thsvsX2HYP5yYWOHV7mKgi7M4eSRABul9JHpWWJx0F7zaYaMHmNxh6hn
 YokQmcOPSvM3I9n31XimMGfbUaLXzKaQIeaMVdmTJdA6EiMkxuhgrWhJN9LQm8oV2/iP
 2tHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tXBwxhPJLlGlsNaOTHSkvCkjScA/qmIHT8AzKeFydO8=;
 b=BKRfJtIXiZjzUdcuF5ECqeYd91jTF0E8sDpUUQ7ecNAynZHmiNsH18S2wfS9QikgaQ
 i+LG0+3QKFZOPl8YJC53BvRlawC3rjF7qSErKu7rzgjuVpiIR+nfBRr+PN/MjW7QVnyq
 1dU/XLArr98MbmV4rDxgF2wNzjMwsq/wiNJNxYlF/YMdSSOFi1x/vO7w7VVrKTrcuCEI
 949ZwtTE7GRi8ji0zkWAmHQllXcsRYA1zj/KlOyriI8Tw/MkxHhZstj0W+uokt5YH0tv
 BSZt1nGQVCcnIIsVm1jtGYwT7gBwyoE47bRf3Fi4/D6edjNDFAtkNsRsgaXz2z7odt2n
 7ZSw==
X-Gm-Message-State: APjAAAVdVBXcJhLOZEd/L4ZegrrksZsjVwh+lQL9GjbuYOygCfGAySad
 vZSJ2TFWhWbHYnCBxKbfaVaSwDfxwWIvL/9iyTdFdA==
X-Google-Smtp-Source: APXvYqziuRWMnPljfz/bZp0L+T5uoyDPGMPlFhp5B6LWngEd1YcbHv5Z4Ye1FJte7JIRLPmklQwFeQrvOC+e+F9qqQM=
X-Received: by 2002:a63:597:: with SMTP id 145mr550696pgf.384.1579817724899;
 Thu, 23 Jan 2020 14:15:24 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-2-brendanhiggins@google.com>
 <CACRpkdaTJej2zFX0y7mAYymBdGNvHpp3VyU0kOd=ScA_gMAf-A@mail.gmail.com>
In-Reply-To: <CACRpkdaTJej2zFX0y7mAYymBdGNvHpp3VyU0kOd=ScA_gMAf-A@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:15:13 -0800
Message-ID: <CAFd5g44herz1-S-48NB=oKuTFhotHNodi7=S0Z-ffkPcqq08vQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] pinctrl: equilibrium: add unspecified HAS_IOMEM
 dependency
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_141528_596017_913502EE 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Sorry for not getting to this before I went on vacation.

On Mon, Dec 16, 2019 at 2:39 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Dec 11, 2019 at 8:28 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
>
> > Currently CONFIG_PINCTRL_EQUILIBRIUM=y implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/pinctrl/pinctrl-equilibrium.o: in function `eqbr_pinctrl_probe':
> > drivers/pinctrl/pinctrl-equilibrium.c:908: undefined reference to `devm_platform_ioremap_resource'
> > ld: drivers/pinctrl/pinctrl-equilibrium.c:223: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the CONFIG_HAS_IOMEM=y dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> Patch applied but I augmented it with the recently added
> OF dependency so it now says:
> depends on OF && HAS_IOMEM

Probably too late now to be helpful, but I can confirm that OF does
NOT depend on HAS_IOMEM, so this patch was still needed.

Thanks regardless!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
