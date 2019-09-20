Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A5CB96D0
	for <lists+linux-um@lfdr.de>; Fri, 20 Sep 2019 19:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZlR7IZxtFXCra5U9WupWWzjSAHFIGSLZmuFnEpk8bw=; b=pnM94HfG8odgDE
	ZvKgny86QF/jUK3Vi0Rwaf+/gvLmLc/Qk/TgmShqKEClL0x5L0OEmKCJU4EVtLk7wUU7He+VL9RJs
	RrG67CHlylurqNqM+OOZDH7j25e6qu544inVkua/178Yfq4gs1hNJr1U8GPsxX2oSKzSxOjr3kjE9
	pBGOmCD5q/2zucAO4YamQ9hxnMDRTb3vyNmxKjdRqsXnaocfaB3MYee7cD6Gkrtqx73TKf2+yfGx4
	REh6lvth2JRG9j0aZ/nxeCEQo6knxSFlAADr4KbVAJKapy9izmnmEr+X0sTrqrKMXQ3I2Rmz96sKr
	plcdCAzXz3YHacGkV5kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN6e-000662-T1; Fri, 20 Sep 2019 17:54:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN6b-00064K-8w
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 17:54:08 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iBN6X-0002SA-3n; Fri, 20 Sep 2019 19:54:01 +0200
Message-ID: <edc683fbb6596f2a35656f8951d2b7a692ca7620.camel@sipsolutions.net>
Subject: Re: linux-image-5.2.0-2-amd64: breaks UML all versions, both debian
 stock and compiled from source.
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, Debian Bug Tracking
 System <submit@bugs.debian.org>
Date: Fri, 20 Sep 2019 19:53:59 +0200
In-Reply-To: <ded0fc52-3631-375f-e4b5-c18e93777c4f@kot-begemot.co.uk>
References: <156897436056.2001.10040310871991691509.reportbug@sleer.kot.begemot.co.uk>
 <ded0fc52-3631-375f-e4b5-c18e93777c4f@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105405_309297_7647CB7F 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
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

On Fri, 2019-09-20 at 15:48 +0100, Anton Ivanov wrote:
> These are the Start (that is what sbrk(0) returns) and &_end values I 
> get for the two kernels:
> 
> Linux 4.19 on host - Start 1645867008 end 1631412224 diff 14454784
> 
> Linux 5.2 on host - Start 93825006145536 end 1631412224 diff 93823374733312

Does this need some specific configuration for 5.2? I have a system
running 5.2.8 (compiled a relatively simple kernel for my usage there -
it's a VM), and it can run my UML linux binary just fine.

Or perhaps there's some interaction with some other userspace too?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
