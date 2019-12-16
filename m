Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5A8121C51
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cGDwQBaSo1wQ+BTiDi1p/SyNKzDcTHKa5b8321lRIY=; b=EOg4RQPxI8zp76
	iqLyE5NJLj55RxRUVB6HYXxksR6SooseLz7G6AzzgGrFMFKUTgCynVDbWlBjkqcutxglv/EsvokoN
	F2zs3DikBcSbdCEXxd56w4ZWeKynQlr8LTvx0D2tTD1HrVqW5SzP2wdk7L7D+tFbnY35pFYBt5MPg
	DuTQ5yeRIgJiuUD6IRDe/xsHR2jMI4pwECmaFS01zUaTHKd0QfgTxEbhQMxzOuxHRuzhiLzGSwGO7
	/LpQ2jVwUm+B/Br7BBrPiVDPU/xHkfBHtG4//Bm2IHyLUsbB6W+E9gGWIeexayPv7/5hGxuAiJqdr
	7B3zOHwwIaHRt8Xo6ffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyW6-0001tu-FI; Mon, 16 Dec 2019 22:07:02 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyW3-0001sZ-AL
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:07:00 +0000
Received: by mail-qv1-xf49.google.com with SMTP id w13so6288385qvb.4
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=g4iCY0XKOYvOdNm2o5ubHQIC+0sd2MLwVwFTH1VbWR4=;
 b=eUKWeLUHl5e6Iza28SAKvx6Zq+BxsVkv4uL89+TqB8OuEzqq6FuXTVIVUu1GQ8dno1
 l7cHlVmOrBkeH7XWMmILFxVKFZV7rsury5fJhw1xxyKJSWfKCdS/wNPDJCKDp5ySJeiG
 ECDGgFAdQS5ynkDgjAJgwvPqM/HDl6zCiTrTpVjemJKsivs7hkdHasHA2wDDv+YGPfZ8
 TiEm7sUU9Ms4asZTQeRuB6s2iOCMB8mrcCjvsiqYxx24tsA3YfbTNIonQf7sL+QQNzEr
 v/1i4c16+71Snz07T8iZzvdlkTb4fE05SoSEQfnbpe9veNktankDVkf33+XPv6tAz2dE
 t/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=g4iCY0XKOYvOdNm2o5ubHQIC+0sd2MLwVwFTH1VbWR4=;
 b=dPopSUfQI8vEDYMYmyQGplBBsM0mu8zapbAyc0sm1sV9LhtjM8Eg7qscmLJauZ4ZVO
 Xd54y/kt9C7NjzThrVaym3DnDowlPDAqD6drP+Y1Frb1weewGUgQvZqMHCsprbbw+tGM
 u2IZGnOckRG4gOUf+0dgah1YcDqY/c2GOuGhC3LSmt0y+C/Xv7MTnIJLC5wQdKXdgyA6
 45E1h/j8HDgRXbp3WCTCax7yT4P+Dd+ykRLE7bCIPGudAqnRw6fymlmWPFVpZ/e3LOiT
 De1cIlPL1ISwJIiAppDmToPS8PI3Ju/ff9aUw77FQiUxucHJBdqmA/4PipCQMuHka/bC
 x+0Q==
X-Gm-Message-State: APjAAAWrFyEUoLlvodruOHM6MK295UA1gVV50ZGqTFfpBFS1OXpmlD2P
 qvhO4zF5U45TA0XroxIw0IPleb9SZpaR6HS7RR8FIA==
X-Google-Smtp-Source: APXvYqy1y35y01Wvspoaet51cZ880b6BVTx+UkgakDke3s1m8DfU2hecucqQU/8/Yb1EnMCG30tZoyXobwMCULi6qGbq/A==
X-Received: by 2002:ac8:534b:: with SMTP id d11mr1654558qto.170.1576534017374; 
 Mon, 16 Dec 2019 14:06:57 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:52 -0800
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
Message-Id: <20191216220555.245089-4-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 3/6] kunit: test: create a single centralized executor for
 all tests
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140659_364182_C8B559AC 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 knut.omang@oracle.com, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add a centralized executor to dispatch tests rather than relying on
late_initcall to schedule each test suite separately.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Co-developed-by: Iurii Zaikin <yzaikin@google.com>
Signed-off-by: Iurii Zaikin <yzaikin@google.com>
---
 include/kunit/test.h |  7 ++-----
 lib/kunit/Makefile   |  3 ++-
 lib/kunit/executor.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 47 insertions(+), 6 deletions(-)
 create mode 100644 lib/kunit/executor.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index dba48304b3bd3..c070798ebb765 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -217,11 +217,8 @@ int kunit_run_tests(struct kunit_suite *suite);
  * everything else is definitely initialized.
  */
 #define kunit_test_suite(suite)						       \
-	static int kunit_suite_init##suite(void)			       \
-	{								       \
-		return kunit_run_tests(&suite);				       \
-	}								       \
-	late_initcall(kunit_suite_init##suite)
+	static struct kunit_suite *__kunit_suite_##suite		       \
+	__used __aligned(8) __section(.kunit_test_suites) = &suite
 
 /*
  * Like kunit_alloc_resource() below, but returns the struct kunit_resource
diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
index 769d9402b5d3a..893df8a685880 100644
--- a/lib/kunit/Makefile
+++ b/lib/kunit/Makefile
@@ -1,7 +1,8 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
 					string-stream.o \
 					assert.o \
-					try-catch.o
+					try-catch.o \
+					executor.o
 
 obj-$(CONFIG_KUNIT_TEST) +=		test-test.o \
 					string-stream-test.o
diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
new file mode 100644
index 0000000000000..978086cfd257d
--- /dev/null
+++ b/lib/kunit/executor.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Base unit test (KUnit) API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <linux/init.h>
+#include <linux/printk.h>
+#include <kunit/test.h>
+
+/*
+ * These symbols point to the .kunit_test_suites section and are defined in
+ * include/asm-generic/vmlinux.lds.h, and consequently must be extern.
+ */
+extern struct kunit_suite *__kunit_suites_start[];
+extern struct kunit_suite *__kunit_suites_end[];
+
+static bool kunit_run_all_tests(void)
+{
+	struct kunit_suite **suite;
+	bool has_test_failed = false;
+
+	for (suite = __kunit_suites_start;
+	     suite < __kunit_suites_end;
+	     ++suite) {
+		if (kunit_run_tests(*suite))
+			has_test_failed = true;
+	}
+
+	return !has_test_failed;
+}
+
+static int kunit_executor_init(void)
+{
+	if (kunit_run_all_tests())
+		return 0;
+	else
+		return -EFAULT;
+}
+
+late_initcall(kunit_executor_init);
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
