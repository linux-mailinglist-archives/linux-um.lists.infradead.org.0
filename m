Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ACE197597
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 09:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdcSdrPNQ8vbngF3QsIpVtNX04wqfB/D8if6KfQ2jLg=; b=D6rbQM3Gd4ByPF
	3LbSvGMYRuSbG6Frk9AUMxG03sW4ZZAhId/ztXLSiZ4k7dkl1zvbhbr/mlwcLlcMK1vZNWevjejx7
	euZ37UZv/iUp2CCzThdPxAwRDUkEgCUZuKkBOGCQuP5QRKdwk+Gsg6Ml+eJhMlXFWamwYBuw+GcnZ
	JMpyraU1RfDOFKJJXJ0SaUNqeVTOuqoPQPGcFiePCdTmSgKv5x7x+2AcphcU72Nw0Y9JrHvOoPrg9
	0owCSb2mi0FNt2BVrjTiEx11y/yB5kkQtWl3qr2wV4nGgOIjIGlhMaCRCxzmuRM6MXrhG+iPTUrjY
	MACFX8+huYlHO9+RCsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIol5-0008EN-MN; Mon, 30 Mar 2020 07:22:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIol3-0008Du-Hw
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 07:22:54 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22FE920733;
 Mon, 30 Mar 2020 07:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585552972;
 bh=I8QhQCXxenOjCAIhX+h9wJk0oZrCKVBD4sWp3Y3yAm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eE7ryYFTRg9CiuleMyYDQ1x5cstlk0nqwWH818krHY/FoHgBD6+/gjhlw/MM3x/Kv
 OTkpvPlfkBtPezsdoqEdFSVyboMMoAb0tcqr7JP0iVyTfbowueywES0wEEdSrXEWpa
 0S4eVu1XFreDG6Kjz/gJOEK49Eovl22N6xZJr6LY=
Date: Mon, 30 Mar 2020 10:22:48 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH 1/2] um: Don't overwrite ethtool driver version
Message-ID: <20200330072248.GH2454444@unreal>
References: <20200220084014.238768-1-leon@kernel.org>
 <20200220084014.238768-2-leon@kernel.org>
 <3857ae89-3cfc-a409-e0d6-ce2dab008d9b@cambridgegreys.com>
 <CAFLxGvxem_z-0sX4THYzqZnEW0xXjsXW1zP99VZeDRJXvZYjvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFLxGvxem_z-0sX4THYzqZnEW0xXjsXW1zP99VZeDRJXvZYjvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_002253_614946_638DE8CC 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 11:38:10PM +0200, Richard Weinberger wrote:
> On Thu, Feb 20, 2020 at 8:35 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
> >
> >
> >
> > On 20/02/2020 08:40, Leon Romanovsky wrote:
> > > From: Leon Romanovsky <leonro@mellanox.com>
> > >
> > >
> > > In-tree drivers don't need to manage internal version because
> > > they are aligned to the global Linux kernel version, which is
> > > reported by default with "ethtool -i".
> > >
> > > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > > ---
> > >   arch/um/drivers/net_kern.c    | 1 -
> > >   arch/um/drivers/vector_kern.c | 2 --
> > >   2 files changed, 3 deletions(-)
> > >
> > > diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
> > > index 35ebeebfc1a8..af07733c2dc8 100644
> > > --- a/arch/um/drivers/net_kern.c
> > > +++ b/arch/um/drivers/net_kern.c
> > > @@ -266,7 +266,6 @@ static void uml_net_get_drvinfo(struct net_device *dev,
> > >                               struct ethtool_drvinfo *info)
> > >   {
> > >       strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> > > -     strlcpy(info->version, "42", sizeof(info->version));
> > >   }
> > >
> > >   static const struct ethtool_ops uml_net_ethtool_ops = {
> > > diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> > > index 0ff86391f77d..9693dfca7651 100644
> > > --- a/arch/um/drivers/vector_kern.c
> > > +++ b/arch/um/drivers/vector_kern.c
> > > @@ -46,7 +46,6 @@
> > >
> > >
> > >   #define DRIVER_NAME "uml-vector"
> > > -#define DRIVER_VERSION "01"
> > >   struct vector_cmd_line_arg {
> > >       struct list_head list;
> > >       int unit;
> > > @@ -1378,7 +1377,6 @@ static void vector_net_get_drvinfo(struct net_device *dev,
> > >                               struct ethtool_drvinfo *info)
> > >   {
> > >       strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> > > -     strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
> > >   }
> > >
> > >   static int vector_net_load_bpf_flash(struct net_device *dev,
> > > --
> > > 2.24.1
> > >
> > >
> >
> > Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>
> Both patches applied, thanks!

Thanks for taking care.

>
> --
> Thanks,
> //richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
