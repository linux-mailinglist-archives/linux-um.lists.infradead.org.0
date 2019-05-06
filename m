Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E966D149EF
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 14:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HamRNsN0TQe/xHwUVvoD81kNdtQlc9b4niCEg26/s1A=; b=phH+3bBaq1xYdn1iOiPXWyfONn
	7LCbVkor2baM/5cOaLdBHGNVpc0lOcLiroKrPM9ITfDRh1n5wqh6/mEj9/J3/vqFzWb/p5lluTX6Z
	QCFCBJRE7MVKGshRLw1en21SMLWZAkW3ckONWMKp6fku+0A+/2PgeajapOlMfg8fpaJuY9ddrXsAr
	aNox6TPWUKa+tHYzRF1mEW9zlVIP1ZQDO/kgA01smrkK4gYXfqsuR5Dj/3oLtZzAiGRPxiSKB+ovR
	GceAtlUcFVbapvI5D4hX/9YhvMLQMm2xcmJgg1IItqcVj/m0rTK7WQqrofXtY2xTvOmF8SG+42jLB
	81V1QwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcuS-0002hw-2m; Mon, 06 May 2019 12:39:56 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcuL-0002ed-7K
 for linux-um@lists.infradead.org; Mon, 06 May 2019 12:39:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hNcuG-00058d-P7; Mon, 06 May 2019 14:39:44 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v2 4/5] arch: um: timer code cleanup
Date: Mon,  6 May 2019 14:39:38 +0200
Message-Id: <20190506123939.21091-5-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190506123939.21091-1-johannes@sipsolutions.net>
References: <20190506123939.21091-1-johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053949_284749_3C8F372A 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: j@w1.fi, Johannes Berg <johannes.berg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

There are some unused functions, and some others that have
unused arguments; clean up the timer code a bit.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/os.h |   8 +--
 arch/um/kernel/time.c       |   4 +-
 arch/um/os-Linux/time.c     | 119 ++++++++----------------------------
 3 files changed, 31 insertions(+), 100 deletions(-)

diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index d579adcb2690..449e71edefaa 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -250,15 +250,13 @@ extern void os_warn(const char *fmt, ...)
 
 /* time.c */
 extern void os_idle_sleep(unsigned long long nsecs);
-extern int os_timer_create(void* timer);
-extern int os_timer_set_interval(void* timer, void* its);
+extern int os_timer_create(void);
+extern int os_timer_set_interval(void);
 extern int os_timer_one_shot(unsigned long ticks);
-extern long long os_timer_disable(void);
-extern long os_timer_remain(void* timer);
+extern void os_timer_disable(void);
 extern void uml_idle_timer(void);
 extern long long os_persistent_clock_emulation(void);
 extern long long os_nsecs(void);
-extern long long os_vnsecs(void);
 
 /* skas/mem.c */
 extern long run_syscall_stub(struct mm_id * mm_idp,
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 0c572a48158e..3898119f773e 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -37,7 +37,7 @@ static int itimer_shutdown(struct clock_event_device *evt)
 
 static int itimer_set_periodic(struct clock_event_device *evt)
 {
-	os_timer_set_interval(NULL, NULL);
+	os_timer_set_interval();
 	return 0;
 }
 
@@ -107,7 +107,7 @@ static void __init um_timer_setup(void)
 		printk(KERN_ERR "register_timer : request_irq failed - "
 		       "errno = %d\n", -err);
 
-	err = os_timer_create(NULL);
+	err = os_timer_create();
 	if (err != 0) {
 		printk(KERN_ERR "creation of timer failed - errno = %d\n", -err);
 		return;
diff --git a/arch/um/os-Linux/time.c b/arch/um/os-Linux/time.c
index b28cc35da21f..ea720149f5b8 100644
--- a/arch/um/os-Linux/time.c
+++ b/arch/um/os-Linux/time.c
@@ -26,11 +26,11 @@ static inline long long timeval_to_ns(const struct timeval *tv)
 
 static inline long long timespec_to_ns(const struct timespec *ts)
 {
-	return ((long long) ts->tv_sec * UM_NSEC_PER_SEC) +
-		ts->tv_nsec;
+	return ((long long) ts->tv_sec * UM_NSEC_PER_SEC) + ts->tv_nsec;
 }
 
-long long os_persistent_clock_emulation (void) {
+long long os_persistent_clock_emulation(void)
+{
 	struct timespec realtime_tp;
 
 	clock_gettime(CLOCK_REALTIME, &realtime_tp);
@@ -40,94 +40,45 @@ long long os_persistent_clock_emulation (void) {
 /**
  * os_timer_create() - create an new posix (interval) timer
  */
-int os_timer_create(void* timer) {
-
-	timer_t* t = timer;
-
-	if(t == NULL) {
-		t = &event_high_res_timer;
-	}
+int os_timer_create(void)
+{
+	timer_t *t = &event_high_res_timer;
 
-	if (timer_create(
-		CLOCK_MONOTONIC,
-		NULL,
-		t) == -1) {
+	if (timer_create(CLOCK_MONOTONIC, NULL, t) == -1)
 		return -1;
-	}
+
 	return 0;
 }
 
-int os_timer_set_interval(void* timer, void* i)
+int os_timer_set_interval(void)
 {
 	struct itimerspec its;
 	unsigned long long nsec;
-	timer_t* t = timer;
-	struct itimerspec* its_in = i;
-
-	if(t == NULL) {
-		t = &event_high_res_timer;
-	}
 
 	nsec = UM_NSEC_PER_SEC / UM_HZ;
 
-	if(its_in != NULL) {
-		its.it_value.tv_sec = its_in->it_value.tv_sec;
-		its.it_value.tv_nsec = its_in->it_value.tv_nsec;
-	} else {
-		its.it_value.tv_sec = 0;
-		its.it_value.tv_nsec = nsec;
-	}
+	its.it_value.tv_sec = 0;
+	its.it_value.tv_nsec = nsec;
 
 	its.it_interval.tv_sec = 0;
 	its.it_interval.tv_nsec = nsec;
 
-	if(timer_settime(*t, 0, &its, NULL) == -1) {
+	if (timer_settime(event_high_res_timer, 0, &its, NULL) == -1)
 		return -errno;
-	}
 
 	return 0;
 }
 
-/**
- * os_timer_remain() - returns the remaining nano seconds of the given interval
- *                     timer
- * Because this is the remaining time of an interval timer, which correspondends
- * to HZ, this value can never be bigger than one second. Just
- * the nanosecond part of the timer is returned.
- * The returned time is relative to the start time of the interval timer.
- * Return an negative value in an error case.
- */
-long os_timer_remain(void* timer)
-{
-	struct itimerspec its;
-	timer_t* t = timer;
-
-	if(t == NULL) {
-		t = &event_high_res_timer;
-	}
-
-	if(timer_gettime(t, &its) == -1) {
-		return -errno;
-	}
-
-	return its.it_value.tv_nsec;
-}
-
 int os_timer_one_shot(unsigned long ticks)
 {
-	struct itimerspec its;
-	unsigned long long nsec;
-	unsigned long sec;
+	unsigned long long nsec = ticks + 1;
+	struct itimerspec its = {
+		.it_value.tv_sec = nsec / UM_NSEC_PER_SEC,
+		.it_value.tv_nsec = nsec % UM_NSEC_PER_SEC,
 
-    nsec = (ticks + 1);
-    sec = nsec / UM_NSEC_PER_SEC;
-	nsec = nsec % UM_NSEC_PER_SEC;
-
-	its.it_value.tv_sec = nsec / UM_NSEC_PER_SEC;
-	its.it_value.tv_nsec = nsec;
-
-	its.it_interval.tv_sec = 0;
-	its.it_interval.tv_nsec = 0; // we cheat here
+		.it_interval.tv_sec = 0,
+		.it_interval.tv_nsec = 0, // we cheat here
+	};
 
 	timer_settime(event_high_res_timer, 0, &its, NULL);
 	return 0;
@@ -135,24 +86,13 @@ int os_timer_one_shot(unsigned long ticks)
 
 /**
  * os_timer_disable() - disable the posix (interval) timer
- * Returns the remaining interval timer time in nanoseconds
  */
-long long os_timer_disable(void)
+void os_timer_disable(void)
 {
 	struct itimerspec its;
 
 	memset(&its, 0, sizeof(struct itimerspec));
-	timer_settime(event_high_res_timer, 0, &its, &its);
-
-	return its.it_value.tv_sec * UM_NSEC_PER_SEC + its.it_value.tv_nsec;
-}
-
-long long os_vnsecs(void)
-{
-	struct timespec ts;
-
-	clock_gettime(CLOCK_PROCESS_CPUTIME_ID,&ts);
-	return timespec_to_ns(&ts);
+	timer_settime(event_high_res_timer, 0, &its, NULL);
 }
 
 long long os_nsecs(void)
@@ -169,21 +109,14 @@ long long os_nsecs(void)
  */
 void os_idle_sleep(unsigned long long nsecs)
 {
-	struct timespec ts;
-
-	if (nsecs <= 0) {
-		return;
-	}
-
-	ts = ((struct timespec) {
-			.tv_sec  = nsecs / UM_NSEC_PER_SEC,
-			.tv_nsec = nsecs % UM_NSEC_PER_SEC
-	});
+	struct timespec ts = {
+		.tv_sec  = nsecs / UM_NSEC_PER_SEC,
+		.tv_nsec = nsecs % UM_NSEC_PER_SEC
+	};
 
 	/*
 	 * Relay the signal if clock_nanosleep is interrupted.
 	 */
-	if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL)) {
+	if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL))
 		deliver_alarm();
-	}
 }
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
