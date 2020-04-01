Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E731219A6C0
	for <lists+linux-um@lfdr.de>; Wed,  1 Apr 2020 10:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/9t5LABaFn+ZaagXsPgPSQ/HhOOKQLbcArdpHy+2v50=; b=d517oGkmdtcUvjxpeEY7DuhIp
	VRzDujzs4yODEo2HOuMmeN0AkS8MyuuY0FgzFspbahzz2s3wEjT2LzPrWLUIcHpy7JRPGjPTFD51s
	+yW1dC1c2nrfDrvx9L3NP1Br9pXqkOCGabGTfIg591b6Ud7wJW7+DybbChty+k+jcFXUkEcdL7mXy
	ZUu9BaNw3v9Yd+dgo+D7eRNvQBYdZabh/VfyxqneT4CP2Luch4V2YSgRtmaQG/lvguGK592jmQy4A
	OZhShw46WXGfi0j99OKRF5zDi9w1VlXqzsZ9FU9xUL//fk5oqlWFSgkaSy2F9gIv+87rqe+hrKNUg
	Z0uY1zSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYIk-0006aC-2s; Wed, 01 Apr 2020 08:00:42 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYIh-0006Zg-QA
 for linux-um@lists.infradead.org; Wed, 01 Apr 2020 08:00:41 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jJYIg-0005DJ-L2; Wed, 01 Apr 2020 08:00:38 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jJYIe-0008VX-BU; Wed, 01 Apr 2020 09:00:38 +0100
Subject: Re: Patch to remove symbol conflicts in pcap transport
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
To: James McMechan <james_mcmechan@hotmail.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
References: <SN6PR10MB30394F0158533B8AE1151F81E2C90@SN6PR10MB3039.namprd10.prod.outlook.com>
 <e7f5fc79-5ec2-d1f9-fa53-5d8fafdd8f13@kot-begemot.co.uk>
Message-ID: <d9eec0f9-1bd6-d164-8009-4474b4a377e3@kot-begemot.co.uk>
Date: Wed, 1 Apr 2020 09:00:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <e7f5fc79-5ec2-d1f9-fa53-5d8fafdd8f13@kot-begemot.co.uk>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_010039_848731_D8FE6340 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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



On 01/04/2020 08:58, Anton Ivanov wrote:
> On 01/04/2020 08:27, James McMechan wrote:
>> Hi,
>>
>> I had fixed up the pcap transport back in December,
>> Attached is the patch I was using (with a couple clean ups) I just prefixed likely collisions with /um_/
>> It has been working since 5.4.2 up thru 5.6.0 so far
>> I noticed that the standard transports are now marked (obsolete) in 5.6.0
>> Does this version of the new transport work correctly when statically linked? It nolonger errors out at startup.
> 
> Sorta. Neither pcap nor vector can be truly statically linked. PCAP library internally and vector explicitly
> invoke name resolution functions which will fail in static executables if you try to run on a system with
> different libc.
> 
> This cannot be fixed. Vector cannot be static and the same is valid for pcap.
> 
> Both will be prohibited from static linking in the future because the resulting executable is NOT static and
> there is absolutely nothing we can do about it. This is a core glibc issue which we can neither fix, nor work
> around.
> 
>> I have not found any documentation on how to configure the new experimental vector transport.
> 
> 1. In the works. I was snowed under OVS (in fact I still am) so the rewrite of the UML howto had to be parked.
> 
> 2. There is a patch in the queue which maps pcap, tap, daemon and socket onto vector using the old syntax leaving
> only the virtual ethernet and slirp on the old net subsystem.
> 
>> Since the classic transports are between 10-100 times faster than my network anyway I have not felt a need to upgrade.
>> More I was using UML to deal with some very old systems that were not easily upgraded. e.g. 2.6 kernels and I think even a 2.0.32?
>> The vector Kconfig help says it wants a >=3.0 kernel for example.
> 
> 3.0 and a reasonably recent glibc.
> 
> That is not an unreasonable requirement. 3.0 was released on 22 July 2011. That is 19 years.

Sorry, 9 years. I need more coffee :)

> 
> As an example the Arm guys cut-off at ~5 years. I have a whole desk drawer with Lemaker and other 5+ years old
> Arm SoC boards which are all going out of support now.
> 
>>
>> Enjoy,
>>
>> Jim McMechan
>>
>>
>> _______________________________________________
>> linux-um mailing list
>> linux-um@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-um
>>
> 

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
