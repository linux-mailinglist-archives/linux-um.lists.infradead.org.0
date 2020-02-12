Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B9A15A593
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 11:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hQFKdEXwLfGovq2qU+m6vqS3d79uyA50D1CXe+1awYo=; b=jhzM8FXFMJT09i
	9AlDb3UhXq4L9oL+OpTuyTnuWxysupp2tEjUfErxw4v/lrKN4rAdmmnaMrEjHpJ3sR5BGhJWY7FOn
	JvTsA1y1V5D+YrUsMpkgbHwltajQV+Mzp238Q/wyx7Ke7/3d2BEvC9maXWUR7TvC+vVYfuC7Ka8pl
	972B9qVvmLZC5ryBNTQya86oyv/Li++CNySp/uuoa205MUxNEupK70zcBFkH5FLAXvW40CFQmjUuy
	u3A7y2rwOq8rdKXruqSpwNlEDKyAb82IqVOwXddUIm95Aff/pzttWhOxWjAHvoXDYiJNCwBK7Gkhb
	ut/mjwwrMiAOl57/mFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1orK-0005vE-WD; Wed, 12 Feb 2020 10:03:07 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1orI-0005ui-T5
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 10:03:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226815545"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 12 Feb 2020 02:03:01 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 5D21919C; Wed, 12 Feb 2020 12:03:00 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: [PATCH v2] um: Don't use console_drivers directly
Date: Wed, 12 Feb 2020 12:02:59 +0200
Message-Id: <20200212100259.80438-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_020304_952355_3F39C2E6 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
v2: fix condition (we do NOT want to have a console), remove confusing comment
 arch/um/kernel/kmsg_dump.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/um/kernel/kmsg_dump.c b/arch/um/kernel/kmsg_dump.c
index 98bdf69e4c2e..e4abac6c9727 100644
--- a/arch/um/kernel/kmsg_dump.c
+++ b/arch/um/kernel/kmsg_dump.c
@@ -9,20 +9,19 @@ static void kmsg_dumper_stdout(struct kmsg_dumper *dumper,
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
+	for_each_console(con)
+		break;
 
 	console_unlock();
 
-	if (con_available == true)
+	if (con)
 		return;
 
 	printf("kmsg_dump:\n");
-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
