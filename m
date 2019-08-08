Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFC185C2D
	for <lists+linux-um@lfdr.de>; Thu,  8 Aug 2019 09:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DEqT+3jmbQ+avURkEpgQIy87QJMYgA+ZCxwYGbFutTM=; b=YgqNBViSmzf7ySgAhZyCdgeV9
	AK5+rbbDd++rCFJ+3Uov0bjL3gwmSRsXAv4fbw5rHKuFGJe+97AHgV91O2K4Qpu/m4L5+GIdcUR73
	OI3oBAI6thsVY4DP1Csdy3CusLULKci+6vizTMYd7Lm7qcmjTX4xi6GyvSqEzyiKLqX3PHVdpEMJw
	XyObCmGyRVp5CZCRuTOhuwyG0MbwUGd+Xe4oVnJF7k7PNdrKy8oWDnCfanM9oL8MV80C32zcfBoAh
	U3BsNr2h5QLm2SQjGcpp+9tUa1cHJ4gnh8ysms/rwODNzgTDMjDLNoAy0Pfo5nv9t2ZBmy159tRXF
	iBkm/P3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdHW-0004jA-8J; Thu, 08 Aug 2019 07:56:18 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdHT-0004if-HE
 for linux-um@lists.infradead.org; Thu, 08 Aug 2019 07:56:17 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvdHP-0002IG-87; Thu, 08 Aug 2019 07:56:11 +0000
Received: from [185.69.144.81] (helo=[192.168.43.240])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvdHM-000585-FR; Thu, 08 Aug 2019 08:56:10 +0100
Subject: Re: [RFC] um: virtio: Workaround for using virtio_net with snabb
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731203030.29821-1-johannes@sipsolutions.net>
 <394f11ad-88e3-1d1f-8b8e-51fdc14aea8d@cambridgegreys.com>
 <1e988e1583b94761ba876827af24eede0c46ccf4.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <36928187-8013-9e25-3ff8-a7a0962c8274@cambridgegreys.com>
Date: Thu, 8 Aug 2019 08:56:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1e988e1583b94761ba876827af24eede0c46ccf4.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005615_701593_9343F77A 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 08/08/2019 08:26, Johannes Berg wrote:
> On Wed, 2019-08-07 at 17:14 +0100, Anton Ivanov wrote:
>    
>>> +	/* TODO workaround for some implementations */
>>> +	if (vu_dev->vdev.id.device == VIRTIO_ID_NET)
>>> +		vu_dev->features &= ~BIT_ULL(VIRTIO_NET_F_CTRL_VQ) &
>>> +				~BIT_ULL(VIRTIO_NET_F_MQ);
>>
>> If it is needed only for some implementations, then it should be an option.
> 
> Yeah, I guess it should be. Then again, will anyone really even want to
> use snabb? I don't know, perhaps, but perhaps it should just be fixed on
> the snabb side? It stands to reason that regardless of what we do here,
> it shouldn't just crash.

True.

However, a cursory search shows these being turned off in a few other 
cases as well including vs some DPDK based software.

So snabb is not alone having issues with MQ and VQ flags.

> 
>> Have you tried it vs let's say dpdk (IIRC it supports vhost_user as an
>> interface).
> 
> No, and we probably won't, we're not really particularly interested in
> the network aspect of it. Trying it out here with existing device
> implementations was really just for development, ultimately our plan is
> to have our own device implementation(s) and driver(s). 

Understood, however for it to be upstreamed it should work with 
something else which is publicly available. That is why I am going to 
try it vs Bess/DPDK (it is also lowest effort for me as I already have 
that set-up).

> I'm hoping to
> publish and upstream something that will let you run multiple UML
> machines in "synchronized time travel" mode over vhost-user though.

vhost-user clock? Interesting idea.

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
