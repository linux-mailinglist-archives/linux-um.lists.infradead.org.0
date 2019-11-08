Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716F2F3F29
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXxVqD7ZV12UriVua+QUm6Qrs+OtN1dfKcEWpJAOOq4=; b=lL9Q1Eb7hlNXfJ
	ARWIiulZEbyAGOeaD95yMwpAmmCQ1TSGwdG0KmWGU8P1N9dEDjkzW91QDSykIFtkmxuR6WtiNpzxl
	ABW1Inkc9ErpwJsIwMILLPVABejx3qC2+Xhnqca7MpAZLNIgVBZz8Ch+A9ZBIOJ6D20amqOXKqTeD
	GsyEyWhHdOZDD6c6sVcbfwify10W7FCb2xGH2u4gwgqAo6nYAA10A+9S0hrzRwizQEiLlEJh3d2Nn
	7PBvVal4zahBxfEyHb1jLESFUEA7S/3GjfTwckVqMg9vw2AxevRj0qqyyCHgCItRK8P4Zl7gMLN8J
	pVlQkBpboqvG13rWHp9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQj-0003hi-7i; Fri, 08 Nov 2019 05:03:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQf-0003gB-Vc
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so3294293pgh.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Os7sxGbrCVBlaAlLPunD2/qQGI9Z8mWuvflTyLE+gWg=;
 b=VsIS4Wzs6PYKq/drZnAY2J+F50L5cm58C23tfVQlWHeAD51tkARYiwwQkE28Ye12k8
 GF5X5OsLeqGr7ocaSV7k6j5x0P6BcMObfQ3hfD57TcRLe7FVoK8WPpVK0ahs6AHZ0x/T
 nLjiDQfxezn3LAcdO4pwOUpkfrkIBYxwf/zSANfbsoeNenmNI8OFdJjnRJkv87spCkr9
 NJPhEkM68BvAX5hRQYFJbzLVzPnOa1Laq+8lW/AOJo0+j5Q3O4OotdSQLJ9ZO6SPB3vl
 67LBOaxZMBmGCM2WpJ7fYhgsYyBzoHwBiJ1mHaEuk5z2451VCHh8q209PMZB4o09nZ78
 ambw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Os7sxGbrCVBlaAlLPunD2/qQGI9Z8mWuvflTyLE+gWg=;
 b=RNDJ7FMoaI10l5JygRzZ8+8e6yPu/hCEmkaEvqIPnQsV0sch9wWjQzMFfKuiOyXGui
 q+YUTaEpxY/KcjWfnXPYCTkChRWGk5GCHaAlXZqEI6lZaSeamiRLk5x338zFBPLgeeo2
 0QQXNU3/cGx/c/6i44gtevwLOEef7uFI9fV+E7nknkEtI1GrZcRBNjDwg5D7lC2civMx
 oqKBUhCaPdqD0qaEwadmblOd6l6DvOnXJk5+trJTfNBzxXMh9MoeuBDK2JobDx14iuGL
 TRLYDXsbMeGpufmrFd3RXoz70Zx+16L9UQDiRoddQ1vEJFeqylot99M++xeTcD3TLa1N
 oE+g==
X-Gm-Message-State: APjAAAU9lWk2UfLp+TswiZnLK7f2Nw0oNrSCLIaiONi8E/tn8FF2sQg9
 p48AQ2gHdtYf/tPIm0ks2eo=
X-Google-Smtp-Source: APXvYqzyMURSv6i4DEXm6TixqXPUaMMx+WGqXrqOcsUDWBe9Unkfi1CFCQniAXpGIEwBoARKF47nVQ==
X-Received: by 2002:a17:902:8a8e:: with SMTP id
 p14mr8125184plo.72.1573189405192; 
 Thu, 07 Nov 2019 21:03:25 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id q13sm3849361pjq.0.2019.11.07.21.03.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:24 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id B7349201ACFCD5; Fri,  8 Nov 2019 14:03:21 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 09/37] lkl: timers, time and delay support
Date: Fri,  8 Nov 2019 14:02:24 +0900
Message-Id: <3414f0b2c46c2b65f53018fa06bb69b4c425d453.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210326_016800_2DC468F6 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Clockevent driver based on host timer operations and clocksource
driver and udelay support based on host time operations.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/uapi/asm/host_ops.h |  13 +++
 arch/um/lkl/kernel/time.c               | 145 ++++++++++++++++++++++++
 2 files changed, 158 insertions(+)
 create mode 100644 arch/um/lkl/kernel/time.c

diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index 1c839d7139f8..c9f77dd7fbe7 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -48,6 +48,13 @@ struct lkl_jmp_buf {
  * @mem_alloc - allocate memory
  * @mem_free - free memory
  *
+ * @timer_create - allocate a host timer that runs fn(arg) when the timer
+ * fires.
+ * @timer_free - disarms and free the timer
+ * @timer_set_oneshot - arm the timer to fire once, after delta ns.
+ * @timer_set_periodic - arm the timer to fire periodically, with a period of
+ * delta ns.
+ *
  * @gettid - returns the host thread id of the caller, which need not
  * be the same as the handle returned by thread_create
  *
@@ -88,6 +95,12 @@ struct lkl_host_operations {
 	void *(*mem_alloc)(unsigned long mem);
 	void (*mem_free)(void *mem);
 
+	unsigned long long (*time)(void);
+
+	void *(*timer_alloc)(void (*fn)(void *), void *arg);
+	int (*timer_set_oneshot)(void *timer, unsigned long delta);
+	void (*timer_free)(void *timer);
+
 	long (*gettid)(void);
 
 	void (*jmp_buf_set)(struct lkl_jmp_buf *jmpb, void (*f)(void));
diff --git a/arch/um/lkl/kernel/time.c b/arch/um/lkl/kernel/time.c
new file mode 100644
index 000000000000..b8320e1bfa53
--- /dev/null
+++ b/arch/um/lkl/kernel/time.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/clocksource.h>
+#include <linux/clockchips.h>
+#include <linux/jiffies.h>
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <asm/host_ops.h>
+
+static unsigned long long boot_time;
+
+void __ndelay(unsigned long nsecs)
+{
+	unsigned long long start = lkl_ops->time();
+
+	while (lkl_ops->time() < start + nsecs)
+		;
+}
+
+void __udelay(unsigned long usecs)
+{
+	__ndelay(usecs * NSEC_PER_USEC);
+}
+
+void __const_udelay(unsigned long xloops)
+{
+	__udelay(xloops / 0x10c7ul);
+}
+
+void calibrate_delay(void)
+{
+}
+
+void read_persistent_clock(struct timespec *ts)
+{
+	*ts = ns_to_timespec(lkl_ops->time());
+}
+
+/*
+ * Scheduler clock - returns current time in nanosec units.
+ *
+ */
+unsigned long long sched_clock(void)
+{
+	if (!boot_time)
+		return 0;
+
+	return lkl_ops->time() - boot_time;
+}
+
+static u64 clock_read(struct clocksource *cs)
+{
+	return lkl_ops->time();
+}
+
+static struct clocksource clocksource = {
+	.name	= "lkl",
+	.rating = 499,
+	.read	= clock_read,
+	.flags	= CLOCK_SOURCE_IS_CONTINUOUS,
+	.mask	= CLOCKSOURCE_MASK(64),
+};
+
+static void *timer;
+
+static int timer_irq;
+
+static void timer_fn(void *arg)
+{
+	lkl_trigger_irq(timer_irq);
+}
+
+static int clockevent_set_state_shutdown(struct clock_event_device *evt)
+{
+	if (timer) {
+		lkl_ops->timer_free(timer);
+		timer = NULL;
+	}
+
+	return 0;
+}
+
+static int clockevent_set_state_oneshot(struct clock_event_device *evt)
+{
+	timer = lkl_ops->timer_alloc(timer_fn, NULL);
+	if (!timer)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static irqreturn_t timer_irq_handler(int irq, void *dev_id)
+{
+	struct clock_event_device *dev = (struct clock_event_device *)dev_id;
+
+	dev->event_handler(dev);
+
+	return IRQ_HANDLED;
+}
+
+static int clockevent_next_event(unsigned long ns,
+				 struct clock_event_device *evt)
+{
+	return lkl_ops->timer_set_oneshot(timer, ns);
+}
+
+static struct clock_event_device clockevent = {
+	.name			= "lkl",
+	.features		= CLOCK_EVT_FEAT_ONESHOT,
+	.set_state_oneshot	= clockevent_set_state_oneshot,
+	.set_next_event		= clockevent_next_event,
+	.set_state_shutdown	= clockevent_set_state_shutdown,
+};
+
+static struct irqaction irq0  = {
+	.handler	= timer_irq_handler,
+	.flags		= IRQF_NOBALANCING | IRQF_TIMER,
+	.dev_id		= &clockevent,
+	.name		= "timer"
+};
+
+void __init time_init(void)
+{
+	int ret;
+
+	if (!lkl_ops->timer_alloc || !lkl_ops->timer_free ||
+	    !lkl_ops->timer_set_oneshot || !lkl_ops->time) {
+		pr_err("lkl: no time or timer support provided by host\n");
+		return;
+	}
+
+	timer_irq = lkl_get_free_irq("timer");
+	setup_irq(timer_irq, &irq0);
+
+	ret = clocksource_register_khz(&clocksource, 1000000);
+	if (ret)
+		pr_err("lkl: unable to register clocksource\n");
+
+	clockevents_config_and_register(&clockevent, NSEC_PER_SEC, 1,
+					ULONG_MAX);
+
+	boot_time = lkl_ops->time();
+	pr_info("lkl: time and timers initialized (irq%d)\n", timer_irq);
+}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
