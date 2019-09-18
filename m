Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF37B5F0E
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 10:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AtWlcEH/oLC6kmA2LerUbncSu41sscQs6d6hdjU39rE=; b=Z6jARtYKI9imIvCsxME17uWHh
	BKtu7vrtn560IXnEVFCwA3HSI8yR7/09qE3xGHDGap65O81L9Q8L1YH4feIjpzn/HOL622/7eDDDI
	FH3ej3rz4HNvQw2g+pMTfjPxMDsEs5512W2txWfPUr4cN26idclXVahbB2bbfY2mhRLPPOZJyTH1T
	4BXsaOPcRi7R0zqT4PM1m2IUErkOqcxdXgqzfUdCVeLnCp4PBtvQLk3L3K6db95orgp8OzDEYT62C
	b7Ug/InJNUQNqsk6q0EjLsd5qoYcm2JySXj8TnX0KYWDdbtSfZ9uU/kLDKsxV8iRvAgaiYmg0DQpF
	CQIjXeFyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVFO-0003R6-Ua; Wed, 18 Sep 2019 08:23:34 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVFL-0003Qk-AQ
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 08:23:33 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVFH-0002XO-SM; Wed, 18 Sep 2019 08:23:28 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVFF-0008Cp-Hb; Wed, 18 Sep 2019 09:23:27 +0100
Subject: Re: CONFIG_COMPAT for UM?
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
 <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
 <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <bd6edd3b-f0e3-c3e8-1b2a-e1395dcaf6aa@kot-begemot.co.uk>
Date: Wed, 18 Sep 2019 09:23:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012331_361975_1BFD0F1A 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 18/09/2019 08:07, Johannes Berg wrote:
> On Wed, 2019-09-18 at 07:48 +0100, Anton Ivanov wrote:
>>
>> I was thinking about running 32 bit instances on a 64 bit host.
> 
> Yeah, I guess I could run as a 32-bit instance, but I'd rather actually
> use a 64-bit instance. 

Not if you want to run many of them.

The 3-level page tables in 64 bit spin up a whole raft threads making it 
unfeasible. Compared to that the 32 bit uses 5 threads in total per 
instance.

I have tried a couple of times to figure out a way to make the 64 bit 
drop down to two-level for small instances like f.e running OpenWRT with 
64 or 128MB RAM, but it does not work.

To be honest, I was not trying very hard :)

> If I ever manage to get KASAN running (among
> other things) this will totally be required :)
> 
>> Pure 32 bit userspace on 64 kernel - yeah... why not. Though to be
>> honest, nearly all distributions now have multiarch support so the need
>> for this is nowhere near as pressing as 10+ years ago when the first
>> AMD64 processors came out.
> 
> True, it's not really of that much use these days. I guess it could be
> helpful to test the compat code (ioctls) itself.
> 
> I've mostly worked around my problem by making the test suite bootstrap
> 64-bit compatible, which was annoying but doable :-)
> 
> johannes
> 
> 

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
