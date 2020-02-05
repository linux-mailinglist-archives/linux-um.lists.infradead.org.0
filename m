Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831051530BD
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 13:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aSNSatX4CZYFjhMVm5tfKAf7qw7N/dhMkmfsx9CE0iM=; b=aR5G9yrO0xIcOKE3ICBYjMTAe
	S1qPqx0lN38ECnlKkghFcYnHjm+UsvcpwvshGYta+1KVjb+Ksdt+EgjSWGOviXgAKoxPWvyGj4Mb+
	Epa+JjFGgAz/tU2gmdRu56CFS/RngZhAzew+jpGegZRbkakOGTs1aKVhuc442leJQh2vFcHG8Knmx
	HdqbJO7ac4avhp6ecOhYGyi1zMiNZMRenwPTwoVK+VWTrQ3GiSGho19HFuEUtMfQlOIn/uA/J6GQ1
	lMkKP8/ohGqglYlhdYTRS/HkmJu/2dckXM9tuvo47wbeU7lgjohXKnq17kcBm7mIiwESGUaTB8RVC
	u1pD6ChWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJoW-00036T-Hq; Wed, 05 Feb 2020 12:29:52 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJoT-00035e-CY
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 12:29:51 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izJoM-000183-TC; Wed, 05 Feb 2020 12:29:43 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izJoK-0002JU-Q5; Wed, 05 Feb 2020 12:29:42 +0000
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
To: Octavian Purdila <tavi.purdila@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
 <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <a5b6cdbb-2eef-9e84-4ae0-13aad9d1466a@kot-begemot.co.uk>
Date: Wed, 5 Feb 2020 12:29:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_042949_428405_72ABD531 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, Akira Moroo <retrage01@gmail.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 Will Deacon <will@kernel.org>, Hajime Tazaki <thehajime@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 05/02/2020 12:24, Octavian Purdila wrote:
> On Wed, Feb 5, 2020 at 11:34 AM Peter Zijlstra <peterz@infradead.org> wrote:
>>
>> On Wed, Feb 05, 2020 at 04:30:10PM +0900, Hajime Tazaki wrote:
>>> From: Octavian Purdila <tavi.purdila@gmail.com>
>>>
>>> With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
>>> are not compiled due to type conflict of atomic64_t defined in
>>> linux/type.h.
>>>
>>> This commit fixes the issue and allow using generic atomic64 ops.
>>>
>>> Currently, LKL is only the user which defines GENERIC_ATOMIC64
>>> (lib/atomic64.c) under CONFIG_64BIT environment.  Thus, there is no
>>> issues before this commit.
>>
>> Uhhhhh, no.
>>
>> Not allowing GENERIC_ATOMIC64 on 64BIT is a *feature*.
>>
>> Any 64bit arch that needs GENERIC_ATOMIC64 is an utter piece of crap.
>>
>> Please explain more.
>>
> 
> Hi Peter,
> 
> I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I
> understand your point that a 64 bit architecture that can't handle 64
> bit atomic operation is broken.
> 
> One way to deal with this in LKL would be to use GCC atomic builtins
> or if that doesn't work expose them as host operations. This would
> keep LKL as a meta-arch that can run on multiple physical
> architectures. I'll give it a try.
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 


You can lift a set of defines which do that for most compilers/arches 
out of OVS code.

Have a look at lib/ovs-atomic*.h

It should do exactly what you want (+/- cutting it down to things you need).

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
