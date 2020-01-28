Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813D14B042
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbGsr2+OvdDZGEOa+gLRnJzq0W+2yrjGNrZ0iqFl/ts=; b=RMAYl+KJX5J73o
	5j/7zRGV43C8cOEH3WTklLJvYZQkDUgBDfuhXPD2oZf67n0bBwrdiank9Kp9MbIUEwXsyuL4UdQVa
	Yg9Er5B6OZlm7HJ+YBCPmXpzKuwzNr3L1RLmAcw1XUnPHXGzn5afdzNj4ONnrxLWp8NzPruSWq078
	26asfG2w6QwNeIBYx+BNVoiXIqzd/elp6nvaNcBs3kd5H12EdqIZnG3l7otXf6t2xqqdxKPiyTj3q
	8c92MdU1idXvxPTIFdxkTGhNWe0bMgYypo/aliRYq8zH+VKOOcEh3uqNzwP6wJzHkGnTHKyEgLiL2
	SDBPT+OdDamcj2vmfhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLAk-0004up-HM; Tue, 28 Jan 2020 07:20:30 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLAh-0004sB-Hl
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:20:28 +0000
Received: by mail-qt1-x849.google.com with SMTP id n4so2753599qtv.5
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4MjEglgwzQeYmQHEj7lVD/Q2s1JVUJ8kKFlc6FnNZt0=;
 b=hIhlGtjLGzw1SUt6Jw8C/K2HF2ecgfBO3NMmc4gRUVfjoFHBM4NiKRBnLRD2nyc6Tj
 mdWKOvijFU7VJ362/OXCxdB7zrDTl3GprOBtzyB/drE/LeQWfnCPkcr1TQ8NilYTEUU9
 WFHk5H+QRn9Ln+War8nzP8jDodqFXT5aeCGz84nZ9AVByzxHK0kZdSen7KPpq/C60+s2
 6JEDMiocGrIQwTYouQO/R2DEAtJYad5Q+mApL0OLG5Jww4JozmqfWCb4/LYTR7lM3kMC
 7mQF5PmYLc017GRTgEOhNfK/HEuD8MoNOKvabILsxoZYKcPv3QHAUrwzFAuPjVP2tfTN
 RNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4MjEglgwzQeYmQHEj7lVD/Q2s1JVUJ8kKFlc6FnNZt0=;
 b=J+BKoUcpHDlk63LbMpxSRZBGELSzZ1Wus47beyoLGLEua+AU3ryHjrj1ZmrhebYH4z
 loZEsLnTIyDxUDo1gxSbe+7OjOnixHpCdqEndnPrO+M2q8mdOaGuP8380mLuPzuBaECP
 RgspGd6QF08KRJsFCAFtFXyAnii3qCmUr6JubuDCON+O+u4pWSua7oJiaXGEJ5vuMvij
 6vcNdiKGjLR4wI3FFKX816pJQ+hQMZHoUqqfjGYJtLPC22veXU62IL3Dimsbsaenbr7u
 WyrUrnmszEcM3FYO3OOnQgEYRo+mY6DSRIpvqHSoCX12javxZwyCMfa19wmK0dWFN3j5
 l0hQ==
X-Gm-Message-State: APjAAAVSulTj9SFPOEaAc/OVZOTckw56vqWk0JZGMUDmBrZcJdKnzbTz
 H6waBhGMjSODeD+WFGreGq6MyhmLKtgME4F6YFxk/w==
X-Google-Smtp-Source: APXvYqxGcm6m1ET1DVlbjNLLOCIax2s4cEucHeJOXLwB5vmRbR5b7p9xrmal0f4br+4TUTmY99J/qnO69CzvwxBlR0vrNg==
X-Received: by 2002:a0c:8e08:: with SMTP id v8mr21132536qvb.4.1580196025518;
 Mon, 27 Jan 2020 23:20:25 -0800 (PST)
Date: Mon, 27 Jan 2020 23:19:59 -0800
In-Reply-To: <20200128072002.79250-1-brendanhiggins@google.com>
Message-Id: <20200128072002.79250-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 4/7] init: main: add KUnit to kernel init
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232027_592714_EE2B177A 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Remove KUnit from init calls entirely, instead call directly from
kernel_init().

Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 include/kunit/test.h | 9 +++++++++
 init/main.c          | 4 ++++
 lib/kunit/executor.c | 4 +---
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 8a02f93a6b505..8689dd1459844 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -197,6 +197,15 @@ void kunit_init_test(struct kunit *test, const char *name);
 
 int kunit_run_tests(struct kunit_suite *suite);
 
+#if IS_BUILTIN(CONFIG_KUNIT)
+int kunit_run_all_tests(void);
+#else
+static inline int kunit_run_all_tests(void)
+{
+	return 0;
+}
+#endif /* IS_BUILTIN(CONFIG_KUNIT) */
+
 /*
  * If a test suite is built-in, module_init() gets translated into
  * an initcall which we don't want as the idea is that for builtins
diff --git a/init/main.c b/init/main.c
index 2cd736059416f..90301d4fbd1bb 100644
--- a/init/main.c
+++ b/init/main.c
@@ -103,6 +103,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/initcall.h>
 
+#include <kunit/test.h>
+
 static int kernel_init(void *);
 
 extern void init_IRQ(void);
@@ -1201,6 +1203,8 @@ static noinline void __init kernel_init_freeable(void)
 
 	do_basic_setup();
 
+	kunit_run_all_tests();
+
 	console_on_rootfs();
 
 	/*
diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index 6429927d598a5..b75a46c560847 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -11,7 +11,7 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
 
 #if IS_BUILTIN(CONFIG_KUNIT)
 
-static int kunit_run_all_tests(void)
+int kunit_run_all_tests(void)
 {
 	struct kunit_suite * const * const *suites, * const *subsuite;
 	bool has_test_failed = false;
@@ -31,6 +31,4 @@ static int kunit_run_all_tests(void)
 	return 0;
 }
 
-late_initcall(kunit_run_all_tests);
-
 #endif /* IS_BUILTIN(CONFIG_KUNIT) */
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
