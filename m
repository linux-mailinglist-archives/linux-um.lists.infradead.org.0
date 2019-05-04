Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69B13C20
	for <lists+linux-um@lfdr.de>; Sat,  4 May 2019 22:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZyih0lZuO8QQdT2x15GtViMIfoew6Lh0z+9nwDLqO8=; b=haBztBx7AIy0nO
	YPQNXQD0EU9hAijC8582Nnj85H+Goa6MzIQU/sKdmMePH4a6X2Flewv3LC1n/OrupnKKdvxgUpEmJ
	b8BGzZZ7BxBCQljwNqyHbVMqzPFXuoSXuxWKpNci4oqXj1S+M6R4EJ09ZPWwoRMMwXs5T+QmCuHy7
	Izv7ChX65vHzht3N2qn4US1eVZX45pQWnYZ9GxXRP2mV1mv35CxUP2Nh+O4VfX6Pf3hU4DXA4Ax8z
	+yPP4b03LTklH7PMXVy5P/9SRXqs2Pw1tqARKCvQ7Tn3rVhObNLXZPI+zQwvwakcL1y1J0wPSt6Po
	wAITlv2zhDdq4RmJZnyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN1bq-00065u-2z; Sat, 04 May 2019 20:50:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN1bm-00065I-5A
 for linux-um@lists.infradead.org; Sat, 04 May 2019 20:50:12 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hN1bg-0002Fi-JZ; Sat, 04 May 2019 22:50:04 +0200
Message-ID: <9bb89d42730d87f7fe155c8ca9fc8e252ad2a135.camel@sipsolutions.net>
Subject: Re: [PATCH 3/3] arch: um: support virtual time
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
Date: Sat, 04 May 2019 22:50:01 +0200
In-Reply-To: <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
References: <20190503213249.30008-1-johannes@sipsolutions.net>
 <20190503213249.30008-3-johannes@sipsolutions.net>
 <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
 <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_135010_199284_F958E9E2 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, 2019-05-04 at 21:42 +0100, Anton Ivanov wrote:
> 
> I had a quick look at them.

Thanks.

> 1 and 2 are clear and I will most likely ack them once you have a final 
> version.

I think those two are OK now really. I think I'll put another small bit
into patch 2:

 int os_timer_one_shot(unsigned long ticks)
 {
-       struct itimerspec its;
-       unsigned long long nsec;
-       unsigned long sec;
+       unsigned long long nsec = ticks + 1;
+       struct itimerspec its = {
+               .it_value.tv_sec = nsec / UM_NSEC_PER_SEC,
+               .it_value.tv_nsec = nsec % UM_NSEC_PER_SEC,
 
-       nsec = (ticks + 1);
-       sec = nsec / UM_NSEC_PER_SEC;
-       nsec = nsec % UM_NSEC_PER_SEC;
-
-       its.it_value.tv_sec = nsec / UM_NSEC_PER_SEC;
-       its.it_value.tv_nsec = nsec;
-
-       its.it_interval.tv_sec = 0;
-       its.it_interval.tv_nsec = 0; // we cheat here
+               .it_interval.tv_sec = 0,
+               .it_interval.tv_nsec = 0, // we cheat here
+       };
 

which almost seems like a bugfix too - note how the computed value "sec"
is never used in the original code?


FYI, I also sent a patch to netdev for a fix, just in case you run into
that:
https://patchwork.ozlabs.org/patch/1095009/
(compilation of this is broken right now)

> I can understand your use case for patch 3. What I am not clear is where 
> should that config option live. It should be somewhere under 
> debug/kernel hacking with a sufficient number of big fat warnings so 
> people do not enable it accidentally by mistake.

Yeah, good question. No real objection to moving it there.

There are some quirks with UML still, so I'm trying to figure out if I
can do the same in KVM, but it's kinda cool I can do it at all :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
