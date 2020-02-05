Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446AE152868
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 10:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylgd9Es4s08fTKEex7sB/xJI0aJlpiuHe/POHXtr+30=; b=TxTZEl6V35UjQg
	Y23Qw6MX4Srvrp7j7+e4dETS6W2R8vsstKsCHMImo3jOzN730wcd/5Rb6GAtx0fg8Mpaa2d9pF/ZS
	me4lUQ7Y6AlL05gldNslvTsTHQGTCGxB4/gcDH83Syje2p2g5NwpgRLX44nz0Uue78NCs2IDqYWnU
	KBEWCdam8Plauna95KEqMKb9Elw0fCHIZMOiqj4RRhErtZ9QANKD20uCWY8JVpdgDS+ttDqencD4Q
	IFGF+upU4d289J4nlJA6+4m5saygHMOiLeie92pKAvALlJ1gAOFMhpYi4ckY/tuL9H6aUGXTcwdho
	bRjlESqmVdPMAO+AvD7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH5G-0003aw-Gh; Wed, 05 Feb 2020 09:34:58 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH5F-0003ae-28; Wed, 05 Feb 2020 09:34:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DA97E3011C6;
 Wed,  5 Feb 2020 10:33:08 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BAAC42B76A662; Wed,  5 Feb 2020 10:34:54 +0100 (CET)
Date: Wed, 5 Feb 2020 10:34:54 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Hajime Tazaki <thehajime@gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
Message-ID: <20200205093454.GG14879@hirez.programming.kicks-ass.net>
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, linux-kernel-library@freelists.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 04:30:10PM +0900, Hajime Tazaki wrote:
> From: Octavian Purdila <tavi.purdila@gmail.com>
> 
> With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
> are not compiled due to type conflict of atomic64_t defined in
> linux/type.h.
> 
> This commit fixes the issue and allow using generic atomic64 ops.
> 
> Currently, LKL is only the user which defines GENERIC_ATOMIC64
> (lib/atomic64.c) under CONFIG_64BIT environment.  Thus, there is no
> issues before this commit.

Uhhhhh, no.

Not allowing GENERIC_ATOMIC64 on 64BIT is a *feature*.

Any 64bit arch that needs GENERIC_ATOMIC64 is an utter piece of crap.

Please explain more.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
