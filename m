Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125297CE9F
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 22:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RpuVJ1JEjN61NFbNskwxmzFj7kXkRrxTuqzw9jjt4IQ=; b=bDmK8n1BaA7zpp
	YRldIJlhdpAM/eyBa2FrPGQxUEVusHyuZgezzewVXHitWiIFsUC4gJ7t4vFph/e7YmZQBnYDa5Pbm
	JAtiJ5RspdZcuIQFGcPJzpBgzavFx/PIT0BwFvd+5vpp0UwAPYbBZ+DZKidy45cE1WcnHuqY7pJkf
	qY4/EWd1Jf1tXFr2KJv0dVfMUvaNbztEK3gIKNWRGpj5Mq9nI0QFtyVszYS9PLxcNdldAvIAxPB1V
	1wk0T9MIu1ENlWi8/UhHa17bbro2zVA9qnqwI1Cx5pKzi/9cE69JpI9Qd1+Rry3dDEox6E+KCMoJz
	NLHwBiKVWslMfxtQK40g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGS-0006tj-Cc; Wed, 31 Jul 2019 20:32:00 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEZ-0003MK-O1
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 20:30:05 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsvEU-0002AV-17; Wed, 31 Jul 2019 22:29:58 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 1/2] um: irq: Fix LAST_IRQ usage
Date: Wed, 31 Jul 2019 22:29:41 +0200
Message-Id: <20190731202942.29630-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133003_865835_028C0223 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Erel Geron <erelx.geron@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Erel Geron <erelx.geron@intel.com>

LAST_IRQ was used incorrectly in init_IRQ.
Fix this.

Signed-off-by: Erel Geron <erelx.geron@intel.com>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
Anton submitted a very similar patch, but didn't update init_IRQ(),
which seems necessary.
---
 arch/um/include/asm/irq.h | 2 +-
 arch/um/kernel/irq.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/include/asm/irq.h b/arch/um/include/asm/irq.h
index 49ed3e35b35a..ce7a78c3bcf2 100644
--- a/arch/um/include/asm/irq.h
+++ b/arch/um/include/asm/irq.h
@@ -23,7 +23,7 @@
 #define VECTOR_BASE_IRQ		15
 #define VECTOR_IRQ_SPACE	8
 
-#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ)
+#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ - 1)
 
 #else
 
diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
index efde1f16c603..402e59bdb65b 100644
--- a/arch/um/kernel/irq.c
+++ b/arch/um/kernel/irq.c
@@ -480,7 +480,7 @@ void __init init_IRQ(void)
 	irq_set_chip_and_handler(TIMER_IRQ, &SIGVTALRM_irq_type, handle_edge_irq);
 
 
-	for (i = 1; i < LAST_IRQ; i++)
+	for (i = 1; i <= LAST_IRQ; i++)
 		irq_set_chip_and_handler(i, &normal_irq_type, handle_edge_irq);
 	/* Initialize EPOLL Loop */
 	os_setup_epoll();
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
