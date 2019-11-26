Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81B109A5E
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 09:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsLAmxWQ75FmFtG9IYkZbUq4Oc4dJDDUl0U3TvMIoiQ=; b=D/E2E5hu/9G8ji
	socolVaHPyAjxiTip7g0gpVqqLfEbxvM3YqB54wP9vzG6rA5Pd4tGz6NSBnob8+oUWX3YX5A49X4h
	TmfQeZoFdUMyYEPN8OW4DxZ4Uem3RFtUIM8NLm6N83ZEu2b2TahrjuCn6P5RoOQ1eHltJMcEZSRPn
	zroqQ1QNxRuOw6dZiF9p8NHo/ooz4X5uM8O74UolkSABrN9AWNmC/zzPlIgTG3+xHp7z8r4E5z9JA
	r4CDjhJTJq3jFdsV9wDG0szbhLAOsuHvx4ghVqFfNyj7n4wmvxpwrBbmqxLXSyoT7BNXvpTz/tbd8
	jQz9J1Qqbw5fhSHqk94A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWRu-0001P6-Dz; Tue, 26 Nov 2019 08:43:54 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWRq-0001OZ-K7
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 08:43:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iZWRg-00AxG9-G8; Tue, 26 Nov 2019 09:43:40 +0100
Message-ID: <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
From: Johannes Berg <johannes@sipsolutions.net>
To: Richard Weinberger <richard.weinberger@gmail.com>, Hajime Tazaki
 <thehajime@gmail.com>
Date: Tue, 26 Nov 2019 09:43:36 +0100
In-Reply-To: <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_004350_661741_D4BD1F36 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Conrad Meyer <cem@freebsd.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, Patrick Collins <pscollins@google.com>,
 linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-11-25 at 23:07 +0100, Richard Weinberger wrote:
> On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
> > From: Octavian Purdila <tavi.purdila@gmail.com>
> > 
> > Add helpers for implementing host virtio devices. It uses the memory
> > mapped I/O helpers to interact with the Linux MMIO virtio transport
> > driver and offers support to setup and add a new virtio device,
> > dispatch requests from the incoming queues as well as support for
> > completing requests.
> > 
> > All added virtio devices are stored in lkl_virtio_devs as strings, per
> > the Linux MMIO virtio transport driver command line specification.
> 
> Did you checkout arch/um/drivers/virtio_uml.c?
> Why is this driver needed?

This isn't really a driver, this is virtio *device-side* code. Our
virtio_uml is *guest-side* code, and only speaks vhost-user.

I'm not sure how MMIO devices could possibly work though, does LKL
intercept MMIO somehow?

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
