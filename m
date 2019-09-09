Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A78AD33A
	for <lists+linux-um@lfdr.de>; Mon,  9 Sep 2019 08:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY/vXrzRP4Svsmmf3X8Ep7YiB1xFWq9+AJ1uW38jRnQ=; b=TBskgZYtGxHCbK
	FldUMAfe8mx1gSrUjhtSUXGs1tXs38FNT2Bjfnw1bNBRE7HrQ6xoh5rLtVN2kh0Yfvd3R3yDFSxX6
	TPORw21x18SLq2tDmdOZF8lj52IUz/PApDNWl5US6XJbzVq07KUgqZsgHdn3vRmgERk84TO2OODS2
	IF8uuP5DWn+GS9PR+80ANfiTfnMHcr1CH4/qLODJ0kfnw0ax5ZSnx+Z5MVTD6bodUfq83Jz+cq/ld
	GXRT9RfXrsEpr716ro7PgxOWGS4n1KV2/1ckr0BaCGGR4GKW9RzNJGy1KOzsgmiCxi9I+aypZcF63
	+JH9LzdDvC5RTc/aDGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7DUO-0008M1-Qs; Mon, 09 Sep 2019 06:49:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7DUK-0008Lb-O5
 for linux-um@lists.infradead.org; Mon, 09 Sep 2019 06:49:26 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7DUF-0003Mf-0Z; Mon, 09 Sep 2019 08:49:19 +0200
Message-ID: <300774e43e0a755a9e57c587ece7bb44537f1d22.camel@sipsolutions.net>
Subject: Re: [RFC] um: have real DMA barriers with virtio
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Mon, 09 Sep 2019 08:49:18 +0200
In-Reply-To: <02eb6880-1e7b-1921-2057-008737ee8d48@kot-begemot.co.uk>
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
 <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
 <02eb6880-1e7b-1921-2057-008737ee8d48@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_234924_846027_51E44DF3 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, 2019-09-08 at 21:23 +0100, Anton Ivanov wrote:
> On 07/09/2019 20:32, Johannes Berg wrote:
> > On Sat, 2019-09-07 at 00:02 +0200, Johannes Berg wrote:
> > > Make the override to compiler barriers depend on !virtio.
> > 
> >   
> > > +#if !IS_ENABLED(CONFIG_VIRTIO_UML)
> > > +/*
> > > + * We can afford to just have compiler barriers here - unless
> > > + * virtio is enabled, because then we communicate with another
> > > + * process and (despite being UP internally) cannot assume we
> > > + * run on a UP system.
> > > + */
> > >   #define dma_rmb()	barrier()
> > >   #define dma_wmb()	barrier()
> > > +#endif
> > 
> > I suppose the [RFC] question is: should we even keep this at all? It
> > seems to me that we'd only encounter dma_rmb()/dma_wmb() in a driver
> > that's for some kind of DMA device, which is only possible with virtio,
> > so there's no gain in overriding them to just barrier() since the non-
> > driver part of the kernel will never use them?
> 
> Disk IO at present is for all practical purposes DMA and is abusing 
> artefacts from the IPC to work.

Hmm, good point.

> The IO itself happens in another thread which may be on a different CPU. 
> It does not use any barriers or anything to ensure that the buffered 
> data is synchronized and relies on the fact that the IPC which uses a 
> socketpair somewhere in the guts of the kernel will invoke a barrier 
> while pushing the data along.

Makes sense. However, the UBD code still doesn't contain any DMA
barriers, so what I said above still holds true I think - just removing
the dma_rmb/dma_wmb definitions shouldn't really affect much if
anything.

Not sure I understand you correctly, but I guess you're saying we should
remove the definitions in all cases, so we can use the DMA barriers
properly even in the non-virtio case?

> While at it - the WARN_ in the virtio driver should really become more 
> informative so it is clear who and what caused them.

I replaced most of them with just error logging, since the call stacks
weren't really useful anyway. There are now two left, but those are
internal (to UML) calculation issues, so not something that'd trigger in
a device-dependent way.

That said, I did find a few other issues still, so I'll be reposting.
I'll also try to open /proc/self/mem as the file descriptor to pass to
the virtio device instead of using physmem_fd, because our .bss isn't
actually part of physmem_fd, and that cost me a few hours debugging
already ;-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
