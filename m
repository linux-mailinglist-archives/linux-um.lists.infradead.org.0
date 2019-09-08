Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF242AD0B2
	for <lists+linux-um@lfdr.de>; Sun,  8 Sep 2019 23:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8r2s7KONoYv2vJt7XP4Hi62+r5aHUtiHwcvQMN8BqiM=; b=qAG6I1Q4QfGaQqV3ZZsi/Ww3N
	2y6r/HSuiJr0dtdTTykMlUqc9px4KhOKp5pDZ2MlgErCXzQ+bYyXnPSvMYPVQKwXzFF6PAgJ2Uqg3
	6tvctBI3w2UTcVQ+LEB8VVXL1Ob3mv2kZMLD7waROw4qqbaD+MScCSF+gywpV7tDSeEilk2Z5kraF
	+MMgZdkLQh6tKIFlI4rnTf+IP/Gmm9Cd4zGIUJ99clYBIQfmL2iyTx4O7yCandc+P7fys5CHKGUW2
	VCg0QfX1FiWmjL5qcplT1WUVIn/+oHwh3hhN1+nMZ10kdbZj7JC0nMJc4tCXbv0Q0xeZNHxOX6rii
	PV+BHi16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i74Kx-0007NR-D1; Sun, 08 Sep 2019 21:03:07 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i74Kt-0007Mi-IQ
 for linux-um@lists.infradead.org; Sun, 08 Sep 2019 21:03:05 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i73j2-0004KE-Si; Sun, 08 Sep 2019 20:23:57 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i73iz-0006lw-80; Sun, 08 Sep 2019 21:23:56 +0100
Subject: Re: [RFC] um: have real DMA barriers with virtio
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
 <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <02eb6880-1e7b-1921-2057-008737ee8d48@kot-begemot.co.uk>
Date: Sun, 8 Sep 2019 21:23:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_140303_744075_80B35859 
X-CRM114-Status: GOOD (  18.83  )
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

On 07/09/2019 20:32, Johannes Berg wrote:
> On Sat, 2019-09-07 at 00:02 +0200, Johannes Berg wrote:
>>
>> Make the override to compiler barriers depend on !virtio.
> 
>   
>> +#if !IS_ENABLED(CONFIG_VIRTIO_UML)
>> +/*
>> + * We can afford to just have compiler barriers here - unless
>> + * virtio is enabled, because then we communicate with another
>> + * process and (despite being UP internally) cannot assume we
>> + * run on a UP system.
>> + */
>>   #define dma_rmb()	barrier()
>>   #define dma_wmb()	barrier()
>> +#endif
> 
> I suppose the [RFC] question is: should we even keep this at all? It
> seems to me that we'd only encounter dma_rmb()/dma_wmb() in a driver
> that's for some kind of DMA device, which is only possible with virtio,
> so there's no gain in overriding them to just barrier() since the non-
> driver part of the kernel will never use them?

Disk IO at present is for all practical purposes DMA and is abusing 
artefacts from the IPC to work.

The IO itself happens in another thread which may be on a different CPU. 
It does not use any barriers or anything to ensure that the buffered 
data is synchronized and relies on the fact that the IPC which uses a 
socketpair somewhere in the guts of the kernel will invoke a barrier 
while pushing the data along.

I have looked a couple of times at expressing this and other helper 
threads as proper DMA, but never got around to do it.

If it is done for virtio this will make life easier elsewhere to finish 
the other bits.

> 
> IOW - is the ifdef worth it, vs. just removing it completely? I suspect
> not.
> 
> johannes

While at it - the WARN_ in the virtio driver should really become more 
informative so it is clear who and what caused them.


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
