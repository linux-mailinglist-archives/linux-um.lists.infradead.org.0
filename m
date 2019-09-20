Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78617B9771
	for <lists+linux-um@lfdr.de>; Fri, 20 Sep 2019 20:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZsIkU9rxp/ionAne+hFQHvpKJ6D4dkHUjBs7Cdio9Us=; b=THchTJxMMcCORZ0VjfCn/7vAq
	rk9lKwBU2ynSIkEEZquy1N9KNFU8KJHZBxdLcm0IKdB5JW5fxiZyPL3BAvT10aCY+oM7gDkXN+Vj1
	cYxUInhXqYe+Kf/ARjz975DQ3mhxl8UXrtzYsYc4csjplub05oQ76fY6znOYNZodLLEsooe4FTFtg
	OdHzJx1OXqSxjXmrgMeESGWS/JY6AV+anP6pgvIaiHDlEnSRohZZNQGvyVOS2yfsMX7nYH8jpHf5R
	ynaFvv7j4oRl6iKgWavui7OsRsnckWE4JqxC1eLVsT0yh5W8bUpTp/jKEbTzb/ow+H7XMjWbuT8fs
	HRUyPCUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBO5r-0002HB-Hm; Fri, 20 Sep 2019 18:57:23 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBO5o-0002Gm-0Q
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 18:57:21 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iBO5j-00066f-Vi; Fri, 20 Sep 2019 18:57:16 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iBO5h-0008QP-Mg; Fri, 20 Sep 2019 19:57:15 +0100
Subject: Re: linux-image-5.2.0-2-amd64: breaks UML all versions, both debian
 stock and compiled from source.
To: Johannes Berg <johannes@sipsolutions.net>,
 Debian Bug Tracking System <submit@bugs.debian.org>
References: <156897436056.2001.10040310871991691509.reportbug@sleer.kot.begemot.co.uk>
 <ded0fc52-3631-375f-e4b5-c18e93777c4f@kot-begemot.co.uk>
 <edc683fbb6596f2a35656f8951d2b7a692ca7620.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <dd5de310-86b8-eb66-771f-d1cbaf246da1@kot-begemot.co.uk>
Date: Fri, 20 Sep 2019 19:57:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <edc683fbb6596f2a35656f8951d2b7a692ca7620.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_115720_314149_F3F3E78F 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 20/09/2019 18:53, Johannes Berg wrote:
> On Fri, 2019-09-20 at 15:48 +0100, Anton Ivanov wrote:
>> These are the Start (that is what sbrk(0) returns) and &_end values I
>> get for the two kernels:
>>
>> Linux 4.19 on host - Start 1645867008 end 1631412224 diff 14454784
>>
>> Linux 5.2 on host - Start 93825006145536 end 1631412224 diff 93823374733312
> Does this need some specific configuration for 5.2? I have a system
> running 5.2.8 (compiled a relatively simple kernel for my usage there -
> it's a VM), and it can run my UML linux binary just fine.
That is starting to narrow it down to something in the debian 5.2 config :)
>
> Or perhaps there's some interaction with some other userspace too?

It definitely occurs on a debian system with current stable (buster) 
userspace and the kernel from testing which 5.2 with patches.

It definitely does not occur on a buster system with a buster stock 
kernel which is 4.19 or anything prior to that. Tested on same hardware 
and a couple of similar ones I have around.

I got as far as narrowing down the differences between the two cases to 
__binary_start which is derived from START in the source.

I have not really looked at where to go from that point.


-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
