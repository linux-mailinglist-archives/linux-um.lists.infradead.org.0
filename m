Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978B213D6A8
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 10:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdSiDRaa7dK2ZmSaMNtNpbZhBxlphdsOWeZgzotdoyU=; b=eNiF4PUjqabrhb
	N8AIBpRJn7RJdtymiT9AX8YN3ze5ApmvVh6gZvgRsZu9pxHfGh5k0Bs0iwDaUUfaKX6YjRwvOhavJ
	TiJkTSIFDT/vrSRFXsYdh9PjnLNaoH4roMD0AB7uWVP2vShTJSv+xzyjhXg5KQnK0X6JFSuu0QZyo
	mOHibKJlnpM8N2VaWXd6pvcEDxZhRf13BbM+sTePaNZefXLhoKSJrKmdL6BOiZHHIHr3nY2KpVbS2
	bOvDiD3nGX9QAlk0PC5B7zu2fiYOc8kARdGbIhoqIf96BHEALPVGWY0fxJQdGUptW8Zpo+SEswcs2
	QD4By0Epzm1Bac8DGWKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1KZ-0005FS-Fe; Thu, 16 Jan 2020 09:20:47 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1KQ-0005Ds-J4
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 09:20:45 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1is1KF-00BgMa-LC; Thu, 16 Jan 2020 10:20:27 +0100
Message-ID: <2092169e6dd1f8d15f1db4b3787cc9fe596097b7.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 10:20:26 +0100
In-Reply-To: <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
 (sfid-20200116_101838_954522_B05BB78D)
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
 <CACT4Y+brqD-o-u3Vt=C-PBiS2Wz+wXN3Q3RqBhf3XyRYaRoZJw@mail.gmail.com>
 (sfid-20200116_101838_954522_B05BB78D)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_012038_628360_FF063F58 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2020-01-16 at 10:18 +0100, Dmitry Vyukov wrote:
> 
> Looking at this problem and at the number of KASAN_SANITIZE := n in
> Makefiles (some of which are pretty sad, e.g. ignoring string.c,
> kstrtox.c, vsprintf.c -- that's where the bugs are!), I think we
> initialize KASAN too late. I think we need to do roughly what we do in
> user-space asan (because it is user-space asan!). Constructors run
> before main and it's really good, we need to initialize KASAN from
> these constructors. Or if that's not enough in all cases, also add own
> constructor/.preinit array entry to initialize as early as possible.

We even control the linker in this case, so we can put something into
the .preinit array *first*.

> All we need to do is to call mmap syscall, there is really no
> dependencies on anything kernel-related.

OK. I wasn't really familiar with those details.

> This should resolve the problem with constructors (after they
> initialize KASAN, they can proceed to do anything they need) and it
> should get rid of most KASAN_SANITIZE (in particular, all of
> lib/Makefile and kernel/Makefile) and should fix stack instrumentation
> (in case it does not work now). The only tiny bit we should not
> instrument is the path from constructor up to mmap call.

That'd be great :)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
