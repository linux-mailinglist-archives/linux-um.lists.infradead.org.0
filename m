Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B3DAC918
	for <lists+linux-um@lfdr.de>; Sat,  7 Sep 2019 21:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TroQ2HjuyKLu/H9FAxKR6svZiwc3Gx8DJHjH07SkTyc=; b=gCs3Z1vZAJ0Keb
	Luq7dOqzh2+RSM7epTy8SqxbQxjXXyeQhffM19ak48JfQeWJiXQ3PvV8lnJU0GKqgNyi5jFmczK0f
	d72uy/aCTI/QBfEoZKrvWurnIcvSQxAT+PpBtblfFrSbEWI4xTPTSzU+tLaCLgEK2s59aqbubLWwK
	Mk7saLlOityQXkCaSNytvEgZrGwIHOeYWv9hY5a8sSQKpokRKqBzOhEExkGranaM5m9G4FXJZQfIh
	bsWYI7FNuV1UDT7Eo6axIiuVCaMxvv4aeJMlzxXaPn32bpWVL0KpGcTq+RFgKIAMHg3FYg5uwerAx
	vnajQxXTbNvOyEnDuCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6gla-0006hC-Ld; Sat, 07 Sep 2019 19:53:02 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6glY-0006gm-16
 for linux-um@lists.infradead.org; Sat, 07 Sep 2019 19:53:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i6glW-0006pY-Jm
 for linux-um@lists.infradead.org; Sat, 07 Sep 2019 21:52:58 +0200
Message-ID: <587661cfed3ba3a64ba1a6efd3cebed0378f7e76.camel@sipsolutions.net>
Subject: Re: [RFC] um: have real DMA barriers with virtio
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Sat, 07 Sep 2019 21:52:57 +0200
In-Reply-To: <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
 <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_125300_074365_8EAC8879 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, 2019-09-07 at 21:32 +0200, Johannes Berg wrote:
> On Sat, 2019-09-07 at 00:02 +0200, Johannes Berg wrote:
> > Make the override to compiler barriers depend on !virtio.
> 
>  
> > +#if !IS_ENABLED(CONFIG_VIRTIO_UML)
> > +/*
> > + * We can afford to just have compiler barriers here - unless
> > + * virtio is enabled, because then we communicate with another
> > + * process and (despite being UP internally) cannot assume we
> > + * run on a UP system.
> > + */
> >  #define dma_rmb()	barrier()
> >  #define dma_wmb()	barrier()
> > +#endif
> 
> I suppose the [RFC] question is: should we even keep this at all? It
> seems to me that we'd only encounter dma_rmb()/dma_wmb() in a driver
> that's for some kind of DMA device, which is only possible with virtio,
> so there's no gain in overriding them to just barrier() since the non-
> driver part of the kernel will never use them?
> 
> IOW - is the ifdef worth it, vs. just removing it completely? I suspect
> not.

Hmm, the other option could be to just define them to virt_rmb() and
virt_wmb() which are just __smp_rmb() and __smp_wmb() respectively,
which are theoretically a bit weaker than dma_rmb()/dma_wmb() on real
platforms I think, but since we don't implement it any different the net
effect will be the same - might just result in a bit easier to
understand code in the future if we say here

/* we only do DMA to virt devices */
#define dma_rmb() virt_rmb()
#define dma_wmb() virt_wmb()

instead of leaving it out entirely, in which case it'll make the generic
code fall back to just rmb()/wmb().

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
