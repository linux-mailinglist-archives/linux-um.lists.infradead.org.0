Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83397B3AE3
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 15:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mn2ae9tZzfaqX7zNzJ/iMIR/+hF1Lf1n3oRS88umWrI=; b=hnhFqxUGY6pfJ+
	SHC5n9CJ4b9WiEPHyZBBn5jn4poy7+/dJ2kYuzWsmwGZOqhkxb+lkU4n5uWMsjzIx3j8C9ciP1z/e
	Ymc95Ss3kZTFRkwl3QuVJit7LrUBvQGy4Ou0o4zScykgL0M+KF8lK5hc9itG1JvEZ171h6jJSS+i3
	P7gmMf+Wtovl2Pe2s351Ok7y4FfrYyimWKyodvFziqw2DCZAselMskcwQfWuAk0stdGfFG1lcMHI4
	n/+ubrARdYLkYCDjCMoXUFeFoQrp1/mJBR7JM6Js5T9UCA027QMgI2rt0KqzYfAdZiUNd1LM0d0kB
	xM4KDnEQyoUwaO0ofqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qds-0000hq-Ix; Mon, 16 Sep 2019 13:02:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qdp-0000cz-7J
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 13:02:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9qdk-0002kE-Ta
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 15:02:01 +0200
Message-ID: <b183e530c14aa709dd7a67fe0681bfb50d0cb5f4.camel@sipsolutions.net>
Subject: Re: [RFC] synchronised multi-machine time-travel APIs
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Mon, 16 Sep 2019 15:01:59 +0200
In-Reply-To: <a216fef2119146de27168d0cf91ffa2f2b970e77.camel@sipsolutions.net>
References: <a216fef2119146de27168d0cf91ffa2f2b970e77.camel@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060205_273929_25D2DA45 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 11:27 +0200, Johannes Berg wrote:
> 
> 3) There are some virtio hooks for general devices like virtio_net to
>    make the simulation work (e.g. IRQs need to be deferred to the
>    simulation time, not be done when signalled), and we want to use
>    poll() instead of SIGIO in this case etc. This is all necessary,
>    *however*, the "simtime" device that is responsible for the time
>    synchronization needs to be *exempted* from all this handling, which
>    again makes the code more complex than needed.

Thinking about this some more ...

We currently can handle only one IRQ at a time, of course, but e.g. with
simulated network we basically end up doing

virtio_net RX interrupt
-> request runtime for IRQ handling via simtime device

However, to request runtime we send a message out on the simtime device,
but then we have to also handle incoming messages while we wait for a
response to this, since the request might change things around ... all
while in interrupt context, so the normal message handling doesn't work.

This required adding a whole new poll() abstraction to UML, which I
never really liked.

I'll try this a bit, but it seems if we make this all go back down to
the existing epoll abstraction, we just have to tag the "time" irq/fd as
having special treatment, not everything else.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
