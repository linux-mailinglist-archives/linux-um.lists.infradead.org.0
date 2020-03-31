Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8C6199F7A
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 21:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPy8qDeaLtBW8He9cXyEMtG9A2BrC4eVVfaMQDa0wMg=; b=eAPcTn2keX3pK9
	Vu/3KXleRNegAAF7iKMsjrdWztmGFAps8wC2ttI/ZioYwIych+WtibVzIMn3dTjr1dnR44HgUKHzs
	v+YfLkyLYdJn+ID0YyZl3JuXKdTS6Vwi53PLOrrsFfzOTsREoESbwQkZjO0xw4KNcCUqd/4z4otqc
	1f8kpe3S972OOaSXYa2aiduvoEgfSrIOscRvs2sM9sahPuydbc7MYdu4QS68/pZZe6Ya8470l3KtA
	TnDa7vMi+snnw8NFD7f2kZFWz+Xl7y3ZrPvr7uH8xsI/5FseJwrUU8AN3iX/OsTf6FI2LWGXY40Uz
	1obqV2gg0CSIb6QoISfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMwQ-000633-Du; Tue, 31 Mar 2020 19:52:54 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMwM-00062O-MX
 for linux-um@lists.infradead.org; Tue, 31 Mar 2020 19:52:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jJMwK-009yjq-6w; Tue, 31 Mar 2020 21:52:48 +0200
Message-ID: <3fca96c19ca1e56fa36ee0c428c95ab82883a4fd.camel@sipsolutions.net>
Subject: Re: [RFC v4 23/25] um lkl: add UML network driver for lkl
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>
Date: Tue, 31 Mar 2020 21:52:46 +0200
In-Reply-To: <m25zelxn8w.wl-thehajime@gmail.com>
 (sfid-20200331_043814_756678_0201C8CF)
References: <cover.1585579244.git.thehajime@gmail.com>
 <0f087b36ad579eeb8062b12e9e61566d9b5b18ac.1585579244.git.thehajime@gmail.com>
 <b2a730a4bcafb13cb1b29a637f8f8449cf3521d6.camel@sipsolutions.net>
 <m25zelxn8w.wl-thehajime@gmail.com> (sfid-20200331_043814_756678_0201C8CF)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_125250_736319_E51CEB3A 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: tavi.purdila@gmail.com, linux-kernel-library@freelists.org,
 retrage01@gmail.com, linux-um@lists.infradead.org, linux-arch@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2020-03-31 at 11:38 +0900, Hajime Tazaki wrote:
> Thanks for the comments, Johannes.
> 
> On Tue, 31 Mar 2020 06:31:15 +0900,
> Johannes Berg wrote:
> > 
> > > +++ b/arch/um/lkl/include/asm/irq.h
> > > @@ -2,6 +2,9 @@
> > >  #ifndef _ASM_LKL_IRQ_H
> > >  #define _ASM_LKL_IRQ_H
> > >  
> > > +/* pull UML's definitions */
> > > +#include "../../../include/asm/irq.h"
> > 
> > This is _really_ ugly.
> 
> Hmm, in previous patchset (until v3), I was using the worse approach
> (I thought) to avoid this include.
> 
> +KBUILD_CFLAGS  += -DTIMER_IRQ=0 -DUBD_IRQ=4 -DUM_ETH_IRQ=5 -DLAST_IRQ=15
> 
> And I thought the current way is better than before.

Yeah, ok, that's worse :)

But why is it even needed? It kinda seems to me that this means we're
not splitting the code well.

IMHO, if we even want to treat LKL/UML as sub-arches, then we should
still split the driver code off in a cleaner way, rather than linking
half here half there?

And maybe reorg the code... but I'll reply over in your other email
more.

> > > @@ -181,6 +196,11 @@ void init_IRQ(void)
> > >  	for (i = 0; i < NR_IRQS; i++)
> > >  		irq_set_chip_and_handler(i, &dummy_irq_chip, handle_simple_irq);
> > >  
> > > +#if defined(__linux) && (defined(__i386) || defined(__x86_64))
> > 
> > What's with all those ifdefs with this condition?
> 
> Same as above.
> but I agree that the ifdefs are cryptic; I'll try to make it more
> understandable if I use ifdefs.

I'm also generally not convinced that it's a good idea to sprinkle these
kinds of ifdefs over the place.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
