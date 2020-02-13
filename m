Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF8215BF4A
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 14:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pc4ycWb83CQOAE66wGicHkyrnwj8/jbS2hxeJga68xY=; b=TD4faXNv7Qnyef
	R5io3DlhaQAyppq2FxrSpNH+wbNbKrQzVyTccKiL2S2hH5R3D7EjODJK8BY3Y9yHxgf0M9w8M0qZ2
	WdMv+BHwNhfbHGQd3/dBai8af+B9KFVYPIma7PczD0suenEm9r7C1jFkRqyKv6F4j9opWSoTtoz9j
	wPHM9NJWei7+Md+2flPKrH6abotpnAHi+C6mU5m8cSNGfm7UnnYZvzDWDFR7c2fx/bR5lIv/GCdjx
	0e6MAcFBrPMLXDcMVpkJ1fmLyoTSuw07sofupcbA4pmGjSUSCiBzBpnpWhgyCtSihjjZ5CXOmoZh2
	owNfJwtbhe14FSph+k1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EWQ-00020E-Hl; Thu, 13 Feb 2020 13:27:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EWI-0001v8-3N
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 13:27:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2EWE-008mZE-0H; Thu, 13 Feb 2020 14:27:02 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 2/6] um: time-travel: rewrite as an event scheduler
Date: Thu, 13 Feb 2020 14:26:45 +0100
Message-Id: <20200213132651.20506-3-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213132651.20506-1-johannes@sipsolutions.net>
References: <20200213132651.20506-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_052706_454272_49BCE5F6 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

Instead of tracking all the various timer configurations,
modify the time-travel mode to have an event scheduler and
use a timer event on the scheduler to handle the different
timer configurations.

This doesn't change the function right now, but it prepares
the code for having different kinds of events in the future
(i.e. interrupts coming from other devices that are part of
co-simulation.)

While at it, also move time_travel_sleep() to time.c to
reduce the externally visible API surface.

Also, we really should mark time-travel as incompatible with
SMP, even if UML doesn't support SMP yet.

Finally, I noticed a bug while developing this - if we move
time forward due to consuming time while reading the clock,
we might move across the next event and that would cause us
to go backward in time when we then handle that event. Fix
that by invoking the whole event machine in this case, but
in order to simplify this, make reading the clock only cost
something when interrupts are not disabled. Otherwise, we'd
have to hook into the interrupt delivery machinery etc. and
that's somewhat intrusive.

Change-Id: I5687e9cdda059457fa2771ee06f9b4f399dc6f70
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Reviewed-on: https://git-ger-8.devtools.intel.com/gerrit/96865
---
 arch/um/Kconfig                       |   1 +
 arch/um/include/linux/time-internal.h |  65 +++-----
 arch/um/kernel/process.c              |  37 -----
 arch/um/kernel/time.c                 | 221 ++++++++++++++++++++++++--
 4 files changed, 229 insertions(+), 95 deletions(-)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 0917f8443c28..817a4c838a06 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -191,6 +191,7 @@ config UML_TIME_TRAVEL_SUPPORT
 	prompt "Support time-travel mode (e.g. for test execution)"
 	# inf-cpu mode is incompatible with the benchmarking
 	depends on !RAID6_PQ_BENCHMARK
+	depends on !SMP
 	help
 	  Enable this option to support time travel inside the UML instance.
 
diff --git a/arch/um/include/linux/time-internal.h b/arch/um/include/linux/time-internal.h
index 2d2d13c9b46f..eb1f84616edb 100644
--- a/arch/um/include/linux/time-internal.h
+++ b/arch/um/include/linux/time-internal.h
@@ -6,6 +6,7 @@
 
 #ifndef __TIMER_INTERNAL_H__
 #define __TIMER_INTERNAL_H__
+#include <linux/list.h>
 
 #define TIMER_MULTIPLIER 256
 #define TIMER_MIN_DELTA  500
@@ -16,61 +17,35 @@ enum time_travel_mode {
 	TT_MODE_INFCPU,
 };
 
-enum time_travel_timer_mode {
-	TT_TMR_DISABLED,
-	TT_TMR_ONESHOT,
-	TT_TMR_PERIODIC,
+#ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
+struct time_travel_event {
+	unsigned long long time;
+	void (*fn)(struct time_travel_event *d);
+	struct list_head list;
+	bool pending, onstack;
 };
 
-#ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
 extern enum time_travel_mode time_travel_mode;
-extern unsigned long long time_travel_time;
-extern enum time_travel_timer_mode time_travel_timer_mode;
-extern unsigned long long time_travel_timer_expiry;
-extern unsigned long long time_travel_timer_interval;
 
-static inline void time_travel_set_time(unsigned long long ns)
-{
-	time_travel_time = ns;
-}
+void time_travel_sleep(unsigned long long duration);
 
-static inline void time_travel_set_timer_mode(enum time_travel_timer_mode mode)
+static inline void
+time_travel_set_event_fn(struct time_travel_event *e,
+			 void (*fn)(struct time_travel_event *d))
 {
-	time_travel_timer_mode = mode;
-}
-
-static inline void time_travel_set_timer_expiry(unsigned long long expiry)
-{
-	time_travel_timer_expiry = expiry;
-}
-
-static inline void time_travel_set_timer_interval(unsigned long long interval)
-{
-	time_travel_timer_interval = interval;
+	e->fn = fn;
 }
 #else
-#define time_travel_mode TT_MODE_OFF
-#define time_travel_time 0
-#define time_travel_timer_expiry 0
-#define time_travel_timer_interval 0
-
-static inline void time_travel_set_time(unsigned long long ns)
-{
-}
-
-static inline void time_travel_set_timer_mode(enum time_travel_timer_mode mode)
-{
-}
+struct time_travel_event {
+};
 
-static inline void time_travel_set_timer_expiry(unsigned long long expiry)
-{
-}
+#define time_travel_mode TT_MODE_OFF
 
-static inline void time_travel_set_timer_interval(unsigned long long interval)
+static inline void time_travel_sleep(unsigned long long duration)
 {
 }
 
-#define time_travel_timer_mode TT_TMR_DISABLED
-#endif
-
-#endif
+/* this is a macro so the event/function need not exist */
+#define time_travel_set_event_fn(e, fn) do {} while (0)
+#endif /* CONFIG_UML_TIME_TRAVEL_SUPPORT */
+#endif /* __TIMER_INTERNAL_H__ */
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index 04f99b3b2acd..270a07e3134e 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -203,43 +203,6 @@ void initial_thread_cb(void (*proc)(void *), void *arg)
 	kmalloc_ok = save_kmalloc_ok;
 }
 
-static void time_travel_sleep(unsigned long long duration)
-{
-	unsigned long long next = time_travel_time + duration;
-
-	if (time_travel_mode != TT_MODE_INFCPU)
-		os_timer_disable();
-
-	while (time_travel_timer_mode == TT_TMR_PERIODIC &&
-	       time_travel_timer_expiry < time_travel_time)
-		time_travel_set_timer_expiry(time_travel_timer_expiry +
-					     time_travel_timer_interval);
-
-	if (time_travel_timer_mode != TT_TMR_DISABLED &&
-	    time_travel_timer_expiry < next) {
-		if (time_travel_timer_mode == TT_TMR_ONESHOT)
-			time_travel_set_timer_mode(TT_TMR_DISABLED);
-		/*
-		 * In basic mode, time_travel_time will be adjusted in
-		 * the timer IRQ handler so it works even when the signal
-		 * comes from the OS timer, see there.
-		 */
-		if (time_travel_mode != TT_MODE_BASIC)
-			time_travel_set_time(time_travel_timer_expiry);
-
-		deliver_alarm();
-	} else {
-		time_travel_set_time(next);
-	}
-
-	if (time_travel_mode != TT_MODE_INFCPU) {
-		if (time_travel_timer_mode == TT_TMR_PERIODIC)
-			os_timer_set_interval(time_travel_timer_interval);
-		else if (time_travel_timer_mode == TT_TMR_ONESHOT)
-			os_timer_one_shot(time_travel_timer_expiry - next);
-	}
-}
-
 static void um_idle_sleep(void)
 {
 	unsigned long long duration = UM_NSEC_PER_SEC;
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index a849d391e909..cdebe96308d7 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2012-2014 Cisco Systems
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
+ * Copyright (C) 2019 Intel Corporation
  */
 
 #include <linux/clockchips.h>
@@ -23,16 +24,201 @@
 
 #ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
 enum time_travel_mode time_travel_mode;
-unsigned long long time_travel_time;
-enum time_travel_timer_mode time_travel_timer_mode;
-unsigned long long time_travel_timer_expiry;
-unsigned long long time_travel_timer_interval;
 
 static bool time_travel_start_set;
 static unsigned long long time_travel_start;
-#else
+static unsigned long long time_travel_time;
+static LIST_HEAD(time_travel_events);
+static unsigned long long time_travel_timer_interval;
+static unsigned long long time_travel_next_event;
+static struct time_travel_event time_travel_timer_event;
+
+static void time_travel_set_time(unsigned long long ns)
+{
+	if (unlikely(ns < time_travel_time))
+		panic("time-travel: time goes backwards %lld -> %lld\n",
+		      time_travel_time, ns);
+	time_travel_time = ns;
+}
+
+static struct time_travel_event *time_travel_first_event(void)
+{
+	return list_first_entry_or_null(&time_travel_events,
+					struct time_travel_event,
+					list);
+}
+
+static void __time_travel_add_event(struct time_travel_event *e,
+				    unsigned long long time)
+{
+	struct time_travel_event *tmp;
+	bool inserted = false;
+
+	if (WARN(time_travel_mode == TT_MODE_BASIC &&
+		 e != &time_travel_timer_event,
+		 "only timer events can be handled in basic mode"))
+		return;
+
+	if (e->pending)
+		return;
+
+	e->pending = true;
+	e->time = time;
+
+	list_for_each_entry(tmp, &time_travel_events, list) {
+		/*
+		 * Add the new entry before one with higher time,
+		 * or if they're equal and both on stack, because
+		 * in that case we need to unwind the stack in the
+		 * right order, and the later event (timer sleep
+		 * or such) must be dequeued first.
+		 */
+		if ((tmp->time > e->time) ||
+		    (tmp->time == e->time && tmp->onstack && e->onstack)) {
+			list_add_tail(&e->list, &tmp->list);
+			inserted = true;
+			break;
+		}
+	}
+
+	if (!inserted)
+		list_add_tail(&e->list, &time_travel_events);
+
+	tmp = time_travel_first_event();
+	time_travel_next_event = tmp->time;
+}
+
+static void time_travel_add_event(struct time_travel_event *e,
+				  unsigned long long time)
+{
+	if (WARN_ON(!e->fn))
+		return;
+
+	__time_travel_add_event(e, time);
+}
+
+void time_travel_periodic_timer(struct time_travel_event *e)
+{
+	time_travel_add_event(&time_travel_timer_event,
+			      time_travel_time + time_travel_timer_interval);
+	deliver_alarm();
+}
+
+static void time_travel_deliver_event(struct time_travel_event *e)
+{
+	/* this is basically just deliver_alarm(), handles IRQs itself */
+	e->fn(e);
+}
+
+static bool time_travel_del_event(struct time_travel_event *e)
+{
+	if (!e->pending)
+		return false;
+	list_del(&e->list);
+	e->pending = false;
+	return true;
+}
+
+static void time_travel_update_time(unsigned long long next, bool retearly)
+{
+	struct time_travel_event ne = {
+		.onstack = true,
+	};
+	struct time_travel_event *e;
+	bool finished = retearly;
+
+	/* add it without a handler - we deal with that specifically below */
+	__time_travel_add_event(&ne, next);
+
+	do {
+		e = time_travel_first_event();
+
+		BUG_ON(!e);
+		time_travel_set_time(e->time);
+
+		/* new events may have been inserted while we were waiting */
+		if (e == time_travel_first_event()) {
+			BUG_ON(!time_travel_del_event(e));
+			BUG_ON(time_travel_time != e->time);
+
+			if (e == &ne) {
+				finished = true;
+			} else {
+				if (e->onstack)
+					panic("On-stack event dequeued outside of the stack! time=%lld, event time=%lld, event=%pS\n",
+					      time_travel_time, e->time, e);
+				time_travel_deliver_event(e);
+			}
+		}
+	} while (!finished);
+
+	time_travel_del_event(&ne);
+}
+
+static void time_travel_oneshot_timer(struct time_travel_event *e)
+{
+	deliver_alarm();
+}
+
+void time_travel_sleep(unsigned long long duration)
+{
+	unsigned long long next = time_travel_time + duration;
+
+	if (time_travel_mode == TT_MODE_BASIC)
+		os_timer_disable();
+
+	time_travel_update_time(next, true);
+
+	if (time_travel_mode == TT_MODE_BASIC &&
+	    time_travel_timer_event.pending) {
+		if (time_travel_timer_event.fn == time_travel_periodic_timer) {
+			/*
+			 * This is somewhat wrong - we should get the first
+			 * one sooner like the os_timer_one_shot() below...
+			 */
+			os_timer_set_interval(time_travel_timer_interval);
+		} else {
+			os_timer_one_shot(time_travel_timer_event.time - next);
+		}
+	}
+}
+
+static void time_travel_handle_real_alarm(void)
+{
+	time_travel_set_time(time_travel_next_event);
+
+	time_travel_del_event(&time_travel_timer_event);
+
+	if (time_travel_timer_event.fn == time_travel_periodic_timer)
+		time_travel_add_event(&time_travel_timer_event,
+				      time_travel_time +
+				      time_travel_timer_interval);
+}
+
+static void time_travel_set_interval(unsigned long long interval)
+{
+	time_travel_timer_interval = interval;
+}
+#else /* CONFIG_UML_TIME_TRAVEL_SUPPORT */
 #define time_travel_start_set 0
 #define time_travel_start 0
+#define time_travel_time 0
+
+static inline void time_travel_update_time(unsigned long long ns, bool retearly)
+{
+}
+
+static inline void time_travel_handle_real_alarm(void)
+{
+}
+
+static void time_travel_set_interval(unsigned long long interval)
+{
+}
+
+/* these are empty macros so the struct/fn need not exist */
+#define time_travel_add_event(e, time) do { } while (0)
+#define time_travel_del_event(e) do { } while (0)
 #endif
 
 void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
@@ -48,7 +234,7 @@ void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
 	 * never get any real signals from the OS.
 	 */
 	if (time_travel_mode == TT_MODE_BASIC)
-		time_travel_set_time(time_travel_timer_expiry);
+		time_travel_handle_real_alarm();
 
 	local_irq_save(flags);
 	do_IRQ(TIMER_IRQ, regs);
@@ -58,7 +244,7 @@ void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
 static int itimer_shutdown(struct clock_event_device *evt)
 {
 	if (time_travel_mode != TT_MODE_OFF)
-		time_travel_set_timer_mode(TT_TMR_DISABLED);
+		time_travel_del_event(&time_travel_timer_event);
 
 	if (time_travel_mode != TT_MODE_INFCPU)
 		os_timer_disable();
@@ -71,9 +257,12 @@ static int itimer_set_periodic(struct clock_event_device *evt)
 	unsigned long long interval = NSEC_PER_SEC / HZ;
 
 	if (time_travel_mode != TT_MODE_OFF) {
-		time_travel_set_timer_mode(TT_TMR_PERIODIC);
-		time_travel_set_timer_expiry(time_travel_time + interval);
-		time_travel_set_timer_interval(interval);
+		time_travel_del_event(&time_travel_timer_event);
+		time_travel_set_event_fn(&time_travel_timer_event,
+					 time_travel_periodic_timer);
+		time_travel_set_interval(interval);
+		time_travel_add_event(&time_travel_timer_event,
+				      time_travel_time + interval);
 	}
 
 	if (time_travel_mode != TT_MODE_INFCPU)
@@ -88,8 +277,11 @@ static int itimer_next_event(unsigned long delta,
 	delta += 1;
 
 	if (time_travel_mode != TT_MODE_OFF) {
-		time_travel_set_timer_mode(TT_TMR_ONESHOT);
-		time_travel_set_timer_expiry(time_travel_time + delta);
+		time_travel_del_event(&time_travel_timer_event);
+		time_travel_set_event_fn(&time_travel_timer_event,
+					 time_travel_oneshot_timer);
+		time_travel_add_event(&time_travel_timer_event,
+				      time_travel_time + delta);
 	}
 
 	if (time_travel_mode != TT_MODE_INFCPU)
@@ -144,7 +336,10 @@ static u64 timer_read(struct clocksource *cs)
 		 * exact requested sleep amount, e.g. python's socket server,
 		 * see https://bugs.python.org/issue37026.
 		 */
-		time_travel_set_time(time_travel_time + TIMER_MULTIPLIER);
+		if (!irqs_disabled())
+			time_travel_update_time(time_travel_time +
+						TIMER_MULTIPLIER,
+						false);
 		return time_travel_time / TIMER_MULTIPLIER;
 	}
 
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
