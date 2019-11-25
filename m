Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B777B10954A
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 22:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pWLKRWsps348EeudRZXgyy0PwPBy5BPjKxpjlSGYWmo=; b=gi7TnXeYklfLqTuqFuZ08RNdi
	5pW4d1dh6rsZtjlBu5eD7jCd4Z5pE8mQTFMFOne7gYy0FV34mmLQHEJLQr4Q65mxqJBiTdVTOEwx+
	4wkk2aI7PDCr7xMKLClWUoUfn0FrbkIKXTnYj/C+YUpmzsG8svDkQB0lj4WAHBUAdT9EpyTwaXaih
	etYvjxhAKBvCI2bUqv3ApSYJkD0bQOJyp3H6m94xRv07QKra6BshMzvPq/0ENBIOTusoNIMo58DGZ
	VA49akm40nnzQYWs5zQkmLwdiddxBoiqfwiihfS6IJ8UgPnss3RFna2jLOoTjdGmIOFpjjg6shEI7
	mk/cGtDfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMJS-000581-02; Mon, 25 Nov 2019 21:54:30 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMJO-00057X-TN
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 21:54:28 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iZMJG-0005C0-67; Mon, 25 Nov 2019 21:54:18 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iZMJE-0001lz-1k; Mon, 25 Nov 2019 21:54:18 +0000
Subject: Re: [PATCH] um: Add back support for extra userspace libraries
To: Richard Weinberger <richard.weinberger@gmail.com>,
 Ritesh Raj Sarraf <rrs@debian.org>
References: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
 <202276c5253b7a510f513925c201edf180e1886b.camel@debian.org>
 <CAFLxGvy3ssM2xmp1W3-jdVwOw+oozP0eO9H-X5vcsdLg+ODGsA@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <95893a0d-4a90-2df9-5661-db9b74b53053@cambridgegreys.com>
Date: Mon, 25 Nov 2019 21:54:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAFLxGvy3ssM2xmp1W3-jdVwOw+oozP0eO9H-X5vcsdLg+ODGsA@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_135426_947549_323E7ADA 
X-CRM114-Status: GOOD (  17.91  )
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
Cc: Richard Weinberger <richard@nod.at>, linux-um@lists.infradead.org,
 938962@bugs.debian.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 25/11/2019 21:32, Richard Weinberger wrote:
> On Thu, Oct 17, 2019 at 1:32 PM Ritesh Raj Sarraf <rrs@debian.org> wrote:
>>
>> Hello Anton,
>>
>> Thank you so much for working on this fix. I tested this patch and it
>> works. Some comments below though.
>>
>> On Wed, 2019-10-16 at 15:13 +0100, Anton Ivanov wrote:
>>> PCAP and VDE network transports require linking with userspace
>>> libraries. The current build system has no means of passing these
>>> as arguments.
>>>
>>> This patch adds a script to expand the library list for linking
>>> for these transports as well as any future driver that needs to
>>> rely on additional libraries on the userspace side.
>>>
>>> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>>> ---
>>>   arch/um/scripts/extra-libs.sh | 10 ++++++++++
>>>   scripts/link-vmlinux.sh       |  4 +++-
>>>   2 files changed, 13 insertions(+), 1 deletion(-)
>>>   create mode 100644 arch/um/scripts/extra-libs.sh
>>>
>>> diff --git a/arch/um/scripts/extra-libs.sh b/arch/um/scripts/extra-
>>> libs.sh
>>> new file mode 100644
>>> index 000000000000..0592485e0675
>>> --- /dev/null
>>> +++ b/arch/um/scripts/extra-libs.sh
>>> @@ -0,0 +1,10 @@
>>> +#!/bin/sh
>>> +
>>> +# This file should be included from link-vmlinux, not executed!!!
>>> +
>>> +if [ "${CONFIG_UML_NET_VDE}" = "y" ] ; then
>>> +     UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lvde -lvdeplug"
>>> +fi
>>> +if [ "${CONFIG_UML_NET_PCAP}" = "y" ] ; then
>>> +     UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lpcap"
>>> +fi
>>
>> -lvde is not understood. I added the build dependency to libvde-dev on
>> Debian but that still did not help.
>>
>> So instead I dropped it to get the build going. And my tests about
>> networking look fine.
>>
>> The revised patch that I'm using is attached with this email.
>>
>>
>>> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>>> index 06495379fcd8..15f9e5096da0 100755
>>> --- a/scripts/link-vmlinux.sh
>>> +++ b/scripts/link-vmlinux.sh
>>> @@ -90,11 +90,13 @@ vmlinux_link()
>>>                        -Wl,--end-group                         \
>>>                        ${@}"
>>>
>>> +             . arch/um/scripts/extra-libs.sh
>>> +
>>>                ${CC} ${CFLAGS_vmlinux}                         \
>>>                        -o ${output}                            \
>>>                        -Wl,-T,${lds}                           \
>>>                        ${objects}                              \
>>> -                     -lutil -lrt -lpthread
>>> +                     -lutil -lrt -lpthread ${UML_EXTRA_LIBS}
>>>                rm -f linux
>>>        fi
>>>   }
> 
> I fear without an ACK from kbuild folks I'm unable to monkey this patch.
> No need to worry, this one can be merged after -rc1.
> 

Ack, this needs to be forwarded to the kbuild maintainers as well.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
