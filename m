Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085229BA3D
	for <lists+linux-um@lfdr.de>; Sat, 24 Aug 2019 03:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/C9jzTDplOpXahLVAfRa11ETzdkhHpeB+GW/bR1QN8=; b=WmS3w6mY3WgRZH
	UchnD2SIsRySC3RYkxdq2cL1i/EsqLW/I9V2VG5fY/HKHhoua7m0Af7rMG4tiQghlBm9ZSRCkmmH3
	iiO8nLE44OGWIPPRaFmEcrTcU6Z4gaVeZwb66z8Q6Cx+DFdL6co7KQMXB3Pp3Tl8ADIwDQthekrW8
	nMyJHBWSDTmYOLGGRxwrr0eQjyk9Hfz96yn1srRb8idpgMypQjH/zYfvvN1VvS2I/TQMNNxRvVMOM
	Vq1fyj0SrepZ7uKIJkNCmTZPShv8sPXAkay4GLuxjw6/Sv5Ce73Mrxj+DDJUPiwja33R7Lw3U6kBp
	s/mH7NWOfhcas/p0lk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KxP-0004dx-7L; Sat, 24 Aug 2019 01:35:07 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KxK-0003sH-Gb
 for linux-um@lists.infradead.org; Sat, 24 Aug 2019 01:35:04 +0000
Received: by mail-vk1-xa49.google.com with SMTP id x130so4509927vkc.19
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 18:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RKvEkOlrbtCGcsAB272EoThhil2qrnBtSdQHhp/duDU=;
 b=sKQl/ggMxFNKtK4b2XjUWB1mXYbx8Uz1v+odpEh7Opx6JxBgMKNlnY7qtPiR7TXUuF
 qsddY8un1s1G1aspzuKd/13swMX4DZMOW5AnOB1Fvvs9VydG74ZyG+g6phJrdF43cKrr
 i2nAJijp7WdWEUBS1TFnD7edKAcb1y927l4hZ3E/jgoqYQx4B9ZR8ccv9bG+vLt1u7q8
 z7TeHjt+DUBEP22ET7yOQ238Bqv/xi8axGYH2NZDArjvWNQdWTf5kxnSc7PSBMRQkqPw
 C26Ayz+UXSVxpIqwkfSeqb2Iid/kzRAZPjVsWNU7Gfs1L0lynlfCJ1QNyWblIqxjQ+yT
 4Vwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RKvEkOlrbtCGcsAB272EoThhil2qrnBtSdQHhp/duDU=;
 b=e15UCDRl+qXJFETbzcQCsO52mQHE2GcOVc3C/pI52evSxjx6+VNULQ4iK2ulnRoi79
 N0kdK4sAqF0fJ8+q2g2Ea9atMFZu7yb6DaX5y3D06sepUBHb9Yn/G7/jYgvW6zdfoU9+
 rDIBjSDmDUg/aZFLVaPFuOL7p257ZGy5INFmny9i3UrqDoti8ntGUVaQ96dsqeU8yQFh
 6zDAl3TXQIXSj2F/oYQ/0Lrg/kT2B7Ai4BfWDz3M4DBqn3r4YYT5QDxii0fwkor1wef8
 yp1pppwDjJKCmV1/6TMi0+Q/Xk2MkfFXOeLbRwgpqWHGDvb08oWAA3prg8xk0nDEiZCL
 UVgQ==
X-Gm-Message-State: APjAAAWVOcGw/HwOsbVMGQtWUBiNkcWJ/nI9UnPrwjOFTgBq25Q6LICN
 eR45jrZrBIJIXEBgdj/oKZzQbEq7Zdi+swiLT82CEw==
X-Google-Smtp-Source: APXvYqwjcm0eRORkBdq0wpww3SFLNgOxqdjmHDPCzWjLBlybd0g7J4MQQ4uhOLw6/hlwykAU8IrWG/rNOdZZ9qQCHKgLYQ==
X-Received: by 2002:ab0:7782:: with SMTP id x2mr4008334uar.140.1566610500801; 
 Fri, 23 Aug 2019 18:35:00 -0700 (PDT)
Date: Fri, 23 Aug 2019 18:34:16 -0700
In-Reply-To: <20190824013425.175645-1-brendanhiggins@google.com>
Message-Id: <20190824013425.175645-10-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190824013425.175645-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v15 09/18] kunit: test: add support for test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_183502_602385_31758855 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h      |   2 +
 include/kunit/try-catch.h |  75 +++++++++++++++++++++
 kunit/Makefile            |   3 +-
 kunit/test.c              | 137 +++++++++++++++++++++++++++++++++-----
 kunit/try-catch.c         | 118 ++++++++++++++++++++++++++++++++
 5 files changed, 319 insertions(+), 16 deletions(-)
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kunit/try-catch.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 30a62de16bc9..3d554d7c1c79 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -10,6 +10,7 @@
 #define _KUNIT_TEST_H
 
 #include <kunit/assert.h>
+#include <kunit/try-catch.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/types.h>
@@ -172,6 +173,7 @@ struct kunit {
 
 	/* private: internal use only. */
 	const char *name; /* Read only after initialization! */
+	struct kunit_try_catch try_catch;
 	/*
 	 * success starts as true, and may only be set to false during a
 	 * test case; thus, it is safe to update this across multiple
diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
new file mode 100644
index 000000000000..404f336cbdc8
--- /dev/null
+++ b/include/kunit/try-catch.h
@@ -0,0 +1,75 @@
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
+struct completion;
+struct kunit;
+
+/**
+ * struct kunit_try_catch - provides a generic way to run code which might fail.
+ * @test: The test case that is currently being executed.
+ * @try_completion: Completion that the control thread waits on while test runs.
+ * @try_result: Contains any errno obtained while running test case.
+ * @try: The function, the test case, to attempt to run.
+ * @catch: The function called if @try bails out.
+ * @context: used to pass user data to the try and catch functions.
+ *
+ * kunit_try_catch provides a generic, architecture independent way to execute
+ * an arbitrary function of type kunit_try_catch_func_t which may bail out by
+ * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
+ * is stopped at the site of invocation and @catch is called.
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
index 4e46450bcb3a..c9176c9c578c 100644
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
index 3cbceb34b3b3..b2ca9b94c353 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -7,7 +7,9 @@
  */
 
 #include <kunit/test.h>
+#include <kunit/try-catch.h>
 #include <linux/kernel.h>
+#include <linux/sched/debug.h>
 
 static void kunit_set_failure(struct kunit *test)
 {
@@ -162,6 +164,19 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
 	WARN_ON(string_stream_destroy(stream));
 }
 
+static void __noreturn kunit_abort(struct kunit *test)
+{
+	kunit_try_catch_throw(&test->try_catch); /* Does not return. */
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
@@ -180,6 +195,9 @@ void kunit_do_assertion(struct kunit *test,
 	kunit_fail(test, assert);
 
 	va_end(args);
+
+	if (assert->type == KUNIT_ASSERTION)
+		kunit_abort(test);
 }
 
 void kunit_init_test(struct kunit *test, const char *name)
@@ -191,33 +209,122 @@ void kunit_init_test(struct kunit *test, const char *name)
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
 
+static void kunit_case_internal_cleanup(struct kunit *test)
+{
+	kunit_cleanup(test);
+}
+
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
+	int try_exit_code = kunit_try_catch_get_result(&test->try_catch);
+
+	if (try_exit_code) {
+		kunit_set_failure(test);
+		/*
+		 * Test case could not finish, we have no idea what state it is
+		 * in, so don't do clean up.
+		 */
+		if (try_exit_code == -ETIMEDOUT) {
+			kunit_err(test, "test case timed out\n");
+		/*
+		 * Unknown internal error occurred preventing test case from
+		 * running, so there is nothing to clean up.
+		 */
+		} else {
+			kunit_err(test, "internal error occurred preventing test case from running: %d\n",
+				  try_exit_code);
+		}
+		return;
+	}
+
+	/*
+	 * Test case was run, but aborted. It is the test case's business as to
+	 * whether it failed or not, we just need to clean up.
+	 */
+	kunit_run_case_cleanup(test, suite);
+}
+
+/*
+ * Performs all logic to run a test case. It also catches most errors that
+ * occur in a test case and reports them as failures.
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
@@ -230,7 +337,7 @@ int kunit_run_tests(struct kunit_suite *suite)
 	kunit_print_subtest_start(suite);
 
 	for (test_case = suite->test_cases; test_case->run_case; test_case++) {
-		kunit_run_case(suite, test_case);
+		kunit_run_case_catch_errors(suite, test_case);
 		kunit_print_test_case_ok_not_ok(test_case, test_case_count++);
 	}
 
diff --git a/kunit/try-catch.c b/kunit/try-catch.c
new file mode 100644
index 000000000000..55686839eb61
--- /dev/null
+++ b/kunit/try-catch.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * An API to allow a function, that may fail, to be executed, and recover in a
+ * controlled manner.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/test.h>
+#include <kunit/try-catch.h>
+#include <linux/completion.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/sched/sysctl.h>
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
+static unsigned long kunit_test_timeout(void)
+{
+	unsigned long timeout_msecs;
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
+	if (sysctl_hung_task_timeout_secs) {
+		/*
+		 * If sysctl_hung_task is active, just set the timeout to some
+		 * value less than that.
+		 *
+		 * In regards to the above TODO, if we decide on variable
+		 * timeouts, this logic will likely need to change.
+		 */
+		timeout_msecs = (sysctl_hung_task_timeout_secs - 1) *
+				MSEC_PER_SEC;
+	} else {
+		timeout_msecs = 300 * MSEC_PER_SEC; /* 5 min */
+	}
+
+	return timeout_msecs;
+}
+
+void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context)
+{
+	DECLARE_COMPLETION_ONSTACK(try_completion);
+	struct kunit *test = try_catch->test;
+	struct task_struct *task_struct;
+	int exit_code, time_remaining;
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
+	time_remaining = wait_for_completion_timeout(&try_completion,
+						     kunit_test_timeout());
+	if (time_remaining == 0) {
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
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
