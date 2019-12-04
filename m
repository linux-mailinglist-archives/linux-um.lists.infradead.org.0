Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3345112C51
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 14:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUUx9KPDt6dMLpSywC1OW/w3i2K9hdzNFpaReVX9PXo=; b=hHC2InJimWSydP
	EBYYWwVWQnMZgXLEhNKpJ7kv04WWC/wXkhGabS20sbCDH500GSYPmnwpbNHD23ndQ0xMs2o+ni7HF
	cBz1z9BOEFmGEhr1F4p1CPIdjuian9CTRcZHjDilyJJm1w1Kw1KbU8zonQ+/H5DOzNg8EHutnnqs2
	g+Sy/cSNa4zxQdxVqKCTqYpwL6AzikeQ7Oo1wun54YX9W/wha07YfJSkHyDG5zB7rPmKLXgFxLu9T
	tawaCa+NjXpESth1r+cNEOlmq9HkQw4oLEAkI9hnl69SyaF/4BnfjDLANeLS6IBY4A89+v2bRR4eH
	a8nT6egkvhZKTMwTW74Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUPA-0007GH-FH; Wed, 04 Dec 2019 13:09:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUP7-0007Fr-St
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 13:09:19 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1icUP4-000bce-Ny; Wed, 04 Dec 2019 14:09:14 +0100
Message-ID: <165e919acc8e705bca62df62ca8daa5c9b5c447a.camel@sipsolutions.net>
Subject: Re: I get 5.4 fail to start
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Date: Wed, 04 Dec 2019 14:09:11 +0100
In-Reply-To: <5aa2eb4fc9721dbd8a1ceaf8fc6710b666128f25.camel@sipsolutions.net>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
 <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
 <86abb3cc-1557-b5de-9c35-fdc67855030c@cambridgegreys.com>
 <6aaec3f72344246f10b0fb65a08efae5d258be9a.camel@sipsolutions.net>
 <0bb1c370-8a63-a2e8-afd6-6e95acf9efb2@cambridgegreys.com>
 <5aa2eb4fc9721dbd8a1ceaf8fc6710b666128f25.camel@sipsolutions.net>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050917_934195_100FE059 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-12-04 at 14:00 +0100, Johannes Berg wrote:
> > > Oops. Try to revert it? We don't _really_ need it right now. It did work
> > > on my system, but there's a good chance that there's something gcc/libc
> > > dependent in there.
> > 
> > It tests out fine if I revert it.
> > 
> > I still do not understand how and why it managed to produce this weird 
> > effect with ptrace though.
> 
> I agree that's odd, but since we don't need it, let's revert it anyway
> for now? I won't really have time to investigate it much right now.

Hm. Maybe the __initcall instances in os-Linux should be earlier, and
that mixes up something?

I guess we could try to place the os-Linux/ initcalls into the
.init_call section after all, vs. having the kernel execute those.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
