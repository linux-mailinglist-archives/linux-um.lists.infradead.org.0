Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473C51D2349
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eURS3p17fo+c6E3uBt9JQj/M1zy1KmSeZHUwpH0+G2c=; b=Ovgid799Q8X3PXrcQ+KD/VfeW
	qdnYn6FQZY0/kwdVqpProUGiSl1vm1hRh32yWVyvCe2VT3f7/qPlUnDDV0YGmngcfupf5pDDmborP
	zRCHYE53XoraAkTJ+82k5Q0swPljFF1/4QZR6ow7XNYcm/sbnEkgRvePllJ2KK80P+ehV5h424OY0
	gMkVSbxJes9ULxSY2J0JTuJVIqDDv/twldnHKFU3H/5S8+WIa5XcpYUWrPVSiG69WOIIvjz+n/rhk
	/y795/oUHYETdMJGi4nMq+Gx5qcjA7p+ZBiBHjIl7bySJik5p0m6wUoV0G6FW1RxSEbEpEvWzQmuy
	3wgJmctwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1Gw-0004nC-HN; Wed, 13 May 2020 23:58:46 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1Gt-0004m4-UF
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:58:45 +0000
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jZ1Gk-0002xZ-PI; Thu, 14 May 2020 01:58:34 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jZ1Gk-000O73-Al; Thu, 14 May 2020 01:58:34 +0200
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Al Viro <viro@zeniv.linux.org.uk>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200513232816.GZ23230@ZenIV.linux.org.uk>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <866cbe54-a027-04eb-65db-c6423d16b924@iogearbox.net>
Date: Thu, 14 May 2020 01:58:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200513232816.GZ23230@ZenIV.linux.org.uk>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_165843_973476_AFC1656E 
X-CRM114-Status: GOOD (  14.44  )
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
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/14/20 1:28 AM, Al Viro wrote:
> On Thu, May 14, 2020 at 12:36:28AM +0200, Daniel Borkmann wrote:
> 
>>> So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
>>> try the user copy first, which seems odd.
>>>
>>> I'd really like to here from the bpf folks what the expected use case
>>> is here, and if the typical argument is kernel or user memory.
>>
>> It's used for both. Given this is enabled on pretty much all program types, my
>> assumption would be that usage is still more often on kernel memory than user one.
> 
> Then it needs an argument telling it which one to use.  Look at sparc64.
> Or s390.  Or parisc.  Et sodding cetera.
> 
> The underlying model is that the kernel lives in a separate address space.
> Yes, on x86 it's actually sharing the page tables with userland, but that's
> not universal.  The same address can be both a valid userland one _and_
> a valid kernel one.  You need to tell which one do you want.

Yes, see also 6ae08ae3dea2 ("bpf: Add probe_read_{user, kernel} and probe_read_{user,
kernel}_str helpers"), and my other reply wrt bpf_trace_printk() on how to address
this. All I'm trying to say is that both bpf_probe_read() and bpf_trace_printk() do
exist in this form since early [e]bpf days for ~5yrs now and while broken on non-x86
there are a lot of users on x86 for this in the wild, so they need to have a chance
to migrate over to the new facilities before they are fully removed.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
