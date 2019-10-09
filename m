Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8023D134E
	for <lists+linux-um@lfdr.de>; Wed,  9 Oct 2019 17:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gJAHG3EMuSxkVeZqdai08g03YpWteft+pXG1Q2UmjF4=; b=Q+7MgwNmeJyLaCN+9POVRmUA7
	00MGiYxEp76ErUF1+GxZbjkeKt+2mPsqh8cVf9vVOaP9ClqvVgYvVEs3kouABfu/yRjzt3Pxr1sNY
	pvDmECcnRmvKtOY//zwLTSJLNKbLwdG/Poe0lW1WOP34H4LOt6CU3U4GLk4qWtqm23n+WbRqhc6Ky
	UrUhaSl+uHs/dt8wjTjBLgUwJIHHKWANengMM63QAvRkgOsoJGvlQ/94BFYu2EkqdMNy8dtfR3JU+
	UIbkWZDyQRM5UFEZSQQAFUKITwn48vwyz6GQijRnn9XUwL6LQsDTVmpOcDuFITFwP7FamEnEyAvhB
	1OyaoXOaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEJb-0007c2-LW; Wed, 09 Oct 2019 15:55:51 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEJY-0007bV-Uf
 for linux-um@lists.infradead.org; Wed, 09 Oct 2019 15:55:50 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iIEJR-0000Cq-DL; Wed, 09 Oct 2019 15:55:42 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iIEJP-0005PX-8J; Wed, 09 Oct 2019 16:55:41 +0100
Subject: Re: RFC - make it possible to add iomem at runtime.
To: Hajime Tazaki <thehajime@gmail.com>
References: <841ebee1-8ef3-b4d8-ba60-925461ad6ee9@cambridgegreys.com>
 <m2tv8i6jq3.wl-thehajime@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <0633ee21-de74-accf-78aa-5b005da31572@cambridgegreys.com>
Date: Wed, 9 Oct 2019 16:55:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <m2tv8i6jq3.wl-thehajime@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_085548_983225_D34BBA59 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 09/10/2019 16:07, Hajime Tazaki wrote:
> 
> Hello,
> 
> On Wed, 09 Oct 2019 22:34:27 +0900,
> Anton Ivanov wrote:
>>
>> Hi all,
>>
>> I am looking at adding an af_xdp network transport. As a part of its
>> initialization it needs to allocate a memory area to be shared for
>> tx/rx buffers. I would like to do that without dipping into the
>> "normal" UML memory pool if possible.
>>
>> The only way to allocate this at present is to pass it as an iomem
>> "region". This, however, is a bit dated and limited - it assumes an
>> existing file on a block device which is added at boot and not changed
>> after that. I cannot for example allocate at runtime and map that as
>> iomem.
>>
>> I was wondering if we can relax the "on-boot" only requirement and
>> allow allocations to happen during runtime as the drivers get
>> initialized. This will make implementing af_xdp and/or tpacket as well
>> as various memifs as network transports much easier.
> 
> I'm quite not sure if this is relevant to what you proposed,
> but we're recently trying to integrate LKL (Linux Kernel
> Library) to UML.
> 
> Though the internals of LKL and UML are different, we could
> use devices created by LKL (host) and use it in UML via
> virtio-mmio driver (below).  This was done by a dynamically
> created iomem region, which I think it's relevant to your idea.
> 
> Here is nasty code which I have experimented.
> In this code we use __uml_setup() to create a region, but it
> should be possible to trigger via a command invoked by users.
> 
> https://github.com/thehajime/linux/commit/e7dca9fced709ad015b69bf0c49c2afee1db45be
> 
> Apologize if this is out of topic.

It's on topic. I have read that commit and it gave me some food for 
thought.

Specifically - I need to look again at the platform device interface and 
reservation of "resources" this way.

Best Regards and thanks,


> 
> # We still need more time to fit in a shape, but we wish to
>    propose another RFC on this integration later.
> 
> -- Hajime
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
