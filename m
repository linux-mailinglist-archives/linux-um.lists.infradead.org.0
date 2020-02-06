Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BFA154BBD
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 20:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZJS50Uq2iD02umTtVesCCpOLyQL5VjglLRETAw1m0Y=; b=du8ChKMlIjOmrE
	Orphf1ILBGs9e/x1OcQIhoWlCKKZIK4thH3qgzxPXjT2nYVUm0QnLcQXPXh4I0rIpe5+YnduqA+sy
	C2bRV2F43aVNjqGssblCvfDtfcSuTcXVWbzLouTq7QxUAmm2X3VP3mRtFDeXIZKLSELZjG8HVxFOb
	4rqzHJPD8/VZSbjeuPCgJWtBUahUGEiVV0+FbSbWR1aH9pJ5i2qiyY3boPwtKnZwMjz4cAb3mFUpe
	75+YzrO/ZHmAtIuP5tn/rm4Ev9mqzWPyDWviQyX4Yo0Nlb6at53Ui6UzgO+XemYQE3r2k9rdpGyZp
	w9VOt3ZP3SxgD/+0KnnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmbt-0006SZ-J1; Thu, 06 Feb 2020 19:14:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmbr-0006RV-2W
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 19:14:44 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1izmbg-005xA3-5k; Thu, 06 Feb 2020 20:14:32 +0100
Message-ID: <c264bc73e22be04c5e8422858b8eac97f006f16a.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 06 Feb 2020 20:14:31 +0100
In-Reply-To: <CAKFsvUJu7NZpM0ER45zhSzte3ovkAvXBKx3Tppxci7O=0TwJMg@mail.gmail.com>
 (sfid-20200206_192212_045280_EBE78060)
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
 <CAKFsvUJu7NZpM0ER45zhSzte3ovkAvXBKx3Tppxci7O=0TwJMg@mail.gmail.com>
 (sfid-20200206_192212_045280_EBE78060)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_111443_110284_68D4223A 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: richard@nod.at, jdike@addtoit.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Dmitry Vyukov <dvyukov@google.com>, David Gow <davidgow@google.com>,
 aryabinin@virtuozzo.com, Brendan Higgins <brendanhiggins@google.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Patricia,

> I've looked at this quite extensively over the past week or so. I was
> able to initialize KASAN as one of the first things that gets executed
> in main(), but constructors are, in fact, needed before main().

They're called before main, by the dynamic loader, or libc, or whatever
magic is built into the binary, right? But what do you mean by "needed"?

> I
> think it might be best to reintroduce constructors in a limited way to
> allow KASAN to work in UML.

I guess I'd have to see that.

>  I have done as much testing as I can on my
> machine and this limited version seems to work, except when
> STATIC_LINK is set. I will send some patches of what I have done so
> far and we can talk more about it there. I would like to add your
> name, Johannes, as a co-developed-by on that patch. If there is a
> better way to give you credit for this, please let me know.

I think you give me way too much credit, but I'm not going to complain
either way :-)

I'll post in a minute what I had in mind.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
