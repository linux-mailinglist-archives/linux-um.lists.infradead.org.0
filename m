Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD56872FC
	for <lists+linux-um@lfdr.de>; Fri,  9 Aug 2019 09:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PsTNgcrbuSjjNHIjpCLo2RXYc0ehoSX0HTp4HzfXNTM=; b=kRjeH3JvGYhqU9J96gUx5jyKd
	SI4gRNirZIOkUr4sCuF4oKnX3+udeS40JNWyd+8zwQ9BmMLdGgOPQy9QiTrMbsiMxT2qYBGA+7d8M
	VdtFu+YkaiEl3JbLzFQp6x5oq2pOgxKjd/X5eiQnbo1G2rI9xY2uCM9oqnfz+eao1Sf+/PDTKyPRw
	OiIC1PKUsRBaBnIv3sklCMpm83tOScvPQVLpbIn6LsshMr716EriIJvYnEmBujbQIdSjt7FHnoau3
	DFfEDqOuUmDRfi+HsSKnrl+mt5h2rRRlwYyMQtBswTBvzoZvhJQrb9KLzMceK9F/LIYH7jC3hrdUN
	DwkJVE/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzNE-0005Hh-8S; Fri, 09 Aug 2019 07:31:40 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzNA-0005HO-79
 for linux-um@lists.infradead.org; Fri, 09 Aug 2019 07:31:38 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzMw-0006m7-6g; Fri, 09 Aug 2019 07:31:22 +0000
Received: from [151.251.252.245] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzMt-0003ee-QL; Fri, 09 Aug 2019 08:31:22 +0100
Subject: Re: [RFC] um: virtio: Workaround for using virtio_net with snabb
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731203030.29821-1-johannes@sipsolutions.net>
 <394f11ad-88e3-1d1f-8b8e-51fdc14aea8d@cambridgegreys.com>
 <1e988e1583b94761ba876827af24eede0c46ccf4.camel@sipsolutions.net>
 <36928187-8013-9e25-3ff8-a7a0962c8274@cambridgegreys.com>
 <1db90d466d11b5cb8b379c05efb885e0816195dc.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <a66c9235-8c04-8beb-d7cc-0c76c5d27310@cambridgegreys.com>
Date: Fri, 9 Aug 2019 08:31:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1db90d466d11b5cb8b379c05efb885e0816195dc.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_003136_393871_BADE6A55 
X-CRM114-Status: GOOD (  18.71  )
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



On 09/08/2019 08:19, Johannes Berg wrote:
> On Thu, 2019-08-08 at 08:56 +0100, Anton Ivanov wrote:
> 
>> However, a cursory search shows these being turned off in a few other
>> cases as well including vs some DPDK based software.
>>
>> So snabb is not alone having issues with MQ and VQ flags.
> 
> Oh. I hadn't really researched it much more.
> 
>>>> Have you tried it vs let's say dpdk (IIRC it supports vhost_user as an
>>>> interface).
>>>
>>> No, and we probably won't, we're not really particularly interested in
>>> the network aspect of it. Trying it out here with existing device
>>> implementations was really just for development, ultimately our plan is
>>> to have our own device implementation(s) and driver(s).
>>
>> Understood, however for it to be upstreamed it should work with
>> something else which is publicly available. That is why I am going to
>> try it vs Bess/DPDK (it is also lowest effort for me as I already have
>> that set-up).
> 
> True. Erel tried some of the samples from qemu contrib as well as snabb.
> But if you have a DPDK setup then that's certainly an interesting option
> to try, one that would likely also be useful for others to use this
> with.

I am working on this at the moment: https://github.com/NetSys/bess

It is a simple DPDK based L2/L3 forwarder.

I have it set-up already so I can try to use it as a test case.

> 
> If needed, we can respin this as a real patch to add options to the
> command line, I suppose.

I hope to have some answers to that by early next week.

> 
>>> I'm hoping to
>>> publish and upstream something that will let you run multiple UML
>>> machines in "synchronized time travel" mode over vhost-user though.
>>
>> vhost-user clock? Interesting idea.
> 
> I'm on vacation right now, but once I'm back I'll start looking into
> that. Not sure how to really tie that in though since it needs the idle
> hook too, and that's arch specific. So I guess it just has to be
> integrated with all the time-travel mode code, rather than being more
> generic/separate.
> 
> johannes
> 
> 

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
