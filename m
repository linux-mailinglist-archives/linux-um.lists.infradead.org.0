Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7994C1B4691
	for <lists+linux-um@lfdr.de>; Wed, 22 Apr 2020 15:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26YaT2D2nJPdjicWHnbsG78fmqGUrYeHwsHRk6yBVcQ=; b=RggO8d1FESGfLL
	ui+crGR5NCmoF0bitSH88RbaJK3NO1+AvJ2N5VWxd8bOGe5hF6BsLwX1gRWkfuV57uom9tEdihbNS
	qBzj2p0bfTz7f9xjejyyod/G6GI698YGktBRXOgTKnmIgGe+MYxAqXhIIeEEr2KsD2Ow7KPkWYXw7
	23mtP6K9AVSxpze+Bsf8BPa+eL0FqNmTfkwKAnXCBj/mzCKl2Q0eqD8yc5s6O8L5yul6/81SIdVfh
	AwWzVJ1x32vgdm4BwEbDnvUMWLMUDYV2XWMxZOQZgGaaqXG2VKRX23s/y/+fme36Jnl4gtu8lxb1a
	m2f1bqJ5N5aH8eeFu2XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFj7-0006Bx-TB; Wed, 22 Apr 2020 13:47:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFj5-0006Ah-FI
 for linux-um@lists.infradead.org; Wed, 22 Apr 2020 13:47:45 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jRFj1-00EFOE-FF; Wed, 22 Apr 2020 15:47:39 +0200
Message-ID: <28e23bdd281be6368ed75883ca73ea57de4faaad.camel@sipsolutions.net>
Subject: Re: UML HowTo rewrite
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Date: Wed, 22 Apr 2020 15:47:38 +0200
In-Reply-To: <cbf1b59a-e6d5-5870-76dc-60455fb179fa@cambridgegreys.com>
References: <7fbb1a33-5fed-6c61-6c2a-ca47932669a7@cambridgegreys.com>
 <6d00f01fa378b5cb9273e05ab90adc58f6c6ab8f.camel@sipsolutions.net>
 <1a7a4aa7-aa01-9747-202a-b93ffb5c657a@cambridgegreys.com>
 <cbf1b59a-e6d5-5870-76dc-60455fb179fa@cambridgegreys.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_064743_512338_C528C367 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2020-04-22 at 14:30 +0100, Anton Ivanov wrote:
> 
> The initial content is more or less in place.

Great. I actually saw it (you posted a link to a PR before) and pointed
a colleague who was interested in what I'm doing with all my time-travel 
simulation and UML to it. I told him feedback would surely be welcome :)

> Comments and PRs to change/add things are welcome.
> 
> https://github.com/kot-begemot-uk/uml-howto-v2

Are you going to submit it to the Documentation/ folder in the kernel?

I'd much prefer to contribute changes to the kernel after it lands
there, otherwise I'd have to jump through (legal) approval hoops ...


Btw, one thing that I think is useful to document is how to run
*without* an image - you don't need a full OS inside. Most of my use
cases just run something like

./linux mem=256M root=none hostfs=/ rootfstype=hostfs rootflags=/ init=/some/script.sh

Would be a worthwhile addition, I think?

Anyway, like I said above, I'm happy to contribute to this but would
prefer if it's in the kernel first.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
