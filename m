Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F49B7D048
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 23:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSrKm+tsJu1Sxq0DmMeqPmZfz4afoV6m9TqVF4embA4=; b=Df7SKPDhrPNSjo
	K/8/wG4VNGxwnhNumZdlFt8XR5y0pw2Z0WzLZ0z1sJUsf38oOWfnBh/iUntoDXLkrjg6svp46fG71
	3jS9oYwVu4UUpEWRw7llN8LGy9MIpMf0dpBfDOIYWzufchM4W4GmQmz8ZQcOFbCZuuC2wo9bcV2lI
	m0s7jJ5y4IhCPlSP8J4vWMKBLSVmg8AJuaf8wnZRAC2MrQCOGRZ6BdNXGWEkPrLADko3z+O6RVp+d
	508Bvihf+K60toYAwHSK+d7BGZEx/uervSG9FWMuLRB7/zpzS030vBn1goK/juNEVyajqEN/GICWF
	CFsgx5e+DILBdvMcZnuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswUD-000279-De; Wed, 31 Jul 2019 21:50:17 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswUA-00026j-4k
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 21:50:15 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hswU4-0004G3-61; Wed, 31 Jul 2019 23:50:08 +0200
Message-ID: <abd82ec5d08041b6b0abf0b269c75007f5350afa.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Wed, 31 Jul 2019 23:50:07 +0200
In-Reply-To: <8b865316-76cc-bfe5-fef8-e0beb62851a0@cambridgegreys.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <d38496f6-5bce-806f-00a3-f2e054a8693b@cambridgegreys.com>
 <629ab0852570a591be87d854a557145cda47a96c.camel@sipsolutions.net>
 <8b865316-76cc-bfe5-fef8-e0beb62851a0@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_145014_185413_3D70BD8C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Erel Geron <erelx.geron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-07-31 at 22:23 +0100, Anton Ivanov wrote:
> 
> I am familiar. I was looking at it as one of the "common IO" options 
> early on, but decided to go for sendmmsg/recvmmsg vector IO instead.

Sure, the vector IO is nice for netdevs :-) But I'm looking to add some
other peripherals, some of which I won't upstream the drivers for
because it makes no sense if you don't have the device implementation,
so vhost-user made a lot of sense here, since I can use a common
mechanism for all of the stuff I want to do, and virtio_console is
probably one of the things - and already exists.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
