Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDB79AD89
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 12:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnUZ2O5ULI+vhD26JRIq7zng9qsoGKbtv34wlZeRoTc=; b=m5HPYmdFeSORBy
	QLtr/bHMLz1cF0VxpLCoBZZIzVtBvuJ0XOn8KGZ2i7HTqAB6F9/zDpQyV53u0AsfKhIZgCdwRTytg
	vM00uC+zqwWIkSxD8JSZDhLtXwjssxuhCpNKgI/eTh5yvByPkeJpx3+Fz4rgk75S70tGIWOk3YI9F
	/vjW0TgP1a1i4/GwgvFnWDEz9EJkpeZTnqWfDkXby2fMHUhP3v4t8Z/3qQ1lB06VaeCCMw2TQrlIt
	tRDbK3Lr6DTKHbQ8JaObofXkG1BHzmICMco0CkJUc+bYla38EHuHOr7EyeQe10YuitonzOHUtxbVX
	J23Xmm/K9/4mq0r0oqxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i174z-00055N-Ov; Fri, 23 Aug 2019 10:46:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i174u-00053X-2F
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 10:45:58 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i174q-0001vM-5G; Fri, 23 Aug 2019 12:45:52 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 3/4] arch: um: remove misleading #define ARCh_IRQ_ENABLED
Date: Fri, 23 Aug 2019 12:44:28 +0200
Message-Id: <20190823104429.11047-3-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823104429.11047-1-johannes@sipsolutions.net>
References: <20190823104429.11047-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034556_109748_F62F3C41 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Due to the typo in the name, this can never be used, but
it's also misleading because our value for enabled/disabled
is always just 0/1, not an actual signal mask.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/asm/irqflags.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/um/include/asm/irqflags.h b/arch/um/include/asm/irqflags.h
index cbc6c0013a64..0642ad9035d1 100644
--- a/arch/um/include/asm/irqflags.h
+++ b/arch/um/include/asm/irqflags.h
@@ -32,7 +32,6 @@ static inline void arch_local_irq_disable(void)
 }
 
 #define ARCH_IRQ_DISABLED	0
-#define ARCh_IRQ_ENABLED	(SIGIO|SIGVTALRM)
 
 #include <asm-generic/irqflags.h>
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
