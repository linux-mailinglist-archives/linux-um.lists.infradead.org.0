Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D911976CF
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 10:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHImMVLYeNlSJLVbCI5rpuZMHasg7RfjDakM0treAXk=; b=L7uelleADT1Q6d
	VJrug+CybOKf1Hl6SNPdNRCCvlO3q6RtEuOG5sapIeP/Gf8el9bjLfMiOGdywqEcR5bIJdp3hdGxz
	hydukgcAzgXLuSxJxoFcYRc3epVEZIoxPJLKlS6bkExk3Xc3YdXW+rVbP4NrlANyRJ7TfIqMo+dHj
	BFlqOlV0qnpMCwKsU5wP2YR9LG4E9mWgcnHAPAzIfsB7uyKDiULytsJeDKQUnB4AhdRSQ/zm4l7i5
	DSeN6GdmbNJgLe9DrCo28H0ISyINmDjaFQLaFYpAA8dY0XjF+IScO1xb/66/iWluMaBsT160oJ7eX
	HOjqSZgtnMtTaw2TUJeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpza-0006Ai-Ts; Mon, 30 Mar 2020 08:41:58 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpzX-00067q-Is
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 08:41:56 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jIpzM-005Qx3-IU; Mon, 30 Mar 2020 10:41:44 +0200
Message-ID: <a51643dbff58e16cc91f33273dbc95dded57d3e6.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 30 Mar 2020 10:41:43 +0200
In-Reply-To: <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
 (sfid-20200330_103904_296794_2F7C15A1)
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
 <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
 (sfid-20200330_103904_296794_2F7C15A1)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_014155_637525_41559CC8 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2020-03-30 at 10:38 +0200, Dmitry Vyukov wrote:
> On Mon, Mar 30, 2020 at 9:44 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > On Fri, 2020-03-20 at 16:18 +0100, Dmitry Vyukov wrote:
> > > > Wait ... Now you say 0x7fbfffc000, but that is almost fine? I think you
> > > > confused the values - because I see, on userspace, the following:
> > > 
> > > Oh, sorry, I copy-pasted wrong number. I meant 0x7fff8000.
> > 
> > Right, ok.
> > 
> > > Then I would expect 0x1000 0000 0000 to work, but you say it doesn't...
> > 
> > So it just occurred to me - as I was mentioning this whole thing to
> > Richard - that there's probably somewhere some check about whether some
> > space is userspace or not.
> > 
> > I'm beginning to think that we shouldn't just map this outside of the
> > kernel memory system, but properly treat it as part of the memory that's
> > inside. And also use KASAN_VMALLOC.
> > 
> > We can probably still have it at 0x7fff8000, just need to make sure we
> > actually map it? I tried with vm_area_add_early() but it didn't really
> > work once you have vmalloc() stuff...
> 
> But we do mmap it, no? See kasan_init() -> kasan_map_memory() -> mmap.

Of course. But I meant inside the UML PTE system. We end up *unmapping*
it when loading modules, because it overlaps vmalloc space, and then we
vfree() something again, and unmap it ... because of the overlap.

And if it's *not* in the vmalloc area, then the kernel doesn't consider
it valid, and we seem to often just fault when trying to determine
whether it's valid kernel memory or not ... Though I'm not really sure I
understand the failure part of this case well yet.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
