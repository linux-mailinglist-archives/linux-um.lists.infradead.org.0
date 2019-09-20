Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F43B9A2B
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w+K9YB0x9Yas9799bheWnaWIhE9zuY4dsuyY6HBNQc=; b=lxD0czZHg/p24L
	P3pT3knqOioQYgxE0x8ahmyvgWXM5/xHvOPb1Rc+PInNQQG7XfVG05nlfJhQ0Q773duPHvtANAHuK
	PhO1JEVSTjLJlnzUkgnv0hDqDo6u5PUf2rZuRP/N5qf3QphbivlnPP0E9Bbai+0tGK7h4Hs2TQdp2
	ZUwKoZJIVumDit0tYpO9UMoEBbzFFuRywGPRjQYWieICVB7iICd98zeTQyp6fJlWn0XrkuxPhUe6S
	5cUKH9XmjvwStggcsgzBgfJjFIy/aX053w5PmSr7OsAI8LDKYsF2dChilUZeMk/kdMkYxoT0PTFcl
	hqd7IRu7g2k+J9QQ6+PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBSCA-0004dz-Op; Fri, 20 Sep 2019 23:20:10 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBSC7-0004C0-ED
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:20:08 +0000
Received: by mail-pl1-x649.google.com with SMTP id f4so5406137plo.7
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 16:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XEXF0aWtRP7hmX6yjkpnHC7BrzYVm/zOhA0NZRgvhNA=;
 b=Mnl/xUt/iq+dEEkDLu+rS6kLaTA1cBG/Up5iQxR1KnfFtl2jaH1Qq8yrbkHrR3xWwF
 ZiqXyQfe+hi+QMzsYsmhNq3ok2pc887+hl09rc3VilL9J1HjNFQuJfTe4u7ZDxYGqh96
 lV3egN3rbFfRqBS+Zgga6kwtpqqTX+rg5sLJOYCsaYQ9Ev6CRts/XUpyK29rQw2Bm87j
 g9unpjMaFPgplDS2FrFojx8N7uaRAl20o4vMsTNdCYZ197pZObKEfZ3+FLWy9rCNx2fu
 HT6cJVpQem0QtthzHc19srcc+z8va0f3vBai2hCMd8veINkjIFAjp6dBSOnu4wcIHUBE
 kJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XEXF0aWtRP7hmX6yjkpnHC7BrzYVm/zOhA0NZRgvhNA=;
 b=KBpHC/VMLXt0jjSNKmCEUsDsbm7v1QsRltRListbL9B4np/R9hnLebgAdripNzITTF
 2NQ8roogSFDk0Tq0NLa2SUOcARhaP1cynb662iCeFbgwsPRwaANLuNwqF3LBdBp1Sfbd
 Z0eTQKDLSGiD0mAhXUaHjM+bIK/w3M74kKxpxzG5p9KVFtQOctBbXJ2qeixpNIh745zp
 Juj2Hvu6+hR+LV3XivrSJA7mV1jsUW7jS7iienHPdZie9yFDeTwxddYkIHvKUHJpDw7u
 XMDQJuRZifh8qnPz27XXhggEOskcv8MoSScO+wJAwVvuihWjrF3By2zLAJrp1JM5mc9I
 nITw==
X-Gm-Message-State: APjAAAXkd718i6cM+Enn9GdCcipAREJBBPGOm/mwZ9rQEXcedtObL1sz
 i3aqAPtVB40zq5Y7TMJ076FrzvSafrcbSJdBSUeq/w==
X-Google-Smtp-Source: APXvYqxNIqLpGLjV48CwFHexJgokuv/hbZaizFyuLYUXP38r8L9oG7NginMJKrCXc2ldDDvSv5tHg94t16QDZIgIOPWNzw==
X-Received: by 2002:a63:2c3:: with SMTP id 186mr1260317pgc.60.1569021606032;
 Fri, 20 Sep 2019 16:20:06 -0700 (PDT)
Date: Fri, 20 Sep 2019 16:19:14 -0700
In-Reply-To: <20190920231923.141900-1-brendanhiggins@google.com>
Message-Id: <20190920231923.141900-11-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v16 10/19] kunit: test: add tests for kunit test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_162007_488157_17C35300 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add KUnit tests for the KUnit test abort mechanism (see preceding
commit). Add tests both for general try catch mechanism as well as
non-architecture specific mechanism.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 lib/kunit/Makefile    |   3 +-
 lib/kunit/test-test.c | 106 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 108 insertions(+), 1 deletion(-)
 create mode 100644 lib/kunit/test-test.c

diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
index c9176c9c578c..769d9402b5d3 100644
--- a/lib/kunit/Makefile
+++ b/lib/kunit/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_KUNIT) +=			test.o \
 					assert.o \
 					try-catch.o
 
-obj-$(CONFIG_KUNIT_TEST) +=		string-stream-test.o
+obj-$(CONFIG_KUNIT_TEST) +=		test-test.o \
+					string-stream-test.o
 
 obj-$(CONFIG_KUNIT_EXAMPLE_TEST) +=	example-test.o
diff --git a/lib/kunit/test-test.c b/lib/kunit/test-test.c
new file mode 100644
index 000000000000..06d34d36b103
--- /dev/null
+++ b/lib/kunit/test-test.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test for core test infrastructure.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+#include <kunit/test.h>
+
+struct kunit_try_catch_test_context {
+	struct kunit_try_catch *try_catch;
+	bool function_called;
+};
+
+static void kunit_test_successful_try(void *data)
+{
+	struct kunit *test = data;
+	struct kunit_try_catch_test_context *ctx = test->priv;
+
+	ctx->function_called = true;
+}
+
+static void kunit_test_no_catch(void *data)
+{
+	struct kunit *test = data;
+
+	KUNIT_FAIL(test, "Catch should not be called\n");
+}
+
+static void kunit_test_try_catch_successful_try_no_catch(struct kunit *test)
+{
+	struct kunit_try_catch_test_context *ctx = test->priv;
+	struct kunit_try_catch *try_catch = ctx->try_catch;
+
+	kunit_try_catch_init(try_catch,
+			     test,
+			     kunit_test_successful_try,
+			     kunit_test_no_catch);
+	kunit_try_catch_run(try_catch, test);
+
+	KUNIT_EXPECT_TRUE(test, ctx->function_called);
+}
+
+static void kunit_test_unsuccessful_try(void *data)
+{
+	struct kunit *test = data;
+	struct kunit_try_catch_test_context *ctx = test->priv;
+	struct kunit_try_catch *try_catch = ctx->try_catch;
+
+	kunit_try_catch_throw(try_catch);
+	KUNIT_FAIL(test, "This line should never be reached\n");
+}
+
+static void kunit_test_catch(void *data)
+{
+	struct kunit *test = data;
+	struct kunit_try_catch_test_context *ctx = test->priv;
+
+	ctx->function_called = true;
+}
+
+static void kunit_test_try_catch_unsuccessful_try_does_catch(struct kunit *test)
+{
+	struct kunit_try_catch_test_context *ctx = test->priv;
+	struct kunit_try_catch *try_catch = ctx->try_catch;
+
+	kunit_try_catch_init(try_catch,
+			     test,
+			     kunit_test_unsuccessful_try,
+			     kunit_test_catch);
+	kunit_try_catch_run(try_catch, test);
+
+	KUNIT_EXPECT_TRUE(test, ctx->function_called);
+}
+
+static int kunit_try_catch_test_init(struct kunit *test)
+{
+	struct kunit_try_catch_test_context *ctx;
+
+	ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	test->priv = ctx;
+
+	ctx->try_catch = kunit_kmalloc(test,
+				       sizeof(*ctx->try_catch),
+				       GFP_KERNEL);
+	if (!ctx->try_catch)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static struct kunit_case kunit_try_catch_test_cases[] = {
+	KUNIT_CASE(kunit_test_try_catch_successful_try_no_catch),
+	KUNIT_CASE(kunit_test_try_catch_unsuccessful_try_does_catch),
+	{}
+};
+
+static struct kunit_suite kunit_try_catch_test_suite = {
+	.name = "kunit-try-catch-test",
+	.init = kunit_try_catch_test_init,
+	.test_cases = kunit_try_catch_test_cases,
+};
+kunit_test_suite(kunit_try_catch_test_suite);
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
