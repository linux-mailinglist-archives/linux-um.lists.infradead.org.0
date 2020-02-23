Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E158C1699DF
	for <lists+linux-um@lfdr.de>; Sun, 23 Feb 2020 20:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mP45leGeLTusP2FmGQagCdZ5jXIBR+sjErhPFby9wAc=; b=O56MU6clAGVzebSviFJR4Ptey
	Dd/f+RV1G0yhn8eg3Ts66m5dWQdQdXEPHpopyjwwiyVhXZnjtyShw24kwEvHRRrVIt588KPAOvhmV
	Hxm9kM866gSYZowAPu7dN8pdbARFtGXfLQH6X3v+nC1mk33/hAPknR2rE0D4kNn2wiBb51hiLsbhq
	oyVXWISZjLBkB4WqMNhJD20KOg5JOFPIF/se5Jyg3wpvoS0S4Z3TRNHakZLCWAz7JLUmnkbZcDsLW
	R3P6vrWQzfdbcX+OmTVxsDtVomjqro5jHfMIPrE5SE0aviNnHrtYukIIozSe7I5U2rPv3t1+HQZ+h
	BHHKFSu3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5xPI-0002rS-FH; Sun, 23 Feb 2020 19:59:16 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5xPF-0002qt-Jm
 for linux-um@lists.infradead.org; Sun, 23 Feb 2020 19:59:15 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j5xP3-0002Hn-Kr; Sun, 23 Feb 2020 19:59:01 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j5xP1-00080f-2C; Sun, 23 Feb 2020 19:59:01 +0000
Subject: Re: [PATCH 0/2] Remove dead code and driver version
To: Leon Romanovsky <leon@kernel.org>
References: <20200220084014.238768-1-leon@kernel.org>
 <c26c2741-fdb5-a492-2b7b-8973650f15e8@cambridgegreys.com>
 <20200223105111.GC422704@unreal>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <b43f4565-26a3-2339-2480-cb5abd96b359@cambridgegreys.com>
Date: Sun, 23 Feb 2020 19:58:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200223105111.GC422704@unreal>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_115913_651911_CB4B6FDB 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 23/02/2020 10:51, Leon Romanovsky wrote:
> On Thu, Feb 20, 2020 at 07:35:09PM +0000, Anton Ivanov wrote:
>>
>>
>> On 20/02/2020 08:40, Leon Romanovsky wrote:
>>> From: Leon Romanovsky <leonro@mellanox.com>
>>>
>>> Hi,
>>>
>>> This short series is an outcome of the change in ethtool [1] to provide
>>> proper driver version that will work reliably. The second patch is
>>> removal of useless timer setup.
>>>
>>> Code is compile tested only.
>>>
>>> [1] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/
>>>
>>> Leon Romanovsky (2):
>>>     um: Don't overwrite ethtool driver version
>>>     um: Delete never executed timer
>>>
>>>    arch/um/drivers/net_kern.c    | 13 -------------
>>>    arch/um/drivers/vector_kern.c |  2 --
>>>    2 files changed, 15 deletions(-)
>>>
>>> --
>>> 2.24.1
>>>
>>>
>>
>> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Thanks Anton, I'm wondering if I expected to do some extra steps
> to be sure that those patches will be sent in next merge window
> to Linus?

"When" is Richard's decision. I just check and clear patches for the 
time being.

Brgds,

> 
> Thanks
> 
>>
>> --
>> Anton R. Ivanov
>>
>> Cambridge Greys Limited, England and Wales company No 10273661
>> http://www.cambridgegreys.com/
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 


-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
