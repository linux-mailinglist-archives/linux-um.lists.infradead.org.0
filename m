Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4656D15AC75
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 16:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qt9lUv2hOVh+vRHwr+L2rRjbz41y6iNTm96ETN0jPiI=; b=fPb/dl1gn3R2/EeigyIPGssSp
	HEBYozdAniYmL3pFWLkF22tykMXb60IYdE91dYQYr10ClsZQlcXWEYCLywX/q9rZRGCDvQBeKDXeY
	uFetT98maNj4kGmf8kt1eraAN8xEzZ0u+HXP0cF0rbjaPETg/RKKTKwAXifXV8ZHwUvkLCz7MHVSy
	5yaEufFyQ74fKn8Mou/q6v9ihNH8E51bhhJo327lVT3H51F7Uq3yzHf96/ldSWjcOVn/w9hhh3y0p
	cLUcoBaG63twGjhmM7QginvJWUSg81UfUaih5bdf2oI9cIUI4eqZzPIve5f1SiehmUCTb36cOY4bG
	JfA7SBpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uLz-0003O6-Mo; Wed, 12 Feb 2020 15:55:07 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uLv-0002bJ-TT
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 15:55:05 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j1uLr-0004l0-2t; Wed, 12 Feb 2020 15:54:59 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j1uLo-0000H7-LG; Wed, 12 Feb 2020 15:54:58 +0000
Subject: Re: Documentation for UML Vector network
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
Date: Wed, 12 Feb 2020 15:54:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_075503_956232_49EBE9F1 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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



On 12/02/2020 15:40, Ritesh Raj Sarraf wrote:
> Hi Anton,
> 
> On Wed, 2020-02-12 at 11:15 +0000, Anton Ivanov wrote:
>> 1. A patch to make it transparent replacement for whatever is
>> possible from the old transports is in the queue
>>
>> 2. I was going to spend most of next week to rewrite the bits and
>> pieces from my website on how to use it and incorporate them into the
>> official docs and submit them as a patch to Documentation.
> 
> I did skim through your website looking for pointers in that direction.
> 
> Given that UML@SourceForge is very outdated, I suggest a different
> location. I also recollect Richard was considering moving to a wiki on
> a much reliable and maintained location, like uml.wiki.kernel.org. But
> I think that hasn't happened.
> 
> In my opinion, one good candidate where UML documentation could be
> maintained is:
> Documentation/virt/uml/UserModeLinux-HOWTO.txt

In first instance I intend to update that. There is actually a .rd markup version in progress for the next kernel versions.

A wiki will be nice, because there is no way to fit all new UML features like direct tunnel/overlay attachment, time travel, etc in the documentation in the kernel tree.

Brgds,

> 
> 
> That document is a dump of the UML@SourceForge website content. Having
> it in the kernel tree may have a better maintenance life.
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
