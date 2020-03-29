Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846A319708A
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzw6TMpixBIMINTC9kRaeo5aqur45KKaKHxnB3tg9ig=; b=YLxQRti3Yj6ytp
	j4y/354hXb03xMAvRlwLftohw9MLMLww56EvCwJn2NJiLw6suCcLWCZ8ZTaDuUksRwrfDunlb4HGy
	oTO867Ey0AMgh3rzYjhfabqpoLRkur+4/rY786j0JC+HDlCIjqJiIn4ZGQYpRLrf+8gjvdpwaY4Nd
	mT85yQDIkMvm2G6rJqcLWd1Np9w3C/IN7QPCvXupP/Hpc0Xnuq37Vu6qVTEGTNnHJ6j+w+CWGAUto
	QCmfibtGYorl7CC7rtIYat1LBHqEF15K6dvbYDRTMjOPDVr3ZIs3irJRV5pgQV5iyIPS6NjtCNKpG
	6jokaRMmBJn3Pp+SnnFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfZI-0006qV-PM; Sun, 29 Mar 2020 21:34:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfZF-0006q0-Mh
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:34:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id b12so17709155wmj.3
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UYYymRN1K169Z7gNSCvqd3FjnJg3VLBy6qvkZ/F2c3c=;
 b=fBwZoN4NdJySdoYnzO17+ef9G1oyuWbg2GdXXl5Uhud7wGkWIGuIxAEnyQB0rdCaTB
 eWQR5NKDqflIVxS1fo/ODgS+2Lz3hQwZZdY3pADWCstf/SOttIIIdBX22YRjilQPJIRd
 jKgYgQN5ZOTmCNjKGVCA/18D3rPesM+oQCes8GCJpAH77HHqm+DglwPF7h0ZQPu+O9BJ
 CMzV0eoVor1clhL7H9kMhrnEpyDsBsdcs1h8lxQjLGK3qIebVDRKJdNXavNoQDxCIYFF
 KGvDRQMRDFGcMbPkAC8Nhboqxq6xLWfw//Xf/dtt6XojByjHZuuVFqDZ3peuo1/tkKVK
 vyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UYYymRN1K169Z7gNSCvqd3FjnJg3VLBy6qvkZ/F2c3c=;
 b=ogs4gg/8/snqfFDnHXJHM66IE2RRv7PJKzreattZXzGWnSkO2YCoHKZqdq0aLbqgy9
 uvWVqynTq5q+mADQn/4yAv5mR2KlB5lZ5zHmic9+qZWQvkeplJuT/cAR9h55cV6CDNQu
 AEtXCLQskid5sYPpLOQ5+Y0XfosSZ8QaW0dU3jCX4aH3xSN+Bo6Eck7WgvSdvEbgSlhW
 0cN1RSDyKPA18BHrA4Y3KYcB6x3INmN9FfvrPhLQgrOU4thBt/JUdHRwLozjrlsnfdj7
 EyclIzZ0lTbBjsUdhIb4KGLVVqCxGdozjEdrBMje5iJFSUfh3CH3CsXq0kV6+iEeMuRm
 39KQ==
X-Gm-Message-State: ANhLgQ0bKxK23x7qZ4XQjXXpZq3j0hFVuBInevu8irCzEeHsiKSEhtOq
 wTvSkK65jpDgfwRfYuLWxTWH6BEhyrdyYVoVUTyQMg==
X-Google-Smtp-Source: ADFU+vuLjfoldny3m1JWulHO6TuKShC4MkYuMXyqzLelccEgNlHrwFZvAwuWcZ6U3v7MTT7a7wrtygDTnxJ45HE3FBA=
X-Received: by 2002:a7b:c050:: with SMTP id u16mr10754316wmc.68.1585517642786; 
 Sun, 29 Mar 2020 14:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200130192226.2776-1-krzk@kernel.org>
 <6e686a54-2e1c-b690-d465-369e0d712bba@cambridgegreys.com>
In-Reply-To: <6e686a54-2e1c-b690-d465-369e0d712bba@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:33:51 +0200
Message-ID: <CAFLxGvyPRUPkEdntpiN34sviz4D275E_bYCqi0hkwmycZ+ZvTQ@mail.gmail.com>
Subject: Re: [PATCH] um: configs: Cleanup CONFIG_IOSCHED_CFQ
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143405_741701_74E5A0C8 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:41 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 30/01/2020 19:22, Krzysztof Kozlowski wrote:
> > CONFIG_IOSCHED_CFQ is since commit f382fb0bcef4 ("block: remove legacy
> > IO schedulers").
> >
> > The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
> > previously choosing the latter.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >   arch/um/configs/i386_defconfig   | 2 +-
> >   arch/um/configs/x86_64_defconfig | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/um/configs/i386_defconfig b/arch/um/configs/i386_defconfig
> > index 73e98bb57bf5..fb51bd206dbe 100644
> > --- a/arch/um/configs/i386_defconfig
> > +++ b/arch/um/configs/i386_defconfig
> > @@ -26,7 +26,7 @@ CONFIG_SLAB=y
> >   CONFIG_MODULES=y
> >   CONFIG_MODULE_UNLOAD=y
> >   # CONFIG_BLK_DEV_BSG is not set
> > -CONFIG_IOSCHED_CFQ=m
> > +CONFIG_IOSCHED_BFQ=m
> >   CONFIG_SSL=y
> >   CONFIG_NULL_CHAN=y
> >   CONFIG_PORT_CHAN=y
> > diff --git a/arch/um/configs/x86_64_defconfig b/arch/um/configs/x86_64_defconfig
> > index 3281d7600225..477b87317424 100644
> > --- a/arch/um/configs/x86_64_defconfig
> > +++ b/arch/um/configs/x86_64_defconfig
> > @@ -24,7 +24,7 @@ CONFIG_SLAB=y
> >   CONFIG_MODULES=y
> >   CONFIG_MODULE_UNLOAD=y
> >   # CONFIG_BLK_DEV_BSG is not set
> > -CONFIG_IOSCHED_CFQ=m
> > +CONFIG_IOSCHED_BFQ=m
> >   CONFIG_SSL=y
> >   CONFIG_NULL_CHAN=y
> >   CONFIG_PORT_CHAN=y
> >
>
> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
