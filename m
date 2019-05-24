Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8522A089
	for <lists+linux-um@lfdr.de>; Fri, 24 May 2019 23:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F68T2DaDq1sMTgSYsTRibP3PC3DS5Z7QLDjO6evonZc=; b=q2H
	BgLQVsqGTpEcxfSJqvFrq2mJwFpZ4W6qBZaUO2g05GJWn+g8tsRQZ6UCJu0lU0mQBQ3s6SCGRKUEv
	oXFvLcvm5TUOe3k3dpCPZKfZ52iUidsr+XqQw52CksDkmn4b7e7ZOnX4AFQQevUAcCgUUYlu5A8zz
	44SL/z4iCw3er9Wd3z3EtsWRUBEVKMTgrgzkttRmFqbsX/8p7PH6hky4RhM+na7Tkq5RgUwk11xFO
	JACsSaGecN1AiM0XLpckrxDXdP+6pWiPEAdT3KRdAQlhVJCx5zUMCZDPNVSKv3xVqRac8M4RFDgIt
	9Z9HmIOZIXG5jhQ6EFNgXWGsZ86LZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHwO-000747-Jw; Fri, 24 May 2019 21:41:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHwL-00073k-A3
 for linux-um@lists.infradead.org; Fri, 24 May 2019 21:41:27 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hUHwD-0002Yr-Qe; Fri, 24 May 2019 23:41:17 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: remove drivers/ssl.h
Date: Fri, 24 May 2019 23:41:15 +0200
Message-Id: <20190524214115.1000-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_144125_347597_CAD94795 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
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

This file just contains two unused prototypes, remove it.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/ssl.c |  1 -
 arch/um/drivers/ssl.h | 13 -------------
 2 files changed, 14 deletions(-)
 delete mode 100644 arch/um/drivers/ssl.h

diff --git a/arch/um/drivers/ssl.c b/arch/um/drivers/ssl.c
index b8d14fa52059..7ae407d5337e 100644
--- a/arch/um/drivers/ssl.c
+++ b/arch/um/drivers/ssl.c
@@ -12,7 +12,6 @@
 #include <linux/console.h>
 #include <asm/termbits.h>
 #include <asm/irq.h>
-#include "ssl.h"
 #include "chan.h"
 #include <init.h>
 #include <irq_user.h>
diff --git a/arch/um/drivers/ssl.h b/arch/um/drivers/ssl.h
deleted file mode 100644
index 314d17725ce6..000000000000
--- a/arch/um/drivers/ssl.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* 
- * Copyright (C) 2000 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
- */
-
-#ifndef __SSL_H__
-#define __SSL_H__
-
-extern int ssl_read(int fd, int line);
-extern void ssl_receive_char(int line, char ch);
-
-#endif
-
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
