Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405FF14AA27
	for <lists+linux-um@lfdr.de>; Mon, 27 Jan 2020 20:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVuN5C4iwKAdnXLbAge5h3o+rIff+8GeAjewEueVbts=; b=VRxAy0KrocieDO
	crTPPILAaWwguKQf/pzZ22puuJL6qkEvNQAlnqZOESLwIIfiG4B0CmbIoy9f5MadWpWg2USoy7TBU
	SPT4Qlx4ww2jeBGoQtpBsnnW3M8UlDRqDmuBan9PKEXUQ1bwpleObS1bZMtSVJj3CuxNxam4OFcus
	ctt0w6dnzIT84d1oxSK6XHUDyXUBrY90BQSIi1slD8Qurz8Ke6LzSxkgxd/PppCjIPTBiDnNt9Nr9
	X2wwGFq2W2qtPx/qwJQVjm53xmaom44YT+c4JjvQNjnIe2gTbRlxTTPlCT8B3FKPuLS29foxd/3KK
	3h1L8BSy/jSf1bCnAVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9d5-0000BR-WE; Mon, 27 Jan 2020 19:01:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9ct-0008PP-Ee
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 19:00:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay11so4087115plb.0
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 11:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AB0PKGPgk+OAWxGRQvMX+/paMO/D7dA9y2T7+EixdKE=;
 b=o5HfwAsqGXTSjB5v2j0w44xMU45J5gCPHpXhNHVbF77cDX0u/ojB8kcOccXNFHkIJH
 wETo1GSrgJv+RrfiQoug7qs2j2JUSIl8msE3H4tUvnBdu4YSLMD6eT///yfwxVam4bi0
 N87IaLB9n5zpJ5vBtfm0Zhd3TV2iNvmHg8D+uAQbh1Zt/iiUTznQrwxH74Liep4wj+QB
 VBnzDEQRc6aBQ6eG/70zfcrgeR8cZyljTRR5shkTqaR+buB/7MrHiIGnVfL+qOsVvrP3
 QGs8cbD4AN4eLC1Vlxo7EPK+cWTZxgvckIzL5czhbCTJeCaHAoGaStTy4Bw0xTduuHWU
 8N5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AB0PKGPgk+OAWxGRQvMX+/paMO/D7dA9y2T7+EixdKE=;
 b=eHMjgYsR7ikLLHHV65OdLoAkPZeRX4uCpX8qyjcDDW5cNe7cAraGKxGLLPElZmic7f
 ULx0ibD0yFp8X/vsxbzoYcSeJ13dwTMgC1ACKoKi/WWPBcWIeN06vallxYAM547qfU1C
 p4QmGIlfZ+B+NP4yeAZrwXYpAQjl02Nl8fv02+fU/bAmLRVntJPN0HeouS6xc/iqNwFJ
 btZh6tqC0Se0Of0YpHxA9p7GPirYsVP2WIZjGDeTrEzNa1p1wRuSe2Cu1YlOYY+ioBWR
 tJbAwVN5QBbCnd4cI2a62jgvs2xynPsY6nMZnbH0G0XzygqF+gMXzK3BQUryWnsw393I
 PkaA==
X-Gm-Message-State: APjAAAXc6y59OPDjfqdvl82IPBxFD/j0/6sIa7UTpXvJ9HwAWqlLFQGw
 DhKKktRN1jrz/TPp0f1MNx2OsC+NH6dd0l+V1hVSDA==
X-Google-Smtp-Source: APXvYqzqcSpnQLS4YBrBxX+5WnYA0mCqhKkRwurmQsEvW/gmHzac5uy/I5+nlg5nXNCcbRA/naDWHt4t2Hoq8N9Dnbo=
X-Received: by 2002:a17:90a:858a:: with SMTP id
 m10mr54935pjn.117.1580151644562; 
 Mon, 27 Jan 2020 11:00:44 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
 <20200109162303.35f4f0a3@xps13>
 <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
 <20200125162803.5a2375d7@xps13>
In-Reply-To: <20200125162803.5a2375d7@xps13>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 27 Jan 2020 11:00:33 -0800
Message-ID: <CAFd5g46=wDEMVHqQ-iq31qCxoH_X+4g=+MMx_vA=ujWrF2mfEw@mail.gmail.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_110047_488773_51B4BDD8 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, Jan 25, 2020 at 7:28 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Brendan,
>
> Brendan Higgins <brendanhiggins@google.com> wrote on Fri, 24 Jan 2020
> 18:12:12 -0800:
>
> > On Thu, Jan 9, 2020 at 7:23 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >
> > > Hi Brendan,
> > >
> > > Brendan Higgins <brendanhiggins@google.com> wrote on Wed, 11 Dec 2019
> > > 11:27:37 -0800:
> > >
> > > > Currently CONFIG_MTD_NAND_CADENCE implicitly depends on
> > > > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > > > the following build error:
> > > >
> > > > ld: drivers/mtd/nand/raw/cadence-nand-controller.o: in function `cadence_nand_dt_probe.cold.31':
> > > > drivers/mtd/nand/raw/cadence-nand-controller.c:2969: undefined reference to `devm_platform_ioremap_resource'
> > > > ld: drivers/mtd/nand/raw/cadence-nand-controller.c:2977: undefined reference to `devm_ioremap_resource'
> > > >
> > > > Fix the build error by adding the unspecified dependency.
> > > >
> > > > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > > ---
> > >
> > > Sorry for the delay.
> > >
> > > Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> >
> > It looks like my change has not been applied to nand/next; is this the
> > branch it should be applied to? I have also verified that this patch
> > isn't in linux-next as of Jan 24th.
> >
> > Is mtd/linux the correct tree for this? Or do I need to reach out to
> > someone else?
>
> When I sent my Acked-by I supposed someone else would pick the patch,
> but there is actually no dependency with all the other patches so I
> don't know why I did it... Sorry about that. I'll take it anyway in my
> PR for 5.6.

No worries, thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
