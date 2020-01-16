Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A220213D588
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 09:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTCJxpf4gmKAjHpLrKLm04BBdgH6p7ratHxWj7oqG9o=; b=egmxe17+bGMs+o
	CgBSq+DAz2FtdDiOZ9AlDn/FDAaeU/+XSrz0s+rEcIGz2S6eWcKr792ury47/YGCc59uvic79Tggx
	zhG01VwSKs2umZHWR3Ub6Im47HYqrOhg4MxpaEpyOk1kAW8dpu/skU7be9K562D7Nd0Wc7mX+i7B2
	m1rZ8xuHqXVLSMsfkO+30/vO8Rec1eTaJSkDifyNoGl2g+TfBqbmo8hBocUMDN81jJHnlEUfhpu9K
	lcX7HLmNOdKjqVnkNct70ZcVI+616NH94a84okUHd5gv5YPrk3vj6VcCgrRF62xFQLosKOTa+vEzZ
	Vxr6GxL7CMP347/nm38g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is087-0002hS-GM; Thu, 16 Jan 2020 08:03:51 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is080-0002gc-Ej
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 08:03:50 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1is07s-00BWUR-LH; Thu, 16 Jan 2020 09:03:36 +0100
Message-ID: <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 16 Jan 2020 09:03:35 +0100
In-Reply-To: <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 (sfid-20200115_235651_948442_0F0A0073)
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_000344_498098_4866DAB6 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
Cc: richard@nod.at, jdike@addtoit.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, dvyukov@google.com,
 David Gow <davidgow@google.com>, aryabinin@virtuozzo.com,
 Brendan Higgins <brendanhiggins@google.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2020-01-16 at 08:57 +0100, Johannes Berg wrote:
> 
> And if I remember from looking at KASAN, some of the constructors there
> depended on initializing after the KASAN data structures were set up (or
> at least allocated)? It may be that you solved that by allocating the
> shadow so very early though.

Actually, no ... it's still after main(), and the constructors run
before.

So I _think_ with the CONFIG_CONSTRUCTORS revert, this will no longer
work (but happy to be proven wrong!), if so then I guess we do have to
find a way to initialize the KASAN things from another (somehow
earlier?) constructor ...

Or find a way to fix CONFIG_CONSTRUCTORS and not revert, but I looked at
it quite a bit and didn't.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
