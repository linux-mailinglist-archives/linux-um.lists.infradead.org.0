Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC131C24D
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLX3DQA9TMg3DQVcAMtb9DOHiheTsQUnZiwP9j2KEyE=; b=ugObr4kK9/Y4ko
	3luyhZToLQE75Me6Kuq152L9SD/bWXxRPYyYI8mx9HFIZcCm/XolkesZ2hrkmhMO1hPippVm+VC6f
	tXUQKj4eZlue5xJQYmWau/qzqM971MZroZ23KH3tus8uef0ZVDWKoEU2KgzhmjO4jWzXzhYSqNXzE
	uUn/wsr/GT5Hd7G3BuQIoLSx8RTcexhhS2GdzTXhRDjLPp25XFImeBqTsZl2heCYct177Bov0EDta
	bibWwSxjrFAx7LHeK6L2vJuf8f+vuTI24Icq5T1Pv7ujScEUYgLHXUJzVBhS9xqzlsdZQYugqfgVT
	U1xCYeZvVe18Qrryiijw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQGb-0006Lr-PP; Tue, 14 May 2019 05:46:21 +0000
Received: from mail-ua1-x949.google.com ([2607:f8b0:4864:20::949])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQGX-0006Kv-1s
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:46:19 +0000
Received: by mail-ua1-x949.google.com with SMTP id d3so1978326uaq.19
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=eKMH6YJQm+ZWOgv0moo93/TT6lwjW3ZvkO6MZWwF52g=;
 b=gQLkNI7X5JGlGQs5aU6ViTtfWrDSOgeFVZe6Y7m9XWqPhubBZ5iwrAascNztCIEgvd
 v/4ckUB6CFTAn/9RlREkuvgZRqrRd6l2SVCbauRFwNSzv8dtO230DK3X/dDxz0zOc1kb
 YzNN2w/ytdWe6Qc8flZPgGskJQUAk/DKHCjyMBiybd+B3uDMHO3Rt1Iq8ynfh6J0gVHm
 rpoRXCQsN/uOjcEAr9e6mV0SX1eeKD2E/gYH5ZXL3/SiMQH0fA0HhlxkhJd+rm8Z3vjB
 cyWPBZg7V1Fvqu6b4FB1EKkTDn/TbM2q61SQpSw/cgm9vTTloXT6/tuk+7ffsy6mq8mm
 rEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=eKMH6YJQm+ZWOgv0moo93/TT6lwjW3ZvkO6MZWwF52g=;
 b=CtgNQUMBSEW9Torq0ayZHTxH6Q/OdHhsNmt9Llz4Povg2qnOUpajAb3He+lKJdkfZB
 XNhfiOTYZLv0R6CzclwCI4F51ZOMczVn9CzZsLITYsyFMymMoazdsvwrCQeReWq2pCsR
 fVAheOreMcXYuay9uY8NslYklclZ294Bf1pZPzcuksFHt9/q+wrMZlpAra/Y9DLnIbSl
 N5Yx4gy67YcJcJ8bI4Z/xz3bUEmcYrTlqgwgc6gjpfp1eIZbP2oLOom/b7qxglrInyPY
 tMJT3EgRe+EipBYz6dQNbIsyZE1QBcabVEIJxEAXaHuf5u2mwmPWjUs+PyXZ8wNpfe3f
 DfJQ==
X-Gm-Message-State: APjAAAXBKznVLqOx6OzkbXgj0x0v+Sh4Vc5oQD0zUO01IQbj0ULik10L
 B9Sctq7zeZN2EUCdKhQZsIVeYC4+kmJxeVYEdIH4Ug==
X-Google-Smtp-Source: APXvYqxIDT6FtY5c/bckrFFXO2N2coy7WWwLjTUKiTN84TROdLBQro5CglbwiWR0KQCcROIOOnnuTIeNfCIOfsbNLHsGVQ==
X-Received: by 2002:a67:ec15:: with SMTP id d21mr8151113vso.186.1557812775017; 
 Mon, 13 May 2019 22:46:15 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:43 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-10-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 09/18] kunit: test: add support for test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224617_103313_0F8D118D 
X-CRM114-Status: GOOD (  25.36  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:949 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
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
Changes Since Last Revision:
 - Removed unnecessary indirection as per Logan's comments.
---
 include/kunit/test.h      |  14 ++++
 include/kunit/try-catch.h |  69 +++++++++++++++++++
 kunit/Makefile            |   3 +-
 kunit/test.c              | 136 ++++++++++++++++++++++++++++++++++++--
 kunit/try-catch.c         |  95 ++++++++++++++++++++++++++
 5 files changed, 309 insertions(+), 8 deletions(-)
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kunit/try-catch.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 86187ba069a5d..aff55b5610e7d 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 #include <kunit/kunit-stream.h>
+#include <kunit/try-catch.h>
 
 struct kunit_resource;
 
@@ -166,15 +167,28 @@ struct kunit {
 
 	/* private: internal use only. */
 	const char *name; /* Read only after initialization! */
+	struct kunit_try_catch try_catch;
 	spinlock_t lock; /* Gaurds all mutable test state. */
 	bool success; /* Protected by lock. */
+	bool death_test; /* Protected by lock. */
 	struct list_head resources; /* Protected by lock. */
 };
 
+static inline void kunit_set_death_test(struct kunit *test, bool death_test)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&test->lock, flags);
+	test->death_test = death_test;
+	spin_unlock_irqrestore(&test->lock, flags);
+}
+
 void kunit_init_test(struct kunit *test, const char *name);
 
 void kunit_fail(struct kunit *test, struct kunit_stream *stream);
 
+void kunit_abort(struct kunit *test);
+
 int kunit_run_tests(struct kunit_module *module);
 
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
index e0727afb5d8a9..34cecc5c805e8 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -6,9 +6,9 @@
  * Author: Brendan Higgins <brendanhiggins@google.com>
  */
 
-#include <linux/sched.h>
 #include <linux/sched/debug.h>
 #include <kunit/test.h>
+#include <kunit/try-catch.h>
 
 static bool kunit_get_success(struct kunit *test)
 {
@@ -31,6 +31,18 @@ static void kunit_set_success(struct kunit *test, bool success)
 	spin_unlock_irqrestore(&test->lock, flags);
 }
 
+static bool kunit_get_death_test(struct kunit *test)
+{
+	unsigned long flags;
+	bool death_test;
+
+	spin_lock_irqsave(&test->lock, flags);
+	death_test = test->death_test;
+	spin_unlock_irqrestore(&test->lock, flags);
+
+	return death_test;
+}
+
 static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
 {
 	return vprintk_emit(0, level, NULL, 0, fmt, args);
@@ -145,6 +157,21 @@ void kunit_fail(struct kunit *test, struct kunit_stream *stream)
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
 	spin_lock_init(&test->lock);
@@ -193,18 +220,113 @@ static void kunit_run_case_cleanup(struct kunit *test,
 }
 
 /*
- * Performs all logic to run a test case.
+ * Handles an unexpected crash in a test case.
+ */
+static void kunit_handle_test_crash(struct kunit *test,
+				   struct kunit_module *module,
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
+	struct kunit_module *module;
+	struct kunit_case *test_case;
+};
+
+static void kunit_try_run_case(void *data)
+{
+	struct kunit_try_catch_context *ctx = data;
+	struct kunit *test = ctx->test;
+	struct kunit_module *module = ctx->module;
+	struct kunit_case *test_case = ctx->test_case;
+
+	/*
+	 * kunit_run_case_internal may encounter a fatal error; if it does,
+	 * abort will be called, this thread will exit, and finally the parent
+	 * thread will resume control and handle any necessary clean up.
+	 */
+	kunit_run_case_internal(test, module, test_case);
+	/* This line may never be reached. */
+	kunit_run_case_cleanup(test, module, test_case);
+}
+
+static void kunit_catch_run_case(void *data)
+{
+	struct kunit_try_catch_context *ctx = data;
+	struct kunit *test = ctx->test;
+	struct kunit_module *module = ctx->module;
+	struct kunit_case *test_case = ctx->test_case;
+	int try_exit_code = kunit_try_catch_get_result(&test->try_catch);
+
+	if (try_exit_code) {
+		kunit_set_success(test, false);
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
+		kunit_run_case_cleanup(test, module, test_case);
+	} else {
+		/*
+		 * UNEXPECTED DEATH: kunit_run_case_internal encountered an
+		 * unanticipated fatal error. We have no idea what the state of
+		 * the test case is in.
+		 */
+		kunit_handle_test_crash(test, module, test_case);
+		kunit_set_success(test, false);
+	}
+}
+
+/*
+ * Performs all logic to run a test case. It also catches most errors that
+ * occurs in a test case and reports them as failures.
  */
-static void kunit_run_case(struct kunit_module *module,
-			   struct kunit_case *test_case)
+static void kunit_run_case_catch_errors(struct kunit_module *module,
+					struct kunit_case *test_case)
 {
+	struct kunit_try_catch_context context;
+	struct kunit_try_catch *try_catch;
 	struct kunit test;
 
 	kunit_init_test(&test, test_case->name);
+	try_catch = &test.try_catch;
 	kunit_set_success(&test, true);
+	kunit_set_death_test(&test, false);
 
-	kunit_run_case_internal(&test, module, test_case);
-	kunit_run_case_cleanup(&test, module, test_case);
+	kunit_try_catch_init(try_catch,
+			     &test,
+			     kunit_try_run_case,
+			     kunit_catch_run_case);
+	context.test = &test;
+	context.module = module;
+	context.test_case = test_case;
+	kunit_try_catch_run(try_catch, &context);
 
 	test_case->success = kunit_get_success(&test);
 }
@@ -217,7 +339,7 @@ int kunit_run_tests(struct kunit_module *module)
 	kunit_print_subtest_start(module);
 
 	for (test_case = module->test_cases; test_case->run_case; test_case++) {
-		kunit_run_case(module, test_case);
+		kunit_run_case_catch_errors(module, test_case);
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
