Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D519DD0D
	for <lists+linux-um@lfdr.de>; Tue, 27 Aug 2019 07:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uJTnTbGiUc8jAqKv4hziLtem2BYv2piktBJb4DKRJyo=; b=WtmHlwsV1jCcl93sRL+77Wy/a
	N2k6KNTmTju7QKhB9taRFw9EE43Q5EO8HHH9Wc3VsD+Nv15FJ26/UoYVnntVw72+Mw1WbkGGTiUZY
	FEsJXi8r5xIa78TQKsFfrqYfqz8RwkYOw32RmIWoiAB/O5m8SbmSCaR3Fmxz2ene6geoxoUKl0xDY
	UiWa3qc07kEJgvHV/5pUY1WqNtQHeS/5js52aP8JMqLFUl7GhHS8d44e498TM6DDNqLWM1KIlxvFL
	fdZYUGoZKb69Ga4o56Uy32+IcnZr0ohlspcAFZsO6wv3qjY/LcM6fJCAnrhhvWwPnx0OSyCcD3D9Q
	JHa7sq7qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tq0-00025Q-On; Tue, 27 Aug 2019 05:16:12 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Tpw-00021s-NN
 for linux-um@lists.infradead.org; Tue, 27 Aug 2019 05:16:10 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2Tpq-0000fb-FQ; Tue, 27 Aug 2019 05:16:02 +0000
Received: from [151.251.252.137] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2Tpn-0008CW-Tw; Tue, 27 Aug 2019 06:16:02 +0100
Subject: Re: [PATCH] arch: um: implement memory protection
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190823225831.23517-1-johannes@sipsolutions.net>
 <d929dc9c60b46ac222ca847fe8df7c0640713e4a.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <7d0c1f45-e245-fbab-1335-5d978c4f255b@kot-begemot.co.uk>
Date: Tue, 27 Aug 2019 06:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d929dc9c60b46ac222ca847fe8df7c0640713e4a.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_221608_912422_1CF9E80B 
X-CRM114-Status: GOOD (  17.29  )
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



On 25/08/2019 08:41, Johannes Berg wrote:
> On Sat, 2019-08-24 at 00:58 +0200, Johannes Berg wrote:
>>
>> Note that you can now enable CONFIG_DEBUG_RODATA_TEST,
>> but it's broken as the fixup is broken - it'll just
>> crash with
>>
>>   Kernel panic - not syncing: Segfault with no mm
> 
> It just occurred to me that I need to check what happens if it's
> actually userspace talking the fault or something, maybe if it
> erroneously tries to copy_o_user() with a read-only kernel address or
> so.
> 
> Don't want to cause a panic() in that case, after all.
> 
> IOW, I'd feel much happier about this if I could make
> CONFIG_DEBUG_RODATA_TEST work after all, but I gave up after an hour or
> so of poking the exception handlers and trying to figure out how I could
> make fixup tables work on UML. It might mean doing copy_from_user() in

Copy from/to user in UML have embedded tlb lookups. I did a couple of 
tweaks on them earlier in the year. I do not think they are a feasible 
target for a rewrite in asm without redoing once more the actual tlb.

That one is tough, in fact very tough. I think I have squeezed nearly 
everything that could be squeezed out of the current design, any further 
improvements can come only from a redesign from the whole uml mm and/or 
trying to integrate host ksm by default.

A.

> assembly, which would be annoying.
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
Anton R Ivanov

http://www.kot-begemot.co.uk

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
