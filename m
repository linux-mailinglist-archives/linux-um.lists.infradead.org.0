Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497812952C
	for <lists+linux-um@lfdr.de>; Fri, 24 May 2019 11:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTG6ByTLuRnX2dRjEtbmFBag1ktEWK/9jFrV6NmG4gg=; b=YrP6IhfFctOgvt
	LAyXrj/KwwRG6hTKYd/canOHE8Gc3sV0HjB2dyGgveUhtyW2fje2eELz9KBA3bjJt6ux6FSCErIsm
	W1yYqi37ja1HeML2dNISYeOfKebpSotyj5RRotu6nKHsvW2sSFqilaYcC+U6oQkjSGeTRqWHYkOpN
	Ldy1op5VqfKBn6bMnqypgUSwYrFgEAYUm8y+iBt2NSoBfy+FOs/wmfN9qOlGs4FZ3KFgzuIFnhSN5
	7p4nOWDc2ac/tmUtXaL+s5qzS1RUxC9f9wErzDhcYtvyNKGlh1QyYh0iebP/Rqn0iHjm+s3dRq7hS
	I9nhflVhCIVpR4wRP5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6uS-0002T5-NM; Fri, 24 May 2019 09:54:44 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6uN-0002Rn-S6
 for linux-um@lists.infradead.org; Fri, 24 May 2019 09:54:42 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hU6uB-0001Nq-RL; Fri, 24 May 2019 11:54:27 +0200
Message-ID: <aa9490ff07c587b3bca01ec5eb33d59ea440b645.camel@sipsolutions.net>
Subject: Re: [Qemu-devel] custom virt-io support (in user-mode-linux)
From: Johannes Berg <johannes@sipsolutions.net>
To: Stefan Hajnoczi <stefanha@gmail.com>
Date: Fri, 24 May 2019 11:54:26 +0200
In-Reply-To: <CAJSP0QWSZXT3OJAc=abagD40xZ7DWWrcP_+AwVBuqQyQNgaOEg@mail.gmail.com>
 (sfid-20190523_164131_760945_C45BA0A2)
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
 <20190523115950.GH26632@stefanha-x1.localdomain>
 <41d64b8971a097d1568f947517b45d09c156ccc8.camel@sipsolutions.net>
 <CAJSP0QWSZXT3OJAc=abagD40xZ7DWWrcP_+AwVBuqQyQNgaOEg@mail.gmail.com>
 (sfid-20190523_164131_760945_C45BA0A2)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_025440_033671_711F7E2C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: ido@wizery.com, linux-um@lists.infradead.org,
 qemu-devel <qemu-devel@nongnu.org>,
 Linux Virtualization <virtualization@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2019-05-23 at 15:41 +0100, Stefan Hajnoczi wrote:

> > Also, not sure I understand how the client is started?
> 
> The vhost-user device backend can be launched before QEMU.  QEMU is
> started with the UNIX domain socket path so it can connect.

Hmm. I guess I'm confusing the terminology then - I thought qemu was the
server and the backend was the client that connects to it. If it's the
other way around, yeah, that makes things easier and certainly makes
sense (you could have a daemon that implements something).

> QEMU itself doesn't fork+exec the vhost-user device backend.  It's
> expected that the user or the management stack has already launched
> the vhost-user device backend.

Right.

> > Do you know if there's a sample client/server somewhere?
> 
> See contrib/libvhost-user in the QEMU source tree as well as the
> vhost-user-blk and vhost-user-scsi examples in the contrib/ directory.

Awesome, thanks!

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
