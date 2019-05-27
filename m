Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772592ADC2
	for <lists+linux-um@lfdr.de>; Mon, 27 May 2019 06:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bO3Y/GX5FFNpqyfgMl1Vr2AKvQi/8AQXb2SuUYKe+o=; b=kdaiS3iI4VFghNNCmIGGU2JSZ
	Sfqs6YIDKoIfGXfCNA4XbHPnPJbewEtqPBBp94161nkWdPkl1z1zExjqjIjt+Swhi/2rFDCT+ImZz
	lcIwQpanhTcXr8+ni467b1IMv9tm5PrXGKVFPViRj/UWGytbRL3D5832rQARunnqlFoAKAFqzjjMJ
	u5Yl4VUBXt/qxBhkPIMiEpjJ63ljmwCwIFTMVtZusdwMH8+VtzQA3SQgCeDmib78JKdNGVwDtaUXR
	6sblXyrYItvsIE5VhQjwFxoC4gwzdmXNlvo/g4Cl0Lp+iFlCm7t3n1LkOH76cpwzGR7+cI/gE/S3F
	LU67jbOIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7Y0-00065F-Hd; Mon, 27 May 2019 04:47:44 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7Xx-00064p-NB
 for linux-um@lists.infradead.org; Mon, 27 May 2019 04:47:43 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hV7Xs-0007mh-IN; Mon, 27 May 2019 04:47:36 +0000
Received: from [192.168.15.6] by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hV7Xp-0002o8-MI; Mon, 27 May 2019 05:47:36 +0100
Subject: Re: [PATCH v2 5/5] arch: um: support virtual time
To: Johannes Berg <johannes@sipsolutions.net>,
 Richard Weinberger <richard.weinberger@gmail.com>
References: <20190506123939.21091-1-johannes@sipsolutions.net>
 <20190506123939.21091-6-johannes@sipsolutions.net>
 <CAFLxGvza1da-q=XakFimKc-aZd5M9bSxtNZdvLmTz5_Ck1HJ3Q@mail.gmail.com>
 <6a6dd0548031aedc34044d89953e4c8c9d7e45f5.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <5a0d83d0-1f68-c1ae-468b-b88752472a84@kot-begemot.co.uk>
Date: Mon, 27 May 2019 05:47:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6a6dd0548031aedc34044d89953e4c8c9d7e45f5.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_214741_890243_74EB8024 
X-CRM114-Status: GOOD (  34.18  )
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



On 5/26/19 11:18 PM, Johannes Berg wrote:
> On Sun, 2019-05-26 at 23:55 +0200, Richard Weinberger wrote:
> 
>>> Add a mode - CONFIG_UML_VIRTUAL_TIME_SUPPORT - to support such
>>> behavior; it needs to be enabled with the "virtual-time" option
>>> passed to the UML invocation.
>>
>> I like this feature!
>> Is "virtual time" a common name for such a mode?
> 
> I have no idea, sorry. If you find any references to this being done
> elsewhere, we can certainly rename it. A colleague pointed me to various
> network simulation papers which play with the clock, but I don't recall
> seeing a good name for this (but it's also past midnight, so ...)

ITIMER_VIRTUAL This timer counts down against the  user-mode  CPU  time 
consumed  by the process.  (The measurement includes CPU
  time consumed by all threads in the process.)   At  each expiration, a 
SIGVTALRM signal is generated.

This is what we used to use before we migrated to POSIX timers.

So as far as the name there is a possible name clash/term overload.

> 
>> To me "virtual time" reads like a clock that runs with different speed or is in
>> some other way untangled from the host.
>> What you have implement is time traveling. ;-)
> 
> True :-)

+1, Let's just call it time travel mode.

> 
> I have a version of this that even implements "infinite CPU power" by
> completely eliding the calls to the host timer (which lets us do
> preemption). This has a large number of issues, but also found a few
> bugs already, e.g.
> https://github.com/bcopeland/wmediumd/commit/414bee49eda82046b61e0a3cd583d235ebd3f017
> 
> The biggest issue is that nothing actually takes time, and so things
> like
> 
> https://bugs.python.org/issue37026
> 
> result. When I make just reading out the time take 10 ns or so, things
> like that go away.
> 
> It still has issues, like kernel work queues won't run until userspace
> is completely quiescent, which is clearly unrealistic. Trying to model
> some time into the syscall now, so that can "take" some time and the
> scheduler will run kernel threads, but it's not really clear to me yet
> how that can be made to work. It should solve this problem though.
> 
> The reason I'm interested in that is that it completely decouples the
> code from the real time, e.g. if I run a ton of debug code somewhere, it
> won't affect my "timing", and thus not cause differences in the test
> execution.
> 
>>> +++ b/arch/um/os-Linux/time.c
>>> @@ -15,8 +15,27 @@
>>>   #include <os.h>
>>>   #include <string.h>
>>>   #include <timer-internal.h>
>>> +#include <generated/autoconf.h>
>>>
>>>   static timer_t event_high_res_timer = 0;
>>> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
>>> +unsigned long long virtual_time;
>>> +unsigned long long timer_expiry;
>>> +static enum {
>>> +       TMR_DIS,
>>> +       TMR_ONE,
>>> +       TMR_INT,
>>> +} timer_mode;
>>
>> You set the timer mode in the os_*-functions, this works because the only user
>> is UML's posix-timer.
>> Is there a reason why you didn't install most virtual time hooks in
>> the itimer_* functions?
>> This feels more natural to me and would keep the os_*-functions
>> stateless and generic.
> 
> Can't really say I had a good reason for that. It's probably just the
> place I could actually reason best about - and in the case of my non-
> preemptible mode (that I described above) really be sure nothing was
> calling any real timers :-)
> 
> It could totally be done in the itimer_* functions, but then also has to
> be in arch_cpu_idle() I guess, to be done in the kernel side (rather
> than in the host side in os_*).
> 
>>> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
>>> +       timer_mode = TMR_INT;
>>> +       timer_expiry = virtual_time + nsec;
>>> +#endif
>>>
>>
>> Can we please have a static inline helper for this?
>> ...to avoid more ifdefs in C files.
> 
> Sure. Not sure it's worth putting it into a header file, but it could
> be, even common code with the similar code you pointed out, declared at
> the top of the C file with the other ifdefs.
> 
>>>   long long os_nsecs(void)
>>>   {
>>>          struct timespec ts;
>>>
>>> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
>>> +       if (virtual_time_enabled)
>>> +               return virtual_time;
>>> +#endif
>>>
>>
>> Do we need the ifdef here?
>> If CONFIG_UML_VIRTUAL_TIME_SUPPORT is disabled, virtual_time_enabled
>> should never be non-zero/true.
> 
> Yeah, some variable are ifdef'ed out so this wouldn't compile, but if
> you prefer I can remove those ifdefs and this can always be compiled.
> 
>>>   void os_idle_sleep(unsigned long long nsecs)
>>>   {
>>> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
>>> +       unsigned long long next = virtual_time + nsecs;
>>> +       struct itimerspec stop = {}, cfg;
>>> +#endif
>>>          struct timespec ts = {
>>>                  .tv_sec  = nsecs / UM_NSEC_PER_SEC,
>>>                  .tv_nsec = nsecs % UM_NSEC_PER_SEC
>>> @@ -117,6 +157,32 @@ void os_idle_sleep(unsigned long long nsecs)
>>>          /*
>>>           * Relay the signal if clock_nanosleep is interrupted.
>>>           */
>>> -       if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL))
>>> +       if (!virtual_time_enabled) {
>>> +               if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL))
>>> +                       deliver_alarm();
>>> +               return;
>>> +       }
>>> +
>>> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
>>> +       timer_settime(event_high_res_timer, 0, &stop, &cfg);
>>> +
>>> +       if (timer_mode != TMR_DIS && timer_expiry < next) {
>>> +               if (timer_mode == TMR_ONE)
>>> +                       timer_mode = TMR_DIS;
>>> +               /* virtual_time will be adjusted in timer_handler() */
>>>                  deliver_alarm();
>>> +               return;
>>> +       }
>>> +
>>> +       virtual_time = next;
>>> +
>>> +       if (timer_mode != TMR_DIS) {
>>> +               unsigned long long remaining = timer_expiry - virtual_time;
>>> +
>>> +               cfg.it_value.tv_sec = remaining / UM_NSEC_PER_SEC;
>>> +               cfg.it_value.tv_nsec = remaining % UM_NSEC_PER_SEC;
>>> +
>>> +               timer_settime(event_high_res_timer, 0, &cfg, NULL);
>>> +       }
>>> +#endif
>>
>> Please split the function to get rid of the ifdefs.
> 
> Hmm. We need an ifdef there somewhere anyway.
> 
> If you dislike the ifdefs so much and wanted to keep the if in
> os_nsecs() anyway maybe I should just remove the Kconfig option entirely
> and just let the runtime configuration control it?
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
