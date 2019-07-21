Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDBB6F58D
	for <lists+linux-um@lfdr.de>; Sun, 21 Jul 2019 22:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uuIoaIWOgkXTUfZJV89M9ZSIlhfL4ttdWjy5KhDZ/qc=; b=OVgdXW/XhCC16H
	hfCsk+aOz56/0H3eRrLkBHz4Ld11imkkmwHHLSn5XR7gRsNCAI1O0Qr8qzVs+x07D9UgfNJyM4Dyj
	6Ty3xGskxgdn0F9T1qTOO1wiiDH9yuYsvZDMC3sf3QkEN0Ub9yWcevBuSo1W8BF/wMxjKSgwZdbJm
	R2uHUTq9MsD8Xzk54mx9uiDA+tNNuPYPpIx3mGR9BLZsccrXMXEBlHUD9crxy/boRaoTzASpyXvOg
	R9hoB67dzfEVn9MwrOkrAPHARTuUrb7sK906FHLvmXx/69trJKCca0Ij2loc8ETPTiTpi5S13QIaI
	bQzEX6QBh+P/HcmTdcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpIOd-0008RJ-Cy; Sun, 21 Jul 2019 20:25:27 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpIOZ-0008QX-OW
 for linux-um@lists.infradead.org; Sun, 21 Jul 2019 20:25:25 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hpIOU-00022C-0C; Sun, 21 Jul 2019 22:25:18 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: fix time travel mode
Date: Sun, 21 Jul 2019 22:25:10 +0200
Message-Id: <20190721202510.10265-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_132523_796238_269B76BD 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: j@w1.fi, Richard Weinberger <richard@nod.at>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Unfortunately, my build fix for when time travel mode isn't
enabled broke time travel mode, because I forgot that we need
to use the timer time after the timer has been marked disabled,
and thus need to leave the time stored instead of zeroing it.

Fix that by splitting the inline into two, so we can call only
the _mode() one in the relevant code path.

Fixes: b482e48d29f1 ("um: fix build without CONFIG_UML_TIME_TRAVEL_SUPPORT")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/timer-internal.h |  7 +++++--
 arch/um/kernel/process.c                |  2 +-
 arch/um/kernel/time.c                   | 16 +++++++++-------
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/um/include/shared/timer-internal.h b/arch/um/include/shared/timer-internal.h
index 8574338bf23b..160b21a58e8a 100644
--- a/arch/um/include/shared/timer-internal.h
+++ b/arch/um/include/shared/timer-internal.h
@@ -34,10 +34,13 @@ static inline void time_travel_set_time(unsigned long long ns)
 	time_travel_time = ns;
 }
 
-static inline void time_travel_set_timer(enum time_travel_timer_mode mode,
-					 unsigned long long expiry)
+static inline void time_travel_set_timer_mode(enum time_travel_timer_mode mode)
 {
 	time_travel_timer_mode = mode;
+}
+
+static inline void time_travel_set_timer_expiry(unsigned long long expiry)
+{
 	time_travel_timer_expiry = expiry;
 }
 #else
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index 67c0d1a860e9..6bede7888fc2 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -213,7 +213,7 @@ static void time_travel_sleep(unsigned long long duration)
 	if (time_travel_timer_mode != TT_TMR_DISABLED ||
 	    time_travel_timer_expiry < next) {
 		if (time_travel_timer_mode == TT_TMR_ONESHOT)
-			time_travel_set_timer(TT_TMR_DISABLED, 0);
+			time_travel_set_timer_mode(TT_TMR_DISABLED);
 		/*
 		 * time_travel_time will be adjusted in the timer
 		 * IRQ handler so it works even when the signal
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 6a051b078359..234757233355 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -50,7 +50,7 @@ void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
 static int itimer_shutdown(struct clock_event_device *evt)
 {
 	if (time_travel_mode != TT_MODE_OFF)
-		time_travel_set_timer(TT_TMR_DISABLED, 0);
+		time_travel_set_timer_mode(TT_TMR_DISABLED);
 
 	if (time_travel_mode != TT_MODE_INFCPU)
 		os_timer_disable();
@@ -62,9 +62,10 @@ static int itimer_set_periodic(struct clock_event_device *evt)
 {
 	unsigned long long interval = NSEC_PER_SEC / HZ;
 
-	if (time_travel_mode != TT_MODE_OFF)
-		time_travel_set_timer(TT_TMR_PERIODIC,
-				      time_travel_time + interval);
+	if (time_travel_mode != TT_MODE_OFF) {
+		time_travel_set_timer_mode(TT_TMR_PERIODIC);
+		time_travel_set_timer_expiry(time_travel_time + interval);
+	}
 
 	if (time_travel_mode != TT_MODE_INFCPU)
 		os_timer_set_interval(interval);
@@ -77,9 +78,10 @@ static int itimer_next_event(unsigned long delta,
 {
 	delta += 1;
 
-	if (time_travel_mode != TT_MODE_OFF)
-		time_travel_set_timer(TT_TMR_ONESHOT,
-				      time_travel_time + delta);
+	if (time_travel_mode != TT_MODE_OFF) {
+		time_travel_set_timer_mode(TT_TMR_ONESHOT);
+		time_travel_set_timer_expiry(time_travel_time + delta);
+	}
 
 	if (time_travel_mode != TT_MODE_INFCPU)
 		return os_timer_one_shot(delta);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
