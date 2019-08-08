Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A01D85B89
	for <lists+linux-um@lfdr.de>; Thu,  8 Aug 2019 09:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+igy+zQ2i7i4hmpQgZxn58f/J8TuvQZQCYdDiiptbo=; b=uYydsTygOEcOH0
	HQLw3YR1sSbHqmRoc036oH2EXyPiykEfBdn5t/O4vJcMaIMiS12YVt/HSkK4EOUs+AMda1XjvPJix
	qN0GvXFTklKiCMNYdHyqKQmy0jR0zyFfAtew3fhXgHUxDUSjhAuq8Wws+axS7e2XkaMg3YxM1WdKH
	QXfKt5vhQ8qi5DxcY3I5U+R+3O0j8NWCnl5ERYgvGLCr0/qAJFhohqlGAUyePD8vFLpga8sra4A85
	MmvhpJvHCX/QDvcI7jym7esWA1M8Oi/OhTuRjsxzRm7DgOLOUcBgp3tBMPRYaapPV/6krTHHXHqHt
	9hOQIR2qs0cUGVkxbTuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcp8-0007o4-D0; Thu, 08 Aug 2019 07:26:58 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcp5-0007nf-4H
 for linux-um@lists.infradead.org; Thu, 08 Aug 2019 07:26:56 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hvcou-0007n8-KY; Thu, 08 Aug 2019 09:26:44 +0200
Message-ID: <1e988e1583b94761ba876827af24eede0c46ccf4.camel@sipsolutions.net>
Subject: Re: [RFC] um: virtio: Workaround for using virtio_net with snabb
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Thu, 08 Aug 2019 09:26:43 +0200
In-Reply-To: <394f11ad-88e3-1d1f-8b8e-51fdc14aea8d@cambridgegreys.com>
References: <20190731203030.29821-1-johannes@sipsolutions.net>
 <394f11ad-88e3-1d1f-8b8e-51fdc14aea8d@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_002655_170986_B92D9873 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Wed, 2019-08-07 at 17:14 +0100, Anton Ivanov wrote:
  
> > +	/* TODO workaround for some implementations */
> > +	if (vu_dev->vdev.id.device == VIRTIO_ID_NET)
> > +		vu_dev->features &= ~BIT_ULL(VIRTIO_NET_F_CTRL_VQ) &
> > +				~BIT_ULL(VIRTIO_NET_F_MQ);
> 
> If it is needed only for some implementations, then it should be an option.

Yeah, I guess it should be. Then again, will anyone really even want to
use snabb? I don't know, perhaps, but perhaps it should just be fixed on
the snabb side? It stands to reason that regardless of what we do here,
it shouldn't just crash.

> Have you tried it vs let's say dpdk (IIRC it supports vhost_user as an 
> interface).

No, and we probably won't, we're not really particularly interested in
the network aspect of it. Trying it out here with existing device
implementations was really just for development, ultimately our plan is
to have our own device implementation(s) and driver(s). I'm hoping to
publish and upstream something that will let you run multiple UML
machines in "synchronized time travel" mode over vhost-user though.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
