Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130421B84A1
	for <lists+linux-um@lfdr.de>; Sat, 25 Apr 2020 10:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=be5vW2JFy93QI1qdbMVYirfZbGXOrixEdNfbidcFFWQ=; b=Kv63f7eWthdUkT
	oXaCz5EsDXvFw+Ssp/+WeiGXxKbwIFhy8f4atraHulMzB9n7XeCsHjBqXDfuI3Ene7qnVlMUCNWsG
	VDwFs9QjiQNzjCi9rKCUHLelwl5uxAQY8pbgDEDBm9PvNSxyrjkNLMLXVd5TJ1HJqp2jmVGQ5DRSQ
	oe6BCyR5MkZ89LIFWc3Ajy2PAgqAO40gO9vVGjTFMb9OopZM13P8jnmMUrU58pa9HaJ4Czc0BHAVI
	mUwMhO1XdimQbKYLDMrgraXrIKtBTBWIbRGz0zUkz9nLbeKhLYYdiM2rQqjDovSrCbyjyXMFvgctY
	8DAASbuvtYFBqHVnyBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSG8d-000574-Jv; Sat, 25 Apr 2020 08:26:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSG8b-000566-2p
 for linux-um@lists.infradead.org; Sat, 25 Apr 2020 08:26:14 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jSG8T-00G7g6-5s; Sat, 25 Apr 2020 10:26:05 +0200
Message-ID: <b86f5469f9b888942b7a6f9862ec98c909121375.camel@sipsolutions.net>
Subject: Re: [PATCH] um: Fix "time-internal.h" include in xor.h
From: Johannes Berg <johannes@sipsolutions.net>
To: David Gow <davidgow@google.com>, Anton Ivanov
 <anton.ivanov@cambridgegreys.com>, Richard Weinberger <richard@nod.at>
Date: Sat, 25 Apr 2020 10:26:04 +0200
In-Reply-To: <20200425042814.132920-1-davidgow@google.com>
References: <20200425042814.132920-1-davidgow@google.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_012613_124737_EEC92E6C 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 2020-04-24 at 21:28 -0700, David Gow wrote:
> It looks like the wrong header was included in xor.h, breaking make
> allyesconfig on UML (or, more specifically, kunit.py run --alltests).
> 
> ----------------------
> In file included from crypto/xor.c:17:
> ./arch/um/include/asm/xor.h:3:10: fatal error: shared/timer-internal.h: No such file or directory
>     3 | #include <shared/timer-internal.h>
>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~
> ----------------------
> 
> Replacing this with "linux/time-internal.h" builds fine.
> 
> Fixes: d65197ad5249 ("um: fix time-travel=inf-cpu with xor/raid6")

Yeah, sorry about that. Some patches overlapped here, i.e. were pending
from separate branches I had.

I sent Richard a fix quite about three weeks ago:

https://patchwork.ozlabs.org/project/linux-um/patch/20200405213357.b6ce1024b276.I7c370e20580d3122c58df5727ee2d6fb53545576@changeid/

but I guess he hasn't applied it yet.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
