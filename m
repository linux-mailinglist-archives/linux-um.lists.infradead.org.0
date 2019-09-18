Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC6B5F44
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 10:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t5UXs2iRBRHYHvTO25P3zjXZd2IobktUKSkFAU1a3FQ=; b=iXxlp+RA4gxKdhIBL4S+XyASG
	IPN2VQM3rgQfVJjCENPYfvq4IE1aalFlBuE7uhZbCd2xliS4c1oG1eGGshZTGLZUYNfQ39GNlcHcQ
	fYyeXtnQ7dVptUkTrHcLKGgAuRaJlx8brrkc0Z3mhtltg3R+8FP7OW3rQrfpyOhi453eMVtNKC1P0
	EuD6ugeMUihZCc4DwVvyswCHNWVx8ZFt4SkzAa09o/Ggyp8Eh/8nkt6+9Aam0g7aE/X5kBnlKGZhy
	sghDREy8hGu4IQ6gKDe9DVFa+EdyxwczoZgpDCZJZkYxJmXAhB9APNRURGll+D5LJ7xinORSgpnNT
	z1FXrO8vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVNt-0000bA-N6; Wed, 18 Sep 2019 08:32:21 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVNr-0000ar-5m
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 08:32:20 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVNp-0002YC-O2; Wed, 18 Sep 2019 08:32:18 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVNn-0008WI-If; Wed, 18 Sep 2019 09:32:17 +0100
Subject: Re: CONFIG_COMPAT for UM?
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
 <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
 <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
 <bd6edd3b-f0e3-c3e8-1b2a-e1395dcaf6aa@kot-begemot.co.uk>
 <06bdd645f5f9832ec37e6e50e12602fa6661cca9.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <5dd98ebf-7da7-ec81-ef65-709c009670a2@kot-begemot.co.uk>
Date: Wed, 18 Sep 2019 09:32:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <06bdd645f5f9832ec37e6e50e12602fa6661cca9.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_013219_218047_9E4175F3 
X-CRM114-Status: GOOD (  13.59  )
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


On 18/09/2019 09:25, Johannes Berg wrote:
>>> Yeah, I guess I could run as a 32-bit instance, but I'd rather actually
>>> use a 64-bit instance.
>> Not if you want to run many of them.
> Probably not more than a dozen I guess?

256

>
>> The 3-level page tables in 64 bit spin up a whole raft threads making it
>> unfeasible. Compared to that the 32 bit uses 5 threads in total per
>> instance.
> I'm probably missing something, how are threads related to page tables?

Uml memory management spins up a thread every time it creates a level3 
page table. It is somewhere around kernel/skas

>
> I can see how that would use more memory, but where do threads come in?

It is not memory use, it is actually performance and stability on larger 
machines.

This is less acute now after the ubd transaction bulking, but it used to 
be the case that taskset -c 0 ./run-your-uml-testcase was faster to boot 
a linux system by a factor of 2+ times compared to just leaving all the 
threads wonder to different CPUs.

It was even more fun on larger machines. I had a 5 liner script to kill 
a 2 (or 4) socket Xeon in those days - it died on the 6-9th instance 
being spun up if they were not being assigned specific NUMA node 
affinity. It just keeled over - NMIs due to not being able to keep up 
the cache in sync.

>
>> I have tried a couple of times to figure out a way to make the 64 bit
>> drop down to two-level for small instances like f.e running OpenWRT with
>> 64 or 128MB RAM, but it does not work.
>>
>> To be honest, I was not trying very hard :)
> :)
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
https://www.kot-begemot.co.uk/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
