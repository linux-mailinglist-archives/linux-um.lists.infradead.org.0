Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629BC5E03F
	for <lists+linux-um@lfdr.de>; Wed,  3 Jul 2019 10:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jpQc+gPuysdl1N1FCZ+my2doAxDOJYVtz3CZjVpM8Gs=; b=uPE
	m57QTfhVPVfHo/YbgQVlhtTtvfjtpmi/MXrnSHmykYjB01OFBiio1Vz8KVYA+0tf3abP92F4wPBUK
	Mf9ACKy4J1229N+bW8H3iwy73OsgO5/g+UV22cMVKqM9VoJdEK6/rS3afnMJkXOEhNnBNVR8+A/al
	1tKLCywAaezOJ+ewWjo/p4BtcAgDZ+z1DJwBlOpx2DxTenizbFQRty73Dse3DRrb4+YD0WNpINyxC
	udBWIeVMgPmzOdtUO3PW/fg4uO3XanFQZxJ9X2c7PodX7UFgyshLP80yfs9Kc59q0wG8+qGFOJFp9
	L9R0axqTm1rEjU7IDDpNMkO1UsDwi6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiazu-0002Sg-QN; Wed, 03 Jul 2019 08:52:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiazr-0002QG-6B
 for linux-um@lists.infradead.org; Wed, 03 Jul 2019 08:52:12 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hiazn-0002My-PQ; Wed, 03 Jul 2019 10:52:07 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: fix build without CONFIG_UML_TIME_TRAVEL_SUPPORT
Date: Wed,  3 Jul 2019 10:52:01 +0200
Message-Id: <20190703085201.19585-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_015211_229061_ED2E8F51 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

When CONFIG_UML_TIME_TRAVEL_SUPPORT isn't set, the build was broken.
Fix this.

Fixes: 065038706f77 ("um: Support time travel mode")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/timer-internal.h | 2 ++
 arch/um/kernel/process.c                | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/um/include/shared/timer-internal.h b/arch/um/include/shared/timer-internal.h
index 5ca74f415d52..8574338bf23b 100644
--- a/arch/um/include/shared/timer-internal.h
+++ b/arch/um/include/shared/timer-internal.h
@@ -54,6 +54,8 @@ static inline void time_travel_set_timer(enum time_travel_timer_mode mode,
 					 unsigned long long expiry)
 {
 }
+
+#define time_travel_timer_mode TT_TMR_DISABLED
 #endif
 
 #endif
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index def2091697ca..67c0d1a860e9 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -213,7 +213,7 @@ static void time_travel_sleep(unsigned long long duration)
 	if (time_travel_timer_mode != TT_TMR_DISABLED ||
 	    time_travel_timer_expiry < next) {
 		if (time_travel_timer_mode == TT_TMR_ONESHOT)
-			time_travel_timer_mode = TT_TMR_DISABLED;
+			time_travel_set_timer(TT_TMR_DISABLED, 0);
 		/*
 		 * time_travel_time will be adjusted in the timer
 		 * IRQ handler so it works even when the signal
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
