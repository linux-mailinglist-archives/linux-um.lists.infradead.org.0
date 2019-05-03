Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850E3134F7
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 23:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jLePEk2EwyxeHPZCwxR3q9OBh9r6uLPdZVcfkmFMP8s=; b=rEI
	S29BZE1my/3UddHcVEzES5eTj3iY5LQy9lZtEFxEAWsMl3Y8jmUS/3xvYewFY1BVtJpZDh1i9XLmz
	ySLge4qX3Qm8TNAIkwsaW8iAoRak5Mty5vhuBqXQTyan3z0FF6CbVZPGsYduM2m8tMsFngxrfUv0I
	uvZu/bJfKTZRM3xO+HnjOQN1wFkdp9wYSMY42aJ9iTsXmveS03uaBgP6wX55viOsW5TajJzTgg1dM
	oqKPGwD4xwH1Q/t1hy1yondv8nFwgWQYNvkXG94FCv1ONl1jsSETSV+dUNWpiAu8O61IuvdIvIa6a
	DVglnIH7Eg6PQIZT4UMADTmkaZ5OL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfno-0007E0-SX; Fri, 03 May 2019 21:33:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfnk-0007CN-H0
 for linux-um@lists.infradead.org; Fri, 03 May 2019 21:33:07 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hMfnd-00035s-Hz; Fri, 03 May 2019 23:32:57 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 1/3] arch: um: fix os_timer_one_shot()
Date: Fri,  3 May 2019 23:32:47 +0200
Message-Id: <20190503213249.30008-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_143304_561828_2914A6F1 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

os_timer_one_shot() gets passed a value "unsigned long delta",
so must not have an "int ticks" as that actually ends up being
-1, and thus triggering a timer over and over again.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/shared/os.h | 2 +-
 arch/um/os-Linux/time.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index ebf23012a59b..d579adcb2690 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -252,7 +252,7 @@ extern void os_warn(const char *fmt, ...)
 extern void os_idle_sleep(unsigned long long nsecs);
 extern int os_timer_create(void* timer);
 extern int os_timer_set_interval(void* timer, void* its);
-extern int os_timer_one_shot(int ticks);
+extern int os_timer_one_shot(unsigned long ticks);
 extern long long os_timer_disable(void);
 extern long os_timer_remain(void* timer);
 extern void uml_idle_timer(void);
diff --git a/arch/um/os-Linux/time.c b/arch/um/os-Linux/time.c
index 0e39b9978729..b28cc35da21f 100644
--- a/arch/um/os-Linux/time.c
+++ b/arch/um/os-Linux/time.c
@@ -113,7 +113,7 @@ long os_timer_remain(void* timer)
 	return its.it_value.tv_nsec;
 }
 
-int os_timer_one_shot(int ticks)
+int os_timer_one_shot(unsigned long ticks)
 {
 	struct itimerspec its;
 	unsigned long long nsec;
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
