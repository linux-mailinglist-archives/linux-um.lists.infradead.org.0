Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CDB153608
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 18:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9vq39LLiMH1M4bIbfu0uICc7hYX9lViiF7WLmNWDaw=; b=rP1zlik7gChmY3
	Ff0C9HGmJwy95BtnLujW8OFOqPJVCrdLst/Fv2IHw/CdVLIgQu6lCVCdoPKqQWBXcqxal/wqi3Ccg
	WTbYLE0Yyis+OZvchr/sWSCEyUcudEJToP13j/6K/QDMZ4IwGbVUNUiKtyZFRsAK97zXyQGP5UeO0
	hDHbyYDmgvsgyK0K8AMw253gFO3s/4XC0d/QkQYcBgNIZJBfa5Ftt7+TS8W5appmDTYC7X1Hj2Zbu
	YjDHkAhFaIbBRpuVIm4z6HfDz6BbrZpDeM7df8/jianjUcU0lbHkEJbkHOWsuew9kZiKEgWN4aWMz
	ldcITYuC92K9v/U2wO6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOEg-0003Mn-5U; Wed, 05 Feb 2020 17:13:10 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOEe-0003MR-Lh; Wed, 05 Feb 2020 17:13:08 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A9E7430257C;
 Wed,  5 Feb 2020 18:11:20 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id ADF5F2B78D5B6; Wed,  5 Feb 2020 18:13:06 +0100 (CET)
Date: Wed, 5 Feb 2020 18:13:06 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Octavian Purdila <tavi.purdila@gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
Message-ID: <20200205171306.GP14879@hirez.programming.kicks-ass.net>
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
 <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
 <20200205124908.GL14879@hirez.programming.kicks-ass.net>
 <CAMoF9u12nko0rBGT_iOgXtapuRitS9jSMzAoo8tTykn2dZGK7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMoF9u12nko0rBGT_iOgXtapuRitS9jSMzAoo8tTykn2dZGK7g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 04:00:41PM +0200, Octavian Purdila wrote:
> On Wed, Feb 5, 2020 at 2:49 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Wed, Feb 05, 2020 at 02:24:38PM +0200, Octavian Purdila wrote:
> > > I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I
> >
> > It might not have been, but presented with this patch, I feel like it
> > should've been :-)
> >
> > > understand your point that a 64 bit architecture that can't handle 64
> > > bit atomic operation is broken.
> >
> > (sadly they actually exist, I shall name no names)
> >
> > > One way to deal with this in LKL would be to use GCC atomic builtins
> > > or if that doesn't work expose them as host operations. This would
> > > keep LKL as a meta-arch that can run on multiple physical
> > > architectures. I'll give it a try.
> >
> > What is this LKL you speak of and how does it do the 32bit atomics?
> >
> 
> LKL is a build of the Linux kernel as a library that can run in many
> environments including multiple architectures and OSes [1]

Thanks, I'll put it on the to-read list.

> For 32bit atomics LKL also uses the asm-generic implementation. It is
> very similar with generic 64bit atomic implementation and it is used
> by multiple 32bit arches. I think this was my original reasoning for
> this patch and not going with C11 atomics.

Uh no, asm-generic/atomic.h is radically different from lib/atomic64.c.

asm-generic/atomic.h builds all required atomic operations from
cmpxchg() (loops), while lib/atomic64.c builds 64bit atomics by using a
hashed set of spinlocks.

The asm-generic stuff gives you real atomic ops, albeit sub-optimal,
lib/atomic64.c gives you a turd.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
