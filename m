Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B8E2AEEC
	for <lists+linux-um@lfdr.de>; Mon, 27 May 2019 08:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAYsGPtsZD58G/9E4FU+xow81lxIKNXusm4YOL/gbxY=; b=KYInbVp6Z9bHJk
	SGK3akCu8kKs/rRj47zE4lUUHD0jVqFj4ZvliGu9VClEpfcKRPjtO9FggXQGrixbCbLBSqf381mG6
	iEHwhm0qiUhc4ESAjj1I39Y/+v8Jrfmxa5LqRxn9drxGZdbCY3NP+k+dn8ayTbZdDqPEN55u827iB
	k54huB+XVi3Qrj6cm+7/ivN6M0D8I0Q4XhPVdHYapkGIow3vPTkaQHpYN3+83m7j+e4NFjYDffDam
	amYVgy3MwUdu/aVKzo/oOUodoY/eg9tXtCpILGiyFjsYtou94VfQ+SVkvmUS1dmu6T706JJvshvTT
	Ol0GuIL2hgzc/O+oCSzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9TE-0008On-MG; Mon, 27 May 2019 06:50:56 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9TB-0008OJ-77
 for linux-um@lists.infradead.org; Mon, 27 May 2019 06:50:54 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hV9T5-0007BE-GB; Mon, 27 May 2019 08:50:47 +0200
Message-ID: <0b04985bdb25de7373ea614c80c7773146d2498b.camel@sipsolutions.net>
Subject: Re: [PATCH v2 5/5] arch: um: support virtual time
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, Richard Weinberger
 <richard.weinberger@gmail.com>
Date: Mon, 27 May 2019 08:50:46 +0200
In-Reply-To: <5a0d83d0-1f68-c1ae-468b-b88752472a84@kot-begemot.co.uk>
References: <20190506123939.21091-1-johannes@sipsolutions.net>
 <20190506123939.21091-6-johannes@sipsolutions.net>
 <CAFLxGvza1da-q=XakFimKc-aZd5M9bSxtNZdvLmTz5_Ck1HJ3Q@mail.gmail.com>
 <6a6dd0548031aedc34044d89953e4c8c9d7e45f5.camel@sipsolutions.net>
 <5a0d83d0-1f68-c1ae-468b-b88752472a84@kot-begemot.co.uk>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_235053_255651_4E7AF740 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: j@w1.fi, linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-05-27 at 05:47 +0100, Anton Ivanov wrote:
> ITIMER_VIRTUAL This timer counts down against the  user-mode  CPU  time 
> consumed  by the process.  (The measurement includes CPU
>   time consumed by all threads in the process.)   At  each expiration, a 
> SIGVTALRM signal is generated.
> 
> This is what we used to use before we migrated to POSIX timers.
> 
> So as far as the name there is a possible name clash/term overload.

Good point.

> > 
> > > To me "virtual time" reads like a clock that runs with different speed or is in
> > > some other way untangled from the host.
> > > What you have implement is time traveling. ;-)
> > 
> > True :-)
> 
> +1, Let's just call it time travel mode.

:-)

Checking those references from my colleague now, I see the terms
 * (adaptive) time dilation - at least for the other case I haven't
   included in this patch yet where the clock can run slower than real
   time
 * virtual time - which is closest to what I called "infinite CPU power"
   before
 * relativistic time - which is close but not really what I implemented
   here either

But sure, let's just call it "time-travel".

I think I'll add a few options:

 * time-travel=faster - what's implemented by this patch
 * time-travel=infcpu - infinite CPU power available
 * time-travel-start=<int value>
                      - start of real time, to not necessarily use wall
                        clock

Seems reasonable?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
