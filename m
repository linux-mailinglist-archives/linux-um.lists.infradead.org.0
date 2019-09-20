Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB2EB977E
	for <lists+linux-um@lfdr.de>; Fri, 20 Sep 2019 21:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k77L6QZh/RRmYBmtuOLLZSZU2JC+vb7Cb5kC1M/S16k=; b=TUGQ+E/RUA+1EI
	wRkx/if95LbUPjFoCwd73Br3avbFQHs3QmhiXE3VajzBqtIOMa90NQHy3h/QjecI1jEYsv+CHQQrp
	+bxitU90IZlri7yolUgCACHseGgCtscmRojHsaRl+GusdIrQc6J/kpc2KGH1ABHkBkxizR3+DX+2n
	pADXTnwvq9j1LemAPGHWLRVzZ0U36tGdD5Y+34FZ4ZBSoPNjdiby4k2Vc5NNmVdVjGsF3rh1xmSE/
	h5Yld1z6P6xKfr6iJp6pyxiAPg3te+U8ctWbD9XxKJdWarzDDIhmkeHOzOok0Ukd/3xoOrZT/lcfa
	FVCO9EN62+8kZanerqBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBO9T-00044G-2Q; Fri, 20 Sep 2019 19:01:07 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBO9Q-00043j-8z
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 19:01:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iBO9N-0004VP-Qi; Fri, 20 Sep 2019 21:01:02 +0200
Message-ID: <592db08196f0a89425f40d33324128741c2acf9f.camel@sipsolutions.net>
Subject: Re: linux-image-5.2.0-2-amd64: breaks UML all versions, both debian
 stock and compiled from source.
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Date: Fri, 20 Sep 2019 21:01:00 +0200
In-Reply-To: <dd5de310-86b8-eb66-771f-d1cbaf246da1@kot-begemot.co.uk>
References: <156897436056.2001.10040310871991691509.reportbug@sleer.kot.begemot.co.uk>
 <ded0fc52-3631-375f-e4b5-c18e93777c4f@kot-begemot.co.uk>
 <edc683fbb6596f2a35656f8951d2b7a692ca7620.camel@sipsolutions.net>
 <dd5de310-86b8-eb66-771f-d1cbaf246da1@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_120104_315688_7BCFC18B 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

[removing debbugs submit address, it doesn't understand this thread]

On Fri, 2019-09-20 at 19:57 +0100, Anton Ivanov wrote:
> On 20/09/2019 18:53, Johannes Berg wrote:
> > On Fri, 2019-09-20 at 15:48 +0100, Anton Ivanov wrote:
> > > These are the Start (that is what sbrk(0) returns) and &_end values I
> > > get for the two kernels:
> > > 
> > > Linux 4.19 on host - Start 1645867008 end 1631412224 diff 14454784
> > > 
> > > Linux 5.2 on host - Start 93825006145536 end 1631412224 diff 93823374733312
> > Does this need some specific configuration for 5.2? I have a system
> > running 5.2.8 (compiled a relatively simple kernel for my usage there -
> > it's a VM), and it can run my UML linux binary just fine.

> That is starting to narrow it down to something in the debian 5.2 config :)

Not sure if it's purely the kernel config. I am running debian on that
machine, but it's some bastardized thing I suspect ...

> > Or perhaps there's some interaction with some other userspace too?
> 
> It definitely occurs on a debian system with current stable (buster) 
> userspace and the kernel from testing which 5.2 with patches.
> 
> It definitely does not occur on a buster system with a buster stock 
> kernel which is 4.19 or anything prior to that. Tested on same hardware 
> and a couple of similar ones I have around.

OK.

> I got as far as narrowing down the differences between the two cases to 
> __binary_start which is derived from START in the source.
> 
> I have not really looked at where to go from that point.

Could you put a breakpoint or a sleep or something in there and capture
/proc/<pid>/maps before it gives up? I'd be interested in the difference
(but have good cases enough here).

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
