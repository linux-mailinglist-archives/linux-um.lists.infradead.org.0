Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CABA66886
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 10:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7t43MjJL0o2J3uHVScOWvhPPJibE75j6E709RqYIC0=; b=XjeJo+vxRumbFW
	gy1PL1dn5/djzZICWIazWEwq/5//KovgOmZL6DxTvoaZl6MDMeQRH5z52Q8Ufw3ShNNJGdtv1rGxa
	Agun+BI421KZyXFZQ2J3eje6BxpdEZGLQFKASmWwfyllv/6Fuuyxajuoe+Rse7DcO1UVk0Wsb7RQ3
	IbldzX2B+WGEPT92HiXTZwJKFEMRt12qyFwyPPApUNdCyhICdKMUKgJV1jVrIJLHm2A7iP3DHs7XQ
	9/lh2DSb6pT9JAlqtjejQEcS76GkbaRoMTwPBj3YfebNMft0zb5MzaHlhYorz/2tRtfYZQiWiBFUG
	9oihao3d+MZ0+Nz3hyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlql4-0006Gj-Ik; Fri, 12 Jul 2019 08:18:22 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlql0-0006DN-Uo
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 08:18:21 +0000
Received: by mail-qk1-x74a.google.com with SMTP id r200so6238430qke.19
 for <linux-um@lists.infradead.org>; Fri, 12 Jul 2019 01:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=moR8mS5ZxuPlK2h/KaH4EIbjDw/4+buyp665ZJm/PuU=;
 b=oFI0yDfrRgp4Tni15Z5uOw2oGyNvJLjQ2Tf/P5QFMwJ/krUrRyLM8HxziZgf6ZT+rU
 e00j1HYXUEeBOlX5ChuxKXKzVr/TDDXClHXTYZaU54ItX3Fw2i5fMOB3r8ZYH09DCU38
 lbx2o+idCVF1sAgwgAS8kiDxuAIpRuHvUxgynXUDJSyMBkZJSbAj5nYYZ7Vg1v08ck03
 6D/Spqxz65cqyfzCtzkRxgGfI57/WWcBvPqHRqAdFTfQ38ERDeS8SPIxIdQmBYvAz69n
 icyiXllrwHV2JmnVKB3HE39LJ9Ila8rg4tmmy+XEBxkqnVuVPYic+aiICCteEo3QTeYL
 TIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=moR8mS5ZxuPlK2h/KaH4EIbjDw/4+buyp665ZJm/PuU=;
 b=GIBNPOZXP5zdK9ZdR6ismySEr71+LwKzRSX1FwRhCY3wKCrehjAWO3+QcTakT9FtkO
 +tcWHdfZos+VJq4XiqNvrbYlmin8P52MX4yG6tipFie0yL+LemUOhqvjhXR3JmSBQBPm
 R7MmivNrS7+YGtVT4B+zgE9HUj+bPC3GTpkULNgZOK338PUJXNcBHzNAdrNRlXr3vvIb
 bJDlbTsyR0ZdApnir/7dSCRuI85bGzDZ0ua45La1sDxXE2BJtQFA/wM5euZ8j9rPwDZQ
 Tb9Pu7TPgbC2EzWSnJ8+Z2yTBJla3UTioT2E+lyr/ySW496BrmRqoGOVw4OXmQto6ECS
 s1gQ==
X-Gm-Message-State: APjAAAVu0UEYZ62BzF0o5WHlZm+V/481XNoglLSGHN9VdCkXhSNwouuy
 9Fc3TNQ6I0RHd7bT1kjx+tvTtBxE0ZYlsIy/A1HFHg==
X-Google-Smtp-Source: APXvYqyR5mh2vAv6Hotxq20T0jmGihkOToFhcnld/9spbUN4vHdZBuuq0j++EAZaZdG5/TTCXDnM233ab1kZPUSwepulkw==
X-Received: by 2002:ac8:317a:: with SMTP id h55mr5306277qtb.105.1562919496009; 
 Fri, 12 Jul 2019 01:18:16 -0700 (PDT)
Date: Fri, 12 Jul 2019 01:17:35 -0700
In-Reply-To: <20190712081744.87097-1-brendanhiggins@google.com>
Message-Id: <20190712081744.87097-10-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v9 09/18] kunit: test: add support for test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011819_014058_ED173F0C 
X-CRM114-Status: GOOD (  26.32  )
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add support for aborting/bailing out of test cases, which is needed for
implementing assertions.

An assertion is like an expectation, but bails out of the test case
early if the assertion is not met. The idea with assertions is that you
use them to state all the preconditions for your test. Logically
speaking, these are the premises of the test case, so if a premise isn't
true, there is no point in continuing the test case because there are no
conclusions that can be drawn without the premises. Whereas, the
expectation is the thing you are trying to prove.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/test.h      |  16 ++++
 include/kunit/try-catch.h |  69 +++++++++++++++
 kunit/Makefile            |   3 +-
 kunit/test.c              | 176 +++++++++++++++++++++++++++++++++++---
 kunit/try-catch.c         |  95 ++++++++++++++++++++
 5 files changed, 344 insertions(+), 15 deletions(-)
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kunit/try-catch.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index df18765e6ea25..01440f3569847 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -13,6 +13,7 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 #include <kunit/kunit-stream.h>
+#include <kunit/try-catch.h>
 
 struct kunit_resource;
 
@@ -167,6 +168,7 @@ struct kunit {
 
 	/* private: internal use only. */
 	const char *name; /* Read only after initialization! */
+	struct kunit_try_catch try_catch;
 	/*
 	 * success starts as true, and may only be set to false during a test
 	 * case; thus, it is safe to update this across multiple threads using
@@ -176,6 +178,11 @@ struct kunit {
 	 */
 	bool success; /* Read only after test_case finishes! */
 	struct mutex lock; /* Gaurds all mutable test state. */
+	/*
+	 * death_test may be both set and unset from multiple threads in a test
+	 * case.
+	 */
+	bool death_test; /* Protected by lock. */
 	/*
 	 * Because resources is a list that may be updated multiple times (with
 	 * new resources) from any thread associated with a test case, we must
@@ -184,10 +191,19 @@ struct kunit {
 	struct list_head resources; /* Protected by lock. */
 };
 
+static inline void kunit_set_death_test(struct kunit *test, bool death_test)
+{
+	mutex_lock(&test->lock);
+	test->death_test = death_test;
+	mutex_unlock(&test->lock);
+}
+
 void kunit_init_test(struct kunit *test, const char *name);
 
 void kunit_fail(struct kunit *test, struct kunit_stream *stream);
 
+void kunit_abort(struct kunit *test);
+
 int kunit_run_tests(struct kunit_suite *suite);
 
 /**
diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
new file mode 100644
index 0000000000000..8a414a9af0b64
--- /dev/null
+++ b/include/kunit/try-catch.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * An API to allow a function, that may fail, to be executed, and recover in a
+ * controlled manner.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#ifndef _KUNIT_TRY_CATCH_H
+#define _KUNIT_TRY_CATCH_H
+
+#include <linux/types.h>
+
+typedef void (*kunit_try_catch_func_t)(void *);
+
+struct kunit;
+
+/*
+ * struct kunit_try_catch - provides a generic way to run code which might fail.
+ * @context: used to pass user data to the try and catch functions.
+ *
+ * kunit_try_catch provides a generic, architecture independent way to execute
+ * an arbitrary function of type kunit_try_catch_func_t which may bail out by
+ * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
+ * is stopped at the site of invocation and @catch is catch is called.
+ *
+ * struct kunit_try_catch provides a generic interface for the functionality
+ * needed to implement kunit->abort() which in turn is needed for implementing
+ * assertions. Assertions allow stating a precondition for a test simplifying
+ * how test cases are written and presented.
+ *
+ * Assertions are like expectations, except they abort (call
+ * kunit_try_catch_throw()) when the specified condition is not met. This is
+ * useful when you look at a test case as a logical statement about some piece
+ * of code, where assertions are the premises for the test case, and the
+ * conclusion is a set of predicates, rather expectations, that must all be
+ * true. If your premises are violated, it does not makes sense to continue.
+ */
+struct kunit_try_catch {
+	/* private: internal use only. */
+	struct kunit *test;
+	struct completion *try_completion;
+	int try_result;
+	kunit_try_catch_func_t try;
+	kunit_try_catch_func_t catch;
+	void *context;
+};
+
+void kunit_try_catch_init(struct kunit_try_catch *try_catch,
+			  struct kunit *test,
+			  kunit_try_catch_func_t try,
+			  kunit_try_catch_func_t catch);
+
+void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context);
+
+void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch);
+
+static inline int kunit_try_catch_get_result(struct kunit_try_catch *try_catch)
+{
+	return try_catch->try_result;
+}
+
+/*
+ * Exposed for testing only.
+ */
+void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch);
+
+#endif /* _KUNIT_TRY_CATCH_H */
diff --git a/kunit/Makefile b/kunit/Makefile
index 60a9ea6cb4697..1f7680cfa11ad 100644
--- a/kunit/Makefile
+++ b/kunit/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
 					string-stream.o \
-					kunit-stream.o
+					kunit-stream.o \
+					try-catch.o
 
 obj-$(CONFIG_KUNIT_TEST) +=		string-stream-test.o
 
diff --git a/kunit/test.c b/kunit/test.c
index 8c745fd0c82d3..731f3c9eecf20 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -7,13 +7,26 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/sched/debug.h>
 #include <kunit/test.h>
+#include <kunit/try-catch.h>
 
 static void kunit_set_failure(struct kunit *test)
 {
 	WRITE_ONCE(test->success, false);
 }
 
+static bool kunit_get_death_test(struct kunit *test)
+{
+	bool death_test;
+
+	mutex_lock(&test->lock);
+	death_test = test->death_test;
+	mutex_unlock(&test->lock);
+
+	return death_test;
+}
+
 static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
 {
 	return vprintk_emit(0, level, NULL, 0, fmt, args);
@@ -126,40 +139,175 @@ void kunit_fail(struct kunit *test, struct kunit_stream *stream)
 	kunit_stream_commit(stream);
 }
 
+void __noreturn kunit_abort(struct kunit *test)
+{
+	kunit_set_death_test(test, true);
+
+	kunit_try_catch_throw(&test->try_catch);
+
+	/*
+	 * Throw could not abort from test.
+	 *
+	 * XXX: we should never reach this line! As kunit_try_catch_throw is
+	 * marked __noreturn.
+	 */
+	WARN_ONCE(true, "Throw could not abort from test!\n");
+}
+
 void kunit_init_test(struct kunit *test, const char *name)
 {
 	mutex_init(&test->lock);
 	INIT_LIST_HEAD(&test->resources);
 	test->name = name;
 	test->success = true;
+	test->death_test = false;
 }
 
 /*
- * Performs all logic to run a test case.
+ * Initializes and runs test case. Does not clean up or do post validations.
  */
-static void kunit_run_case(struct kunit_suite *suite,
-			   struct kunit_case *test_case)
+static void kunit_run_case_internal(struct kunit *test,
+				    struct kunit_suite *suite,
+				    struct kunit_case *test_case)
 {
-	struct kunit test;
-	int ret = 0;
-
-	kunit_init_test(&test, test_case->name);
+	int ret;
 
 	if (suite->init) {
-		ret = suite->init(&test);
+		ret = suite->init(test);
 		if (ret) {
-			kunit_err(&test, "failed to initialize: %d\n", ret);
-			kunit_set_failure(&test);
+			kunit_err(test, "failed to initialize: %d\n", ret);
+			kunit_set_failure(test);
 			return;
 		}
 	}
 
-	test_case->run_case(&test);
+	test_case->run_case(test);
+}
+
+static void kunit_case_internal_cleanup(struct kunit *test)
+{
+	kunit_cleanup(test);
+}
 
+/*
+ * Performs post validations and cleanup after a test case was run.
+ * XXX: Should ONLY BE CALLED AFTER kunit_run_case_internal!
+ */
+static void kunit_run_case_cleanup(struct kunit *test,
+				   struct kunit_suite *suite)
+{
 	if (suite->exit)
-		suite->exit(&test);
+		suite->exit(test);
+
+	kunit_case_internal_cleanup(test);
+}
+
+/*
+ * Handles an unexpected crash in a test case.
+ */
+static void kunit_handle_test_crash(struct kunit *test,
+				   struct kunit_suite *suite,
+				   struct kunit_case *test_case)
+{
+	kunit_err(test, "kunit test case crashed!");
+	/*
+	 * TODO(brendanhiggins@google.com): This prints the stack trace up
+	 * through this frame, not up to the frame that caused the crash.
+	 */
+	show_stack(NULL, NULL);
+
+	kunit_case_internal_cleanup(test);
+}
+
+struct kunit_try_catch_context {
+	struct kunit *test;
+	struct kunit_suite *suite;
+	struct kunit_case *test_case;
+};
+
+static void kunit_try_run_case(void *data)
+{
+	struct kunit_try_catch_context *ctx = data;
+	struct kunit *test = ctx->test;
+	struct kunit_suite *suite = ctx->suite;
+	struct kunit_case *test_case = ctx->test_case;
+
+	/*
+	 * kunit_run_case_internal may encounter a fatal error; if it does,
+	 * abort will be called, this thread will exit, and finally the parent
+	 * thread will resume control and handle any necessary clean up.
+	 */
+	kunit_run_case_internal(test, suite, test_case);
+	/* This line may never be reached. */
+	kunit_run_case_cleanup(test, suite);
+}
+
+static void kunit_catch_run_case(void *data)
+{
+	struct kunit_try_catch_context *ctx = data;
+	struct kunit *test = ctx->test;
+	struct kunit_suite *suite = ctx->suite;
+	struct kunit_case *test_case = ctx->test_case;
+	int try_exit_code = kunit_try_catch_get_result(&test->try_catch);
+
+	if (try_exit_code) {
+		kunit_set_failure(test);
+		/*
+		 * Test case could not finish, we have no idea what state it is
+		 * in, so don't do clean up.
+		 */
+		if (try_exit_code == -ETIMEDOUT)
+			kunit_err(test, "test case timed out\n");
+		/*
+		 * Unknown internal error occurred preventing test case from
+		 * running, so there is nothing to clean up.
+		 */
+		else
+			kunit_err(test, "internal error occurred preventing test case from running: %d\n",
+				  try_exit_code);
+		return;
+	}
+
+	if (kunit_get_death_test(test)) {
+		/*
+		 * EXPECTED DEATH: kunit_run_case_internal encountered
+		 * anticipated fatal error. Everything should be in a safe
+		 * state.
+		 */
+		kunit_run_case_cleanup(test, suite);
+	} else {
+		/*
+		 * UNEXPECTED DEATH: kunit_run_case_internal encountered an
+		 * unanticipated fatal error. We have no idea what the state of
+		 * the test case is in.
+		 */
+		kunit_handle_test_crash(test, suite, test_case);
+		kunit_set_failure(test);
+	}
+}
+
+/*
+ * Performs all logic to run a test case. It also catches most errors that
+ * occurs in a test case and reports them as failures.
+ */
+static void kunit_run_case_catch_errors(struct kunit_suite *suite,
+					struct kunit_case *test_case)
+{
+	struct kunit_try_catch_context context;
+	struct kunit_try_catch *try_catch;
+	struct kunit test;
+
+	kunit_init_test(&test, test_case->name);
+	try_catch = &test.try_catch;
 
-	kunit_cleanup(&test);
+	kunit_try_catch_init(try_catch,
+			     &test,
+			     kunit_try_run_case,
+			     kunit_catch_run_case);
+	context.test = &test;
+	context.suite = suite;
+	context.test_case = test_case;
+	kunit_try_catch_run(try_catch, &context);
 
 	test_case->success = test.success;
 }
@@ -172,7 +320,7 @@ int kunit_run_tests(struct kunit_suite *suite)
 	kunit_print_subtest_start(suite);
 
 	for (test_case = suite->test_cases; test_case->run_case; test_case++) {
-		kunit_run_case(suite, test_case);
+		kunit_run_case_catch_errors(suite, test_case);
 		kunit_print_test_case_ok_not_ok(test_case, test_case_count++);
 	}
 
diff --git a/kunit/try-catch.c b/kunit/try-catch.c
new file mode 100644
index 0000000000000..de580f074387b
--- /dev/null
+++ b/kunit/try-catch.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * An API to allow a function, that may fail, to be executed, and recover in a
+ * controlled manner.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/try-catch.h>
+#include <kunit/test.h>
+#include <linux/completion.h>
+#include <linux/kthread.h>
+
+void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch)
+{
+	try_catch->try_result = -EFAULT;
+	complete_and_exit(try_catch->try_completion, -EFAULT);
+}
+
+static int kunit_generic_run_threadfn_adapter(void *data)
+{
+	struct kunit_try_catch *try_catch = data;
+
+	try_catch->try(try_catch->context);
+
+	complete_and_exit(try_catch->try_completion, 0);
+}
+
+void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context)
+{
+	DECLARE_COMPLETION_ONSTACK(try_completion);
+	struct kunit *test = try_catch->test;
+	struct task_struct *task_struct;
+	int exit_code, status;
+
+	try_catch->context = context;
+	try_catch->try_completion = &try_completion;
+	try_catch->try_result = 0;
+	task_struct = kthread_run(kunit_generic_run_threadfn_adapter,
+				  try_catch,
+				  "kunit_try_catch_thread");
+	if (IS_ERR(task_struct)) {
+		try_catch->catch(try_catch->context);
+		return;
+	}
+
+	/*
+	 * TODO(brendanhiggins@google.com): We should probably have some type of
+	 * variable timeout here. The only question is what that timeout value
+	 * should be.
+	 *
+	 * The intention has always been, at some point, to be able to label
+	 * tests with some type of size bucket (unit/small, integration/medium,
+	 * large/system/end-to-end, etc), where each size bucket would get a
+	 * default timeout value kind of like what Bazel does:
+	 * https://docs.bazel.build/versions/master/be/common-definitions.html#test.size
+	 * There is still some debate to be had on exactly how we do this. (For
+	 * one, we probably want to have some sort of test runner level
+	 * timeout.)
+	 *
+	 * For more background on this topic, see:
+	 * https://mike-bland.com/2011/11/01/small-medium-large.html
+	 */
+	status = wait_for_completion_timeout(&try_completion,
+					     300 * MSEC_PER_SEC); /* 5 min */
+	if (status < 0) {
+		kunit_err(test, "try timed out\n");
+		try_catch->try_result = -ETIMEDOUT;
+	}
+
+	exit_code = try_catch->try_result;
+
+	if (!exit_code)
+		return;
+
+	if (exit_code == -EFAULT)
+		try_catch->try_result = 0;
+	else if (exit_code == -EINTR)
+		kunit_err(test, "wake_up_process() was never called\n");
+	else if (exit_code)
+		kunit_err(test, "Unknown error: %d\n", exit_code);
+
+	try_catch->catch(try_catch->context);
+}
+
+void kunit_try_catch_init(struct kunit_try_catch *try_catch,
+			  struct kunit *test,
+			  kunit_try_catch_func_t try,
+			  kunit_try_catch_func_t catch)
+{
+	try_catch->test = test;
+	try_catch->try = try;
+	try_catch->catch = catch;
+}
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
