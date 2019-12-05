Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8D8113E5C
	for <lists+linux-um@lfdr.de>; Thu,  5 Dec 2019 10:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8GWBBwNEfjNFLTXu+rqC/1xsA5lAPYfL3XMfcAzkFnI=; b=HE5XkM5QydICgSe4//S/chcM0
	6mlObW4EVvDeEMrO51c/QfDmdoduZ0ADcjQ9SjvzwnkXYH32t9xkj2l4wUoGO57iy0x8JVOWQ+xep
	XT6Li50NiF7HekL90vOryDpIg5+YeQy9wFspMVFIImNmH4XY/JzFC/RlmoQZof5kuhOwGixZy6ADI
	+hJ6cw9qMf+K0/YoD4XmIkYxMZLvVxILW616ZWvYzeNtIbhNe5n1uNkAS6vlGJLnJQB1A2dfswhLK
	2sr+3ksQ4g/0p3vFfndQLEIT0szg8+7mCHqL64EfhpIs72FEZ6TOo2Nnf19GYiU8KDiWMKbtxrH2g
	My+1yvHXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icne0-0005oQ-Oz; Thu, 05 Dec 2019 09:41:56 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icndy-0005no-8N
 for linux-um@lists.infradead.org; Thu, 05 Dec 2019 09:41:55 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icndv-0003js-Ez; Thu, 05 Dec 2019 09:41:51 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icndt-0006il-7M; Thu, 05 Dec 2019 09:41:51 +0000
Subject: Re: 64 bit time regression in recvmmsg()
To: Arnd Bergmann <arnd@arndb.de>
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
 <CAK8P3a2A13pfvRRvpamx1woUz0CZTR3gvt_P1-ERqH+QtRATig@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <549efee7-2cb4-79b4-7f7f-a3fa493c4e85@cambridgegreys.com>
Date: Thu, 5 Dec 2019 09:41:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2A13pfvRRvpamx1woUz0CZTR3gvt_P1-ERqH+QtRATig@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_014154_298415_28229493 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 04/12/2019 21:08, Arnd Bergmann wrote:
> On Fri, Nov 29, 2019 at 5:34 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
>>
>>
>>
>> On 29/11/2019 15:17, Arnd Bergmann wrote:
>>> On Fri, Nov 29, 2019 at 4:05 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>>>> On Fri, Nov 29, 2019 at 3:34 PM Anton Ivanov
>>>> <anton.ivanov@cambridgegreys.com> wrote:
>>>>> Unfortunately, it looks like the recent year 2038 have broken
>>>>> compatibility for one particular syscall interface we use - recvmmsg.
>>>>>
>>>>> The host now occasionally returns -22 (EINVAL) and the only way I see
>>>>> for this to happen looking at the source is if when it gets something
>>>>> bogus as a timeout.
>>>>>
>>>>> I think I have eliminated all other possible sources for this error.
>>>>>
>>>>> The picture can be observed when using a 64 bit host 5.2 kernel on a
>>>>> Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).
>>>>>
>>>>> The code as it is written at present retries and by sheer luck and
>>>>> perseverance it manages to work, but this needs to be fixed.
>>>
>>> I only see a single call to recvmmsg() in arch/um, in uml_vector_recvmmsg(),
>>> and this passes a NULL timeout pointer, is this the one that broke or
>>> should I be looking at something else?
>>>
>>> Do I understand you right that the regression is on a pure 64-bit system?
>>
>> Yes.
>>
>> 64 bit host, Debian Buster with the stock 4.19 replaced by a 5.2.17
>> kernel upgrade, 5.2 and 5.3 64 bit UML also running Debian Buster inside.
>>
>> It sporadically produces -EINVAL (-22) from the recvmmsg.
>>
>> I went through the allocation and deallocation of the actual mmsg
>> several times to ensure it is not that.
>>
>> IMHO it is the timespec conversion somewhere, but I cannot pinpoint the
>> actual cause.
>>
> 
> I've looked at the changes again as well now without finding anything
> suspicious. The only commit of mine that significantly changes recvmmsg
> is e11d4284e2f4 ("y2038: socket: Add compat_sys_recvmmsg_time64").
> I tried reverting it on top of  5.2.17, but that causes a lot of conflicts.
> 
> The best suggestion I still have would be to check out the kernel before
> and after this commit, to see if it is the root cause. This one was part
> of the linux-5.0 merge window, so right in the middle of the range
> you have identified.
> 
>       Arnd
> 


I am still chasing this - there is some host regression in play too.

Once I have a better understanding on what is going on I will post more 
info.

Brgds,


-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
