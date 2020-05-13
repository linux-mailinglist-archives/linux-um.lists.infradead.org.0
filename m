Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AF41D22F6
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LJdRyURz1UfhP30GV2DQqbUhCp9AmHnmx15W/2iMh6I=; b=JvU1qJz7ZxPe5D7BNYe1CUQJE
	dJiXwLODVtliVj5VnuRURKXsRbNg17up7MdplIZspP+NgV+yod3osiWd+Q6BBMwrhc588UOhyW9xb
	iIEfcELg6oKW6W6Dp6QCSagS654YHcH1pFZoX7wznA35KKquXDu+OdclcNkZiVNTk3kSZjVyoXZ5t
	7DEuD1JWGwh1R6YKvKpefV1HcpIYjDyj6B5OOyiV3lBVQDkQO17tcp1E7F/5hiivRxJp0zqN7rnr8
	crQ2XKtQmjb4+tGRgq8vYaSdALqYWiIYErZcXjvjEx8z9zHiiRdqzlKxd8cQBSSzZ/JitKrf9iKKf
	ukAxVb7HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0jh-0008RV-GB; Wed, 13 May 2020 23:24:25 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0jf-0008R7-40
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:24:24 +0000
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jZ0jb-0000nW-H0; Thu, 14 May 2020 01:24:19 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jZ0jb-0007qv-2t; Thu, 14 May 2020 01:24:19 +0200
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <CAHk-=wiivWJ70PotzCK-j7K4Y612NJBA2d+iN6Rz-bfMxCpwjQ@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <2a03633b-419d-643f-b787-ca1520e2229b@iogearbox.net>
Date: Thu, 14 May 2020 01:24:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAHk-=wiivWJ70PotzCK-j7K4Y612NJBA2d+iN6Rz-bfMxCpwjQ@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_162423_163055_E40B42B4 
X-CRM114-Status: GOOD (  16.35  )
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
Cc: bpf@vger.kernel.org, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, bgregg@netflix.com,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/14/20 1:03 AM, Linus Torvalds wrote:
> On Wed, May 13, 2020 at 3:36 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>>
>> It's used for both.
> 
> Daniel, BPF real;ly needs to make up its mind about that.
> 
> You *cannot* use ti for both.
> 
> Yes, it happens to work on x86 and some other architectures.
> 
> But on other architectures, the exact same pointer value can be a
> kernel pointer or a user pointer.

Right, it has the same issue as with the old probe helper. I was merely stating that
there are existing users (on x86) out there that use it this way, even though broken
generally.

>> Given this is enabled on pretty much all program types, my
>> assumption would be that usage is still more often on kernel memory than user one.
> 
> You need to pick one.
> 
> If you know it is a user pointer, use strncpy_from_user() (possibly
> with disable_pagefault() aka strncpy_from_user_nofault()).
> 
> And if you know it is a kernel pointer, use strncpy_from_unsafe() (aka
> strncpy_from_kernel_nofault()).
> 
> You really can't pick the "randomly one or the other guess what I mean " option.

My preference would be to have %s, %sK, %sU for bpf_trace_printk() where the latter two
result in an explicit strncpy_from_kernel_nofault() or strncpy_from_user_nofault()
choice while the %s is converted as per your suggestion and it would still allow for a
grace period to convert existing users to the new variants, similar with what we did on
the bpf_probe_read_kernel() and bpf_probe_read_user() helpers to get this sorted out.

Thanks,
Daniel

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
