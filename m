Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5468015A57C
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 10:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A+0Otshr0C7Bl2D8xs5wJhpReV3L9aqk6zJHCUAznR0=; b=BF0i2pnXf5pPzy
	+r2ZDwzhXoAGIgIUjNiO0+IcuE/OH8R2GJ/hKz5jHEF0/yrzNlWxmAnDP3cGTsp+ivYEUtNdm/y5w
	EaQq2Gk/mm1htCr/UQS4nQPHygYLJsS1YARCWFa2oA0BZACqL+9aUnKo11utQfHx7b5zgh36JFd7q
	qKZc6u9NVUr/Pl+O/NyP8YhhetZBvPGLaGfOv9MqTyYPzLqned+/RaaxOWLfYTM2HTJcGuk5Uz5bg
	W8MfAABCPG8nybH/LuesR5Dot5UWjQSmQFVa1fdf9pHUIpgecLbSTowoF5F10+zTohIm2XZQtxujT
	fqWZZSKUORbo0Zj/ifkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1onn-0004Aa-3I; Wed, 12 Feb 2020 09:59:27 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1onk-0004AE-Ci
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 09:59:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:59:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226752923"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 12 Feb 2020 01:59:21 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 4F60B19C; Wed, 12 Feb 2020 11:59:20 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: [PATCH v1] um: Don't use console_drivers directly
Date: Wed, 12 Feb 2020 11:59:19 +0200
Message-Id: <20200212095919.80295-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_015924_485051_84F57974 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Thomas Meyer <thomas@m3y3r.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

console_drivers is kind of (semi-)private variable to the console code.
Direct use of it make us stuck with it being exported here and there.
Reduce use of console_drivers by replacing it with for_each_console().

Cc: Thomas Meyer <thomas@m3y3r.de>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 arch/um/kernel/kmsg_dump.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/um/kernel/kmsg_dump.c b/arch/um/kernel/kmsg_dump.c
index 98bdf69e4c2e..a8683b717f94 100644
--- a/arch/um/kernel/kmsg_dump.c
+++ b/arch/um/kernel/kmsg_dump.c
@@ -9,20 +9,20 @@ static void kmsg_dumper_stdout(struct kmsg_dumper *dumper,
 				enum kmsg_dump_reason reason)
 {
 	static char line[1024];
-
+	struct console *con;
 	size_t len = 0;
-	bool con_available = false;
 
 	/* only dump kmsg when no console is available */
 	if (!console_trylock())
 		return;
 
-	if (console_drivers != NULL)
-		con_available = true;
+	/* Any registered console is fine to us */
+	for_each_console(con)
+		break;
 
 	console_unlock();
 
-	if (con_available == true)
+	if (con == NULL)
 		return;
 
 	printf("kmsg_dump:\n");
-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
