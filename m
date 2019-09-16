Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DF7B411B
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 21:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUI7R2v4DFwzJYSiq899vmumBWjOPgkNKn4XtJO2ZlY=; b=U0YxJwEFFNBiIL
	nU2VSinh9xwFXngvsbqjOGHy3kp2RgCM2dUSFwJmGIx7O0FEFLJyfB9GeqepPk4qZW1rmGFMZnjIo
	s5A8sr3U4DhHwNFGX8jabGIk1Br9p+cS6Wf1x/ToQrLDPIrL1f1gKUMup3OsZ1KN17nDPVMe9IDsB
	aSQF0+KmqLLBH1qL1M7sKWcZjp1SztXYpOF8qzxNQGmL6qBeqFnITko0B/zDWC1kTE0ehX/YdcrDQ
	GlYudjsEEAspa+7aZvX/2MdPYgnskMn9yhEUu22jSPNA9GLJmGBuzMInJC2o6FMOQfcdKbY6dmiPq
	kH7iLagM3IUXPrIopPaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wdY-0004eL-O0; Mon, 16 Sep 2019 19:26:12 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wdR-0004e2-Ke
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 19:26:10 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9wdP-00046V-BE
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 21:26:03 +0200
Message-ID: <9d109b028f2a78ed3f7f01e8bc1c90af2e8a4a56.camel@sipsolutions.net>
Subject: Re: [PATCH] um: time-travel: rewrite as an event scheduler
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Mon, 16 Sep 2019 21:26:02 +0200
In-Reply-To: <1568639197-I5687e9cdda059457fa2771ee06f9b4f399dc6f70@changeid>
References: <1568639197-I5687e9cdda059457fa2771ee06f9b4f399dc6f70@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_122605_677956_B5D328B9 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 15:06 +0200, Johannes Berg wrote:
> 
> Finally, I noticed a bug while developing this - if we move
> time forward due to consuming time while reading the clock,
> we might move across the next event and that would cause us
> to go backward in time when we then handle that event. Fix
> that by invoking the whole event machine in this case.

This whole thing with the scheduling from reading the clock interacts
badly with the external time-travel mode, and listening to external
devices, etc.

I'll resend a new version of this that makes reading the clock free if
interrupts are disabled, that simplifies not only this patch, but also
the "external scheduler time-travel mode" significantly.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
