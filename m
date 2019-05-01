Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B055D10FF5
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB+s953kqGys3kyB/SuK/IsNtDKsuztw10RyDL+0Oiw=; b=m9goCqIGczl1Ad
	0pxNYyOEeUdsAg0+if8MlML7J2uj+akLesqh4aD2kov8DixT0S/jOgs+Z9n7Vq8yrWTY4m8DpP0CJ
	A3TjjrE5/HaFqK/tj0G23BoX0XEWT3Kwk05JO/x/pACRlCR1jgdm854xOfORiUjdZvp++cPA3BeCE
	i/MNlAHMrpg6LAyRjtXiQEvR+crDpFtQG/IAM1316nffwNvCLMZZmf+ABerasr9WG5c9rNJkbWnAk
	fW00pOZslCo9+hTTJZ3A9a+DrGfbWKiqz9+pL2Pz5iww2j6Z7NZD37lHkSXzaEjq2PXXXv8UAauQr
	8akXjQ9+18cPL1Q8zdew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyHn-0000SK-2d; Wed, 01 May 2019 23:05:11 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyHj-0008Aq-OA
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:05:09 +0000
Received: by mail-vk1-xa49.google.com with SMTP id w84so242254vkd.23
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=PFBS31SOQXYxw4yS+C4amFknlw8hawiRGGMxTbQ36y4=;
 b=CT9czlwnMnLnA2cs0qndAQOiX2aPx2OSYAqbzTjXJr/BBhWM9cK1PNnFVhmDqrO9Nj
 NkQml1h79HIx2biFYzVc5UeKJHOL44Q1INMyy/lKH50HhKXx0N2SESZFVEWWH6yuHvkr
 2d6C1BrjDq9fm2aFqJ+RhhcZDwa6yMEiVjAniuAxk7neMUkPfEJfF16rOpLWJxCNajJr
 sTVm9wiXxWgnLk64sKD4lOyDUkMUaKjOKM/EZahUgPoF4dqE866ndUC4DZs0iOz20pxU
 e+hRKa5endOO4JBLJiHhqK2KxRUvVFsiFIdK7rmY4OLCE+PpIn9AVR8dqbRl4NI3BEJG
 KcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=PFBS31SOQXYxw4yS+C4amFknlw8hawiRGGMxTbQ36y4=;
 b=OtF9lw/P1DT547qn3Ud95UzefBV1yejXoxvZeu7uDbg43haJ3MukbCACsNhAGSWXCZ
 n+njmc9iv6dx21tcm+eqE4GsNSelZ1oPBRgw0gLjrPqA9kE/KI6v5l3Fq+j2wTU5Utrn
 nLoExrGoFmlOCRyAkNTWhVZDl/bJH7DrDHCf/L1HKD/BG5OixcrK4L3TxOmmIBFqZG0K
 85so1WCkHUJQlzbXrUXm/GF9GrR1BlQnTYrAQd26tS7vdBUZbPsRZ3Yc4YvAHZk0YSRl
 UzaMygAw8AqVa+5dVK34uuYxix4QmjqVHptG3aHEOXghyiVtZvQTXBtOHUZ1pGV9P637
 luQw==
X-Gm-Message-State: APjAAAX+X7Y3HgpIuVY331bZp2z4RSKvN3Ad+X/Ms0bUdxGSJBqvlqT+
 SKOfL5wO4MXwEgVIpctxI+d32BypR2+5g6NW4t3FyA==
X-Google-Smtp-Source: APXvYqyW0QaIJ9/fn349r10l0ts9l27TIANLui0Et8DiwcFOvDM/az2AcijbBC7llTdGDodV01VSlxHM/JSGOugaJ7WgKw==
X-Received: by 2002:a67:ed44:: with SMTP id m4mr319097vsp.112.1556751905107;
 Wed, 01 May 2019 16:05:05 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:25 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160507_949988_B993BEC9 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
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
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com,
 Iurii Zaikin <yzaikin@google.com>, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 dan.j.williams@intel.com, kunit-dev@googlegroups.com, richard@nod.at,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Iurii Zaikin <yzaikin@google.com>

KUnit tests for initialized data behavior of proc_dointvec that is
explicitly checked in the code. Includes basic parsing tests including
int min/max overflow.

Signed-off-by: Iurii Zaikin <yzaikin@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 kernel/Makefile      |   2 +
 kernel/sysctl-test.c | 292 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig.debug    |   6 +
 3 files changed, 300 insertions(+)
 create mode 100644 kernel/sysctl-test.c

diff --git a/kernel/Makefile b/kernel/Makefile
index 6c57e78817dad..c81a8976b6a4b 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
 obj-$(CONFIG_ZONE_DEVICE) += memremap.o
 obj-$(CONFIG_RSEQ) += rseq.o
 
+obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
+
 obj-$(CONFIG_GCC_PLUGIN_STACKLEAK) += stackleak.o
 KASAN_SANITIZE_stackleak.o := n
 KCOV_INSTRUMENT_stackleak.o := n
diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
new file mode 100644
index 0000000000000..a0fba6b6fc2dc
--- /dev/null
+++ b/kernel/sysctl-test.c
@@ -0,0 +1,292 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test of proc sysctl.
+ */
+
+#include <kunit/test.h>
+#include <linux/printk.h>
+#include <linux/sysctl.h>
+#include <linux/uaccess.h>
+
+static int i_zero;
+static int i_one_hundred = 100;
+
+struct test_sysctl_data {
+	int int_0001;
+	int int_0002;
+	int int_0003[4];
+
+	unsigned int uint_0001;
+
+	char string_0001[65];
+};
+
+static struct test_sysctl_data test_data = {
+	.int_0001 = 60,
+	.int_0002 = 1,
+
+	.int_0003[0] = 0,
+	.int_0003[1] = 1,
+	.int_0003[2] = 2,
+	.int_0003[3] = 3,
+
+	.uint_0001 = 314,
+
+	.string_0001 = "(none)",
+};
+
+static void sysctl_test_dointvec_null_tbl_data(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= NULL,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	size_t len;
+	loff_t pos;
+
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+}
+
+static void sysctl_test_dointvec_table_maxlen_unset(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= 0,
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	size_t len;
+	loff_t pos;
+
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+}
+
+static void sysctl_test_dointvec_table_len_is_zero(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	size_t len;
+	loff_t pos;
+
+	len = 0;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+}
+
+static void sysctl_test_dointvec_table_read_but_position_set(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	size_t len;
+	loff_t pos;
+
+	len = 1234;
+	pos = 1;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, 0, len);
+}
+
+static void sysctl_test_dointvec_happy_single_positive(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	char input[] = "9";
+	size_t len = sizeof(input) - 1;
+	loff_t pos = 0;
+
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
+	KUNIT_EXPECT_EQ(test, 9, *(int *)table.data);
+}
+
+static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	char input[] = "-9";
+	size_t len = sizeof(input) - 1;
+	loff_t pos = 0;
+
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
+	KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
+}
+
+static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	char input[32];
+	size_t len = sizeof(input) - 1;
+	loff_t pos = 0;
+	long less_than_min = (long)INT_MIN - 1;
+
+	KUNIT_EXPECT_LT(test, less_than_min, INT_MIN);
+	KUNIT_EXPECT_LT(test,
+			snprintf(input, sizeof(input), "%ld", less_than_min),
+			sizeof(input));
+
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, -EINVAL,
+			proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
+}
+
+static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
+{
+	struct ctl_table table = {
+		.procname = "foo",
+		.data		= &test_data.int_0001,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec,
+		.extra1		= &i_zero,
+		.extra2         = &i_one_hundred,
+	};
+	char input[32];
+	size_t len = sizeof(input) - 1;
+	loff_t pos = 0;
+	long greater_than_max = (long)INT_MAX + 1;
+
+	KUNIT_EXPECT_GT(test, greater_than_max, INT_MAX);
+	KUNIT_EXPECT_LT(test, snprintf(input, sizeof(input), "%ld",
+				       greater_than_max),
+			sizeof(input));
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, -EINVAL,
+			proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
+}
+
+static int sysctl_test_init(struct kunit *test)
+{
+	return 0;
+}
+
+/*
+ * This is run once after each test case, see the comment on example_test_module
+ * for more information.
+ */
+static void sysctl_test_exit(struct kunit *test)
+{
+}
+
+/*
+ * Here we make a list of all the test cases we want to add to the test module
+ * below.
+ */
+static struct kunit_case sysctl_test_cases[] = {
+	/*
+	 * This is a helper to create a test case object from a test case
+	 * function; its exact function is not important to understand how to
+	 * use KUnit, just know that this is how you associate test cases with a
+	 * test module.
+	 */
+	KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
+	KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
+	KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
+	KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
+	KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
+	KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
+	KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
+	KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
+	{},
+};
+
+/*
+ * This defines a suite or grouping of tests.
+ *
+ * Test cases are defined as belonging to the suite by adding them to
+ * `test_cases`.
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
+static struct kunit_module sysctl_test_module = {
+	.name = "sysctl_test",
+	.init = sysctl_test_init,
+	.exit = sysctl_test_exit,
+	.test_cases = sysctl_test_cases,
+};
+
+/*
+ * This registers the above test module telling KUnit that this is a suite of
+ * tests that need to be run.
+ */
+module_test(sysctl_test_module);
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index d5a4a4036d2f8..772af4ec70111 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1908,6 +1908,12 @@ config TEST_SYSCTL
 
 	  If unsure, say N.
 
+config SYSCTL_KUNIT_TEST
+	bool "KUnit test for sysctl"
+	depends on KUNIT
+	help
+	  Enables KUnit sysctl test.
+
 config TEST_UDELAY
 	tristate "udelay test driver"
 	help
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
