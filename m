Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E317210FC6
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9ZF2rF89a93/OZ147BDh6jnkAyynCYOC/WxmATv36g=; b=gHA00fAIdF7p0q
	AGYBrK7uvRCoFntGX9maFBv6guN17mkNSAYAJ3wF3u4FUD68JLRSxmupBbAdrzP1ZlnNOP1LQbIva
	LDzdxVi3T6fejsx0yjJrOS9ZXdetismvokUUm03FwKWOqQi3W/Xxcj8kIQinheLdAwVt70m/tSkH4
	g2I5Q8ivsqB0Ey5LR0HyAyGr4VeAVwKvgKIkiyQP+WLVpMJkrS3SSUq7uKrRNLQRc0/2/u/GVZrAV
	6KvfKoQs3B22IP9emSEckZYxoElER0RGPSBP3M+rJ9QL6huy7TQ2wkl31zNJoxalFChw+9KqiIVLw
	iuQhOFAewE7k6/xIzY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyGu-0007RZ-4N; Wed, 01 May 2019 23:04:16 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyGq-0007QU-Fr
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:04:14 +0000
Received: by mail-qt1-x849.google.com with SMTP id j20so308260qta.23
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VK9HINDKe1ly4ZzA9popLYLUhn/WyGwpic6aL5MWTO0=;
 b=jDzODj1qOqjPXNLY9SVJEw5Z0OL/0dGHwL3ylc6JfNaDy0fvD1/ek5QldXoMtT+Wii
 gZN8qdXAofPpnVzgPYSBP2tpuJl/33rX41ety9coai/kBRfaomAudXxcuqd/B+pMTQM4
 nuvD74OodxNqb+puJnuKFxtGoGtQ8Jb8YOcneWgLvqMNcLWOR/JRY9EEXH29vEXPAY9F
 WM7FBucz36tyOAodIwtDlAy6eteYxtsnUPf67zap2Ens8+2BUGDRijlfBit6ckvICDQF
 7jFcaxQCG0Y1WF3Jug5mZ7Hq2Arz5NtYi1IUx8xpdBh+nqkeSPd22OXr8VTCQofgU42T
 NUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VK9HINDKe1ly4ZzA9popLYLUhn/WyGwpic6aL5MWTO0=;
 b=d73r0GFmDJRLx6PKbUhXACDRVP765fhh8plRuJgCOqLofoRN4dw1ecFBpmKDR7LXYz
 +76Jk6e3+oNwRYD4X5jAk1jciJTEK9OuooICmPoxJoWbwfv1uPHtyPQvRvSjfpE/EJdS
 67F52VJ/ROiHwixMGWN1YsoG8YI6IJAsbpD1+j3IpLem5bRzaAUe52n2Pxy67RiI2glF
 dCCUrdKCM8XGWVWksnGjIpKCjG0RzWi+QgketOJuoZG9CdSWy8cJS0c9aXWrM1dGC8YF
 RU2BNv3Avkw2ccV3pW921WsIlsP170YjW/ntwj2LSdzu8qEak3zgn0U2GZJ1zFdYeoT1
 KHMg==
X-Gm-Message-State: APjAAAXe5idRIDSiLCLMTZTRkUyk4BDa4YXYHC0otv5/r3XKr4OKDSIu
 t35Ai32qGvlv6DBCUXZ32W7DLLCSL0oI3EUBa/to/w==
X-Google-Smtp-Source: APXvYqyncJUl34uJdfoIKmQZCNZHzvln1ZZjvyIJpHC8YcbxXcKTFTZ+XKDcvReciymhjzaPtz7JOzt9WvEWM/epLxeiRw==
X-Received: by 2002:ac8:1082:: with SMTP id a2mr561124qtj.231.1556751850877;
 Wed, 01 May 2019 16:04:10 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:17 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 08/17] kunit: test: add support for test abort
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160412_528176_A158375B 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
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
---
 include/kunit/test.h      |  13 ++++
 include/kunit/try-catch.h |  91 +++++++++++++++++++++++++
 kunit/Makefile            |   3 +-
 kunit/test.c              | 138 +++++++++++++++++++++++++++++++++++---
 kunit/try-catch.c         |  96 ++++++++++++++++++++++++++
 5 files changed, 332 insertions(+), 9 deletions(-)
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kunit/try-catch.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
index e441270561ece..1b77caeb5d51f 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 #include <kunit/kunit-stream.h>
+#include <kunit/try-catch.h>
 
 struct kunit_resource;
 
@@ -166,15 +167,27 @@ struct kunit {
 
 	/* private: internal use only. */
 	const char *name; /* Read only after initialization! */
+	struct kunit_try_catch try_catch;
 	spinlock_t lock; /* Gaurds all mutable test state. */
 	bool success; /* Protected by lock. */
+	bool death_test; /* Protected by lock. */
 	struct list_head resources; /* Protected by lock. */
 	void (*vprintk)(const struct kunit *test,
 			const char *level,
 			struct va_format *vaf);
 	void (*fail)(struct kunit *test, struct kunit_stream *stream);
+	void (*abort)(struct kunit *test);
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
 int kunit_init_test(struct kunit *test, const char *name);
 
 int kunit_run_tests(struct kunit_module *module);
diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
new file mode 100644
index 0000000000000..e85abe044b6b5
--- /dev/null
+++ b/include/kunit/try-catch.h
@@ -0,0 +1,91 @@
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
+	void (*run)(struct kunit_try_catch *try_catch);
+	void __noreturn (*throw)(struct kunit_try_catch *try_catch);
+	struct kunit *test;
+	struct completion *try_completion;
+	int try_result;
+	kunit_try_catch_func_t try;
+	kunit_try_catch_func_t catch;
+	void *context;
+};
+
+/*
+ * Exposed to be overridden for other architectures.
+ */
+void kunit_try_catch_init_internal(struct kunit_try_catch *try_catch);
+
+static inline void kunit_try_catch_init(struct kunit_try_catch *try_catch,
+					struct kunit *test,
+					kunit_try_catch_func_t try,
+					kunit_try_catch_func_t catch)
+{
+	try_catch->test = test;
+	kunit_try_catch_init_internal(try_catch);
+	try_catch->try = try;
+	try_catch->catch = catch;
+}
+
+static inline void kunit_try_catch_run(struct kunit_try_catch *try_catch,
+				       void *context)
+{
+	try_catch->context = context;
+	try_catch->run(try_catch);
+}
+
+static inline void __noreturn kunit_try_catch_throw(
+		struct kunit_try_catch *try_catch)
+{
+	try_catch->throw(try_catch);
+}
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
index 01e82c18b2fa6..5eace2a527a4e 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -6,10 +6,9 @@
  * Author: Brendan Higgins <brendanhiggins@google.com>
  */
 
-#include <linux/sched.h>
 #include <linux/sched/debug.h>
-#include <os.h>
 #include <kunit/test.h>
+#include <kunit/try-catch.h>
 
 static bool kunit_get_success(struct kunit *test)
 {
@@ -32,6 +31,18 @@ static void kunit_set_success(struct kunit *test, bool success)
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
 static int kunit_vprintk_emit(const struct kunit *test,
 			      int level,
 			      const char *fmt,
@@ -70,6 +81,21 @@ static void kunit_fail(struct kunit *test, struct kunit_stream *stream)
 	kunit_stream_commit(stream);
 }
 
+static void __noreturn kunit_abort(struct kunit *test)
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
 int kunit_init_test(struct kunit *test, const char *name)
 {
 	spin_lock_init(&test->lock);
@@ -77,6 +103,7 @@ int kunit_init_test(struct kunit *test, const char *name)
 	test->name = name;
 	test->vprintk = kunit_vprintk;
 	test->fail = kunit_fail;
+	test->abort = kunit_abort;
 
 	return 0;
 }
@@ -122,16 +149,111 @@ static void kunit_run_case_cleanup(struct kunit *test,
 }
 
 /*
- * Performs all logic to run a test case.
+ * Handles an unexpected crash in a test case.
  */
-static bool kunit_run_case(struct kunit *test,
-			   struct kunit_module *module,
-			   struct kunit_case *test_case)
+static void kunit_handle_test_crash(struct kunit *test,
+				   struct kunit_module *module,
+				   struct kunit_case *test_case)
 {
-	kunit_set_success(test, true);
+	kunit_err(test, "%s crashed", test_case->name);
+	/*
+	 * TODO(brendanhiggins@google.com): This prints the stack trace up
+	 * through this frame, not up to the frame that caused the crash.
+	 */
+	show_stack(NULL, NULL);
+
+	kunit_case_internal_cleanup(test);
+}
 
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
 	kunit_run_case_internal(test, module, test_case);
+	/* This line may never be reached. */
 	kunit_run_case_cleanup(test, module, test_case);
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
+ */
+static bool kunit_run_case_catch_errors(struct kunit *test,
+				       struct kunit_module *module,
+				       struct kunit_case *test_case)
+{
+	struct kunit_try_catch *try_catch = &test->try_catch;
+	struct kunit_try_catch_context context;
+
+	kunit_set_success(test, true);
+	kunit_set_death_test(test, false);
+
+	kunit_try_catch_init(try_catch,
+			     test,
+			     kunit_try_run_case,
+			     kunit_catch_run_case);
+	context.test = test;
+	context.module = module;
+	context.test_case = test_case;
+	kunit_try_catch_run(try_catch, &context);
 
 	return kunit_get_success(test);
 }
@@ -148,7 +270,7 @@ int kunit_run_tests(struct kunit_module *module)
 		return ret;
 
 	for (test_case = module->test_cases; test_case->run_case; test_case++) {
-		success = kunit_run_case(&test, module, test_case);
+		success = kunit_run_case_catch_errors(&test, module, test_case);
 		if (!success)
 			all_passed = false;
 
diff --git a/kunit/try-catch.c b/kunit/try-catch.c
new file mode 100644
index 0000000000000..c4cdb30880714
--- /dev/null
+++ b/kunit/try-catch.c
@@ -0,0 +1,96 @@
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
+static void __noreturn kunit_generic_throw(struct kunit_try_catch *try_catch)
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
+static void kunit_generic_run_try_catch(struct kunit_try_catch *try_catch)
+{
+	DECLARE_COMPLETION_ONSTACK(try_completion);
+	struct kunit *test = try_catch->test;
+	struct task_struct *task_struct;
+	int exit_code, status;
+
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
+void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch)
+{
+	try_catch->run = kunit_generic_run_try_catch;
+	try_catch->throw = kunit_generic_throw;
+}
+
+void __weak kunit_try_catch_init_internal(struct kunit_try_catch *try_catch)
+{
+	kunit_generic_try_catch_init(try_catch);
+}
+
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
