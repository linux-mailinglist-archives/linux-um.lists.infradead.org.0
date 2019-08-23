Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C519AD8A
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 12:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtR28WuGuv1TTnI5lx2eqipp5mBC2QXmbA8vvd0p3Wg=; b=kwMSZG8c/L4KEC
	JbecIV4jrPpJs2PO+eLsxOLIP3h/U3uICEhsdkcVnCxfCOxBB9p5kru8WDr7wdFMNwosUqFFQ72Y2
	bcQfwsG1awU+I1HXIsxi/ZhOFVVOtIjyGGO+O9jWH2AUXoApFU3vkUQF32c6qVkIC/XUZpd/65HJm
	G1JXbGsNMJyh9GhBV9HQ6fOYcp+9UkUsPqTpdWWBEjsDM0UaJ71LAACyjRpwFc492ZIww/Q0a01iY
	snQq1venOACqb2K3EnFyhBZtmGeOpo1mrkyZM2XdDUzMFEixGVB+D1K9YeserePLyMAoYX3H8quGL
	6h0VySBxx6xMbSgKPgxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i174x-00054p-EN; Fri, 23 Aug 2019 10:45:59 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i174u-00053Z-2D
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 10:45:57 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i174p-0001vM-Tn; Fri, 23 Aug 2019 12:45:52 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 2/4] arch: um: avoid using uninitialized regs
Date: Fri, 23 Aug 2019 12:44:27 +0200
Message-Id: <20190823104429.11047-2-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823104429.11047-1-johannes@sipsolutions.net>
References: <20190823104429.11047-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034556_105150_660D983B 
X-CRM114-Status: UNSURE (   7.16  )
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

In timer_real_alarm_handler(), regs is only initialized if
the context argument is non-NULL, also initialize in the
other case.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/os-Linux/signal.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
index 35d1b2bc00cb..4cd88b5b9006 100644
--- a/arch/um/os-Linux/signal.c
+++ b/arch/um/os-Linux/signal.c
@@ -10,6 +10,7 @@
 #include <stdarg.h>
 #include <errno.h>
 #include <signal.h>
+#include <string.h>
 #include <strings.h>
 #include <as-layout.h>
 #include <kern_util.h>
@@ -88,6 +89,8 @@ static void timer_real_alarm_handler(mcontext_t *mc)
 
 	if (mc != NULL)
 		get_regs_from_mc(&regs, mc);
+	else
+		memset(&regs, 0, sizeof(regs));
 	timer_handler(SIGALRM, NULL, &regs);
 }
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
