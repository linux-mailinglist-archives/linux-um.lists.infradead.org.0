Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E32E1C26C
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgBgmX5Tyy8TBJkgLuEeI7I9fgPE+9JXTrOmmcttwc0=; b=Usha3UEcaHvVFR
	o5UCJ4vz0OyZOCCrTquRFqzl0KoKO9dGUKdZfmm5VXOnuL0OG0xp0tnszC+nf8nWdA+1YWRzOgacm
	vTo8E6ZggUGmI6HD3w21gvaIKZvI4M3B+oMRC7r5ZIgCwyYg/9lCyJgMPOpgydQFqxmXSnevsiaNz
	xi+6t/xW93+8YpVhNip0DFQV+9frmN6Fa0eMEAC0/Yq1UoVVnadev+DtGyCXxtSou2aXgly6piui8
	xq3+jMi2VXL3QT7uFQo45Km0lhpkBsOQNoG19DezzNvnEfTCbXL4KHWPk5fAtQX4/rncYjTmqhUEs
	9rsczgq1weBvGgDkdoiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQGu-0006Wf-Mp; Tue, 14 May 2019 05:46:40 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQGq-0006Tw-W4
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:46:38 +0000
Received: by mail-ot1-x34a.google.com with SMTP id t17so8574291otp.19
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4KJF+Ovjjzqhb4AXWhXMCXmyGdUTqkou6egxCpIxJUE=;
 b=ufJ7R09drib1DbLFKFdm88ALal8eQ8ux+QRzX6K4qlL26VFgSz0kl9tol662N7UK53
 yo3Qrp2QjSiBx/HhkaXBgsflKOxtGd8pTmUvQezzILtj2Nqumr00+SgSpNoM8oSka485
 w9ZCoh4EqQXa/nD5aRK57fn6Zu3Hs8FayrCme2MHguzHWErdb406LjS6joy9XRnUZc++
 WROJ9HibR1vbyXc6ykmogQk5MGzot89a6Pwhc27OkXQNsmaGjzWo0+UdcaTiJuIyD9RU
 IqseNctGcX9vLU8RyjQ9/Fda+0FpTML6T+TOmMT523SSnNjRo7dMP9TxWVO29rB2oQWj
 Fjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4KJF+Ovjjzqhb4AXWhXMCXmyGdUTqkou6egxCpIxJUE=;
 b=tn1pFldmDWxmY5p7hlNQy/HEiv98BWWZrg+BEN2SQceC4OZy3Qf6lnA7qYFmZTFvz9
 UPVagylSG3zCz2Ihgi+1ZvlJAJlffgaqgWz4wUKh2mQjtfzmDsyy1PDPMR3O/IEUeHIt
 9xYLElLaD2w2eneLeL75HHhNx99nQjWe/AVUZMHSH/VfnPIENn7Ufa/+NMINkfjXaqCa
 ZAjWp6PaMZXyKTyWoq6Kvy3eGlW6OI3LFbFv475nNXG5QgYzM6RMmK0EC2BxrtWCN6JW
 01DVu2aQDFoSEqoq1MZuQ/ezdASAdL7QKygmZS9cYEteHEL6E9zRxJILHBgL+b855Q/Y
 B/iA==
X-Gm-Message-State: APjAAAWDKlJ2dUGkIdsGkfbZuJgQFAQO3lj2+XysdhQVMVzDMiKUAcDX
 B4bcdQnZS0/ZQpgOQQ3DFM5D4skkrzsM6XcXtc+NOA==
X-Google-Smtp-Source: APXvYqx3JDi02P47CK8QRD5+B38yuHneb/5HzpSvk7mbXolSuJPjerG6Sls3fZCAbtPUdKvr+bfDjDg7kwlcmfISQkvyaw==
X-Received: by 2002:aca:3114:: with SMTP id x20mr1922850oix.168.1557812795309; 
 Mon, 13 May 2019 22:46:35 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:51 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-18-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224637_045026_BFCEDC3A 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
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
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com,
 Iurii Zaikin <yzaikin@google.com>, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 dan.j.williams@intel.com, kunit-dev@googlegroups.com, richard@nod.at,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org, logang@deltatee.com
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
Changes Since Last Revision:
 - Fixed integer overflow discovered by kbuild bot.
---
 kernel/Makefile      |   2 +
 kernel/sysctl-test.c | 293 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig.debug    |   6 +
 3 files changed, 301 insertions(+)
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
index 0000000000000..fe0f2bae66085
--- /dev/null
+++ b/kernel/sysctl-test.c
@@ -0,0 +1,293 @@
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
+	unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
+					     - (INT_MAX + INT_MIN) + 1;
+
+	KUNIT_EXPECT_LT(test,
+			snprintf(input, sizeof(input), "-%lu",
+				 abs_of_less_than_min),
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
+	unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
+
+	KUNIT_EXPECT_GT(test, greater_than_max, INT_MAX);
+	KUNIT_EXPECT_LT(test, snprintf(input, sizeof(input), "%lu",
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
