Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B890BB052
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 11:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkuMconh2ob++UpJvyaBKDZBK5v/soSm6B5CrrG1PCg=; b=AqhH9W135UhJcI
	SV+J7bvEx2537PzZTsBW5bYJhkisDdHh37btC75IN4E6AePdYF8qV/JprxMgDpy+gTQuuLsusUoiI
	snca1WfYXG0FYg6ioVQbEOqiP3xUuqvCYvt74LtdDrnnxwitkib++ioKop8sCN8j8hacYHOZuNU52
	exiTarEWLTovpxyEwmWpUDcAXxDIk+1GmG1+BKQBGPN7pL5Ses1USSgXarPNcgAL7Pq87WGlU7axy
	phOS8YU7QEo+yDVTybSpPPzB7iREJouKciADsNlaqiZvPd14TWIhfgVtuqhrLg8mQEDx6vMjMZaZ9
	+7MH1WX98PiYwJn8zjwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKFb-0002xW-0t; Mon, 23 Sep 2019 09:03:19 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKFX-0002uH-GE
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 09:03:17 +0000
Received: by mail-pl1-x64a.google.com with SMTP id g20so8214828plj.15
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 02:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=yVsCYIqRB1fyHJf5JwfLa4+9fQ2zcu7VpBgEkuBsC8Y=;
 b=mCvpY5cn254yFsNZn9xLGpAdr0jNFIJS5hNH0JTG2Qy+Sdx2CnNEWw+nq+TuIPR6nT
 M+H4wuwE+uwaMzP2hPMwp63zgeztG6aX6mcASkJ2NP3Eczw8IUzSvoOv+FOb5r5rxAbF
 txOpKE/p+MBpXtKYUwOJ1Jo7AofYZiGnbOWO1CnArJi0zv9to7JRWeDbjoMk6MWeugbA
 J+7UoCAZHvQT9iL9Zv/ahsDZmWiVRGEcRYndY0FidySxTrOHRPIQpRHQGQaltdhYsJL+
 X5j/oeRhe+jOl9fSRGUMfl/KEPKb/a0RNgd5KBccmpGMmDa54qTk/gyFhldjSe7BZRR3
 LMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=yVsCYIqRB1fyHJf5JwfLa4+9fQ2zcu7VpBgEkuBsC8Y=;
 b=QH1c9sIWqgXC87RE8axy8m0TEoF0tO3BRJ592EHRmt7at4kBrExvGXauONNTr8ogAV
 ei/gW+KPU1naPp0YrBHkfdmmjVc+NXYBwHn2AbEpUfPBzMMobEeOt41PW3Cl1IDCPXba
 CQQzEteDg706kFfYC6zbOf51W/dAxUtyJr8rizZXcAXchB/+6WKCi4+vWEZVgrwSQ/Zq
 fpMdXOI8wLmeD4B9wOpUQtYPM5lY6GsJ7OzaBF+Xh/DPihGpTa7OG1UHzJF/sHyrtaEj
 eN6LSLmp+H+gGNIlYhHWa+SJEDoLK7beouJ90LOxHHcFB4G2zG7mRI0mDa0izPrJz+Si
 8olQ==
X-Gm-Message-State: APjAAAVeZ6VIOoHh/pY+myr40YYW9ztgKJe6dskArhQgL4+je3h/I9QJ
 sbTxrYi9ej7DnN9YUkx0sYPM2aCeuQTTCFt/bRyF9w==
X-Google-Smtp-Source: APXvYqxg2b4dwdS/OqaNZmvpyncEJCeqS/LuSEHqZtWE7X8XIJWfLCgCyy9Wd0OvB3OvDeMwLIQEYyXpheR+rJMiFW1xjg==
X-Received: by 2002:a63:f84b:: with SMTP id v11mr15922758pgj.187.1569229393967; 
 Mon, 23 Sep 2019 02:03:13 -0700 (PDT)
Date: Mon, 23 Sep 2019 02:02:37 -0700
In-Reply-To: <20190923090249.127984-1-brendanhiggins@google.com>
Message-Id: <20190923090249.127984-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v18 07/19] kunit: test: add initial tests
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020315_537696_47E80835 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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

Add a test for string stream along with a simpler example.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 lib/kunit/Kconfig              | 23 +++++++++
 lib/kunit/Makefile             |  4 ++
 lib/kunit/example-test.c       | 88 ++++++++++++++++++++++++++++++++++
 lib/kunit/string-stream-test.c | 52 ++++++++++++++++++++
 4 files changed, 167 insertions(+)
 create mode 100644 lib/kunit/example-test.c
 create mode 100644 lib/kunit/string-stream-test.c

diff --git a/lib/kunit/Kconfig b/lib/kunit/Kconfig
index 666b9cb67a74..af37016bfdd4 100644
--- a/lib/kunit/Kconfig
+++ b/lib/kunit/Kconfig
@@ -11,3 +11,26 @@ menuconfig KUNIT
 	  special hardware when using UML. Can also be used on most other
 	  architectures. For more information, please see
 	  Documentation/dev-tools/kunit/.
+
+if KUNIT
+
+config KUNIT_TEST
+	bool "KUnit test for KUnit"
+	help
+	  Enables the unit tests for the KUnit test framework. These tests test
+	  the KUnit test framework itself; the tests are both written using
+	  KUnit and test KUnit. This option should only be enabled for testing
+	  purposes by developers interested in testing that KUnit works as
+	  expected.
+
+config KUNIT_EXAMPLE_TEST
+	bool "Example test for KUnit"
+	help
+	  Enables an example unit test that illustrates some of the basic
+	  features of KUnit. This test only exists to help new users understand
+	  what KUnit is and how it is used. Please refer to the example test
+	  itself, lib/kunit/example-test.c, for more information. This option
+	  is intended for curious hackers who would like to understand how to
+	  use KUnit for kernel development.
+
+endif # KUNIT
diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
index 6dcbe309036b..4e46450bcb3a 100644
--- a/lib/kunit/Makefile
+++ b/lib/kunit/Makefile
@@ -1,3 +1,7 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
 					string-stream.o \
 					assert.o
+
+obj-$(CONFIG_KUNIT_TEST) +=		string-stream-test.o
+
+obj-$(CONFIG_KUNIT_EXAMPLE_TEST) +=	example-test.o
diff --git a/lib/kunit/example-test.c b/lib/kunit/example-test.c
new file mode 100644
index 000000000000..f64a829aa441
--- /dev/null
+++ b/lib/kunit/example-test.c
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Example KUnit test to show how to use KUnit.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/test.h>
+
+/*
+ * This is the most fundamental element of KUnit, the test case. A test case
+ * makes a set EXPECTATIONs and ASSERTIONs about the behavior of some code; if
+ * any expectations or assertions are not met, the test fails; otherwise, the
+ * test passes.
+ *
+ * In KUnit, a test case is just a function with the signature
+ * `void (*)(struct kunit *)`. `struct kunit` is a context object that stores
+ * information about the current test.
+ */
+static void example_simple_test(struct kunit *test)
+{
+	/*
+	 * This is an EXPECTATION; it is how KUnit tests things. When you want
+	 * to test a piece of code, you set some expectations about what the
+	 * code should do. KUnit then runs the test and verifies that the code's
+	 * behavior matched what was expected.
+	 */
+	KUNIT_EXPECT_EQ(test, 1 + 1, 2);
+}
+
+/*
+ * This is run once before each test case, see the comment on
+ * example_test_suite for more information.
+ */
+static int example_test_init(struct kunit *test)
+{
+	kunit_info(test, "initializing\n");
+
+	return 0;
+}
+
+/*
+ * Here we make a list of all the test cases we want to add to the test suite
+ * below.
+ */
+static struct kunit_case example_test_cases[] = {
+	/*
+	 * This is a helper to create a test case object from a test case
+	 * function; its exact function is not important to understand how to
+	 * use KUnit, just know that this is how you associate test cases with a
+	 * test suite.
+	 */
+	KUNIT_CASE(example_simple_test),
+	{}
+};
+
+/*
+ * This defines a suite or grouping of tests.
+ *
+ * Test cases are defined as belonging to the suite by adding them to
+ * `kunit_cases`.
+ *
+ * Often it is desirable to run some function which will set up things which
+ * will be used by every test; this is accomplished with an `init` function
+ * which runs before each test case is invoked. Similarly, an `exit` function
+ * may be specified which runs after every test case and can be used to for
+ * cleanup. For clarity, running tests in a test suite would behave as follows:
+ *
+ * suite.init(test);
+ * suite.test_case[0](test);
+ * suite.exit(test);
+ * suite.init(test);
+ * suite.test_case[1](test);
+ * suite.exit(test);
+ * ...;
+ */
+static struct kunit_suite example_test_suite = {
+	.name = "example",
+	.init = example_test_init,
+	.test_cases = example_test_cases,
+};
+
+/*
+ * This registers the above test suite telling KUnit that this is a suite of
+ * tests that need to be run.
+ */
+kunit_test_suite(example_test_suite);
diff --git a/lib/kunit/string-stream-test.c b/lib/kunit/string-stream-test.c
new file mode 100644
index 000000000000..75229e267c32
--- /dev/null
+++ b/lib/kunit/string-stream-test.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test for struct string_stream.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/string-stream.h>
+#include <kunit/test.h>
+#include <linux/slab.h>
+
+static void string_stream_test_empty_on_creation(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test, GFP_KERNEL);
+
+	KUNIT_EXPECT_TRUE(test, string_stream_is_empty(stream));
+}
+
+static void string_stream_test_not_empty_after_add(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test, GFP_KERNEL);
+
+	string_stream_add(stream, "Foo");
+
+	KUNIT_EXPECT_FALSE(test, string_stream_is_empty(stream));
+}
+
+static void string_stream_test_get_string(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test, GFP_KERNEL);
+	char *output;
+
+	string_stream_add(stream, "Foo");
+	string_stream_add(stream, " %s", "bar");
+
+	output = string_stream_get_string(stream);
+	KUNIT_EXPECT_STREQ(test, output, "Foo bar");
+}
+
+static struct kunit_case string_stream_test_cases[] = {
+	KUNIT_CASE(string_stream_test_empty_on_creation),
+	KUNIT_CASE(string_stream_test_not_empty_after_add),
+	KUNIT_CASE(string_stream_test_get_string),
+	{}
+};
+
+static struct kunit_suite string_stream_test_suite = {
+	.name = "string-stream-test",
+	.test_cases = string_stream_test_cases
+};
+kunit_test_suite(string_stream_test_suite);
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
