Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B561D2CAA
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 12:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4OQCrvQvRl19Wbv6yd9Me7tojaC5HZFOY+m/Z17F0wM=; b=uRGqvIoqxG3RMH0KFTx5lvq0W
	K0cwnM00Vj52Q5gtEmaNUB8JO7YGCkpf8fHWybUpk20JCdR/sIplAFwx/SWQNflTQtaeUEaCQS/DV
	TnB2XqhsJtZzOUQ5dTobzUWMqKxVYO+6wGWqb5noQtmlqxIQLxKky8I2BD7M2O4riZftmTR9gIH2L
	bbn+WGg8KobuIyxPPi9Z+VEfRrpbhrPfXhWq9i7kxs+q+hgrklQRwkA52ls8eW/6mH8ESFRnFsun1
	3cUlnST5LL/C/8rNyHa5SCI3HLtY3K3zxrVBXg4X7SZydiXAaivLjA9Bdf0meXIbjAEWKBCXLmvZ8
	QitrsRxrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB5h-0008RY-VU; Thu, 14 May 2020 10:27:49 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB5f-0008R0-8q
 for linux-um@lists.infradead.org; Thu, 14 May 2020 10:27:48 +0000
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jZB5c-0007ik-1o; Thu, 14 May 2020 12:27:44 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jZB5b-000K33-L4; Thu, 14 May 2020 12:27:43 +0200
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200514082054.f817721ce196f134e6820644@kernel.org>
 <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
 <20200514100009.a8e6aa001f0ace5553c7904f@kernel.org>
 <CAHk-=wjP8ysEZnNFi_+E1ZEFGpcbAN8kbYHrCnC93TX6XX+jEQ@mail.gmail.com>
 <20200514184419.0fbf548ccf883c097d94573a@kernel.org>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <9c2f90fd-9cac-67c3-4d96-4f873c7649e7@iogearbox.net>
Date: Thu, 14 May 2020 12:27:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200514184419.0fbf548ccf883c097d94573a@kernel.org>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032747_306170_FA1F591E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
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
Cc: bpf@vger.kernel.org, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/14/20 11:44 AM, Masami Hiramatsu wrote:
> On Wed, 13 May 2020 19:43:24 -0700
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>> On Wed, May 13, 2020 at 6:00 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>>>
>>>> But we should likely at least disallow it entirely on platforms where
>>>> we really can't - or pick one hardcoded choice. On sparc, you really
>>>> _have_ to specify one or the other.
>>>
>>> OK. BTW, is there any way to detect the kernel/user space overlap on
>>> memory layout statically? If there, I can do it. (I don't like
>>> "if (CONFIG_X86)" thing....)
>>> Or, maybe we need CONFIG_ARCH_OVERLAP_ADDRESS_SPACE?
>>
>> I think it would be better to have a CONFIG variable that
>> architectures can just 'select' to show that they are ok with separate
>> kernel and user addresses.
>>
>> Because I don't think we have any way to say that right now as-is. You
>> can probably come up with hacky ways to approximate it, ie something
>> like
>>
>>      if (TASK_SIZE_MAX > PAGE_OFFSET)
>>          .... they overlap ..
>>
>> which would almost work, but..
> 
> It seems TASK_SIZE_MAX is defined only on x86 and s390, what about
> comparing STACK_TOP_MAX with PAGE_OFFSET ?
> Anyway, I agree that the best way is introducing a CONFIG.

Agree, CONFIG knob that archs can select feels cleanest. Fwiw, I've cooked
up fixes for bpf side locally here and finishing up testing, will push out
later today.

Thanks,
Daniel

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
