Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4A9AEBF5
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju1u1e7ltUq7779F3RnqRQbF+E7Locv1MgIX0rhxyNg=; b=eqhg2FiOa6ezqj
	twQJvhRjYO14IloKUy6XBtNhWxa/I64yOjKdXP2dEqhAphjSex6k6EthYt9oxr90ENDyVqGCCy+3V
	K2b/rWWQ+8Tm6pEMy/3VdjQraoo34afoMwaO+bp5t9QyZNZ86bdqCi8Cdbk1YYYx2qzF1KPGMt2NO
	j0iweW3YcU1MRsr0AmArBGHMREdP0TO+Ciq/7oGDeK3RnWtDY9JADFIgb0k1dMl4hhEOalZCv3spA
	KIgNBqTc+tBYcnBoHtyxWYFT9OybZr4vJHYdGl4+WfJ4yz9L7/k5su08N7evwuTcST9hElA7CVLFK
	AUgvJuPOmURZ0J8Ez0fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gVI-0006Mz-QV; Tue, 10 Sep 2019 13:48:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gVC-0006Ev-9Y
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:48:16 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7gV7-0006bX-Vr; Tue, 10 Sep 2019 15:48:10 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 2/2] um: time-travel: restrict time update in IRQ handler
Date: Tue, 10 Sep 2019 15:47:56 +0200
Message-Id: <1568123276-Iaa969e227dff394fd66cc145454590a435cf646d@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1568123276-I40b0f15a0fdd0f17e6636fbfe661e0d3d52e5ef7@changeid>
References: <1568123276-I40b0f15a0fdd0f17e6636fbfe661e0d3d52e5ef7@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064814_782140_DA79A703 
X-CRM114-Status: GOOD (  12.20  )
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

We currently do the time updates in the timer handler, even if
we just call the timer handler ourselves. In basic mode we must
in fact do it there since otherwise the OS timer signal won't
move time forward, but in inf-cpu mode we don't need to, and
it's harder to understand.

Restrict the update there to basic mode, adding a comment, and
do it in the idle code otherwise.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/process.c |  9 ++++++---
 arch/um/kernel/time.c    | 10 +++++++++-
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index cf242fc5fe94..094028720567 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -220,10 +220,13 @@ static void time_travel_sleep(unsigned long long duration)
 		if (time_travel_timer_mode == TT_TMR_ONESHOT)
 			time_travel_set_timer_mode(TT_TMR_DISABLED);
 		/*
-		 * time_travel_time will be adjusted in the timer
-		 * IRQ handler so it works even when the signal
-		 * comes from the OS timer
+		 * In basic mode, time_travel_time will be adjusted in
+		 * the timer IRQ handler so it works even when the signal
+		 * comes from the OS timer, see there.
 		 */
+		if (time_travel_mode != TT_MODE_BASIC)
+			time_travel_set_time(time_travel_timer_expiry);
+
 		deliver_alarm();
 	} else {
 		time_travel_set_time(next);
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 4ecabf7e54c9..15f2e88ba927 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -39,7 +39,15 @@ void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
 {
 	unsigned long flags;
 
-	if (time_travel_mode != TT_MODE_OFF)
+	/*
+	 * In basic time-travel mode we still get real interrupts
+	 * (signals) but since we don't read time from the OS, we
+	 * must update the simulated time here to the expiry when
+	 * we get a signal.
+	 * This is not the case in inf-cpu mode, since there we
+	 * never get any real signals from the OS.
+	 */
+	if (time_travel_mode == TT_MODE_BASIC)
 		time_travel_set_time(time_travel_timer_expiry);
 
 	local_irq_save(flags);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
