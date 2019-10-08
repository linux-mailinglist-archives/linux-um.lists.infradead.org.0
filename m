Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA64CF905
	for <lists+linux-um@lfdr.de>; Tue,  8 Oct 2019 13:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tM/+DyjM+HsGU2GbZPYRVv2HoJusIHjhlP3OjUhbct0=; b=XEbQmkCjZ40C30
	mo9FUb8/RfSkT9pGMpLCFToenXQLLBZWiOmTJAlgP26B4WVV1MJHAK7wVW1xRusLN/ZixOjFWdm+5
	M+eiGaDEWFcGqzvpVoXLRvG5c/0GotIC+JaSP1Q8RTp5Epa//2pzSNEJM+870JFxlk3KWknmSA/Vt
	cIkVnM397Yp2bPT0avlBroK2AOnn9QwlVRqRwwKt1VkjWh5q7Mpo/MPgMryacms8/rwr3PSUiYv57
	d3+Y/+PJsY3/6ssqiO6j0W4l5fYp+Db2CaIPMVJ89P0onQ/35aqk+cpEJ4jK5X0rRfaF/eBhC31Hm
	D9e1ColktrursHMoqwnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHo7w-0001Bj-Qt; Tue, 08 Oct 2019 11:58:04 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHo7u-0001BE-1p
 for linux-um@lists.infradead.org; Tue, 08 Oct 2019 11:58:03 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iHo7n-0005op-IF; Tue, 08 Oct 2019 13:57:55 +0200
Message-ID: <8718663842671e3d825ccc8eef6f9669a5a85884.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 08 Oct 2019 13:57:54 +0200
In-Reply-To: <50395b43-5952-0df5-b753-b3de4c246ed4@cambridgegreys.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <50395b43-5952-0df5-b753-b3de4c246ed4@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_045802_089662_513D3FCC 
X-CRM114-Status: UNSURE (   9.50  )
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Erel Geron <erelx.geron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 10:26 +0100, Anton Ivanov wrote:

> It just hit me - this violates UML security model.

Hmm.

> In UML (and any virtualization for that matter) the guest side is never 
> allowed to specify any paths, files, etc locations on the host side.

Yeah, I guess that makes sense.

> This driver accepts a path argument to a host side path being supplied 
> by the guest side.

Right, sort of.

> One way of getting around this will be to sort out what uml does for 
> iomem and make it generic and not just memory and just boot time.
> 
> This way boot or uml_mconsole can supply a file id and a driver can 
> associate with this id.

Or maybe just not allow this to be a module? Then it cannot be loaded
from inside, and the command-line must be given from outside, I think?
We could change it to use __uml_setup() too.

Perhaps with kexec() it's possible to influence the next kernel's
command line though, but that might already be an issue then?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
