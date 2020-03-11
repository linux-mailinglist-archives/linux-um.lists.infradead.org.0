Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21131815D9
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 11:32:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0p5NHVr8WtFvoQYbPAFTyxkD0lmJIHpBBBZ3lebRZis=; b=ecyL2iDTywBxP7
	+Qnr9i/LgtuMhwYs948LBh8zLuWz7X8aCQ7nIX8HuOlcEN6szVRL/TDVV9fSFmVm2b3R4UQ3s4w/g
	dxXQo901DN4reJT2pEY2DEor31WMEyjnxNPv7XzuG9dNTggGGriu97jspB/qNrROmvhaf8GdsAkYR
	oiMQyOvQwQyvOXJcE3x7/vU5a0k2Bu6PrIJ/brzQJyGfgES132nSwyVwRq2AS2pdZnbrN/3x1fmf6
	qsZNA0y8zBIxEml4Sp9f858wZmM3jjk5boeJRtG25tk+tS2zJi6CYD6/EhQNSL36gBbCMVppRT5hZ
	t+VNLWXyeDWXt4S/wrzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByf0-0008Mu-64; Wed, 11 Mar 2020 10:32:22 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByew-0008Lu-QY
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 10:32:20 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jByeg-0013Bw-GU; Wed, 11 Mar 2020 11:32:02 +0100
Message-ID: <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>, Jeff Dike
 <jdike@addtoit.com>,  Richard Weinberger <richard@nod.at>,
 anton.ivanov@cambridgegreys.com, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>, Brendan Higgins
 <brendanhiggins@google.com>, David Gow <davidgow@google.com>
Date: Wed, 11 Mar 2020 11:32:00 +0100
In-Reply-To: <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 (sfid-20200306_010352_481400_662BF174)
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 (sfid-20200306_010352_481400_662BF174)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_033218_862779_CF136934 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

> Hi all, I just want to bump this so we can get all the comments while
> this is still fresh in everyone's minds. I would love if some UML
> maintainers could give their thoughts!

I'm not the maintainer, and I don't know where Richard is, but I just
tried with the test_kasan.ko module, and that seems to work. Did you
test that too? I was surprised to see this because you said you didn't
test modules, but surely this would've been the easiest way?

Anyway, as expected, stack (and of course alloca) OOB access is not
detected right now, but otherwise it seems great.

Here's the log:
https://p.sipsolutions.net/ca9b4157776110fe.txt

I'll repost my module init thing as a proper patch then, I guess.


I do see issues with modules though, e.g. 
https://p.sipsolutions.net/1a2df5f65d885937.txt

where we seem to get some real confusion when lockdep is storing the
stack trace??

And https://p.sipsolutions.net/9a97e8f68d8d24b7.txt, where something
convinces ASAN that an address is a user address (it might even be
right?) and it disallows kernel access to it?


Also, do you have any intention to work on the stack later? For me,
enabling that doesn't even report any issues, it just hangs at 'boot'.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
