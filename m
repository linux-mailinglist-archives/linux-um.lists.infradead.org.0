Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23B313C1E
	for <lists+linux-um@lfdr.de>; Sat,  4 May 2019 22:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6jvuQ799hFTfUALDdwLYhb+FN/rBMrnSJpNXT25qQ3k=; b=md97SM5IDbURcCT3qUA0d9D0o
	8WA9vzOVwsm2D+CgAgyvr/x9RlqCOkk/XhrZV100ReqSjpnhBiva98hn6j0hhm6LLlxcuSaCBZDv8
	mmw/eP5nmJmn7Z8iBAWEbj0Pn1P4I/5p7Z9ylrc5VE1nUsfiP2MaaVmf8mZxK8Ks5Q92D1J8w9hAd
	uMT8eo9/o2uOyAOj5+m4BhgjU6MQr5z8QwQonODPAbOEEvj5IFNSBaCyT68tBVGWRyFqvj6HoDYUG
	F82n8kUB5D7jTDlWcryFL21VmNuBh3nrKQObU6usWGgWKAAL4kQWE0zkGeB5lp/GCbFHvmF8Bu77B
	QUs2sRO9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN1V4-0003JP-49; Sat, 04 May 2019 20:43:14 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN1V0-0003IZ-AE
 for linux-um@lists.infradead.org; Sat, 04 May 2019 20:43:12 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hN1Up-0004mC-S8; Sat, 04 May 2019 20:43:00 +0000
Received: from 92.41.103.36.threembb.co.uk ([92.41.103.36]
 helo=[192.168.0.165]) by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hN1Uf-0000ef-Km; Sat, 04 May 2019 21:42:55 +0100
Subject: Re: [PATCH 3/3] arch: um: support virtual time
To: Johannes Berg <johannes@sipsolutions.net>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
References: <20190503213249.30008-1-johannes@sipsolutions.net>
 <20190503213249.30008-3-johannes@sipsolutions.net>
 <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
Date: Sat, 4 May 2019 21:42:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_134310_492388_10453BBF 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 04/05/2019 20:05, Johannes Berg wrote:
> On Fri, 2019-05-03 at 21:32 +0000, Johannes Berg wrote:
>>
>> @@ -65,12 +75,17 @@ int os_timer_set_interval(void)
>>
>>          if (timer_settime(event_high_res_timer, 0, &its, NULL) == -1)
>>                  return -errno;
>> +#else
>> +       timer_enabled = true;
>> +       timer_expiry = virtual_time + UM_NSEC_PER_SEC / UM_HZ;
>> +#endif
> 
> This is broken in two ways - first of all, I missed the interval
> completely, and secondly if you end up with a process that does
> something like
> 
>   x = gettime();
>   while (x == gettime()) { /* nothing */ }
> 
> then it gets stuck forever ...
> 
> I have a new version almost ready.
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

I had a quick look at them.

1 and 2 are clear and I will most likely ack them once you have a final 
version.

I can understand your use case for patch 3. What I am not clear is where 
should that config option live. It should be somewhere under 
debug/kernel hacking with a sufficient number of big fat warnings so 
people do not enable it accidentally by mistake.

Ideas?

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
