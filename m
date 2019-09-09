Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0C1AD3D4
	for <lists+linux-um@lfdr.de>; Mon,  9 Sep 2019 09:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g+6hGSd2MdK0ivVDUHvpS8gUlEsoU+iJIJnXRE+jdhI=; b=Yo2D0aMgC4gr2crOr9yBSjghI
	6JNV22eDkieUARxYyv05T3RWWZu0L48fi5xDKX9cnbmBaJvXkVV7w4TRJDocnaf3RNHYQY279l4Q7
	cJjooJyteQhLXQ+pPgo0fgmtqRnT+yt49LH/zsinmou0VEJZWM3MGEMKqliT7L4s6rWAE0Fd8meWb
	YI3DGlVcz4RfSl6ZJEJyxtkQaAPNkoPgD5Q6TWY+AVwTUumAiLLYrqJ2YuHLQ3TX7egN3HxCDv9h2
	ITNnu+oCcHF14xGReamSNT7Xem+T9hM5H1fpx1nr5mdw0jGkIct+VIT3J9ns1NKmWzEh+d535EVJg
	IQp2q62SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7E4t-0004m0-3i; Mon, 09 Sep 2019 07:27:11 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7E4p-0004la-Jh
 for linux-um@lists.infradead.org; Mon, 09 Sep 2019 07:27:09 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i7E4l-0006Id-Lf; Mon, 09 Sep 2019 07:27:04 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i7E4j-0006U4-8N; Mon, 09 Sep 2019 08:27:03 +0100
Subject: Re: [RFC] um: have real DMA barriers with virtio
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
 <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
 <02eb6880-1e7b-1921-2057-008737ee8d48@kot-begemot.co.uk>
 <300774e43e0a755a9e57c587ece7bb44537f1d22.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <58f4cdd7-6601-f0e1-2d0b-58b62cbc1020@kot-begemot.co.uk>
Date: Mon, 9 Sep 2019 08:27:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <300774e43e0a755a9e57c587ece7bb44537f1d22.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_002707_781799_417E16F6 
X-CRM114-Status: GOOD (  24.34  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 09/09/2019 07:49, Johannes Berg wrote:
> On Sun, 2019-09-08 at 21:23 +0100, Anton Ivanov wrote:
>> On 07/09/2019 20:32, Johannes Berg wrote:
>>> On Sat, 2019-09-07 at 00:02 +0200, Johannes Berg wrote:
>>>> Make the override to compiler barriers depend on !virtio.
>>>
>>>    
>>>> +#if !IS_ENABLED(CONFIG_VIRTIO_UML)
>>>> +/*
>>>> + * We can afford to just have compiler barriers here - unless
>>>> + * virtio is enabled, because then we communicate with another
>>>> + * process and (despite being UP internally) cannot assume we
>>>> + * run on a UP system.
>>>> + */
>>>>    #define dma_rmb()	barrier()
>>>>    #define dma_wmb()	barrier()
>>>> +#endif
>>>
>>> I suppose the [RFC] question is: should we even keep this at all? It
>>> seems to me that we'd only encounter dma_rmb()/dma_wmb() in a driver
>>> that's for some kind of DMA device, which is only possible with virtio,
>>> so there's no gain in overriding them to just barrier() since the non-
>>> driver part of the kernel will never use them?
>>
>> Disk IO at present is for all practical purposes DMA and is abusing
>> artefacts from the IPC to work.
> 
> Hmm, good point.
> 
>> The IO itself happens in another thread which may be on a different CPU.
>> It does not use any barriers or anything to ensure that the buffered
>> data is synchronized and relies on the fact that the IPC which uses a
>> socketpair somewhere in the guts of the kernel will invoke a barrier
>> while pushing the data along.
> 
> Makes sense. However, the UBD code still doesn't contain any DMA
> barriers, so what I said above still holds true I think - just removing
> the dma_rmb/dma_wmb definitions shouldn't really affect much if
> anything.
> 
> Not sure I understand you correctly, but I guess you're saying we should
> remove the definitions in all cases, so we can use the DMA barriers
> properly even in the non-virtio case?

Apologies,

I would like at some point to convert the "helper thread" semantics of 
ubd, etc to look like DMA and use DMA barrier as well as have the 
relevant DMA infrastructure.

At present they work only because the IPC forces the host kernel to 
invoke a barrier. If I remember correctly, the actual place where the 
barrier is invoked is the IPC socket enqueue/dequeue in the host kernel.

If, for some reason the host kernel does not invoke the barrier (f.e., 
if someone optimizes the queue operations so there is no need) they will 
break.

IMHO adding DMA emulation will have benefits for both existing and 
future drivers.

> 
>> While at it - the WARN_ in the virtio driver should really become more
>> informative so it is clear who and what caused them.
> 
> I replaced most of them with just error logging, since the call stacks
> weren't really useful anyway. There are now two left, but those are
> internal (to UML) calculation issues, so not something that'd trigger in
> a device-dependent way.

Cool.

> 
> That said, I did find a few other issues still, so I'll be reposting.
> I'll also try to open /proc/self/mem as the file descriptor to pass to
> the virtio device instead of using physmem_fd, because our .bss isn't
> actually part of physmem_fd, and that cost me a few hours debugging
> already ;-)

I will retest vs BESS/DPDK when it is ready.

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
