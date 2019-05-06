Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD89F149EC
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 14:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6E9mzUwenTkxvVvqFifdirMZzLANQRXrnMifJwY2vD8=; b=WDO
	rSyBFrHlac+iJZhzZP7Tl9G/hjcvAFV2NqG3IRpZKDm25JJF1p1YlaLGBe7gZS854xwAKoDBIGmW7
	c2kT4QyNzUXhZmll4lmfeKWoc/BEKoHEyZTuKE1FBOwtN65PB1sMLykJGUn2g+fu//kh4Blka6Kc6
	Q/Y1O/PRHYVI/goNRoIWW9Kskjswc5/GJC3vPknq5IDgMiBO3WqpzAT06A/5ihhrq75Ji44Yy2Uzm
	LnUgmnJJqYcK39r7BI8q48xXImrru87OPNcczmN+qxZPrHkaqKNKLpJEMxIO5XnbpcxIvt4ql2qaj
	cJTeNKn9yfp7WVhvwl6+8lCwfMLOb8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcuP-0002go-Bv; Mon, 06 May 2019 12:39:53 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcuL-0002eC-7H
 for linux-um@lists.infradead.org; Mon, 06 May 2019 12:39:50 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hNcuF-00058d-HV; Mon, 06 May 2019 14:39:43 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v2 0/5] arch: um: fixes and virtual time support
Date: Mon,  6 May 2019 14:39:34 +0200
Message-Id: <20190506123939.21091-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053949_292028_C7281D17 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: j@w1.fi
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Here's a respin, with some comments addressed.

I'm also including a patch from Jouni to fix an IRQ controller
regression, since we've been working together a bit on using
this to run hwsim (CONFIG_MAC80211_HWSIM) based tests in UML
virtual time for speedups.

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
