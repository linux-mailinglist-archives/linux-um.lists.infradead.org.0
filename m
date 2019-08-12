Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DC88A5E7
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDc0G40dbQcHEI6tJyL/N/O8EnRNg617Sz8ae4nS26o=; b=lljSlB56muwUWx
	FFntSpUSTNtDzmCzVpSqkb72tcpoYRcsAnXdzdLcn8YET/HR/lTFzjz1Oc4PTJbQTDUIuh1TbSGHF
	m0miPOUXBcv4BZ+zoMPsPxUOISWD9bmMQxn4VlyL5Sm5tUCuxPQxcXJl+oE5SemEVt3slhc7/Lgp5
	nw5TrQY+A59h39qhjErmelsaS2+QEG+UkHBhV+tLEdASND8hChrmQHcqcGZCgSUE1q5l6y3b/QxYs
	eowuPEJyc9OZV98qVP9d+Ma2tPnxoLdSVAL3Qbanq7okk7W5daMjDRXtzyPL4hZ6rtMaeNtDYvM+g
	an/gTydqHgJkpCj1DT6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF0L-0004iX-Fe; Mon, 12 Aug 2019 18:25:13 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF0E-0003zG-HU
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:25:09 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id l7so25237896vkm.21
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gvOeNTlcklsgFg5eAj43KffAagqjk+iTpWJgew6GQ/c=;
 b=DRB4VCrtC8+LRoiKbn1RIL5Xr2qIbMumjZVfI66VbGILMTT9/08NakHlJpEAxSPmeI
 PecuQo3ABR2+qy5g+4KuLirMlh+CJbj4DM8zGKTrIYp4wtEucweWtq6aRcu3bR3ZQKaa
 n7C8Dp/I+hTm7CGyw2Dz1b7KFHDkH6O3+Ukqt5M1gkJr2D2uApeEBiiBFMd3rETuw9WX
 Uqts4zamelKC/B6KqVEpyGuK4KHgfb2m7xWINnUPscnV6jbAUiL6POEhlJT6D5y8FOSL
 M9XaN+74A+JFcqBGoFrH5E1JZoebwwHCdeUZBGw7yTRaZgbtGHt1SoRwaEOISv4tcrnt
 889A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gvOeNTlcklsgFg5eAj43KffAagqjk+iTpWJgew6GQ/c=;
 b=VOVfhgmAaV0Uj+HLG2lRO5c+mG7OVSSQQxjlzhIAwScYeE4c4xEoeYFgYJWW6458fN
 WzeJ1O6D+/PW67EuA0uPhZdfBUsO7r0RidQW9/fTYE7wQyBqeN5Y4GjzQf1S0/zPRR1f
 QcBGgH3GrdnmwvfFS8n0mL3t1RqUosX5MF4phTBmeKzgMxVPfM/ayABA0veSIMoW1n9Q
 qMzJGDJSz2GqC3pN9CQpl9X3iVteZ0Zh6Z2pLdY0IHF/rsiWavyHvJDdiybG7dF/qXSx
 P15udWSXDNIc9bVqZc8Nbxn+ZgVUvnmQUjdsoLrDaEMk6PEKxN/+F94ZoaOQaLP+LY0t
 JktA==
X-Gm-Message-State: APjAAAXbJs5gFqOcnTLktMjyVCNIKs2UCrhP5q9FhT6ygoFifgavQrM4
 H1dMDf7ErtV3Zf5O9Y0CiXl60E6AAlzlmb6K2CR6Iw==
X-Google-Smtp-Source: APXvYqyAY7IrA2KuZIkHRm3S0iTgxA57sy1P2xwz8YyG8+fJj+UQNMQCq/VVsMgW64riGqwBEFPPtRyuCDuGhTFrp8dCuQ==
X-Received: by 2002:a67:eb12:: with SMTP id a18mr22906383vso.119.1565634303599; 
 Mon, 12 Aug 2019 11:25:03 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:12 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-10-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 09/18] kunit: test: add support for test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112506_693856_361C9A72 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
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
 include/kunit/test.h      |  14 +++
 include/kunit/try-catch.h |  69 +++++++++++++++
 kunit/Makefile            |   3 +-
 kunit/test.c              | 179 ++++++++++++++++++++++++++++++++++----
 kunit/try-catch.c         |  95 ++++++++++++++++++++
 5 files changed, 344 insertions(+), 16 deletions(-)
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kunit/try-catch.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 2625bcfeb19ac..93381f841e09f 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -13,6 +13,7 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 #include <kunit/assert.h>
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
 	spinlock_t lock; /* Gaurds all mutable test state. */
+	/*
+	 * death_test may be both set and unset from multiple threads in a test
+	 * case.
+	 */
+	bool death_test; /* Protected by lock. */
 	/*
 	 * Because resources is a list that may be updated multiple times (with
 	 * new resources) from any thread associated with a test case, we must
@@ -184,6 +191,13 @@ struct kunit {
 	struct list_head resources; /* Protected by lock. */
 };
 
+static inline void kunit_set_death_test(struct kunit *test, bool death_test)
+{
+	spin_lock(&test->lock);
+	test->death_test = death_test;
+	spin_unlock(&test->lock);
+}
+
 void kunit_init_test(struct kunit *test, const char *name);
 
 int kunit_run_tests(struct kunit_suite *suite);
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
index 4e46450bcb3a8..c9176c9c578c6 100644
--- a/kunit/Makefile
+++ b/kunit/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
 					string-stream.o \
-					assert.o
+					assert.o \
+					try-catch.o
 
 obj-$(CONFIG_KUNIT_TEST) +=		string-stream-test.o
 
diff --git a/kunit/test.c b/kunit/test.c
index e5080a2c6b29c..995cb53fe4ee9 100644
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
+	spin_lock(&test->lock);
+	death_test = test->death_test;
+	spin_unlock(&test->lock);
+
+	return death_test;
+}
+
 static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
 {
 	return vprintk_emit(0, level, NULL, 0, fmt, args);
@@ -158,6 +171,21 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
 	kunit_print_string_stream(test, stream);
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
 void kunit_do_assertion(struct kunit *test,
 			struct kunit_assert *assert,
 			bool pass,
@@ -176,6 +204,9 @@ void kunit_do_assertion(struct kunit *test,
 	kunit_fail(test, assert);
 
 	va_end(args);
+
+	if (assert->type == KUNIT_ASSERTION)
+		kunit_abort(test);
 }
 
 void kunit_init_test(struct kunit *test, const char *name)
@@ -184,36 +215,154 @@ void kunit_init_test(struct kunit *test, const char *name)
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
-
-	kunit_init_test(&test, test_case->name);
-
 	if (suite->init) {
 		int ret;
 
-		ret = suite->init(&test);
+		ret = suite->init(test);
 		if (ret) {
-			kunit_err(&test, "failed to initialize: %d\n", ret);
-			kunit_set_failure(&test);
-			test_case->success = test.success;
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
@@ -226,7 +375,7 @@ int kunit_run_tests(struct kunit_suite *suite)
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
