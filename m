Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46524DB259
	for <lists+linux-um@lfdr.de>; Thu, 17 Oct 2019 18:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vy41aN0Ii+mfjcg8RSmHMcp2OcbJau22gaamj843nBc=; b=m1hhFH6keDu30gdYtb/EcS9Hm
	rcl8eGa/nWTi4XlgLjyLGUyWq/WosDinzzb4WoxrmblZ6FVK4wMZcOdnP7w0Ko3beTS0NxqLegov7
	z3n7wLs1I/vCMVrTcZQL4/kx1yBotk9naS++kzl2fYxKgQOpGmP7bxBDJT30rZDqCOt+OqRvEfZsg
	kuXPFSrsXl+ssqTDIQEsQN2GleNdhEZGx+9cxWt+65NhTlNyWaKWVuQDIHo+FAB1kNQQ0486o/c/x
	pbVMI72+pWf9K0R/qfCvcVRXScSf3YA3K6CK1jl4kP6hBpVUOtqcXlYRSqNNMWyVgtUD1+HlPIHHr
	opwQ9nbDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8eZ-0007OX-1R; Thu, 17 Oct 2019 16:29:31 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8eV-0007Ny-HZ
 for linux-um@lists.infradead.org; Thu, 17 Oct 2019 16:29:29 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iL8eS-00035V-0H; Thu, 17 Oct 2019 16:29:24 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iL8eP-000498-RN; Thu, 17 Oct 2019 17:29:23 +0100
Subject: Re: uml segfault during I/O
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
Message-ID: <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
Date: Thu, 17 Oct 2019 17:29:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_092927_582297_6C42336E 
X-CRM114-Status: GOOD (  16.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 17/10/2019 16:03, Anton Ivanov wrote:
> 
> 
> On 17/10/2019 14:33, Anton Ivanov wrote:
>>
>>
>> On 17/10/2019 14:30, Ritesh Raj Sarraf wrote:
>>> On Thu, 2019-10-17 at 14:02 +0100, Anton Ivanov wrote:
>>>> Looking into that. I have not run into anything like that, but I have
>>>> not used any of the legacy networking for 5 odd years now.
>>>>
>>>
>>> Do you think this is related to networking ? I ask because there was no
>>> network activity going on.
>>
>> no, it's disk somewhere. I managed to reproduce it with 5.2 stock on 
>> Debian 5.2 host.
>>
>>>
>>> apt is just an example. The packages were all already downloaded and
>>> there was no network activity. Rather, there was block I/O.
>>
>> I am looking into that.
>>
>>>
>>> One thing I noticed, which may or may not be useful to this report. I
>>> was booting the uml guest and immediately logging into it and running
>>> the block I/O. And the segfault would occur.
>>>
>>> If I, instead, booted the uml vm and let it remain idle for a minute or
>>> so and then did the I/O, it worked fine. So I am not sure if there is
>>> any lazy initialization happening in the background which gets
>>> corrupted during immediate hot boot I/O.
>>
>> Interesting...
>>
>>>
>>> On the other hand, if you think there can be any number of commands to
>>> run locally that could generate more information, please assist me so.
>>
>> As I said - I managed to reproduce it, I am looking at it. In first 
>> instance I am trying with a couple of version up/down to see if this 
>> is 5.2 specific.
> 
> I cannot even get it to start on 5.4-rc1, 5.3 shows the same symptoms.

This is something outside the UBD driver as such. There were no notable 
changes to it since we ported it to block-mq and added DISCARD which was 
quite a while back.

I am going to check the other usual suspects such as IRQs, but that is 
something I test quite extensively when working on the networking side.

So I suspect that this is something outside UML which is showing only in 
UML for some reason.

A.

> 
>>
>>>
>>> Thanks,
>>> Ritesh
>>>
>>>
>>> _______________________________________________
>>> linux-um mailing list
>>> linux-um@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-um
>>>
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
