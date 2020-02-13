Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898E515BF45
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 14:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pt3bfl5dVgQ4JaxPRgiqfaCiP/ZROWBP5jId2+RFpEY=; b=f6+ZhkiLl+1NL1
	jf+xYES/n4JD+p1U1j50vTwOLrRKcDmLN0iVPZw2Mw+3XeVu0p3xsjtaPIVaCneeQczxRHXUC9yQT
	SB8Efw/fsTo1A2LPRIxmn/RP/IYyRMwn8oeSbtMZmqbSbr/i0/IzOqShEnlMHTxVd9n/kQkvEHOoJ
	vUsJXj5LJh1czpPRF7+QrlsPLPKqF7IOX2O3mSjbNca9tL63C+7ysnvQh7f4esJexfDFfKA9O6sqq
	4Me87yQLYvLQrLNiTAaSZJB1avElalbll+x8kKNzPqgMcbWB83jquNTrcDSZPhpaHxwOzeikB1Vex
	WpmetTqP2Pw9A4FuCLBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EWL-0001xC-F8; Thu, 13 Feb 2020 13:27:09 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EWI-0001vE-3E
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 13:27:07 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2EWF-008mZE-5Z; Thu, 13 Feb 2020 14:27:03 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 5/6] um: implement ndelay/udelay in time-travel mode
Date: Thu, 13 Feb 2020 14:26:48 +0100
Message-Id: <20200213132651.20506-6-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213132651.20506-1-johannes@sipsolutions.net>
References: <20200213132651.20506-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_052706_147543_91DD71E1 
X-CRM114-Status: GOOD (  11.72  )
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

In external or inf-cpu time-travel mode, ndelay/udelay currently
just waste CPU time since the simulation time doesn't advance.
Implement them properly in this case.

Note that the "if (time_travel_mode == ...)" parts compile out
if CONFIG_UML_TIME_TRAVEL_SUPPORT isn't set, time_travel_mode is
defined to TT_MODE_OFF in that case.

Change-Id: I2aceb90291d74a46907818e43b90cab47c9f09d1
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/asm/Kbuild            |  1 -
 arch/um/include/asm/delay.h           | 30 +++++++++++++++++++++++++++
 arch/um/include/linux/time-internal.h |  6 ++++++
 arch/um/kernel/time.c                 |  6 ++++++
 4 files changed, 42 insertions(+), 1 deletion(-)
 create mode 100644 arch/um/include/asm/delay.h

diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index db7d9d4e30d8..8d435f8a6dec 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -3,7 +3,6 @@ generic-y += bpf_perf_event.h
 generic-y += bug.h
 generic-y += compat.h
 generic-y += current.h
-generic-y += delay.h
 generic-y += device.h
 generic-y += emergency-restart.h
 generic-y += exec.h
diff --git a/arch/um/include/asm/delay.h b/arch/um/include/asm/delay.h
new file mode 100644
index 000000000000..56fc2b8f2dd0
--- /dev/null
+++ b/arch/um/include/asm/delay.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __UM_DELAY_H
+#define __UM_DELAY_H
+#include <asm-generic/delay.h>
+#include <linux/time-internal.h>
+
+static inline void um_ndelay(unsigned long nsecs)
+{
+	if (time_travel_mode == TT_MODE_INFCPU ||
+	    time_travel_mode == TT_MODE_EXTERNAL) {
+		time_travel_ndelay(nsecs);
+		return;
+	}
+	ndelay(nsecs);
+}
+#undef ndelay
+#define ndelay um_ndelay
+
+static inline void um_udelay(unsigned long usecs)
+{
+	if (time_travel_mode == TT_MODE_INFCPU ||
+	    time_travel_mode == TT_MODE_EXTERNAL) {
+		time_travel_ndelay(1000 * usecs);
+		return;
+	}
+	udelay(usecs);
+}
+#undef udelay
+#define udelay um_udelay
+#endif /* __UM_DELAY_H */
diff --git a/arch/um/include/linux/time-internal.h b/arch/um/include/linux/time-internal.h
index e21655926f08..f3b03d39a854 100644
--- a/arch/um/include/linux/time-internal.h
+++ b/arch/um/include/linux/time-internal.h
@@ -75,4 +75,10 @@ static inline void time_travel_wait_readable(int fd)
 {
 }
 #endif /* CONFIG_UML_TIME_TRAVEL_SUPPORT */
+
+/*
+ * Without CONFIG_UML_TIME_TRAVEL_SUPPORT this is a linker error if used,
+ * which is intentional since we really shouldn't link it in that case.
+ */
+void time_travel_ndelay(unsigned long nsec);
 #endif /* __TIMER_INTERNAL_H__ */
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 15c4825b857e..25eaa6a0c658 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -374,6 +374,12 @@ static void time_travel_update_time(unsigned long long next, bool idle)
 	time_travel_del_event(&ne);
 }
 
+void time_travel_ndelay(unsigned long nsec)
+{
+	time_travel_update_time(time_travel_time + nsec, false);
+}
+EXPORT_SYMBOL(time_travel_ndelay);
+
 void time_travel_add_irq_event(struct time_travel_event *e)
 {
 	BUG_ON(time_travel_mode != TT_MODE_EXTERNAL);
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
