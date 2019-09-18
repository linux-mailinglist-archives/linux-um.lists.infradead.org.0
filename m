Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6FAB5F20
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 10:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujQaYot7eoyPBXJVc/1IWjscbWMOpjwc1cl1O/nulGc=; b=n7bKBaLoW80tJ+
	bV0pbAtK1XD43GgCQj6sIEJ1lsSzoBStGceDvSeUOjvoJzfWNOsy9t5Yf9TOgyNNGG1rqER9zn2NB
	ppEH91Rdm53x6RbuiI756jkgbWniA6FPsGEYoaefpnnwcrlnowjM4mHBqIxOVRq3N4akDjIoiOgBk
	gawKFP//PN5ryVvwuH8knjjSTDoWjQG/OSPlJZA0g4iA9kOa5Vjmv+iq4lGhqE3f2wIL6hI5K68U9
	yYVpb7NCOZxAzojVZLgEqin329mRN+/skMglD9fAk0blb8D53bfa9RBoIBWapuIGF7M6fgG+r1Pjw
	XNUEO/QSsE5bfpIH2SYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVHl-0005Pz-B5; Wed, 18 Sep 2019 08:26:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVHM-00050w-Lm
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 08:25:38 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iAVHK-0005er-5V; Wed, 18 Sep 2019 10:25:34 +0200
Message-ID: <06bdd645f5f9832ec37e6e50e12602fa6661cca9.camel@sipsolutions.net>
Subject: Re: CONFIG_COMPAT for UM?
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Wed, 18 Sep 2019 10:25:33 +0200
In-Reply-To: <bd6edd3b-f0e3-c3e8-1b2a-e1395dcaf6aa@kot-begemot.co.uk>
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
 <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
 <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
 <bd6edd3b-f0e3-c3e8-1b2a-e1395dcaf6aa@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012536_734889_04101B21 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> > Yeah, I guess I could run as a 32-bit instance, but I'd rather actually
> > use a 64-bit instance. 
> 
> Not if you want to run many of them.

Probably not more than a dozen I guess?

> The 3-level page tables in 64 bit spin up a whole raft threads making it 
> unfeasible. Compared to that the 32 bit uses 5 threads in total per 
> instance.

I'm probably missing something, how are threads related to page tables?

I can see how that would use more memory, but where do threads come in?

> I have tried a couple of times to figure out a way to make the 64 bit 
> drop down to two-level for small instances like f.e running OpenWRT with 
> 64 or 128MB RAM, but it does not work.
> 
> To be honest, I was not trying very hard :)

:)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
