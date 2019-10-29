Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6382AE82D7
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 08:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agdz8roZBJPrWfepxrSMN0V8PhcZ5jRhOAjOGUQ/zjA=; b=GnS6+ajQ4/9WgD
	Uy85LAgrdlpZZclcx/7FaT1JofLXMoG2UQPE1eLbIbQ+Fb6/Sh9zieoUih/mYx6kAls4CEHRunAqr
	qcMAJ0ZLjsW9xe5SIRcBsZApHC4GDfF5rg7vh6YFOvomkgWVFafCNw6DVChcQy/A0TtRaWURe1Cj4
	EW1j0J1OKnjHh5XlAK/lcbH08++QfRMMaIJTuZXL8FI98niftYq2Gs3m/6WvvtVVM7P6ncaY9ahb4
	rVf29buiATgKeEhHNNyvVj//90X744RC/pGhGRwUfzFnMXGW3sgGWEbYhQ0w6xzBJC6GGTVR/roSf
	/gbMoqzhGhE3/PNBVHfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMO7-00016N-0Z; Tue, 29 Oct 2019 07:57:59 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMO4-00010u-9c
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 07:57:57 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iPMO2-0002ju-VD; Tue, 29 Oct 2019 08:57:55 +0100
Message-ID: <179d1a35e32288b22b96545f21e141ba57265025.camel@sipsolutions.net>
Subject: Re: [RFC PATCH 00/47] Unifying LKL into UML
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>, linux-um@lists.infradead.org
Date: Tue, 29 Oct 2019 08:57:54 +0100
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_005756_336890_EC3F560D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-10-23 at 13:37 +0900, Hajime Tazaki wrote:
> 
> LKL (Linux Kernel Library) is aiming to allow reusing the Linux kernel code
> as extensively as possible with minimal effort and reduced maintenance
> overhead.

[snip]

Can you comment a bit on what's what?

For example, I look at patch 24 ("lkl tools: virtio: add network device
support") and wonder what that really is? Is it a hypervisor-side
implementation of the virtio-net device? If so, why is that considered
"tools"? (In ARCH=um, the hv-code usually lives in
arch/um/drivers/*_user.c or similar.)

Also, taking that as an example again, I think that's something we
should rather leave out initially - it looks like it has hooks into DPDK
and all kinds of other network interfaces on the host, which duplicates
a lot of existing functionality in ARCH=um.

Additionally, we (Intel) recently contributed a vhost-user backend, so
we don't really *need* a hypervisor implementation of e.g. DPDK
integration at all, that should be possible over vhost-user instead.

Looking further at the series - many of your patches really need better
commit logs explaining what and why they do something. Particularly the
reverts, but even trivial patches like the first one in the series.

patch 2: doesn't explain why it's necessary - how is this not covered by
adding a "config SOMETHING\n  def_bool y" in the architecture?

patch 4: kernel-doc doesn't parse, it's also very awkward to add this
without any users, why not add a very simple version of the struct with
the first patch needing it, and then extend it in each next patch?

[oops, out of time, will continue later]

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
