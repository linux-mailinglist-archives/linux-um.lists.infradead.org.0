Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A4CDAE7B
	for <lists+linux-um@lfdr.de>; Thu, 17 Oct 2019 15:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zx+DdGR2cbY5/g2B42qUjDRhPQeQ6H+8pXGqGP8lUxc=; b=OzhlPUqA4bQEPTBG8vbQAfnSn
	IQuC7RprCQsYldgrcCgZZAguc4bhb9m5d6fWnXlgLq4gP+uXV1BNNtIIfn6X24PN2LkLPXSWym1u3
	P6Fmyd3FVebPnOiHrRbppM09oQf8cGvAgheD6zaIgEJB59EsLfxCGDG3HIQVJrZs12PFQAz0Vv8Fv
	9k4uQ0Vz2AI7xr7vPp8+3xoPZ0Js+oFp8quC3Y7M+VMg5g8oTaB1wqwlZve3NYcrCWOeeotbnqLLm
	txUbeI5Gd1GeV5IQ7UB+875J2bpiRDNfLna0H4uWzjjWvqsVhpRbmhWHaSp8RcQnp31w7uiDTLSuH
	y97s9RjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5u5-0006JV-Ne; Thu, 17 Oct 2019 13:33:21 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5u2-0006J2-Ph
 for linux-um@lists.infradead.org; Thu, 17 Oct 2019 13:33:20 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iL5u0-0002dp-BI; Thu, 17 Oct 2019 13:33:16 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iL5ty-0005rG-2I; Thu, 17 Oct 2019 14:33:16 +0100
Subject: Re: uml segfault during I/O
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
Date: Thu, 17 Oct 2019 14:33:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_063318_835231_65C3B81F 
X-CRM114-Status: GOOD (  18.08  )
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



On 17/10/2019 14:30, Ritesh Raj Sarraf wrote:
> On Thu, 2019-10-17 at 14:02 +0100, Anton Ivanov wrote:
>> Looking into that. I have not run into anything like that, but I have
>> not used any of the legacy networking for 5 odd years now.
>>
> 
> Do you think this is related to networking ? I ask because there was no
> network activity going on.

no, it's disk somewhere. I managed to reproduce it with 5.2 stock on 
Debian 5.2 host.

> 
> apt is just an example. The packages were all already downloaded and
> there was no network activity. Rather, there was block I/O.

I am looking into that.

> 
> One thing I noticed, which may or may not be useful to this report. I
> was booting the uml guest and immediately logging into it and running
> the block I/O. And the segfault would occur.
> 
> If I, instead, booted the uml vm and let it remain idle for a minute or
> so and then did the I/O, it worked fine. So I am not sure if there is
> any lazy initialization happening in the background which gets
> corrupted during immediate hot boot I/O.

Interesting...

> 
> On the other hand, if you think there can be any number of commands to
> run locally that could generate more information, please assist me so.

As I said - I managed to reproduce it, I am looking at it. In first 
instance I am trying with a couple of version up/down to see if this is 
5.2 specific.

> 
> Thanks,
> Ritesh
> 
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
