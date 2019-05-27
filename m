Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416102AF6B
	for <lists+linux-um@lfdr.de>; Mon, 27 May 2019 09:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9Wp4whem90zio17G4NaD0yQob0Uz9nhbHP1yYTF2e4=; b=Dz7e/XGUlJ3YO5hb3yOFAzX6A
	s7V64xQc/CUXwfp7YuuC3IBJrUsTndasVE8OfJ3fki3xsIfYc9hR8SWrjNzzNGS6qql9EHqyaw7H/
	Eb60PbySLHsxcwq/PxrMaBRtY7wuoFWSw5ekvC2K65dnY0StMzzmooZnx39z6HjNt1oO4dD5jQD5B
	fFYCKzOBL86AiAcxFslkkw4H5gpbMAQ1QdTzZCDljgIaTKW8ZVt7X7C9Bs8uAOvBOOmklv9ksqRrn
	TtAYHyck/+80GhflQu9AE2FgEh23aZ6PEXIBioACcSsUHNUE4gwSJ4Op+u68Ei0iKH/SVQxrH/sdA
	OLD7uniXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVA9c-0000F9-Qv; Mon, 27 May 2019 07:34:44 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVA9Z-0000EV-PX
 for linux-um@lists.infradead.org; Mon, 27 May 2019 07:34:43 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hVA9W-0008MK-Fk; Mon, 27 May 2019 07:34:38 +0000
Received: from [85.255.237.66] (helo=[192.168.43.240])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hVA9T-0005Ey-K6; Mon, 27 May 2019 08:34:38 +0100
Subject: Re: [PATCH v2 5/5] arch: um: support virtual time
To: Johannes Berg <johannes@sipsolutions.net>,
 Richard Weinberger <richard.weinberger@gmail.com>
References: <20190506123939.21091-1-johannes@sipsolutions.net>
 <20190506123939.21091-6-johannes@sipsolutions.net>
 <CAFLxGvza1da-q=XakFimKc-aZd5M9bSxtNZdvLmTz5_Ck1HJ3Q@mail.gmail.com>
 <6a6dd0548031aedc34044d89953e4c8c9d7e45f5.camel@sipsolutions.net>
 <5a0d83d0-1f68-c1ae-468b-b88752472a84@kot-begemot.co.uk>
 <0b04985bdb25de7373ea614c80c7773146d2498b.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <abe8e1f4-3b17-386e-befb-0801c6840fcc@kot-begemot.co.uk>
Date: Mon, 27 May 2019 08:34:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0b04985bdb25de7373ea614c80c7773146d2498b.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_003441_963932_5BB6783E 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: j@w1.fi, linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 27/05/2019 07:50, Johannes Berg wrote:
> On Mon, 2019-05-27 at 05:47 +0100, Anton Ivanov wrote:
>> ITIMER_VIRTUAL This timer counts down against the  user-mode  CPU  time
>> consumed  by the process.  (The measurement includes CPU
>>    time consumed by all threads in the process.)   At  each expiration, a
>> SIGVTALRM signal is generated.
>>
>> This is what we used to use before we migrated to POSIX timers.
>>
>> So as far as the name there is a possible name clash/term overload.
> 
> Good point.
> 
>>>
>>>> To me "virtual time" reads like a clock that runs with different speed or is in
>>>> some other way untangled from the host.
>>>> What you have implement is time traveling. ;-)
>>>
>>> True :-)
>>
>> +1, Let's just call it time travel mode.
> 
> :-)
> 
> Checking those references from my colleague now, I see the terms
>   * (adaptive) time dilation - at least for the other case I haven't
>     included in this patch yet where the clock can run slower than real
>     time
>   * virtual time - which is closest to what I called "infinite CPU power"
>     before
>   * relativistic time - which is close but not really what I implemented
>     here either
> 
> But sure, let's just call it "time-travel".
> 
> I think I'll add a few options:
> 
>   * time-travel=faster - what's implemented by this patch
>   * time-travel=infcpu - infinite CPU power available
>   * time-travel-start=<int value>
>                        - start of real time, to not necessarily use wall
>                          clock
> 
> Seems reasonable?

Yes. It also clearly distinguishes it from virtual time which is 
something which is used in a few places as a term.

Best Regards,


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
