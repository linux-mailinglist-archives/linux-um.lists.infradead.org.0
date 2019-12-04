Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6160112628
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 09:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e96ECkt8rjGPod4wcQDw377diSAQsPbYbh/+v+6bd1g=; b=jq2zlvIn9sMktN5EDB46D/ISg
	u4z9FcV1wVIxepzu4DQrp63hL8qI7Hp5CO8ALyJyP9oLv7cHTPPZP+YsOmMklpA5A4NMYmupWAkK3
	HazdNBn/XMZtvAVSf62UkhevBHpihH/dg7iUfBeqHey7oZZB5UvUrfeO5WIM5la2v8eg4YP6qml+r
	u+yvVFjZ6ExqO+qxyaacfNv+fcY6LAg0ZPTr5qo6fBWKHSqis9bLnTgoCF49FwIjwckTk0vXtZsXE
	zfFx7L9bUL/IIRhHD+3agyesqTZmQ2E0KWkp7/UVIXgsB0N4uMyTgXGWHzWeQJ64FyFaion49t0DA
	V+J0JqRaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQUb-0003Tm-CL; Wed, 04 Dec 2019 08:58:41 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQUX-0003TC-OR
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 08:58:39 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icQUV-0003cZ-CE; Wed, 04 Dec 2019 08:58:35 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icQUS-0001lp-Vs; Wed, 04 Dec 2019 08:58:35 +0000
Subject: Re: I get 5.4 fail to start
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
Message-ID: <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
Date: Wed, 4 Dec 2019 08:58:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_005837_793348_D5ECAB4A 
X-CRM114-Status: GOOD (  21.42  )
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 03/12/2019 14:49, Anton Ivanov wrote:
> 
> 
> On 02/12/2019 20:14, Richard Weinberger wrote:
>> On Thu, Nov 28, 2019 at 6:27 PM Anton Ivanov
>> <anton.ivanov@cambridgegreys.com> wrote:
>>>
>>> Hi all,
>>>
>>> I get 5.4 fail to start. 5.4 gives:
>>>
>>> Checking that ptrace can change system call numbers...check_ptrace :
>>> child exited with exitcode 6, while expecting 0; status 0x67f
>>> Aborted
>>>
>>> And stops right at the very start.
>>>
>>> I do not recall anything there changing in the 5.2 - 5.4 timeframe so
>>> this is weird.
>>
>> Hmm, I don't see this failure. What is your host kernel, your uml
>> kernel .config and commandline?
>>
>> I agree that the macro usage is odd but why is it failing now?
>>
>> _______________________________________________
>> linux-um mailing list
>> linux-um@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-um
>>
> 
> 5.3 up to latest stable works.
> 5.4 fails.
> 5.5 fails.
> 
> Tested on 3 different Ryzen hosts (4 core and 2 different 6 core ones) 
> and an old A4 host. Same result. Tested with and without cpu pinning to 
> same core. Same result.
> 
> The failure is always the same
> 
> Checking that ptrace can change system call numbers...check_ptrace : 
> child exited with exitcode 6, while expecting 0; status 0x67f
> 
> With some extra debug statements it deciphers as follows:
> 
> WIFEXITED(status) at that point is zero. So it is not the second half of 
> the if, it is the first half which is satisfied to enter the if {}
> 
> That explains the NXIO code in the result as it is not something which 
> the ptraced child should return under normal circumstances.
> 
> What I have no idea of what happens that can return control to a WAIT on 
> a speicific PID, but without exiting (WIFEXITED being 0).
> 
> I tried to loop it until WIFEXITED is true, but that just hangs - I am 
> looking at this at the moment.
> 
> It fails even for the most basic command line - just memory, root and umid
> 
> [snip]

If I comment out the checks or make them to expect 6 it runs fine after 
that.

No idea what's going on - I do not see where the 6 can come from.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
