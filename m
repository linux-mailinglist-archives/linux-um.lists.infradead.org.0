Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638DF15D39A
	for <lists+linux-um@lfdr.de>; Fri, 14 Feb 2020 09:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ghhlSB1z09JNLl5OMf5oZN2QJ+9/SUN9NWUuNCK2Y4=; b=tdWTMKecdNLCbS
	OgeTFQqtM/n3utNO0jYIZO0Cd8iDuOmPBpORyjMu5I0Qr+PCLUlXjyT1+xAVHX3bHG92R1/+Z889y
	BLqtG3JsXvq/mV3FPWjJQAyAh6yO5lQk4CURG6jg1TAsoioCSMMJLBO7RgWdeQ23kI2PVl5tCf5RM
	53aIx+VqIic2H/WJMCeDyBv4Ca28WsR+MEp6nM5saJ8dzgsGPDcVFXzlXyMoPvmPpr8Gb2Z55+DS3
	a0AF0Q+vcl47/CtY2UF4GupQPC+9GDocpLQEXH9ogBId9vkVUEI0/aKAexCyZEgrRQW5qyzahsDM+
	WRV8vyA+Z1UWMrqRMsAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2W73-0003nh-B0; Fri, 14 Feb 2020 08:14:13 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2W71-0003n9-6j
 for linux-um@lists.infradead.org; Fri, 14 Feb 2020 08:14:12 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2W6z-00B6hP-KL; Fri, 14 Feb 2020 09:14:09 +0100
Message-ID: <556e374dd2c4c60b72e21238dd15bd22dedbb38e.camel@sipsolutions.net>
Subject: Re: [PATCH 4/6] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>
Date: Fri, 14 Feb 2020 09:14:08 +0100
In-Reply-To: <m2d0ahwx3q.wl-thehajime@gmail.com>
 (sfid-20200214_063447_318164_2EDFCE53)
References: <20200213132651.20506-1-johannes@sipsolutions.net>
 <20200213132651.20506-5-johannes@sipsolutions.net>
 <m2h7zuwpao.wl-thehajime@gmail.com>
 <e3073fbe7298451467a3a484efad90611df19c9e.camel@sipsolutions.net>
 <m2d0ahwx3q.wl-thehajime@gmail.com> (sfid-20200214_063447_318164_2EDFCE53)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_001411_244611_B346BFD5 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> > On this tool, conceptually, the code is very simple, just keep a sorted
> > "next event" list, and tell the next one that it's their turn.
> 
> I can imagine how it looks like, as I was doing a similar integration
> with kernel code and ns-3 network simulator (which isn't LKL).
> 
> This is just my 2 cents (and may be out of topic for the patch
> review); it would be nice to have an example code of this external
> program.  Since the program is independent from arch/um, this is a
> great opportunity to extend in future.

Right.

> One might wish to implement his/her own scheduler for particular
> purpose; for instance, a randomized error injection into time progress
> to exercise or fuzzing the Linux implementation, or alternate external
> program that can handle multiple UML instances across different nodes
> (it this already possible?).

It's all unix domain sockets now, so no network transparency. Wouldn't
really be hard to make it speak the same protocol over a TCP socket
though, but for UML it seemed a bit beside the point.

> In such case, having a reference implementation would be helpful.

Agree, I'm trying to see how I can get something released.

Perhaps it could be acceptable in the kernel itself, under the tools
folder?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
