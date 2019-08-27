Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269549DEB2
	for <lists+linux-um@lfdr.de>; Tue, 27 Aug 2019 09:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTFXoXHVKqLa+kRd3oY3gUAM+AieP7tulCuN06Ss34k=; b=jp46Y31e4TNrqP
	TAExy5gCilOrLtPfLw8Girj4y4CSq4S/h10MPGzuBC+FHmqfpzyyRUWYDJPJR1WmUpXI+pfJH3Kxq
	eqp+4XsLB1MIsoM157MAHjYuALfP0Pte9jbvPY0aPN4nkyZZ++enJTztH2Ki5N5cSeYUmErH3ODH3
	jspiCCkAcEnhq6BU+u2aj0r6IUqYPOiyWFR475UHd690HBX8e6BfYAPYF8Gr/iqRAvT1Dh0yCJ3YZ
	jMoKDAtndRpM4sv5PgmpjWMif3FowSP8fzctkh85IpQV4+tuk2dIUZ1RujdZoZ4Dt6iXzgDPxxmfs
	T6DxF5L+BHrNUJjL2ZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VtU-0008L5-9D; Tue, 27 Aug 2019 07:27:56 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VtQ-0008KU-EF
 for linux-um@lists.infradead.org; Tue, 27 Aug 2019 07:27:53 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i2VtJ-000187-9D; Tue, 27 Aug 2019 09:27:47 +0200
Message-ID: <88e1e997cda7e03917823335b4ee9e7faf0580bd.camel@sipsolutions.net>
Subject: Re: [PATCH] arch: um: implement memory protection
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Tue, 27 Aug 2019 09:27:44 +0200
In-Reply-To: <7d0c1f45-e245-fbab-1335-5d978c4f255b@kot-begemot.co.uk>
References: <20190823225831.23517-1-johannes@sipsolutions.net>
 <d929dc9c60b46ac222ca847fe8df7c0640713e4a.camel@sipsolutions.net>
 <7d0c1f45-e245-fbab-1335-5d978c4f255b@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_002752_483065_8CB65BB5 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, 2019-08-27 at 06:15 +0100, Anton Ivanov wrote:

> > IOW, I'd feel much happier about this if I could make
> > CONFIG_DEBUG_RODATA_TEST work after all, but I gave up after an hour or
> > so of poking the exception handlers and trying to figure out how I could
> > make fixup tables work on UML. It might mean doing copy_from_user() in
> 
> Copy from/to user in UML have embedded tlb lookups. I did a couple of 
> tweaks on them earlier in the year. I do not think they are a feasible 
> target for a rewrite in asm without redoing once more the actual tlb.
> 
> 
> That one is tough, in fact very tough. I think I have squeezed nearly 
> everything that could be squeezed out of the current design, any further 
> improvements can come only from a redesign from the whole uml mm and/or 
> trying to integrate host ksm by default.

OK.

So strictly speaking, obviously it doesn't need to be implemented in
assembly. However, it'd be the most obvious way of inserting exception
handling.

Note that also, it really would only need for copy_chunk_from_user() to
be done in assembly. All the other stuff around it will not take an
exception.

So I suppose we just need to allow copy_chunk_from_user() to return
-EFAULT, and then we can do exception fixup in just that little portion.

I'm not really sure how to do even that though - I'm not sure I see how
setting UPT_IP() in arch/x86/um/fault.c has any effect?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
