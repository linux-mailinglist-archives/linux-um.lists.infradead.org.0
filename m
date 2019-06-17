Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364DC47CBB
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlYUgdVdqlWOz9OgQHgB1+FmN7OZf3bJDsKhzqfMDoE=; b=LBHWCaTHrv0CDn
	n45ocUBvoMfiyaOCEfzQ4P19C4fVJFtrEJEiNk6+FOUtDzbQxlsNDnrDruOErpZqX2rKiyJzrVhEu
	86NjoKXM37Yf9Rjkx8LLzaeZNUjrULA+o5w4s4fpTgr2qCk4u3nX0PrsfwL4nYx4mvut9KJlubEkv
	CnHpwtwn9sCY2981kcPSD3vJGYzF4ocAMami1WOas/VMNWDKOH+aAvq2aAQ3dO50XGpuNcJmtY6xg
	/Otv7iRIVGcX2/1pYlrU4G3LTlQVvRh+iXimRz0MFdMFVKkApoCM5SW8+pR7XD7ebwcHuNFHDp1wQ
	dkyAh6nucxQ4xuNgRLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmzo-0007e7-EW; Mon, 17 Jun 2019 08:28:08 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmzl-0007bo-7Z
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:28:06 +0000
Received: by mail-vk1-xa49.google.com with SMTP id d14so4485658vka.6
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/ISQXW436cOn3WhRGLbJ9YXLmMenEcf9xF+hXPXYF5c=;
 b=q9hs4lJsRGRSrGfE4K7tsV6gzrKS8xRXv1xpeVXbTzg4iEF4Iy+z+LD294eu5AwX1u
 FVpUsarXkEqAn3XiMqwgQZ7VxJeit0iFOVCHVA21OmDcCLkEocIRMX/or7b3EyBeFDeV
 wb8JAlM/uHgm5InnMAV4ub0ijyPHcDqX6vCYkS3wto9ioInrPF6hRpccN7cJsAzLkJJl
 PfjqwGKW6yAMH4VjC6Dx9+eI56bXkGHRZYwLkZoS1+d4wKqJN/lHDubNmzQ6M3kPgZiI
 6TB7GcqnFdVyUDNsCnwka+5MWH2TmznvwPE9sEieSXfmMOGw/9ePUvHVayr2Z7X6Rqpi
 QUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/ISQXW436cOn3WhRGLbJ9YXLmMenEcf9xF+hXPXYF5c=;
 b=JPStLZCbrzEbgqtakWm34rJ8K8PF0QX4J04Kt+dsRiBaOTPkc2xQ0I+QsdqDeprxyL
 TsqEe8QnUc1nfJX2+34ON8HpBrbNNCHD+sWdjaalWGexVQNL4Ro1CqDHPoCgFF/DltUX
 Qam+OgZ0XhU0nEZRFD9g/yZ+Mq+412slwWTxhQd4LB5yo4OQq5dvrvWBxqvTFtPf3W9Q
 Z8L6q/hmDKhWqpuyr97peopm+c885RMPzj9i/IqyO4qGkuyW7Xyx8f1c7mAxR1xb7o7W
 osk1wQUOcno6t8D/+xvrqVtUh5fNP8/mLiL/2U/+JW+TD7pLjq/9yHADNoUzY9h7O2rs
 nwqQ==
X-Gm-Message-State: APjAAAXbKRJ+orvFNioatjefLASaIib4XEO3eJ3xhVl60ah0jEHcZdUJ
 P9GXrknb0OU6mL91xp7DrHQp4GSXgwwqf79vY6CIdQ==
X-Google-Smtp-Source: APXvYqy/ACWvkav2mTQaCubWjLp8j0cTCrBR+eLgBIKJd+COk+SiWYZVCrWQ8EDRqgVkfSYY7JXeFe9384RVSZV9SC8p2g==
X-Received: by 2002:a1f:3692:: with SMTP id d140mr21991020vka.88.1560760083990; 
 Mon, 17 Jun 2019 01:28:03 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:26:12 -0700
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Message-Id: <20190617082613.109131-18-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012805_274722_5815A07D 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
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
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com,
 Iurii Zaikin <yzaikin@google.com>, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
Changes Since Last Revision:
 - Iurii did some clean up (thanks Iurii!) as suggested by Stephen Boyd.
---
 kernel/Makefile      |   2 +
 kernel/sysctl-test.c | 242 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig.debug    |  10 ++
 3 files changed, 254 insertions(+)
 create mode 100644 kernel/sysctl-test.c

diff --git a/kernel/Makefile b/kernel/Makefile
index a8d923b5481ba..50fd511cd0ee0 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -114,6 +114,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
 obj-$(CONFIG_ZONE_DEVICE) += memremap.o
 obj-$(CONFIG_RSEQ) += rseq.o
 
+obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
+
 obj-$(CONFIG_GCC_PLUGIN_STACKLEAK) += stackleak.o
 KASAN_SANITIZE_stackleak.o := n
 KCOV_INSTRUMENT_stackleak.o := n
diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
new file mode 100644
index 0000000000000..cb61ad3c7db63
--- /dev/null
+++ b/kernel/sysctl-test.c
@@ -0,0 +1,242 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test of proc sysctl.
+ */
+
+#include <kunit/test.h>
+#include <linux/sysctl.h>
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
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
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
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
+	len = 1234;
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
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
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
+	KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
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
+	KUNIT_EXPECT_EQ(test, (size_t)0, len);
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
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, (size_t)pos);
+	KUNIT_EXPECT_EQ(test, 9, ((int *)table.data)[0]);
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
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, (size_t)pos);
+	KUNIT_EXPECT_EQ(test, -9, ((int *)table.data)[0]);
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
+			(size_t)snprintf(input, sizeof(input), "-%lu",
+					 abs_of_less_than_min),
+			sizeof(input));
+
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, -EINVAL,
+			proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
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
+	KUNIT_EXPECT_GT(test, greater_than_max, (unsigned long)INT_MAX);
+	KUNIT_EXPECT_LT(test, (size_t)snprintf(input, sizeof(input), "%lu",
+					       greater_than_max),
+			sizeof(input));
+	table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
+	KUNIT_EXPECT_EQ(test, -EINVAL,
+			proc_dointvec(&table, 1, input, &len, &pos));
+	KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
+	KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
+}
+
+static struct kunit_case sysctl_test_cases[] = {
+	KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
+	KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
+	KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
+	KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
+	KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
+	KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
+	KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
+	KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
+	{}
+};
+
+static struct kunit_module sysctl_test_module = {
+	.name = "sysctl_test",
+	.test_cases = sysctl_test_cases,
+};
+
+module_test(sysctl_test_module);
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index cbdfae3798965..389b8986f5b77 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1939,6 +1939,16 @@ config TEST_SYSCTL
 
 	  If unsure, say N.
 
+config SYSCTL_KUNIT_TEST
+	bool "KUnit test for sysctl"
+	depends on KUNIT
+	help
+	  This builds the proc sysctl unit test, which runs on boot. For more
+	  information on KUnit and unit tests in general please refer to the
+	  KUnit documentation in Documentation/dev-tools/kunit/.
+
+	  If unsure, say N.
+
 config TEST_UDELAY
 	tristate "udelay test driver"
 	help
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
