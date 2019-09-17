Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD2EB4A25
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 11:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqjPWqYP9iD40fJDWm8XTnL+dJ3X8osuI0IMYXcwF5I=; b=WsMVClXPpuoSNB
	VLNx4WKpTgVFBPdco/VORbFqeYkpQixYaT+k9s/yYzZbPXPxJxeCHfElIH0CynAgz19MRACRr27k2
	6rxhd9Y3kv/uJ8LoqXTVH1nac4ue5d2eNeyspTiEHY3tkCfkOXgd+Y89BzpElvtSqia2PybqJ3nvY
	PO6O7B+J6h/iIonhN67RnEOMnagw+sqp2C3AnrI6d6m4ZfR0C2G56J2tPlK3+5JaAMiPPS2E//7f6
	FlqDMCgNDzTqQHz88g6Op/5t0XUzeKyq5CAfUPKIGvMbksDmTHjEix36CUKM8zXgquElhY/k6Z36r
	2SaDMPWehkRe9vfMngCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9Ze-0004VR-A3; Tue, 17 Sep 2019 09:15:02 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9Zb-0004UD-20
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 09:15:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iA9ZZ-000806-8E; Tue, 17 Sep 2019 11:14:57 +0200
Message-ID: <bfbb45a544415446e38fb89c08bb234047affa2b.camel@sipsolutions.net>
Subject: Re: [RFC v2 2/2] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 11:14:56 +0200
In-Reply-To: <1dd9e658-a6cd-39dd-09c7-d68ebcd7078c@cambridgegreys.com>
References: <1568671815-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
 <1568671815-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
 <7583ac26d787ddf211473166136836f3472bf31e.camel@sipsolutions.net>
 <1dd9e658-a6cd-39dd-09c7-d68ebcd7078c@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021459_096102_6D0A6EC7 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 10:09 +0100, Anton Ivanov wrote:

> I hope you do not mind - will repeat my ask. Can we have a series off 
> let's say current 5.x with all patches ready for test/review.

Well, Richard applied almost everything. We also spoke about the "Fix
LAST_IRQ usage" patch yesterday and he said he'd apply the one hunk of
it that you didn't already fix.

> Some of your patches have 3-4 versions with a fixed version coming 
> nearly immediately thereafter and for some of them I am a bit lost which 
> versions should I test/review at present.

The only open patches now are on

https://patchwork.ozlabs.org/project/linux-um/list/

and I've just updated the state of my stuff there.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
