Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56771529C4
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 12:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wA3uXBh1csHwW24PxBFNyTcWqDx+ocYiIa928r/Z6a0=; b=G5qWLmdqgS6Sj43h8w0P0lIR1
	3y67imtynzomXDfCdTKCdPcQGVrL4k9tkii1/Z+/2W3VJBXweWJa840l2dV0Cmz7iyr/VEj6t9GW/
	uWe3SMfmG4LzC9PPdYLJ18pLHnPpJDrkqIZUaUZQbvtTbf+qr3lOSr8rfi/7ovcnssXDreq9Hf/pI
	kKgWS7GGsueuiOidttQg0uI7DY41Db5FHK0XAV8AwR9EihmbnIOqW/ofezfpN89EplEKOVDsNNmwO
	eRfM0f80xP55ugn77lki1FayqZVKddIEPARESK8mbwfa6kM+tI0e5VOimFFKsYrjyfTWkNVX6p1JQ
	ffEDy2WgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izIjh-0002fn-IQ; Wed, 05 Feb 2020 11:20:49 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izIje-0002ew-VZ
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 11:20:48 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izIFX-0000r7-Mo; Wed, 05 Feb 2020 10:49:40 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izIFV-000809-Ai; Wed, 05 Feb 2020 10:49:39 +0000
Subject: Re: [RFC v2 07/37] lkl: interrupt support
To: Hajime Tazaki <thehajime@gmail.com>, richard.weinberger@gmail.com
References: <cover.1573179553.git.thehajime@gmail.com>
 <567fd4d5c395e2279e86ca0bfca544ad2773a31d.1573179553.git.thehajime@gmail.com>
 <CAFLxGvxytmS4WSFj2ibyJKCuR5TbspdNf6MvHNvzh9dtKx2rJg@mail.gmail.com>
 <m2h805qy99.wl-thehajime@gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <739ada9a-b88a-5192-fb4b-65132a74b4de@kot-begemot.co.uk>
Date: Wed, 5 Feb 2020 10:49:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <m2h805qy99.wl-thehajime@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_032047_011376_070BA88F 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
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
Cc: linux-arch@vger.kernel.org, tavi.purdila@gmail.com,
 linux-um@lists.infradead.org, retrage01@gmail.com,
 linux-kernel-library@freelists.org, sigmaepsilon92@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 05/02/2020 07:38, Hajime Tazaki wrote:
> 
> On Tue, 26 Nov 2019 07:13:55 +0900,
> Richard Weinberger wrote:
>>
>> On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>>>
>>> From: Octavian Purdila <tavi.purdila@gmail.com>
>>>
>>> Add APIs that allows the host to reserve and free and interrupt number
>>> and also to trigger an interrupt.
>>>
>>> The trigger operation will simply store the interrupt data in
>>> queue. The interrupt handler is run later, at the first opportunity it
>>> has to avoid races with any kernel threads.
>>>
>>> Currently, interrupts are run on the first interrupt enable operation
>>> if interrupts are disabled and if we are not already in interrupt
>>> context.
>>>
>>> When triggering an interrupt, it uses GCC's built-in functions for
>>> atomic memory access to synchronize and simple boolean flags.
>>>
>>> Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
>>> Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
>>> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
>>> ---
>>>   arch/um/lkl/include/asm/irq.h             |  13 ++
>>>   arch/um/lkl/include/uapi/asm/irq.h        |  36 ++++
>>>   arch/um/lkl/include/uapi/asm/sigcontext.h |  16 ++
>>>   arch/um/lkl/kernel/irq.c                  | 193 ++++++++++++++++++++++
>>
>> Like I said before, this also something to unify with UML.
>> I'm aware that this is easily said but we cannot have too much duplication.
>>
>> Feel free to ask if UML internals give you headache. :-)
> 
> Same as nommu implementation, I left this part as-is.
> 
> Triggering interrupts with fd events (delivered by epoll&co) is a hard
> part to implement host-independent interrupts of LKL.  OTOH, the v3
> patchset shows that it is doable to use UML drivers with the LKL
> interrupt facility.

Make sure you are testing with the vector network devices, the legacy ones are scheduled to be obsoleted at some point

I know this will cause a headache on non-Linux, I am happy to write wrappers/emulators for recvmms/sendmmsg so these build on the systems which do not support them.

Brgds,


> 
> I may also need more time to evaluate/find a right direction, though.
> Your comments are always welcome.
> 
> -- Hajime
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
