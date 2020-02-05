Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEEA15310C
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 13:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQX9FbPrCNTq8vLQGdUQota3BTvh7kHbyERyGblt1Co=; b=VsZOI9+TGypUle
	bdvtzr7/fhdLv/DGu7FZVj4ckYIJgJrZOKXQ6WePFQLtxPtD3Ujd/EgkBDH11lM8YUKyWe3MDiUZm
	ek9vOjhWl9josl8IZbEghN1AELV9tH08vscWClEIU4uHVHu5ufeu/LuMs9Qh7z/QDug5jcC0CIPp8
	3f0/+Twj+t6WUKbCHYCfnw2sjFiIcNTTpksuUXfW0hBQipDjCPKamWPVCuS0QzMTg/Itm7L0bvzlf
	1iu1FptkZJWVXJkd0bypui2OkXqm0rfClAZHd+bw1NjX5S8do09c7Wq86l2swOcxONc6qm6rDaA/O
	rY/I06ihAAyPOi/K3llg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izK7E-00028c-KP; Wed, 05 Feb 2020 12:49:12 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izK7C-00027O-4s; Wed, 05 Feb 2020 12:49:10 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5F9513011C6;
 Wed,  5 Feb 2020 13:47:22 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1D9032B77760E; Wed,  5 Feb 2020 13:49:08 +0100 (CET)
Date: Wed, 5 Feb 2020 13:49:08 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Octavian Purdila <tavi.purdila@gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
Message-ID: <20200205124908.GL14879@hirez.programming.kicks-ass.net>
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
 <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
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

On Wed, Feb 05, 2020 at 02:24:38PM +0200, Octavian Purdila wrote:
> I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I

It might not have been, but presented with this patch, I feel like it
should've been :-)

> understand your point that a 64 bit architecture that can't handle 64
> bit atomic operation is broken.

(sadly they actually exist, I shall name no names)

> One way to deal with this in LKL would be to use GCC atomic builtins
> or if that doesn't work expose them as host operations. This would
> keep LKL as a meta-arch that can run on multiple physical
> architectures. I'll give it a try.

What is this LKL you speak of and how does it do the 32bit atomics?

One thing to keep in mind is that the C11 atomics (_Atomic) don't
trivially map to the LKMM -- although I keep forgetting the exact
details, there is a paper on it somewhere.  Also, once you're limited to
a specific arch the issue also becomes much easier than C11 vs LKMM in
general.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
