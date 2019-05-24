Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3372A0FC
	for <lists+linux-um@lfdr.de>; Sat, 25 May 2019 00:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hlp9aQ6kUUlr1+Ld87i7m6DTVDnqzATeS2OUkvVj/Ak=; b=c8j
	mJtBz4ttG9Rvhb1bEJrBZy3ndTHSa85LF399Kan9VN/IwhRIoWqz4zo2xLlxj0NZOB/bAhUYCazzp
	5h/9SZaTAV8haO6aD6wWqZULVRFiUo3caYdgw436Go01FeMSJaYEYGRvKXA12P9dThwqHi9T1lotl
	opNFyywOzVnc+PHH505sMDZiYpnaRWkURytraIdoem1lYEcIN3cHDlLux/Xo2NDH/J58FjGfIS153
	mfmg8Z7Q6jJxCcRAA7AC759etQ4MiajrJ0jDInKZWsb8X+Qyms4pGKHIsNNRMkoNoaezp8BlU+QEl
	spNxqE9NPrCP5eAOkgXKVaq0Q4bKPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIMt-0000ak-E5; Fri, 24 May 2019 22:08:51 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIMr-0000aN-5Q
 for linux-um@lists.infradead.org; Fri, 24 May 2019 22:08:50 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hUIMo-0003B1-9R; Sat, 25 May 2019 00:08:46 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v2] arch: um: add an option to make serial driver non-raw
Date: Sat, 25 May 2019 00:08:43 +0200
Message-Id: <20190524220843.27623-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_150849_207876_11372A70 
X-CRM114-Status: GOOD (  10.92  )
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

In some cases, for example when the program(s) running inside UML
isn't/aren't interactive (like the hwsim tests for wpa_supplicant)
there's really no value in having the serial lines configured to
be raw as they are now by default. Setting them to non-raw lets
one abort the whole UML with Ctrl-C, which is really the right
thing to do in these cases, basically the whole UML instance is
more like a single (testing) program.

Add a "ssl-non-raw" option to UML to support such a mode.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/chan_user.h | 2 +-
 arch/um/drivers/ssl.c       | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/chan_user.h b/arch/um/drivers/chan_user.h
index 03f1b565c5f9..3ae1ff6e3822 100644
--- a/arch/um/drivers/chan_user.h
+++ b/arch/um/drivers/chan_user.h
@@ -11,7 +11,7 @@
 struct chan_opts {
 	void (*const announce)(char *dev_name, int dev);
 	char *xterm_title;
-	const int raw;
+	int raw;
 };
 
 struct chan_ops {
diff --git a/arch/um/drivers/ssl.c b/arch/um/drivers/ssl.c
index 7ae407d5337e..cd91c70568c9 100644
--- a/arch/um/drivers/ssl.c
+++ b/arch/um/drivers/ssl.c
@@ -196,3 +196,11 @@ static int ssl_chan_setup(char *str)
 
 __setup("ssl", ssl_chan_setup);
 __channel_help(ssl_chan_setup, "ssl");
+
+static int ssl_non_raw_setup(char *str)
+{
+	opts.raw = 0;
+	return 1;
+}
+__setup("ssl-non-raw", ssl_non_raw_setup);
+__channel_help(ssl_non_raw_setup, "set serial lines to non-raw mode");
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
