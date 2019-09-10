Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FC6AEBF4
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ogFmIV4Cyqb/loeaxJi2MAhHTwoJuy4A720ANKbYbxg=; b=bqzkmudrCot3Cc
	npl2s5DzK5vMzQe17soPM4zke67g7JQTlpqiLdwYq8gA4s7DK/HcdIl+1hNLty4nAxH0ocQEoNiAF
	6o+UnwiAz+K0olYoypxBVeeM8jOP2kcYshsf8QxoQJzEBrtu+g1qqnn21gSeawg9z5XvcNXoTVV5H
	weXeaUPoDUuqYQGvvD85tGlyTf6aATpPpqlazFINtH+ecPtbVqbAYQ29MC0KxhK0fZo2MXMIrMXId
	cxLTpwRCO5hcMOWs8wrkHvWxGuh9B99kGioRdAor0YlUl62selc/sSRsvSrk7BznJtIlNhzreORBn
	UjC04TeyyB7W6pMRE1yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gVH-0006Lt-85; Tue, 10 Sep 2019 13:48:19 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gVC-0006F3-As
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:48:16 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7gV7-0006bX-Ke; Tue, 10 Sep 2019 15:48:09 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 1/2] um: time-travel: fix periodic timers
Date: Tue, 10 Sep 2019 15:47:55 +0200
Message-Id: <1568123276-I40b0f15a0fdd0f17e6636fbfe661e0d3d52e5ef7@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064814_790513_8E5AC40A 
X-CRM114-Status: UNSURE (   9.53  )
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/timer-internal.h | 9 +++++++++
 arch/um/kernel/process.c                | 7 ++++++-
 arch/um/kernel/time.c                   | 1 +
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/um/include/shared/timer-internal.h b/arch/um/include/shared/timer-internal.h
index 9991ec2371e4..a4d79389b223 100644
--- a/arch/um/include/shared/timer-internal.h
+++ b/arch/um/include/shared/timer-internal.h
@@ -43,6 +43,11 @@ static inline void time_travel_set_timer_expiry(unsigned long long expiry)
 {
 	time_travel_timer_expiry = expiry;
 }
+
+static inline void time_travel_set_timer_interval(unsigned long long interval)
+{
+	time_travel_timer_interval = interval;
+}
 #else
 #define time_travel_mode TT_MODE_OFF
 #define time_travel_time 0
@@ -61,6 +66,10 @@ static inline void time_travel_set_timer_expiry(unsigned long long expiry)
 {
 }
 
+static inline void time_travel_set_timer_interval(unsigned long long interval)
+{
+}
+
 #define time_travel_timer_mode TT_TMR_DISABLED
 #endif
 
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index 6bede7888fc2..cf242fc5fe94 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -210,7 +210,12 @@ static void time_travel_sleep(unsigned long long duration)
 	if (time_travel_mode != TT_MODE_INFCPU)
 		os_timer_disable();
 
-	if (time_travel_timer_mode != TT_TMR_DISABLED ||
+	while (time_travel_timer_mode == TT_TMR_PERIODIC &&
+	       time_travel_timer_expiry < time_travel_time)
+		time_travel_set_timer_expiry(time_travel_timer_expiry +
+					     time_travel_timer_interval);
+
+	if (time_travel_timer_mode != TT_TMR_DISABLED &&
 	    time_travel_timer_expiry < next) {
 		if (time_travel_timer_mode == TT_TMR_ONESHOT)
 			time_travel_set_timer_mode(TT_TMR_DISABLED);
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 234757233355..4ecabf7e54c9 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -65,6 +65,7 @@ static int itimer_set_periodic(struct clock_event_device *evt)
 	if (time_travel_mode != TT_MODE_OFF) {
 		time_travel_set_timer_mode(TT_TMR_PERIODIC);
 		time_travel_set_timer_expiry(time_travel_time + interval);
+		time_travel_set_timer_interval(interval);
 	}
 
 	if (time_travel_mode != TT_MODE_INFCPU)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
