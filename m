Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B4B14E36E
	for <lists+linux-um@lfdr.de>; Thu, 30 Jan 2020 20:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sz0IfHq643mUKly777cjzg2TfMMhWqWDboPM1+uho7M=; b=GVtEIvyhlD8GQ7
	TF7VX3Y7fyhpCcJmTgiVvhhaCX+llfywOQEt7gTzeRRHe0KEZCzwyDuLx5aSrbiCwFrqOF2qaW/SK
	c/9XebbmgMv2H6xD5nUsDaKA1ACOiznVHAWgxkzsHZs2wF20mtW6ypjnFHua0vzQ9LTvj3NMFycPe
	ybBKO2IHSswvvFpZinuBFZul0Eq59cNZVO1p6yCX0rYAo4s7/E1Dd74SCalihADsVd5fWMTivppnz
	5QOH+ThiejpTSrP/yTpGaxBkPX3gLvA3nKxLfTQRzjG7oi+ApyH1P/YA1zW0wGmKRwy+eMUymXDd1
	IXthKZE5nGsHx1W5c9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFuW-0007Vs-Jh; Thu, 30 Jan 2020 19:55:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFuT-0007VB-PI
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 19:55:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id 6so2215417pgk.0
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 11:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pdsu7RCBoLcVOhLco/AVEx3fQJcXVrKTb9CxbekR3XM=;
 b=DI34WepwXxsfZeW+FSgwROgBDBxak/LrfIeoJFt868CvBtLxqjUhcxo4gex8XV+usX
 5snhM9WM5Auls6RoqhenMBXP3Celv5ymwtrYJ5qpv9kH9PRebunl/KP7I3PjL4yqfs/z
 WPYAA19iWATbE6kVlcEfpF9cLBR7SI7XZ51xOP70l9nLXIxlw6mXPH33ZIR3B7xXVZOT
 +CuDdFqOmmac6rbDbqQKNsjDNzm5lXDVyfZgD5i4WrlkQzuzoWt5DFPXs9EYvBEAjcHZ
 5SqQIBCo1SKFNFDRu8k8ZwlJUi5HPXCnObZ+DnT6mhFo2zm9Z5T31+N+TkHZMwpP3EBR
 UJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pdsu7RCBoLcVOhLco/AVEx3fQJcXVrKTb9CxbekR3XM=;
 b=JmpN3D+fICSn3k/Z0ZFX8YBjg/yhtXvXaTpbf5ed8vY+3MEvROT6zqrJopN+uSTWsV
 LKbzql+cO4jrNMJhIm+/E+/51Ay2cMMUFYhg0OpsiDRvkN1FyWyiP0l/BCvMFUuaGJVU
 foxioIG1GFa6JtWVUYI7Im92hrg5IrkD5/KxJ5bOFhSZmn/N/s+ondISTCY0BucIxRUH
 OJSp11QAeix9sXrh6072tjpAC5s83D8bSuwogxDJiNd8/qc7u6fGgW0JrnVSNnYxAaLU
 24X5bnIBJcgsdFw1OgzIqawZCzDdwfz7rLxG7cOrLGHil7fsL6GaXDAFiAWxVcTFf+iU
 FA2g==
X-Gm-Message-State: APjAAAUie3ypBpGHwMYJm0JvaR20FTOscLuVcOYQl26E3u7WbMNeODrk
 DZMNJp6pFl6gxHa65WoLkK4XxqJ5JqM1OxPmqaOlHQ==
X-Google-Smtp-Source: APXvYqw8k2aC1UM+gBdhOrs5MjUUN9JfLGAfIAxV2TmfEid43hv0iF4Y2HMsBRUHCIPpJPJWBz+DxywnBx15gs0eVA8=
X-Received: by 2002:a63:1d5f:: with SMTP id d31mr6466014pgm.159.1580414128461; 
 Thu, 30 Jan 2020 11:55:28 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
 <20200109162303.35f4f0a3@xps13>
 <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
 <20200125162803.5a2375d7@xps13> <20200130205030.0f58cb02@xps13>
In-Reply-To: <20200130205030.0f58cb02@xps13>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 30 Jan 2020 11:55:17 -0800
Message-ID: <CAFd5g4736RQLyy-4wNmhLP1qigX7VgYTPSGh-dZGcM5NCeiO=g@mail.gmail.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_115529_850863_DC865AC2 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 11:50 AM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> Hello,
>
> Miquel Raynal <miquel.raynal@bootlin.com> wrote on Sat, 25 Jan 2020
> 16:28:03 +0100:
>
> > Hi Brendan,
> >
> > Brendan Higgins <brendanhiggins@google.com> wrote on Fri, 24 Jan 2020
> > 18:12:12 -0800:
> >
> > > On Thu, Jan 9, 2020 at 7:23 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > >
> > > > Hi Brendan,
> > > >
> > > > Brendan Higgins <brendanhiggins@google.com> wrote on Wed, 11 Dec 2019
> > > > 11:27:37 -0800:
> > > >
> > > > > Currently CONFIG_MTD_NAND_CADENCE implicitly depends on
> > > > > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > > > > the following build error:
> > > > >
> > > > > ld: drivers/mtd/nand/raw/cadence-nand-controller.o: in function `cadence_nand_dt_probe.cold.31':
> > > > > drivers/mtd/nand/raw/cadence-nand-controller.c:2969: undefined reference to `devm_platform_ioremap_resource'
> > > > > ld: drivers/mtd/nand/raw/cadence-nand-controller.c:2977: undefined reference to `devm_ioremap_resource'
> > > > >
> > > > > Fix the build error by adding the unspecified dependency.
> > > > >
> > > > > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > > > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > > > ---
> > > >
> > > > Sorry for the delay.
> > > >
> > > > Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > >
> > > It looks like my change has not been applied to nand/next; is this the
> > > branch it should be applied to? I have also verified that this patch
> > > isn't in linux-next as of Jan 24th.
> > >
> > > Is mtd/linux the correct tree for this? Or do I need to reach out to
> > > someone else?
> >
> > When I sent my Acked-by I supposed someone else would pick the patch,
> > but there is actually no dependency with all the other patches so I
> > don't know why I did it... Sorry about that. I'll take it anyway in my
> > PR for 5.6.
>
> It is applied on top of mtd/next since a few days, it will be part of
> the 5.6 PR.
>
> Sorry for the delay.

No worries.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
