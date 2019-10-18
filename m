Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89C5DBE7B
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 09:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jCGpYHpaNNI4Qt/yBw07aIDtcd/aeLVv7YNDvammTzk=; b=BHVCidKg1wNUw0987KIr7FnSD
	itZjua0qvxgC20GS/ckawK2LniYAjgO3jZLtrFPJbVLdgaaEGiIdQu/qIr3Rb/vgYhEQnL/ZnhTla
	FcgNitF+43wm5XPLLFcQQ4DdWWCehSOdcIzy/BA1So0gPevTD44cNgKuYioXKrX2VLp7ZtdtJiD2g
	gnHWkohpAh2EUo60v2bkRstdbARzNgucR1lWQiVhH15tLaZJy0jqcXXFGMcyPfP6bKYr3cjqasO7K
	SAiFpHxyW3IgYUxC2fZHpbpNpwPVIRivrxsVIyFKV+biHHv+sluJVPVNC41a9jhv6QqRgi7to6Ua8
	jOAycuZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLMnq-0004u6-7g; Fri, 18 Oct 2019 07:36:02 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLMnm-0004td-UU
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 07:36:00 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLMnj-0005fu-Hd; Fri, 18 Oct 2019 07:35:55 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLMnh-0004VW-22; Fri, 18 Oct 2019 08:35:55 +0100
Subject: Re: uml segfault during I/O
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
 <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
Message-ID: <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
Date: Fri, 18 Oct 2019 08:35:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_003558_980478_865116CE 
X-CRM114-Status: GOOD (  18.73  )
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



On 17/10/2019 17:29, Anton Ivanov wrote:
> 
> 
> On 17/10/2019 16:03, Anton Ivanov wrote:
>>
>>
>> On 17/10/2019 14:33, Anton Ivanov wrote:
>>>
>>>
>>> On 17/10/2019 14:30, Ritesh Raj Sarraf wrote:
>>>> On Thu, 2019-10-17 at 14:02 +0100, Anton Ivanov wrote:
>>>>> Looking into that. I have not run into anything like that, but I have
>>>>> not used any of the legacy networking for 5 odd years now.
>>>>>
>>>>
>>>> Do you think this is related to networking ? I ask because there was no
>>>> network activity going on.
>>>
>>> no, it's disk somewhere. I managed to reproduce it with 5.2 stock on 
>>> Debian 5.2 host.
>>>
>>>>
>>>> apt is just an example. The packages were all already downloaded and
>>>> there was no network activity. Rather, there was block I/O.
>>>
>>> I am looking into that.
>>>
>>>>
>>>> One thing I noticed, which may or may not be useful to this report. I
>>>> was booting the uml guest and immediately logging into it and running
>>>> the block I/O. And the segfault would occur.
>>>>
>>>> If I, instead, booted the uml vm and let it remain idle for a minute or
>>>> so and then did the I/O, it worked fine. So I am not sure if there is
>>>> any lazy initialization happening in the background which gets
>>>> corrupted during immediate hot boot I/O.
>>>
>>> Interesting...
>>>
>>>>
>>>> On the other hand, if you think there can be any number of commands to
>>>> run locally that could generate more information, please assist me so.
>>>
>>> As I said - I managed to reproduce it, I am looking at it. In first 
>>> instance I am trying with a couple of version up/down to see if this 
>>> is 5.2 specific.
>>
>> I cannot even get it to start on 5.4-rc1, 5.3 shows the same symptoms.
> 
> This is something outside the UBD driver as such. There were no notable 
> changes to it since we ported it to block-mq and added DISCARD which was 
> quite a while back.
> 
> I am going to check the other usual suspects such as IRQs, but that is 
> something I test quite extensively when working on the networking side.
> 
> So I suspect that this is something outside UML which is showing only in 
> UML for some reason.

Still happening with 5.2.21, albeit a bit more difficult to reproduce.

Looking at the backtraces it is ALWAYS a result of a re-queue.

[  263.990000]  [<60440633>] blk_mq_dispatch_rq_list+0xf3/0x5f0
[  263.990000]  [<60440501>] ? blk_mq_get_driver_tag+0xc1/0x100
[  263.990000]  [<60440540>] ? blk_mq_dispatch_rq_list+0x0/0x5f0
[  263.990000]  [<60445966>] blk_mq_do_dispatch_sched+0x66/0xe0
[  263.990000]  [<60446107>] blk_mq_sched_dispatch_requests+0x107/0x190
[  263.990000]  [<6043f130>] ? blk_mq_run_hw_queue+0x0/0x120
[  263.990000]  [<6043efb4>] __blk_mq_run_hw_queue+0x74/0xd0
[  263.990000]  [<6043f0d4>] __blk_mq_delay_run_hw_queue+0xc4/0xd0
[  263.990000]  [<6043f1d9>] blk_mq_run_hw_queue+0xa9/0x120
[  263.990000]  [<6043f292>] blk_mq_run_hw_queues+0x42/0x60
[  263.990000]  [<60440bc0>] ? blk_mq_request_bypass_insert+0x0/0x90
[  263.990000]  [<604462a0>] ? blk_mq_sched_insert_request+0x0/0x1c0
ALWAYS >>[  263.990000]  [<604414b0>] blk_mq_requeue_work+0x160/0x170
[  263.990000]  [<6008c91b>] process_one_work+0x1eb/0x490
[  263.990000]  [<607f5aa0>] ? __schedule+0x0/0x620
[  263.990000]  [<6008e000>] ? wq_worker_running+0x10/0x40
[  263.990000]  [<6008c730>] ? process_one_work+0x0/0x490
[  263.990000]  [<6008cc06>] worker_thread+0x46/0x670
[  263.990000]  [<600931c1>] ? __kthread_parkme+0xa1/0xd0
[  263.990000]  [<6008cbc0>] ? worker_thread+0x0/0x670
[  263.990000]  [<6008cbc0>] ? worker_thread+0x0/0x670
[  263.990000]  [<60093bc4>] kthread+0x194/0x1c0
[  263.990000]  [<6002a091>] new_thread_handler+0x81/0xc0


A.

> 
> A.
> 
>>
>>>
>>>>
>>>> Thanks,
>>>> Ritesh
>>>>
>>>>
>>>> _______________________________________________
>>>> linux-um mailing list
>>>> linux-um@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-um
>>>>
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
