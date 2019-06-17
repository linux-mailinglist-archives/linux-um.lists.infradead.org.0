Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623C247C77
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hT5qMSYNSmXOEcUDtTfeyA4Ot2LBV68Gqhf3lsFnKY=; b=ZlRsN0K0u4fVlI
	llDhy7ZWJPnS7GpHQdSqmYjpIQ/C2j9Xjd1ZfLO0uhEHflVcKXKEplaNO4EJloxeEhUC9t//qRhdF
	jnE/BaXwooEFArA1R/Xu8fOaOFUIf+Z76YGhBR1vkzjeiGIFJrZFNCNKGTZvRw+/RNWP/Zw7ztO8h
	1WmGVqCjbFvHkwstdOGaReVACpw04pOT6FSXIyJhbXUAERBoc/U2Zh6XlQ9r3pQyn0mdG0yjq7BvG
	kJGZNO2ecxYtC9GqqyH7dgvTrf0mN2Jgay0wNx8DTk2w+5pD4VY/+DgB8NV45t+tC+5EaRC/Nk/HM
	t9sagnnZ4LZT+Z8Dc9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmyt-0007Gb-S8; Mon, 17 Jun 2019 08:27:11 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmyq-0007Ec-Od
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:27:10 +0000
Received: by mail-yw1-xc49.google.com with SMTP id i136so11496399ywe.23
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=2O8sMl6geOU0Z5ubGfwxPlaqLu/lYG0kuYIcfNYzqls=;
 b=G2CrZKTzkdb/q5np02zFTYNmuU1GkvD8eK/FDGQ1bSdhKsA/+pNTgsDDaY2z+BVFdm
 MXXhYzcgeHp1wuNRiDLElZhgIt5PrKzGark0Grv1aVdyJyHRQmzp+FRCbKUtxu3LkNew
 ELzavdsgFkk1fC+N0KEph3lmSYFbu4745EEJU3AJfudxoZ8AUf8lbEh0NFcE8cVUtWqu
 we1kpuVsckfVZAjC9yVp5GTgvMChkkiZlizzIfIg2Hr8Pia7L45A/5uV8agcMVRWXh9J
 lW/HLQVQyLTSdujZIAgZR33k0pmReOgtCLFD2szPuyCNoHptZPYNL73CLSP6LCnZSK2U
 CfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=2O8sMl6geOU0Z5ubGfwxPlaqLu/lYG0kuYIcfNYzqls=;
 b=LTAsaY6rag2cwIAWlfrLkLTPAeP/WvZpKASaLBhQ1belnmixCfFQj9RHMBwGK8+GaL
 c9MUETn8WVGKNNOmE2iG+2P+E5L4H+V+LpBJqFGUFSnMUEMR3S1RCz4CSwq4ue/jH+Ac
 rCpCLJD7lEEeBxq0KFaxln4kKu2qD1vUfrXNycpcL5DgP0ke4veuvejNxyXoRF1JiL0O
 4lkb6qRxQ+dusxIyLnsg8mPbxzbf9NO+R4QnkbQwvI6oT7LGFzzAikwrLGB5BLb1F5Bu
 LRnU56n3ESMTksatd1ydXe65cD7Gzeaw8T/T0X68oYEGmEWoUMIXhM4plV6YxL+m+riA
 swuQ==
X-Gm-Message-State: APjAAAV7bhHGqN9h5fJ6friSSTpBAWczbWc2rB7+fdD6uo9Ft41ZUx9F
 Sct21vxzxiPE4wliDGtCzSnQPw40RThzcF8honsVwQ==
X-Google-Smtp-Source: APXvYqzQfoiM2CYwUaOjzUgtNVbcRN2zWfBkr0NGQWM5MbL74JVJAp9t46WefNMraCqhpT6Sun7RYq1PYlBhiwWi2Mid3w==
X-Received: by 2002:a81:49c8:: with SMTP id w191mr4286090ywa.260.1560760026556; 
 Mon, 17 Jun 2019 01:27:06 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:26:02 -0700
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Message-Id: <20190617082613.109131-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 07/18] kunit: test: add initial tests
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012708_801471_3165A03C 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add a test for string stream along with a simpler example.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 kunit/Kconfig              | 21 +++++++++
 kunit/Makefile             |  4 ++
 kunit/example-test.c       | 88 ++++++++++++++++++++++++++++++++++++++
 kunit/string-stream-test.c | 75 ++++++++++++++++++++++++++++++++
 4 files changed, 188 insertions(+)
 create mode 100644 kunit/example-test.c
 create mode 100644 kunit/string-stream-test.c

diff --git a/kunit/Kconfig b/kunit/Kconfig
index 330ae83527c23..8541ef95b65ad 100644
--- a/kunit/Kconfig
+++ b/kunit/Kconfig
@@ -14,4 +14,25 @@ config KUNIT
 	  architectures. For more information, please see
 	  Documentation/dev-tools/kunit/.
 
+config KUNIT_TEST
+	bool "KUnit test for KUnit"
+	depends on KUNIT
+	help
+	  Enables the unit tests for the KUnit test framework. These tests test
+	  the KUnit test framework itself; the tests are both written using
+	  KUnit and test KUnit. This option should only be enabled for testing
+	  purposes by developers interested in testing that KUnit works as
+	  expected.
+
+config KUNIT_EXAMPLE_TEST
+	bool "Example test for KUnit"
+	depends on KUNIT
+	help
+	  Enables an example unit test that illustrates some of the basic
+	  features of KUnit. This test only exists to help new users understand
+	  what KUnit is and how it is used. Please refer to the example test
+	  itself, kunit/example-test.c, for more information. This option is
+	  intended for curious hackers who would like to understand how to use
+	  KUnit for kernel development.
+
 endmenu
diff --git a/kunit/Makefile b/kunit/Makefile
index 6ddc622ee6b1c..60a9ea6cb4697 100644
--- a/kunit/Makefile
+++ b/kunit/Makefile
@@ -1,3 +1,7 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
 					string-stream.o \
 					kunit-stream.o
+
+obj-$(CONFIG_KUNIT_TEST) +=		string-stream-test.o
+
+obj-$(CONFIG_KUNIT_EXAMPLE_TEST) +=	example-test.o
diff --git a/kunit/example-test.c b/kunit/example-test.c
new file mode 100644
index 0000000000000..f44b8ece488bb
--- /dev/null
+++ b/kunit/example-test.c
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
+ * example_test_module for more information.
+ */
+static int example_test_init(struct kunit *test)
+{
+	kunit_info(test, "initializing\n");
+
+	return 0;
+}
+
+/*
+ * Here we make a list of all the test cases we want to add to the test module
+ * below.
+ */
+static struct kunit_case example_test_cases[] = {
+	/*
+	 * This is a helper to create a test case object from a test case
+	 * function; its exact function is not important to understand how to
+	 * use KUnit, just know that this is how you associate test cases with a
+	 * test module.
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
+ * cleanup. For clarity, running tests in a test module would behave as follows:
+ *
+ * module.init(test);
+ * module.test_case[0](test);
+ * module.exit(test);
+ * module.init(test);
+ * module.test_case[1](test);
+ * module.exit(test);
+ * ...;
+ */
+static struct kunit_module example_test_module = {
+	.name = "example",
+	.init = example_test_init,
+	.test_cases = example_test_cases,
+};
+
+/*
+ * This registers the above test module telling KUnit that this is a suite of
+ * tests that need to be run.
+ */
+module_test(example_test_module);
diff --git a/kunit/string-stream-test.c b/kunit/string-stream-test.c
new file mode 100644
index 0000000000000..36f0b5769a5a4
--- /dev/null
+++ b/kunit/string-stream-test.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test for struct string_stream.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <linux/slab.h>
+#include <kunit/test.h>
+#include <kunit/string-stream.h>
+
+static void string_stream_test_empty_on_creation(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test);
+
+	KUNIT_EXPECT_TRUE(test, string_stream_is_empty(stream));
+}
+
+static void string_stream_test_not_empty_after_add(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test);
+
+	string_stream_add(stream, "Foo");
+
+	KUNIT_EXPECT_FALSE(test, string_stream_is_empty(stream));
+}
+static void string_stream_test_get_string(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test);
+	char *output;
+
+	string_stream_add(stream, "Foo");
+	string_stream_add(stream, " %s", "bar");
+
+	output = string_stream_get_string(stream);
+	KUNIT_EXPECT_STREQ(test, output, "Foo bar");
+	kfree(output);
+}
+
+static void string_stream_test_add_and_clear(struct kunit *test)
+{
+	struct string_stream *stream = alloc_string_stream(test);
+	char *output;
+	int i;
+
+	for (i = 0; i < 10; i++)
+		string_stream_add(stream, "A");
+
+	output = string_stream_get_string(stream);
+	KUNIT_EXPECT_STREQ(test, output, "AAAAAAAAAA");
+	KUNIT_EXPECT_EQ(test, stream->length, (size_t)10);
+	KUNIT_EXPECT_FALSE(test, string_stream_is_empty(stream));
+	kfree(output);
+
+	string_stream_clear(stream);
+
+	output = string_stream_get_string(stream);
+	KUNIT_EXPECT_STREQ(test, output, "");
+	KUNIT_EXPECT_TRUE(test, string_stream_is_empty(stream));
+}
+
+static struct kunit_case string_stream_test_cases[] = {
+	KUNIT_CASE(string_stream_test_empty_on_creation),
+	KUNIT_CASE(string_stream_test_not_empty_after_add),
+	KUNIT_CASE(string_stream_test_get_string),
+	KUNIT_CASE(string_stream_test_add_and_clear),
+	{}
+};
+
+static struct kunit_module string_stream_test_module = {
+	.name = "string-stream-test",
+	.test_cases = string_stream_test_cases
+};
+module_test(string_stream_test_module);
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
