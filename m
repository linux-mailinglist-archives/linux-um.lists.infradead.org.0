Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735A895820
	for <lists+linux-um@lfdr.de>; Tue, 20 Aug 2019 09:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWoiqmi2mPFfnzoC0c0Mp84La1PxEK+cgEzW/QVbOI0=; b=WnaeSpeb4neQL9
	iTURRezdeNGuH16J7yy4GqU8qcnFwzc+Q1bGmsRyGQCljr6N2t6TMwK4fzFm4yJdaTm6/lQAWW5MJ
	Y27g0qpeA6UXjU9uGbi0K+EN/wT6o/CzTJQGgo/pYcn8WbdHjxEVX56guJhbuIVeyod3AXXkvxiHk
	iNlo/Cg0gwY8Cr789KWVL2/V5OI3DUXdtYeEycH59hSjsIczKRYcK+7DbJa7+Z2qyhKdzB3rMqlkH
	9+Tt3eQS+2GfD+/bU8Bg8nikNldzyFozzhSDK6AHWQaUloI5RN5aqYsekYZbNGc0C+npelrruVXaC
	nHlbhicuPXJGnz4Zcotw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyQ1-00032g-18; Tue, 20 Aug 2019 07:19:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyPx-00031v-B9
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 07:18:59 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hzyPq-0008W1-PL; Tue, 20 Aug 2019 09:18:50 +0200
Message-ID: <7296b73881732bb4d4bd7cff2e5ad4f192f6eec7.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, "Geron, ErelX"
 <erelx.geron@intel.com>, "linux-um@lists.infradead.org"
 <linux-um@lists.infradead.org>
Date: Tue, 20 Aug 2019 09:18:49 +0200
In-Reply-To: <fcf30eb6-b26c-f9d8-eb3f-c2475b8a298d@cambridgegreys.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <aa0e9645-add5-0169-95d0-e11dc36dcfaa@cambridgegreys.com>
 <57a7df50-0a87-a8a6-7cd7-e4aa2ef35f1d@cambridgegreys.com>
 <3ffcf614-ce0e-949c-b0dd-49551866f7cf@cambridgegreys.com>
 <55F06090E0044C4F985D9B415677B33F4E42700B@HASMSX110.ger.corp.intel.com>
 <fcf30eb6-b26c-f9d8-eb3f-c2475b8a298d@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_001857_825037_E53CA84B 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 06:03 +0100, Anton Ivanov wrote:
> 
> rc = vhost_user_get_config(vu_dev, offset, buf, len)
> 
> if (unlikely(rc)) {
> 	printk(KERN_ERR "vu get returned error %i", rc);
> 	WARN();
> }

Just for the record, IMHO that's better written as

rc = vhost_user_get_config(...);
WARN(rc, "vu_get_config returned error %d\n", rc);

since that will embed the message/error code into the warning message.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
