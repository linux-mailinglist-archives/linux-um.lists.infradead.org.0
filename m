Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6BC1D221E
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 00:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PNjqyMtzP8Bp6XQ43dwKiWsqqE4Y5ZguV5Ivu7EyN/w=; b=TLklKPKevFNMeu+6z4yvJRVRV
	Y6oW2O56DiqdWUigWshM+eOGQ+XRUe7sagt8olJpfc8CDlKoDQ/AhsNzLu5oeFG+h049TXMuEpj+/
	DPKQkZM8wldq2JO14cmisRA7UcltBsoSy33cfdeCA7k+b7ZVhiMNhKquZvLvx778BSXjxHmtqGnGJ
	UMkUjKslkM9EecrteR60pXu0hRxmeoUyG12Hj7gGYFOKpxOZqS5VoDfq3JVwXe+j/ZWg4eGvvZRZn
	6tbpAd68/QQbRh+2Z1tPfgz5I2get6RgFXgQ1WfPf4v/iNfiuliWrH8WUFJHnaR+N4QnE04TU4oQK
	DwHvNCvKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzzY-0005En-3a; Wed, 13 May 2020 22:36:44 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzzV-0005DD-Ip
 for linux-um@lists.infradead.org; Wed, 13 May 2020 22:36:43 +0000
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jYzzJ-0003yk-NJ; Thu, 14 May 2020 00:36:29 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jYzzJ-000Svu-Af; Thu, 14 May 2020 00:36:29 +0200
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Christoph Hellwig <hch@lst.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
Date: Thu, 14 May 2020 00:36:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200513192804.GA30751@lst.de>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_153641_620150_FD086A8F 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-parisc@vger.kernel.org, Netdev <netdev@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/13/20 9:28 PM, Christoph Hellwig wrote:
> On Wed, May 13, 2020 at 12:11:27PM -0700, Linus Torvalds wrote:
>> On Wed, May 13, 2020 at 9:01 AM Christoph Hellwig <hch@lst.de> wrote:
>>>
>>> +static void bpf_strncpy(char *buf, long unsafe_addr)
>>> +{
>>> +       buf[0] = 0;
>>> +       if (strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
>>> +                       BPF_STRNCPY_LEN))
>>> +               strncpy_from_user_nofault(buf, (void __user *)unsafe_addr,
>>> +                               BPF_STRNCPY_LEN);
>>> +}
>>
>> This seems buggy when I look at it.
>>
>> It seems to think that strncpy_from_kernel_nofault() returns an error code.
>>
>> Not so, unless I missed where you changed the rules.
> 
> I didn't change the rules, so yes, this is wrong.
> 
>> Also, I do wonder if we shouldn't gate this on TASK_SIZE, and do the
>> user trial first. On architectures where this thing is valid in the
>> first place (ie kernel and user addresses are separate), the test for
>> address size would allow us to avoid a pointless fault due to an
>> invalid kernel access to user space.
>>
>> So I think this function should look something like
>>
>>    static void bpf_strncpy(char *buf, long unsafe_addr)
>>    {
>>            /* Try user address */
>>            if (unsafe_addr < TASK_SIZE) {
>>                    void __user *ptr = (void __user *)unsafe_addr;
>>                    if (strncpy_from_user_nofault(buf, ptr, BPF_STRNCPY_LEN) >= 0)
>>                            return;
>>            }
>>
>>            /* .. fall back on trying kernel access */
>>            buf[0] = 0;
>>            strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
>> BPF_STRNCPY_LEN);
>>    }
>>
>> or similar. No?
> 
> So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
> try the user copy first, which seems odd.
> 
> I'd really like to here from the bpf folks what the expected use case
> is here, and if the typical argument is kernel or user memory.

It's used for both. Given this is enabled on pretty much all program types, my
assumption would be that usage is still more often on kernel memory than user one.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
