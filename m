Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CB210F89
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTlahn72nXFc6yhipr0pM6yhXmKLdBTkHlSexdQVwvo=; b=eNtIKAws4PEU1q
	v1OPoSIohHnMSaToBCBV8W6Bg3Yr23xaEmUKrfMF/Jf9G99tmXf+or3xFbMiYGf0JKxmd6M+oeoOe
	gc8O2eeXAUyN/NrPSAJj+TwvniH1Oos0zJpUT//RUJFAE01H0IrDAbMFHTsTSBIv9J9hcYWUYvoeB
	u8rLlvYuADz46ogHRPvojb4GrMOUEXbs5Acl/rhauzFT72on83EVTaPKJL7nFSg8s0jeNWFT1j+2z
	cZ75Zku1y/tcZ7WCyZrWDTDHIh9FdwhE88QRI8G74fo6DRcJg9Iwp8mW07Q3LN7U0e29AAgFz/4D9
	qDYsJg6udp41yLVQfQMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyFb-00070g-Qq; Wed, 01 May 2019 23:02:55 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyFY-0006yn-HX
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:02:54 +0000
Received: by mail-qt1-x84a.google.com with SMTP id j12so367466qth.3
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kFWtAgBPGj3VtorE+bfOf8XMNY/MRN76S4Rd4LwqO+o=;
 b=kv72hmQ+vEjebFzuxGVQmgBW+v+GmP+oBFZM9w7rI+SbI4txdaYC7jQeYk4sjCeHht
 0z1+guCNxNq3sI01l0jNqt+q5NPd50ZvX8Ajqx4ygNgzRCWMjTnaHov8YemBdfusXoO4
 z3S5Wx4xCUK2kSfKWJgGqNB//bo9Dt15/BkgoIrAWF3L7cJKh93poIUnvZE7e6R8JWhc
 N3gPAKM4xDg5lws8Ytx/fjfMwkfqAcrLYNpBRIWIAZrsikHM+lB+SkQIfI3u0DXNR/Nr
 VpUAPtUTrf97DpczXKcSji005O1WNv+GmMbeMRKVuFC3YaUQr2+c7qoGgw9zysm26Blw
 5c+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kFWtAgBPGj3VtorE+bfOf8XMNY/MRN76S4Rd4LwqO+o=;
 b=pxGlF0WuM04tLFgOG1Rj5iKDzeysneMCMj7Sp5hqMvchE+2BruRAAOyus4yCvFInPN
 9NnY5E6WWhlJcjWqVBfFHJFtoTcx+wIonotnWAsGpIA+W7fZw301Ju2gpFivUyhw9N2M
 eP2X4RGXH0sTROFbtz1XE6YKfW/EBjZ8roHsAaYETTvmm+3h0IBhyh6DYMj7B8IgBnwP
 gdNY1q1O38Z4tiXrT893PhTiIRtDPkhCVALLdpzbKQV4U85YhIUUxmqUK4lhMQSVhVd0
 P7yVpgqLw5WSV2yzYsyN+iIzOivxSWneCzcxZD2SfgzRuCEMmmxYj4TdtcOohIBI5Xgy
 l2Yw==
X-Gm-Message-State: APjAAAUom0nzsB9Uclj7CecRnPj9DJUNZXGt9ENp4OcE84C/rCMGMx71
 wzffBDiAsrJJxG0zOlQOhUeb1E2L/5s3kdryNY7l2g==
X-Google-Smtp-Source: APXvYqwZ7F52In6i6HNcgyh0/dAU4PsSOsGxH5cHQ2Bx9fHgV5ifum4WrM4I+awJiteEsIjhPbCah4cevlUJnEfMHGw8yg==
X-Received: by 2002:a0c:d6ce:: with SMTP id l14mr673149qvi.2.1556751770279;
 Wed, 01 May 2019 16:02:50 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:10 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 01/17] kunit: test: add KUnit test runner core
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160252_580651_F829BB43 
X-CRM114-Status: GOOD (  22.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

Add core facilities for defining unit tests; this provides a common way
to define test cases, functions that execute code which is under test
and determine whether the code under test behaves as expected; this also
provides a way to group together related test cases in test suites (here
we call them test_modules).

Just define test cases and how to execute them for now; setting
expectations on code will be defined later.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 include/kunit/test.h | 165 ++++++++++++++++++++++++++++++++++++++++++
 kunit/Kconfig        |  16 +++++
 kunit/Makefile       |   1 +
 kunit/test.c         | 168 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 350 insertions(+)
 create mode 100644 include/kunit/test.h
 create mode 100644 kunit/Kconfig
 create mode 100644 kunit/Makefile
 create mode 100644 kunit/test.c

diff --git a/include/kunit/test.h b/include/kunit/test.h
new file mode 100644
index 0000000000000..23c2ebedd6dd9
--- /dev/null
+++ b/include/kunit/test.h
@@ -0,0 +1,165 @@
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
+#include <linux/slab.h>
+
+struct kunit;
+
+/**
+ * struct kunit_case - represents an individual test case.
+ * @run_case: the function representing the actual test case.
+ * @name: the name of the test case.
+ *
+ * A test case is a function with the signature, ``void (*)(struct kunit *)``
+ * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
+ * test case is associated with a &struct kunit_module and will be run after the
+ * module's init function and followed by the module's exit function.
+ *
+ * A test case should be static and should only be created with the KUNIT_CASE()
+ * macro; additionally, every array of test cases should be terminated with an
+ * empty test case.
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
+ *		{},
+ *	};
+ *
+ */
+struct kunit_case {
+	void (*run_case)(struct kunit *test);
+	const char name[256];
+
+	/* private: internal use only. */
+	bool success;
+};
+
+/**
+ * KUNIT_CASE - A helper for creating a &struct kunit_case
+ * @test_name: a reference to a test case function.
+ *
+ * Takes a symbol for a function representing a test case and creates a
+ * &struct kunit_case object from it. See the documentation for
+ * &struct kunit_case for an example on how to use it.
+ */
+#define KUNIT_CASE(test_name) { .run_case = test_name, .name = #test_name }
+
+/**
+ * struct kunit_module - describes a related collection of &struct kunit_case s.
+ * @name: the name of the test. Purely informational.
+ * @init: called before every test case.
+ * @exit: called after every test case.
+ * @test_cases: a null terminated array of test cases.
+ *
+ * A kunit_module is a collection of related &struct kunit_case s, such that
+ * @init is called before every test case and @exit is called after every test
+ * case, similar to the notion of a *test fixture* or a *test class* in other
+ * unit testing frameworks like JUnit or Googletest.
+ *
+ * Every &struct kunit_case must be associated with a kunit_module for KUnit to
+ * run it.
+ */
+struct kunit_module {
+	const char name[256];
+	int (*init)(struct kunit *test);
+	void (*exit)(struct kunit *test);
+	struct kunit_case *test_cases;
+};
+
+/**
+ * struct kunit - represents a running instance of a test.
+ * @priv: for user to store arbitrary data. Commonly used to pass data created
+ * in the init function (see &struct kunit_module).
+ *
+ * Used to store information about the current context under which the test is
+ * running. Most of this data is private and should only be accessed indirectly
+ * via public functions; the one exception is @priv which can be used by the
+ * test writer to store arbitrary data.
+ */
+struct kunit {
+	void *priv;
+
+	/* private: internal use only. */
+	const char *name; /* Read only after initialization! */
+	spinlock_t lock; /* Gaurds all mutable test state. */
+	bool success; /* Protected by lock. */
+	void (*vprintk)(const struct kunit *test,
+			const char *level,
+			struct va_format *vaf);
+};
+
+int kunit_init_test(struct kunit *test, const char *name);
+
+int kunit_run_tests(struct kunit_module *module);
+
+/**
+ * module_test() - used to register a &struct kunit_module with KUnit.
+ * @module: a statically allocated &struct kunit_module.
+ *
+ * Registers @module with the test framework. See &struct kunit_module for more
+ * information.
+ */
+#define module_test(module) \
+		static int module_kunit_init##module(void) \
+		{ \
+			return kunit_run_tests(&module); \
+		} \
+		late_initcall(module_kunit_init##module)
+
+void __printf(3, 4) kunit_printk(const char *level,
+				 const struct kunit *test,
+				 const char *fmt, ...);
+
+/**
+ * kunit_info() - Prints an INFO level message associated with the current test.
+ * @test: The test context object.
+ * @fmt: A printk() style format string.
+ *
+ * Prints an info level message associated with the test module being run. Takes
+ * a variable number of format parameters just like printk().
+ */
+#define kunit_info(test, fmt, ...) \
+		kunit_printk(KERN_INFO, test, fmt, ##__VA_ARGS__)
+
+/**
+ * kunit_warn() - Prints a WARN level message associated with the current test.
+ * @test: The test context object.
+ * @fmt: A printk() style format string.
+ *
+ * See kunit_info().
+ */
+#define kunit_warn(test, fmt, ...) \
+		kunit_printk(KERN_WARNING, test, fmt, ##__VA_ARGS__)
+
+/**
+ * kunit_err() - Prints an ERROR level message associated with the current test.
+ * @test: The test context object.
+ * @fmt: A printk() style format string.
+ *
+ * See kunit_info().
+ */
+#define kunit_err(test, fmt, ...) \
+		kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
+
+#endif /* _KUNIT_TEST_H */
diff --git a/kunit/Kconfig b/kunit/Kconfig
new file mode 100644
index 0000000000000..64480092b2c24
--- /dev/null
+++ b/kunit/Kconfig
@@ -0,0 +1,16 @@
+#
+# KUnit base configuration
+#
+
+menu "KUnit support"
+
+config KUNIT
+	bool "Enable support for unit tests (KUnit)"
+	help
+	  Enables support for kernel unit tests (KUnit), a lightweight unit
+	  testing and mocking framework for the Linux kernel. These tests are
+	  able to be run locally on a developer's workstation without a VM or
+	  special hardware. For more information, please see
+	  Documentation/kunit/
+
+endmenu
diff --git a/kunit/Makefile b/kunit/Makefile
new file mode 100644
index 0000000000000..5efdc4dea2c08
--- /dev/null
+++ b/kunit/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_KUNIT) +=			test.o
diff --git a/kunit/test.c b/kunit/test.c
new file mode 100644
index 0000000000000..5bf97e2935579
--- /dev/null
+++ b/kunit/test.c
@@ -0,0 +1,168 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Base unit test (KUnit) API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <linux/sched.h>
+#include <linux/sched/debug.h>
+#include <os.h>
+#include <kunit/test.h>
+
+static bool kunit_get_success(struct kunit *test)
+{
+	unsigned long flags;
+	bool success;
+
+	spin_lock_irqsave(&test->lock, flags);
+	success = test->success;
+	spin_unlock_irqrestore(&test->lock, flags);
+
+	return success;
+}
+
+static void kunit_set_success(struct kunit *test, bool success)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&test->lock, flags);
+	test->success = success;
+	spin_unlock_irqrestore(&test->lock, flags);
+}
+
+static int kunit_vprintk_emit(const struct kunit *test,
+			      int level,
+			      const char *fmt,
+			      va_list args)
+{
+	return vprintk_emit(0, level, NULL, 0, fmt, args);
+}
+
+static int kunit_printk_emit(const struct kunit *test,
+			     int level,
+			     const char *fmt, ...)
+{
+	va_list args;
+	int ret;
+
+	va_start(args, fmt);
+	ret = kunit_vprintk_emit(test, level, fmt, args);
+	va_end(args);
+
+	return ret;
+}
+
+static void kunit_vprintk(const struct kunit *test,
+			  const char *level,
+			  struct va_format *vaf)
+{
+	kunit_printk_emit(test,
+			  level[1] - '0',
+			  "kunit %s: %pV", test->name, vaf);
+}
+
+int kunit_init_test(struct kunit *test, const char *name)
+{
+	spin_lock_init(&test->lock);
+	test->name = name;
+	test->vprintk = kunit_vprintk;
+
+	return 0;
+}
+
+/*
+ * Initializes and runs test case. Does not clean up or do post validations.
+ */
+static void kunit_run_case_internal(struct kunit *test,
+				    struct kunit_module *module,
+				    struct kunit_case *test_case)
+{
+	int ret;
+
+	if (module->init) {
+		ret = module->init(test);
+		if (ret) {
+			kunit_err(test, "failed to initialize: %d\n", ret);
+			kunit_set_success(test, false);
+			return;
+		}
+	}
+
+	test_case->run_case(test);
+}
+
+/*
+ * Performs post validations and cleanup after a test case was run.
+ * XXX: Should ONLY BE CALLED AFTER kunit_run_case_internal!
+ */
+static void kunit_run_case_cleanup(struct kunit *test,
+				   struct kunit_module *module,
+				   struct kunit_case *test_case)
+{
+	if (module->exit)
+		module->exit(test);
+}
+
+/*
+ * Performs all logic to run a test case.
+ */
+static bool kunit_run_case(struct kunit *test,
+			   struct kunit_module *module,
+			   struct kunit_case *test_case)
+{
+	kunit_set_success(test, true);
+
+	kunit_run_case_internal(test, module, test_case);
+	kunit_run_case_cleanup(test, module, test_case);
+
+	return kunit_get_success(test);
+}
+
+int kunit_run_tests(struct kunit_module *module)
+{
+	bool all_passed = true, success;
+	struct kunit_case *test_case;
+	struct kunit test;
+	int ret;
+
+	ret = kunit_init_test(&test, module->name);
+	if (ret)
+		return ret;
+
+	for (test_case = module->test_cases; test_case->run_case; test_case++) {
+		success = kunit_run_case(&test, module, test_case);
+		if (!success)
+			all_passed = false;
+
+		kunit_info(&test,
+			  "%s %s\n",
+			  test_case->name,
+			  success ? "passed" : "failed");
+	}
+
+	if (all_passed)
+		kunit_info(&test, "all tests passed\n");
+	else
+		kunit_info(&test, "one or more tests failed\n");
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
+	test->vprintk(test, level, &vaf);
+
+	va_end(args);
+}
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
