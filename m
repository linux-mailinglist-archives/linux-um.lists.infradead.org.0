Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E32B04B
	for <lists+linux-um@lfdr.de>; Mon, 27 May 2019 10:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b+7e0YXZ0J2oUqdqSsWRDiLPNd1j+RgBKdfiRth91uk=; b=Y/I
	gm5khY8GSAw8q9nnFHxKMEzIM1Yqq46u++/bsH3i3vd2qRzGGj3yfStVvzFhqC9y62czbIJYQvhpJ
	1535EC/pKDnDDJ/ozN5aAKxqhxSHTORfQkypu1w1mbm2O1IzOh7fhtF9aF37cF4o35wGRN3BS+xY9
	TGaIVJKpG+S9/1iqpMD20yc1HOJhaLZiUusmu/R+2Qk8A9vke9Hc5B1RJ/vIFJsbmNo4zMGsv+Lhx
	DGT6YrmRiBudtRpx9jYMtUzpGUqIlB6hq7ofH8UAKrrp1OyDCVzSMK12urxYqqPBdZrE3sVXxDaa2
	kVK+Ij7RRUGJhxpof+JbbodgY2sO+hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVB5k-00073G-89; Mon, 27 May 2019 08:34:48 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVB5f-00072c-Mo
 for linux-um@lists.infradead.org; Mon, 27 May 2019 08:34:46 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hVB5Z-0001ol-FN; Mon, 27 May 2019 10:34:37 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v3 1/2] arch: um: pass nsecs to os timer functions
Date: Mon, 27 May 2019 10:34:26 +0200
Message-Id: <20190527083427.6293-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013443_745265_569FA014 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: j@w1.fi, Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

This makes the code clearer and lets the time travel patch have
the actual time used for these functions in just one place.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/os.h |  4 ++--
 arch/um/kernel/time.c       |  4 ++--
 arch/um/os-Linux/time.c     | 20 ++++++++------------
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index 449e71edefaa..4a62ac4251a5 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -251,8 +251,8 @@ extern void os_warn(const char *fmt, ...)
 /* time.c */
 extern void os_idle_sleep(unsigned long long nsecs);
 extern int os_timer_create(void);
-extern int os_timer_set_interval(void);
-extern int os_timer_one_shot(unsigned long ticks);
+extern int os_timer_set_interval(unsigned long long nsecs);
+extern int os_timer_one_shot(unsigned long long nsecs);
 extern void os_timer_disable(void);
 extern void uml_idle_timer(void);
 extern long long os_persistent_clock_emulation(void);
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 3898119f773e..3a2fe54bef65 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -37,14 +37,14 @@ static int itimer_shutdown(struct clock_event_device *evt)
 
 static int itimer_set_periodic(struct clock_event_device *evt)
 {
-	os_timer_set_interval();
+	os_timer_set_interval(NSEC_PER_SEC / HZ);
 	return 0;
 }
 
 static int itimer_next_event(unsigned long delta,
 			     struct clock_event_device *evt)
 {
-	return os_timer_one_shot(delta);
+	return os_timer_one_shot(delta + 1);
 }
 
 static int itimer_one_shot(struct clock_event_device *evt)
diff --git a/arch/um/os-Linux/time.c b/arch/um/os-Linux/time.c
index ea720149f5b8..6d94ff52362c 100644
--- a/arch/um/os-Linux/time.c
+++ b/arch/um/os-Linux/time.c
@@ -50,18 +50,15 @@ int os_timer_create(void)
 	return 0;
 }
 
-int os_timer_set_interval(void)
+int os_timer_set_interval(unsigned long long nsecs)
 {
 	struct itimerspec its;
-	unsigned long long nsec;
 
-	nsec = UM_NSEC_PER_SEC / UM_HZ;
+	its.it_value.tv_sec = nsecs / UM_NSEC_PER_SEC;
+	its.it_value.tv_nsec = nsecs % UM_NSEC_PER_SEC;
 
-	its.it_value.tv_sec = 0;
-	its.it_value.tv_nsec = nsec;
-
-	its.it_interval.tv_sec = 0;
-	its.it_interval.tv_nsec = nsec;
+	its.it_interval.tv_sec = nsecs / UM_NSEC_PER_SEC;
+	its.it_interval.tv_nsec = nsecs % UM_NSEC_PER_SEC;
 
 	if (timer_settime(event_high_res_timer, 0, &its, NULL) == -1)
 		return -errno;
@@ -69,12 +66,11 @@ int os_timer_set_interval(void)
 	return 0;
 }
 
-int os_timer_one_shot(unsigned long ticks)
+int os_timer_one_shot(unsigned long long nsecs)
 {
-	unsigned long long nsec = ticks + 1;
 	struct itimerspec its = {
-		.it_value.tv_sec = nsec / UM_NSEC_PER_SEC,
-		.it_value.tv_nsec = nsec % UM_NSEC_PER_SEC,
+		.it_value.tv_sec = nsecs / UM_NSEC_PER_SEC,
+		.it_value.tv_nsec = nsecs % UM_NSEC_PER_SEC,
 
 		.it_interval.tv_sec = 0,
 		.it_interval.tv_nsec = 0, // we cheat here
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
