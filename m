Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A09BB031
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 11:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifJ4daWsXHWh4JVhQ2CadBzby/LX6CvqNxmRK0+I2PM=; b=ncbtJhalBIOZjO
	xaxpOtqrPROu806d/xZOb6K8E4ZwHpyTTOZZzlGbNzDfg3KRm22yOaB93EkEOJCft/HRkOA5yIWJB
	isbwgfSo8FAwgqMEGFgCwPTTpp9+t+rWbyLa8hpptYcNFJR5f79sqWpLxU2oLVHf6xrHIrxq+/LDp
	rl4Wo8O6x2zBimssh6QmgMTrSKXouA/sR5y740lLQctQigl7okS3vNDq/bQBOWA2AoNMuB2u40TFh
	L39OCBVD5AmNbfCPt1gHnWaGyzeKeCQEwNHHwIwDNj9sY9Q+G5MBaexy9CWpAZmPQpvyym8sRhsv/
	07qbBLjf3JvaI1N4515w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKFK-0002mO-VO; Mon, 23 Sep 2019 09:03:03 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKFH-0002kk-Gu
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 09:03:01 +0000
Received: by mail-pg1-x54a.google.com with SMTP id m14so4258503pgd.0
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 02:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RnaiknukMn81GdTXdyUJzTMO7hw1RYid2iNxb8PtJPc=;
 b=HmyrSFYThZyil8oXcuRROZa0VhrbXIvFfTYZTqxhQBTlaWa7Ug07OR7kcRfmTsXTZw
 xh76zmBKrLHEeh/nwrfaSptgUvPotJ+V7ieLFeEM7JYTa9ESttd6izi4jVs7dGUnQTj0
 uRzv8Z5qBobZm1vR2Ofr/95gM4c1p8zfCvJJUwuQAK5H+3B1RyUbKmPtWFUdjeNQ/xGz
 LX7MyDMxCuRbRvoHlLF5oY8PNLag+Cagz4SPz07iTSXAvLYz8lb0tBEqqIz2jr4ZK1KC
 8U0phI53+XR2S+tauWp957i2bUgtTCThDraGBZwW4NVGVwyIxoWQRT4VaAhtZCd+LrPp
 AXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RnaiknukMn81GdTXdyUJzTMO7hw1RYid2iNxb8PtJPc=;
 b=t4uX9dXlPqW9FC7CEzh4nNaIa6hg4ikzwzeW9tRI6emZYlG8YBYnNODJykhStqKqtA
 MzCPyLL1GP56C5hRDQMOEjdvk1bKmdBMsjdg4GrGZFMQUKgpOnatD289QlYN8sDSNfxc
 jbfnnAnOtMgZBls06fcHiPVTMjkVWCxEvY9lFzvwKkiIKFtr4wGIvykBVwdqMerEyPKL
 +hJEl6T6hw9JZcarkcGr6HYjb991MI0uCnJGvpA+bkMBJaJdVYQ+IH+YbpDDhilr++bc
 eAGIDXAXJDYpiBbp4vLyjnih296a6/Uk+1m0X7bmS9nurre7LM+ujl9kto/HHoxemsdd
 M4IA==
X-Gm-Message-State: APjAAAWZEn1tb1prKExk34+Tk02oLRP1nFpp4eWWblpKuYk0eMz7QCLy
 Z7KidYXqiWHiUhjhf4fr19lKxR3rrzznD8+sPJNnNQ==
X-Google-Smtp-Source: APXvYqwEHnr6Gadc+8qVqNyG/MK28TblGnL0JV8EwWy2W+J1pstPlCF4Xfq6ZVnfpa/Y5ZEilFu5PrZBbwCKhE9yqwtY2w==
X-Received: by 2002:a63:f342:: with SMTP id t2mr9198199pgj.194.1569229377795; 
 Mon, 23 Sep 2019 02:02:57 -0700 (PDT)
Date: Mon, 23 Sep 2019 02:02:31 -0700
In-Reply-To: <20190923090249.127984-1-brendanhiggins@google.com>
Message-Id: <20190923090249.127984-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v18 01/19] kunit: test: add KUnit test runner core
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020259_572563_7ECD7B32 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add core facilities for defining unit tests; this provides a common way
to define test cases, functions that execute code which is under test
and determine whether the code under test behaves as expected; this also
provides a way to group together related test cases in test suites (here
we call them test_modules).

Just define test cases and how to execute them for now; setting
expectations on code will be defined later.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h | 188 ++++++++++++++++++++++++++++++++++++++++++
 lib/kunit/Kconfig    |  13 +++
 lib/kunit/Makefile   |   1 +
 lib/kunit/test.c     | 191 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 393 insertions(+)
 create mode 100644 include/kunit/test.h
 create mode 100644 lib/kunit/Kconfig
 create mode 100644 lib/kunit/Makefile
 create mode 100644 lib/kunit/test.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
new file mode 100644
index 000000000000..e30d1bf2fb68
--- /dev/null
+++ b/include/kunit/test.h
@@ -0,0 +1,188 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Base unit test (KUnit) API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#ifndef _KUNIT_TEST_H
+#define _KUNIT_TEST_H
+
+#include <linux/types.h>
+
+struct kunit;
+
+/**
+ * struct kunit_case - represents an individual test case.
+ *
+ * @run_case: the function representing the actual test case.
+ * @name:     the name of the test case.
+ *
+ * A test case is a function with the signature,
+ * ``void (*)(struct kunit *)`` that makes expectations (see
+ * KUNIT_EXPECT_TRUE()) about code under test. Each test case is associated
+ * with a &struct kunit_suite and will be run after the suite's init
+ * function and followed by the suite's exit function.
+ *
+ * A test case should be static and should only be created with the
+ * KUNIT_CASE() macro; additionally, every array of test cases should be
+ * terminated with an empty test case.
+ *
+ * Example:
+ *
+ * .. code-block:: c
+ *
+ *	void add_test_basic(struct kunit *test)
+ *	{
+ *		KUNIT_EXPECT_EQ(test, 1, add(1, 0));
+ *		KUNIT_EXPECT_EQ(test, 2, add(1, 1));
+ *		KUNIT_EXPECT_EQ(test, 0, add(-1, 1));
+ *		KUNIT_EXPECT_EQ(test, INT_MAX, add(0, INT_MAX));
+ *		KUNIT_EXPECT_EQ(test, -1, add(INT_MAX, INT_MIN));
+ *	}
+ *
+ *	static struct kunit_case example_test_cases[] = {
+ *		KUNIT_CASE(add_test_basic),
+ *		{}
+ *	};
+ *
+ */
+struct kunit_case {
+	void (*run_case)(struct kunit *test);
+	const char *name;
+
+	/* private: internal use only. */
+	bool success;
+};
+
+/**
+ * KUNIT_CASE - A helper for creating a &struct kunit_case
+ *
+ * @test_name: a reference to a test case function.
+ *
+ * Takes a symbol for a function representing a test case and creates a
+ * &struct kunit_case object from it. See the documentation for
+ * &struct kunit_case for an example on how to use it.
+ */
+#define KUNIT_CASE(test_name) { .run_case = test_name, .name = #test_name }
+
+/**
+ * struct kunit_suite - describes a related collection of &struct kunit_case
+ *
+ * @name:	the name of the test. Purely informational.
+ * @init:	called before every test case.
+ * @exit:	called after every test case.
+ * @test_cases:	a null terminated array of test cases.
+ *
+ * A kunit_suite is a collection of related &struct kunit_case s, such that
+ * @init is called before every test case and @exit is called after every
+ * test case, similar to the notion of a *test fixture* or a *test class*
+ * in other unit testing frameworks like JUnit or Googletest.
+ *
+ * Every &struct kunit_case must be associated with a kunit_suite for KUnit
+ * to run it.
+ */
+struct kunit_suite {
+	const char name[256];
+	int (*init)(struct kunit *test);
+	void (*exit)(struct kunit *test);
+	struct kunit_case *test_cases;
+};
+
+/**
+ * struct kunit - represents a running instance of a test.
+ *
+ * @priv: for user to store arbitrary data. Commonly used to pass data
+ *	  created in the init function (see &struct kunit_suite).
+ *
+ * Used to store information about the current context under which the test
+ * is running. Most of this data is private and should only be accessed
+ * indirectly via public functions; the one exception is @priv which can be
+ * used by the test writer to store arbitrary data.
+ */
+struct kunit {
+	void *priv;
+
+	/* private: internal use only. */
+	const char *name; /* Read only after initialization! */
+	/*
+	 * success starts as true, and may only be set to false during a
+	 * test case; thus, it is safe to update this across multiple
+	 * threads using WRITE_ONCE; however, as a consequence, it may only
+	 * be read after the test case finishes once all threads associated
+	 * with the test case have terminated.
+	 */
+	bool success; /* Read only after test_case finishes! */
+};
+
+void kunit_init_test(struct kunit *test, const char *name);
+
+int kunit_run_tests(struct kunit_suite *suite);
+
+/**
+ * kunit_test_suite() - used to register a &struct kunit_suite with KUnit.
+ *
+ * @suite: a statically allocated &struct kunit_suite.
+ *
+ * Registers @suite with the test framework. See &struct kunit_suite for
+ * more information.
+ *
+ * NOTE: Currently KUnit tests are all run as late_initcalls; this means
+ * that they cannot test anything where tests must run at a different init
+ * phase. One significant restriction resulting from this is that KUnit
+ * cannot reliably test anything that is initialize in the late_init phase;
+ * another is that KUnit is useless to test things that need to be run in
+ * an earlier init phase.
+ *
+ * TODO(brendanhiggins@google.com): Don't run all KUnit tests as
+ * late_initcalls.  I have some future work planned to dispatch all KUnit
+ * tests from the same place, and at the very least to do so after
+ * everything else is definitely initialized.
+ */
+#define kunit_test_suite(suite)						       \
+	static int kunit_suite_init##suite(void)			       \
+	{								       \
+		return kunit_run_tests(&suite);				       \
+	}								       \
+	late_initcall(kunit_suite_init##suite)
+
+void __printf(3, 4) kunit_printk(const char *level,
+				 const struct kunit *test,
+				 const char *fmt, ...);
+
+/**
+ * kunit_info() - Prints an INFO level message associated with @test.
+ *
+ * @test: The test context object.
+ * @fmt:  A printk() style format string.
+ *
+ * Prints an info level message associated with the test suite being run.
+ * Takes a variable number of format parameters just like printk().
+ */
+#define kunit_info(test, fmt, ...) \
+	kunit_printk(KERN_INFO, test, fmt, ##__VA_ARGS__)
+
+/**
+ * kunit_warn() - Prints a WARN level message associated with @test.
+ *
+ * @test: The test context object.
+ * @fmt:  A printk() style format string.
+ *
+ * Prints a warning level message.
+ */
+#define kunit_warn(test, fmt, ...) \
+	kunit_printk(KERN_WARNING, test, fmt, ##__VA_ARGS__)
+
+/**
+ * kunit_err() - Prints an ERROR level message associated with @test.
+ *
+ * @test: The test context object.
+ * @fmt:  A printk() style format string.
+ *
+ * Prints an error level message.
+ */
+#define kunit_err(test, fmt, ...) \
+	kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
+
+#endif /* _KUNIT_TEST_H */
diff --git a/lib/kunit/Kconfig b/lib/kunit/Kconfig
new file mode 100644
index 000000000000..666b9cb67a74
--- /dev/null
+++ b/lib/kunit/Kconfig
@@ -0,0 +1,13 @@
+#
+# KUnit base configuration
+#
+
+menuconfig KUNIT
+	bool "KUnit - Enable support for unit tests"
+	help
+	  Enables support for kernel unit tests (KUnit), a lightweight unit
+	  testing and mocking framework for the Linux kernel. These tests are
+	  able to be run locally on a developer's workstation without a VM or
+	  special hardware when using UML. Can also be used on most other
+	  architectures. For more information, please see
+	  Documentation/dev-tools/kunit/.
diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
new file mode 100644
index 000000000000..5efdc4dea2c0
--- /dev/null
+++ b/lib/kunit/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_KUNIT) +=			test.o
diff --git a/lib/kunit/test.c b/lib/kunit/test.c
new file mode 100644
index 000000000000..d3dda359f99b
--- /dev/null
+++ b/lib/kunit/test.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Base unit test (KUnit) API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/test.h>
+#include <linux/kernel.h>
+
+static void kunit_set_failure(struct kunit *test)
+{
+	WRITE_ONCE(test->success, false);
+}
+
+static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
+{
+	return vprintk_emit(0, level, NULL, 0, fmt, args);
+}
+
+static int kunit_printk_emit(int level, const char *fmt, ...)
+{
+	va_list args;
+	int ret;
+
+	va_start(args, fmt);
+	ret = kunit_vprintk_emit(level, fmt, args);
+	va_end(args);
+
+	return ret;
+}
+
+static void kunit_vprintk(const struct kunit *test,
+			  const char *level,
+			  struct va_format *vaf)
+{
+	kunit_printk_emit(level[1] - '0', "\t# %s: %pV", test->name, vaf);
+}
+
+static void kunit_print_tap_version(void)
+{
+	static bool kunit_has_printed_tap_version;
+
+	if (!kunit_has_printed_tap_version) {
+		kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
+		kunit_has_printed_tap_version = true;
+	}
+}
+
+static size_t kunit_test_cases_len(struct kunit_case *test_cases)
+{
+	struct kunit_case *test_case;
+	size_t len = 0;
+
+	for (test_case = test_cases; test_case->run_case; test_case++)
+		len++;
+
+	return len;
+}
+
+static void kunit_print_subtest_start(struct kunit_suite *suite)
+{
+	kunit_print_tap_version();
+	kunit_printk_emit(LOGLEVEL_INFO, "\t# Subtest: %s\n", suite->name);
+	kunit_printk_emit(LOGLEVEL_INFO,
+			  "\t1..%zd\n",
+			  kunit_test_cases_len(suite->test_cases));
+}
+
+static void kunit_print_ok_not_ok(bool should_indent,
+				  bool is_ok,
+				  size_t test_number,
+				  const char *description)
+{
+	const char *indent, *ok_not_ok;
+
+	if (should_indent)
+		indent = "\t";
+	else
+		indent = "";
+
+	if (is_ok)
+		ok_not_ok = "ok";
+	else
+		ok_not_ok = "not ok";
+
+	kunit_printk_emit(LOGLEVEL_INFO,
+			  "%s%s %zd - %s\n",
+			  indent, ok_not_ok, test_number, description);
+}
+
+static bool kunit_suite_has_succeeded(struct kunit_suite *suite)
+{
+	const struct kunit_case *test_case;
+
+	for (test_case = suite->test_cases; test_case->run_case; test_case++)
+		if (!test_case->success)
+			return false;
+
+	return true;
+}
+
+static void kunit_print_subtest_end(struct kunit_suite *suite)
+{
+	static size_t kunit_suite_counter = 1;
+
+	kunit_print_ok_not_ok(false,
+			      kunit_suite_has_succeeded(suite),
+			      kunit_suite_counter++,
+			      suite->name);
+}
+
+static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
+					    size_t test_number)
+{
+	kunit_print_ok_not_ok(true,
+			      test_case->success,
+			      test_number,
+			      test_case->name);
+}
+
+void kunit_init_test(struct kunit *test, const char *name)
+{
+	test->name = name;
+	test->success = true;
+}
+
+/*
+ * Performs all logic to run a test case.
+ */
+static void kunit_run_case(struct kunit_suite *suite,
+			   struct kunit_case *test_case)
+{
+	struct kunit test;
+
+	kunit_init_test(&test, test_case->name);
+
+	if (suite->init) {
+		int ret;
+
+		ret = suite->init(&test);
+		if (ret) {
+			kunit_err(&test, "failed to initialize: %d\n", ret);
+			kunit_set_failure(&test);
+			test_case->success = test.success;
+			return;
+		}
+	}
+
+	test_case->run_case(&test);
+
+	if (suite->exit)
+		suite->exit(&test);
+
+	test_case->success = test.success;
+}
+
+int kunit_run_tests(struct kunit_suite *suite)
+{
+	struct kunit_case *test_case;
+	size_t test_case_count = 1;
+
+	kunit_print_subtest_start(suite);
+
+	for (test_case = suite->test_cases; test_case->run_case; test_case++) {
+		kunit_run_case(suite, test_case);
+		kunit_print_test_case_ok_not_ok(test_case, test_case_count++);
+	}
+
+	kunit_print_subtest_end(suite);
+
+	return 0;
+}
+
+void kunit_printk(const char *level,
+		  const struct kunit *test,
+		  const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list args;
+
+	va_start(args, fmt);
+
+	vaf.fmt = fmt;
+	vaf.va = &args;
+
+	kunit_vprintk(test, level, &vaf);
+
+	va_end(args);
+}
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
