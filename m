Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE9BAD3E1
	for <lists+linux-um@lfdr.de>; Mon,  9 Sep 2019 09:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iohMj1WA9fba/7EVEg2RcVvjI6rfXjom/L3gnsqPLnU=; b=GGvRluILm4tTkM
	I4SRLJfPJgY6BPVKSV+cqXouXaaNMbz5+Q7UIIdgRzxacDvyXDBxNlQZEkcvEUzNAMYiZwo9fNQYw
	OY0R3EHHiJJyl+yPFhbUwpRIG0lwp2iOscxYTAtJg0OVuBuXQcP/BZKZpa7SO/TcMFK4ZtQQBPNGv
	6OThGLIFLORQvDISjlvQUaxMLzXWnEnAyh4jnU9haJ9U08zwq08hzF63vCbyF/uRAOBr3ADhNlU78
	s4IYBL2Uv9klDdS/KEF6RDO/FhkhBj/ZGS6Wmp8B7k+4T6lvtXIkqqAaHax6Rbu/S3Vudl+wqhWNc
	Ld+yXSpx0xDYs0YYFsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7E83-000729-Q2; Mon, 09 Sep 2019 07:30:27 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7E81-00071m-Fx
 for linux-um@lists.infradead.org; Mon, 09 Sep 2019 07:30:26 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7E80-0004UL-0E; Mon, 09 Sep 2019 09:30:24 +0200
Message-ID: <3d9298b447ca662da4475169896e767ad89b5146.camel@sipsolutions.net>
Subject: Re: [RFC] um: have real DMA barriers with virtio
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Mon, 09 Sep 2019 09:30:23 +0200
In-Reply-To: <58f4cdd7-6601-f0e1-2d0b-58b62cbc1020@kot-begemot.co.uk>
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
 <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
 <02eb6880-1e7b-1921-2057-008737ee8d48@kot-begemot.co.uk>
 <300774e43e0a755a9e57c587ece7bb44537f1d22.camel@sipsolutions.net>
 <58f4cdd7-6601-f0e1-2d0b-58b62cbc1020@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_003025_535522_6D2A9F55 
X-CRM114-Status: GOOD (  15.94  )
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

On Mon, 2019-09-09 at 08:27 +0100, Anton Ivanov wrote:

> I would like at some point to convert the "helper thread" semantics of 
> ubd, etc to look like DMA and use DMA barrier as well as have the 
> relevant DMA infrastructure.

Right, I got that part, makes sense.

> At present they work only because the IPC forces the host kernel to 
> invoke a barrier. If I remember correctly, the actual place where the 
> barrier is invoked is the IPC socket enqueue/dequeue in the host kernel.
> 
> If, for some reason the host kernel does not invoke the barrier (f.e., 
> if someone optimizes the queue operations so there is no need) they will 
> break.

Sure, also makes sense.

> IMHO adding DMA emulation will have benefits for both existing and 
> future drivers.

Well, in a sense virtio is emulating DMA. We could even just add another
virtio transport (not the vhost-user backed one we have now) and just
rely on virtio-blk, and implement just the device side like qemu already
would. I suppose it might be easy to even copy that.

But anyway - sorry for being dense, maybe it's too early morning :-) But
I still don't understand what that means for this patch...

> > That said, I did find a few other issues still, so I'll be reposting.
> > I'll also try to open /proc/self/mem as the file descriptor to pass to
> > the virtio device instead of using physmem_fd, because our .bss isn't
> > actually part of physmem_fd, and that cost me a few hours debugging
> > already ;-)
> 
> I will retest vs BESS/DPDK when it is ready.

Thanks. I'll repost in the next couple of days, want to experiment with
the /proc/self/mem first, and if that works better use it.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
