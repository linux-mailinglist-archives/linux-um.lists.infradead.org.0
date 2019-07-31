Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB377CF50
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 23:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5Z1yar1f3HRPeBO9acGX+xbXtsoKn2DEzBe+tPVKNs=; b=LNwTagy7XaUDob
	Ar6XZfKveOgTAYrn0vHkGYuQ3k6h/zDQvrq67mOyocsohSzjKINaTwoPanGjcVDV8XgtcMmTwb7ue
	MFyEKgm/nUYGn4vgLn5U5w0AyDqfnTcvwtfsL1GPo3+xcUVsHbTOLrC109DYlp9OwRnaerxnaBvwk
	puPRr88tXtyoUIiC32Ha8HuQseQ8njr54s2jq4BbXP/nI1HIJONUuC3vi23yVfrh2KZ1G8uFkq/cT
	zn5p/KONzC48hFSMXoilZPSsq0KBmra033MHCBwCTxZ0M9nvZemKQyyHZzGSFlIxWaaBlJpPR87ma
	p3Hue2lFsJ5bzOttu/CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvmx-0003Bq-Sb; Wed, 31 Jul 2019 21:05:35 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvmv-0003BS-LU
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 21:05:34 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsvmq-00034h-FQ; Wed, 31 Jul 2019 23:05:28 +0200
Message-ID: <629ab0852570a591be87d854a557145cda47a96c.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Wed, 31 Jul 2019 23:05:27 +0200
In-Reply-To: <d38496f6-5bce-806f-00a3-f2e054a8693b@cambridgegreys.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <d38496f6-5bce-806f-00a3-f2e054a8693b@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_140533_705482_7B73335A 
X-CRM114-Status: UNSURE (   7.26  )
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

On Wed, 2019-07-31 at 21:50 +0100, Anton Ivanov wrote:

> Cool. I can have a look at it early next week.

Sounds good :-)

I'll be on vacation next week and the week after, but Erel can answer
questions better anyway since he wrote it :-)

Oh, not sure if you know, but qemu has a bunch of vhost-user device
implementations:
https://github.com/qemu/qemu/tree/master/contrib

I think Erel said he tested snabb (formerly snabbswitch?) and the qemu
vhost-user-blk, maybe vhost-user-input? Drivers are in the kernel
already, of course.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
