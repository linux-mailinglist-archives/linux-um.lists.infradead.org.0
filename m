Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDC81D2C0D
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 12:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QDXz+BIfSDPUO7HV+gZ0A4uyySKaCaBwU4tsgR4riU=; b=LSex41oNNgqOEN
	Dfhlh/2eeRZQ1AcNwKay3lg5e9ZJ1+P2q097G1sJ8Z7tgaHcDuY6s9IIibRJ2VRgJ9ciVGoVp5bvN
	wFfFs0gLAfpYwN3kUcH+n/5dQEP9v7gTiv+czYFBdfKciAqh3TCBEWaiqr/nfFnH0kMDcCoFnh4nm
	X13LPFk4BeS/gw7m0SIO8mSQiURSZ2KdjPP4wV8s9PRUuN+H9P8PqoIM3GLziGCR59d+WQSq8jjbZ
	e8j550WpqPXMnZcvzkEOO3f4L2VL8hUi4AC4icJdVbVPj+XeAghEztocvM81hJGXDG8R9Zh9bo+0H
	91WNlUdlbGB9+QQWY6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAge-0007PM-3i; Thu, 14 May 2020 10:01:56 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAgb-0007O0-Di
 for linux-um@lists.infradead.org; Thu, 14 May 2020 10:01:55 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-179-I2TpioJnO02MgCgI8UoE-Q-1; Thu, 14 May 2020 11:01:46 +0100
X-MC-Unique: I2TpioJnO02MgCgI8UoE-Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 14 May 2020 11:01:45 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 14 May 2020 11:01:45 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Daniel Borkmann' <daniel@iogearbox.net>, Al Viro <viro@zeniv.linux.org.uk>
Subject: RE: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Thread-Topic: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Thread-Index: AQHWKYLaQq1MCiy4bEiOMK61mlvZyainWQNA
Date: Thu, 14 May 2020 10:01:45 +0000
Message-ID: <6ca8d8499bf644aba0b242d194df5a60@AcuMS.aculab.com>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200513232816.GZ23230@ZenIV.linux.org.uk>
 <866cbe54-a027-04eb-65db-c6423d16b924@iogearbox.net>
In-Reply-To: <866cbe54-a027-04eb-65db-c6423d16b924@iogearbox.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_030153_747202_829D1828 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "bgregg@netflix.com" <bgregg@netflix.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Daniel Borkmann
> Sent: 14 May 2020 00:59
> On 5/14/20 1:28 AM, Al Viro wrote:
> > On Thu, May 14, 2020 at 12:36:28AM +0200, Daniel Borkmann wrote:
> >
> >>> So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
> >>> try the user copy first, which seems odd.
> >>>
> >>> I'd really like to here from the bpf folks what the expected use case
> >>> is here, and if the typical argument is kernel or user memory.
> >>
> >> It's used for both. Given this is enabled on pretty much all program types, my
> >> assumption would be that usage is still more often on kernel memory than user one.
> >
> > Then it needs an argument telling it which one to use.  Look at sparc64.
> > Or s390.  Or parisc.  Et sodding cetera.
> >
> > The underlying model is that the kernel lives in a separate address space.
> > Yes, on x86 it's actually sharing the page tables with userland, but that's
> > not universal.  The same address can be both a valid userland one _and_
> > a valid kernel one.  You need to tell which one do you want.
> 
> Yes, see also 6ae08ae3dea2 ("bpf: Add probe_read_{user, kernel} and probe_read_{user,
> kernel}_str helpers"), and my other reply wrt bpf_trace_printk() on how to address
> this. All I'm trying to say is that both bpf_probe_read() and bpf_trace_printk() do
> exist in this form since early [e]bpf days for ~5yrs now and while broken on non-x86
> there are a lot of users on x86 for this in the wild, so they need to have a chance
> to migrate over to the new facilities before they are fully removed.

If it's not a stupid question why is a BPF program allowed to get
into a situation where it might have an invalid kernel address.

It all stinks of a hole that allows all of kernel memory to be read
and copied to userspace.

Now you might want to something special so that BPF programs just
abort on OOPS instead of possibly paniking the kernel.
But that is different from a copy that expects to be passed garbage.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
