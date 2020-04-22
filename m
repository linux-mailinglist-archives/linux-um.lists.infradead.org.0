Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDAD1B4642
	for <lists+linux-um@lfdr.de>; Wed, 22 Apr 2020 15:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8dkNCBFg7zj08jUJO4BA8dg54vin4DMOPxVY9//jmyc=; b=E3MLM8FFwQ39xocL+u/p8wLMp
	Iu0NtT+slfoJXnKZSWMxCV2xtAkVfwKL5O0nYLpUsWuTip6H+12wjluXOm3tFJ5lgKHJpsArix/1J
	UUmFuiNSLpgRBhraycvzzyCtO+wDHIbGajaDg5OJSn9zEhJdeY96aS9y2mrze+0/iLsI1sc0TGa17
	bB2meNg7sU9ZKtli6GeWAHjQ60zsrk3aVLVHU44K/Gytr8eZquLG2+m8iuWS0F7cvxjHSlluRuHTl
	Kygp3juSvrQ3yvTAMdoW19QeOuZYliXUxz+i5zdhoLmKVIbKex2pTT+vDLbkXi5cPSSiMekDWOqME
	M7a8QXVLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFSW-0002Pq-Dj; Wed, 22 Apr 2020 13:30:36 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFSS-0002N3-9N
 for linux-um@lists.infradead.org; Wed, 22 Apr 2020 13:30:35 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRFSL-0008An-PB; Wed, 22 Apr 2020 13:30:26 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRFSJ-0007jR-8l; Wed, 22 Apr 2020 14:30:25 +0100
Subject: Re: UML HowTo rewrite
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Johannes Berg <johannes@sipsolutions.net>
References: <7fbb1a33-5fed-6c61-6c2a-ca47932669a7@cambridgegreys.com>
 <6d00f01fa378b5cb9273e05ab90adc58f6c6ab8f.camel@sipsolutions.net>
 <1a7a4aa7-aa01-9747-202a-b93ffb5c657a@cambridgegreys.com>
Message-ID: <cbf1b59a-e6d5-5870-76dc-60455fb179fa@cambridgegreys.com>
Date: Wed, 22 Apr 2020 14:30:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1a7a4aa7-aa01-9747-202a-b93ffb5c657a@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_063032_327946_65BEFAAD 
X-CRM114-Status: GOOD (  10.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On 20/04/2020 09:33, Anton Ivanov wrote:
>
>
> On 20/04/2020 09:30, Johannes Berg wrote:
>> Hi Anton,
>>
>>> Can we have a couple of sections on how to use time travel, virtio,
>>> etc so I can add the to the new howtos?
>>
>> Yeah, I guess that makes sense, at least for the parts that are actually
>> done :)
>>
>> Want to merge it, and I'll add something as patches later? Seems easier
>> (especially for new content)?
>
> Sure. I hope to finish cleaning up the base content today and we can handle
> everything as PRs/Patches from there onward.

The initial content is more or less in place.

Comments and PRs to change/add things are welcome.

https://github.com/kot-begemot-uk/uml-howto-v2

>
>>
>> johannes
>>
>>
>> _______________________________________________
>> linux-um mailing list
>> linux-um@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-um
>>
>
-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
