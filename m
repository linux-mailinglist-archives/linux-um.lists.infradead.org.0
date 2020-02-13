Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADF815BF48
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 14:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jq5LnM8eY4TZii/UyWdSmRUQoj9zwhLAMsnKTX6MNf8=; b=fBbg695pzblDJ9
	ElcV22+lDjq24Xi7IUb/UG4bhqz3ImJkgMLjVj6s+JFi8G/YeU887qsCKAiF6ylcaJyBWO/uo1YHj
	OYqrKkHCPgME1WRJIHGT5kPt5UPml2FaZ8Trzg/j0WDH9w5Pw8frU/wfhiQKU9y0Mw4qZISEnlgT8
	XgR9zJCbkyYzj6nMucc57cIH1fxtJOgeX5d+mqd6ABRyQJN77aAIub/Ez9gO71/nV2ApFxUVoFCTz
	4aailluqZQIYYfmlr1Ry6tYiFMHIp/Vf3NjMcMp2lQcIgLE8KZB35XZZgpw29KEwZhrrUmnyVaLie
	tIT2d3Ww77fSu18Xwf9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EWN-0001yQ-2T; Thu, 13 Feb 2020 13:27:11 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EWI-0001vI-3K
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 13:27:09 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2EWF-008mZE-DO; Thu, 13 Feb 2020 14:27:03 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 6/6] um: implement cpu_relax() as ndelay(1) for time-travel
Date: Thu, 13 Feb 2020 14:26:49 +0100
Message-Id: <20200213132651.20506-7-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213132651.20506-1-johannes@sipsolutions.net>
References: <20200213132651.20506-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_052706_151632_3ED9D6D7 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

In time-travel mode, cpu_relax() currently does actual CPU relax,
but that doesn't affect the simulation. Ideally, we wouldn't run
anything that uses it in simulation, but if we actually have virtio
devices combined with the same simulation it's possible. Implement
cpu_relax() as ndelay(1) in this case, using time_travel_ndelay(1)
directly to catch errors if this is used erroneously in builds that
don't set CONFIG_UML_TIME_TRAVEL_SUPPORT.

While at it, convert it to an __always_inline and also add that to
rep_nop() like the original does now.

Change-Id: I9c86c5c488c1cb2f7eabf4e8b8d1da9e24163ca9
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/x86/um/asm/processor.h | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/x86/um/asm/processor.h b/arch/x86/um/asm/processor.h
index 593d5f3902bd..478710384b34 100644
--- a/arch/x86/um/asm/processor.h
+++ b/arch/x86/um/asm/processor.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __UM_PROCESSOR_H
 #define __UM_PROCESSOR_H
+#include <linux/time-internal.h>
 
 /* include faultinfo structure */
 #include <sysdep/faultinfo.h>
@@ -21,12 +22,19 @@
 #include <asm/user.h>
 
 /* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
-static inline void rep_nop(void)
+static __always_inline void rep_nop(void)
 {
 	__asm__ __volatile__("rep;nop": : :"memory");
 }
 
-#define cpu_relax()		rep_nop()
+static __always_inline void cpu_relax(void)
+{
+	if (time_travel_mode == TT_MODE_INFCPU ||
+	    time_travel_mode == TT_MODE_EXTERNAL)
+		time_travel_ndelay(1);
+	else
+		rep_nop();
+}
 
 #define task_pt_regs(t) (&(t)->thread.regs)
 
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
