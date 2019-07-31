Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73BE7CFF7
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 23:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2GTC6XQHo1NV5gwIlAJzy78uZxfdrz6rt5fjUhbT2cc=; b=gsVbNVbnt0VtuAU+bjydDtpJF
	aP81lSuhsYLWs9nNEPjOKIukq1nCkm0eQrLQciw5YpBYacSFeS2J8oc+YQf30uB/a0MUAAXOzbqIS
	WmtvpITA54hEqqgA5s6vogz49w9RHT7WhWy62jtgP1r8xMGofUquVEyyhGYnvsORHP5rRn2/H079A
	C70LnmjO/nW3MXftPsW/FGVnWT9MXuocVrOr/HoE+nQViXkaUF+1lAGgLK7OOYbLLvQevgQkTQWXc
	7/8c0tUCo89c7vuW8pkMGphy7FVLnlVowuWOTuFdqW08e3E+Alq1q52ABRhK7t+0z2qB1882WkSfA
	Q3JJwtO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsw4C-0008L5-DF; Wed, 31 Jul 2019 21:23:24 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsw49-0008Kf-IE
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 21:23:23 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hsw42-0001bt-Uc; Wed, 31 Jul 2019 21:23:15 +0000
Received: from m193-12-128-188.cust.tele2.hr ([193.12.128.188]
 helo=[192.168.8.108]) by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hsw40-0000b8-HW; Wed, 31 Jul 2019 22:23:14 +0100
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <d38496f6-5bce-806f-00a3-f2e054a8693b@cambridgegreys.com>
 <629ab0852570a591be87d854a557145cda47a96c.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <8b865316-76cc-bfe5-fef8-e0beb62851a0@cambridgegreys.com>
Date: Wed, 31 Jul 2019 22:23:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <629ab0852570a591be87d854a557145cda47a96c.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_142321_736830_41C8FCA2 
X-CRM114-Status: GOOD (  14.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 31/07/2019 22:05, Johannes Berg wrote:
> On Wed, 2019-07-31 at 21:50 +0100, Anton Ivanov wrote:
> 
>> Cool. I can have a look at it early next week.
> 
> Sounds good :-)
> 
> I'll be on vacation next week and the week after, but Erel can answer
> questions better anyway since he wrote it :-)
> 
> Oh, not sure if you know, but qemu has a bunch of vhost-user device
> implementations:
> https://github.com/qemu/qemu/tree/master/contrib

I am familiar. I was looking at it as one of the "common IO" options 
early on, but decided to go for sendmmsg/recvmmsg vector IO instead.

> 
> I think Erel said he tested snabb (formerly snabbswitch?) and the qemu
> vhost-user-blk, maybe vhost-user-input? Drivers are in the kernel
> already, of course.

Cool.

> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
