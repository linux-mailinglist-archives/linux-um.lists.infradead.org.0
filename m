Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0416ABE3
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 17:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFMlvPghN/z3jNaeGFzcAmW+SIkAuNAixpFYW5ALc8c=; b=MyL9W5SJo6WnMM
	vOxR9DGFE+0Ji+6X3WRQOmSFGwhFtqJT3GOtWXRJlkLcA8ppd7e5+hTv/2u3+LknNVF1Z18vQDfw8
	NnMW1D6WAiqpcp1SqnMWMvL0YQYc9iPCihidndpe30xbKlXa4TOxyKWUL2bQwsF+6Xf+2qUxw9L1y
	MaDD1ZLHQQvjSUF9YpXc6MW3V9sjN8T0HCt1Tm1YZGQz4uBQ65CnHqBrakqHDQHX7FJn+FU3Nn7jl
	P1Y9cCXX7qoc1sjdz6VTUJ3CYaHpCE1NU2KDv23Duf5cdXT49X8pjcxnYXE18gfundRm1gT42wZ25
	DM6XT9NaNMrD8Whwxqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GrH-0000ge-Iu; Mon, 24 Feb 2020 16:45:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GrF-0000gH-6G
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 16:45:26 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED0D220836;
 Mon, 24 Feb 2020 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582562723;
 bh=+l/ame5etRAOayuMEJxhBK1Dv+4z5qY3CBmI0TDHgFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AcL04sx3rEHLbSliG9kSN2W46JrezEjL6UIFCEhmEXZ5ehYjuhuidvsMXOf4eGghp
 bk4Ib/49pZpAm5lwJrsjr4izG1lrRgiVmbWCn3N7iWFjaf/BRKfH20LVuVQbBqn6t0
 lvrOa5TogTaUeCBdJjjiU+Y/ERxV3vn0FFhQkG38=
Date: Mon, 24 Feb 2020 18:45:19 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 0/2] Remove dead code and driver version
Message-ID: <20200224164519.GD4526@unreal>
References: <20200220084014.238768-1-leon@kernel.org>
 <c26c2741-fdb5-a492-2b7b-8973650f15e8@cambridgegreys.com>
 <20200223105111.GC422704@unreal>
 <b43f4565-26a3-2339-2480-cb5abd96b359@cambridgegreys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b43f4565-26a3-2339-2480-cb5abd96b359@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_084525_251557_D7418B64 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 07:58:58PM +0000, Anton Ivanov wrote:
> On 23/02/2020 10:51, Leon Romanovsky wrote:
> > On Thu, Feb 20, 2020 at 07:35:09PM +0000, Anton Ivanov wrote:
> > >
> > >
> > > On 20/02/2020 08:40, Leon Romanovsky wrote:
> > > > From: Leon Romanovsky <leonro@mellanox.com>
> > > >
> > > > Hi,
> > > >
> > > > This short series is an outcome of the change in ethtool [1] to provide
> > > > proper driver version that will work reliably. The second patch is
> > > > removal of useless timer setup.
> > > >
> > > > Code is compile tested only.
> > > >
> > > > [1] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/
> > > >
> > > > Leon Romanovsky (2):
> > > >     um: Don't overwrite ethtool driver version
> > > >     um: Delete never executed timer
> > > >
> > > >    arch/um/drivers/net_kern.c    | 13 -------------
> > > >    arch/um/drivers/vector_kern.c |  2 --
> > > >    2 files changed, 15 deletions(-)
> > > >
> > > > --
> > > > 2.24.1
> > > >
> > > >
> > >
> > > Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> >
> > Thanks Anton, I'm wondering if I expected to do some extra steps
> > to be sure that those patches will be sent in next merge window
> > to Linus?
>
> "When" is Richard's decision. I just check and clear patches for the time
> being.

Richard, any feedback?

Thanks

>
> Brgds,
>
> >
> > Thanks
> >
> > >
> > > --
> > > Anton R. Ivanov
> > >
> > > Cambridge Greys Limited, England and Wales company No 10273661
> > > http://www.cambridgegreys.com/
> >
> > _______________________________________________
> > linux-um mailing list
> > linux-um@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-um
> >
>
>
> --
> Anton R. Ivanov
> Cambridgegreys Limited. Registered in England. Company Number 10273661
> https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
