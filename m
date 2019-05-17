Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB76621D3F
	for <lists+linux-um@lfdr.de>; Fri, 17 May 2019 20:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zI4TqOprS8c+OqJuFvN+7hxzE1VZxzOOwxoT/rPtXB0=; b=INpc+PslK3e+0o
	PNOJZlj5SR+GppoeqRWgtYgFKqxMB6JdRnDbHWtYmQG9u2qFEAMeaxK3nU1kA145e443wbNhs9Pq7
	KddjCzpY89Lh2qobQEAlJYGaTEqUddvwtk99oZtJJuv6qgKW1LY76fUJ/iMaJ1VI4TKdkAjz5mRYY
	HfFZ0DnlPIjn5Zv73vXyelTrCudNJPRmD5/469i9vXcsAaTTg58iX1HHgAxprgNsQ9RLV2bBsKqk1
	016s1b6WvUP9GlZKzZTpZ3TMvr4yzjFuzFaWTZpTxciQLQ0wdAiv/m18nf4Vt5MHUhfIPqlaLjqjW
	Flphav24aJY0EwEM5WmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhVS-0004e0-4c; Fri, 17 May 2019 18:22:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhVO-0004dg-UO
 for linux-um@lists.infradead.org; Fri, 17 May 2019 18:22:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 548EA20815;
 Fri, 17 May 2019 18:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558117374;
 bh=KK9QKyeHXGNZS14JEvoS56XPdr9dX51Q2wnzy9zhzdw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=cFxMk9+pv8gbeXxX98UnM9NZlslsE37dec0L6/dd6ESCHIfh2/n5NwmR4frW+1Ldi
 L533sROPmjbe4JZK53rnXRHbfG4VAZSkK4NvHlBa84pxKlXjoDa8zo/LSKIOOfi+AG
 +c1M6CBnPpDCrODbxfe8K/TVPbtYLqh+vrEYEL18=
MIME-Version: 1.0
In-Reply-To: <20190514221711.248228-18-brendanhiggins@google.com>
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Fri, 17 May 2019 11:22:53 -0700
Message-Id: <20190517182254.548EA20815@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_112255_019566_AB66C605 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-05-14 15:17:10)
> diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> new file mode 100644
> index 0000000000000..fe0f2bae66085
> --- /dev/null
> +++ b/kernel/sysctl-test.c
> @@ -0,0 +1,293 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * KUnit test of proc sysctl.
> + */
> +
> +#include <kunit/test.h>
> +#include <linux/printk.h>

Is this include used?

> +#include <linux/sysctl.h>
> +#include <linux/uaccess.h>

Is this include used?

> +
> +
> +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> +{
> +       struct ctl_table table = {
> +               .procname = "foo",
> +               .data           = &test_data.int_0001,
> +               .maxlen         = sizeof(int),
> +               .mode           = 0644,
> +               .proc_handler   = proc_dointvec,
> +               .extra1         = &i_zero,
> +               .extra2         = &i_one_hundred,
> +       };
> +       char input[] = "-9";
> +       size_t len = sizeof(input) - 1;
> +       loff_t pos = 0;
> +
> +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);

Is the casting necessary? Or can the macro do a type coercion of the
second parameter based on the first type?

> +}
> +
> +static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
> +{
> +       struct ctl_table table = {
> +               .procname = "foo",
> +               .data           = &test_data.int_0001,
> +               .maxlen         = sizeof(int),
> +               .mode           = 0644,
> +               .proc_handler   = proc_dointvec,
> +               .extra1         = &i_zero,
> +               .extra2         = &i_one_hundred,
> +       };
> +       char input[32];
> +       size_t len = sizeof(input) - 1;
> +       loff_t pos = 0;
> +       unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
> +                                            - (INT_MAX + INT_MIN) + 1;
> +
> +       KUNIT_EXPECT_LT(test,
> +                       snprintf(input, sizeof(input), "-%lu",
> +                                abs_of_less_than_min),
> +                       sizeof(input));
> +
> +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> +       KUNIT_EXPECT_EQ(test, -EINVAL,
> +                       proc_dointvec(&table, 1, input, &len, &pos));
> +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> +       KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
> +}
> +
> +static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
> +{
> +       struct ctl_table table = {
> +               .procname = "foo",
> +               .data           = &test_data.int_0001,
> +               .maxlen         = sizeof(int),
> +               .mode           = 0644,
> +               .proc_handler   = proc_dointvec,
> +               .extra1         = &i_zero,
> +               .extra2         = &i_one_hundred,
> +       };
> +       char input[32];
> +       size_t len = sizeof(input) - 1;
> +       loff_t pos = 0;
> +       unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
> +
> +       KUNIT_EXPECT_GT(test, greater_than_max, INT_MAX);
> +       KUNIT_EXPECT_LT(test, snprintf(input, sizeof(input), "%lu",
> +                                      greater_than_max),
> +                       sizeof(input));
> +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> +       KUNIT_EXPECT_EQ(test, -EINVAL,
> +                       proc_dointvec(&table, 1, input, &len, &pos));
> +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> +       KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
> +}
> +
> +static int sysctl_test_init(struct kunit *test)
> +{
> +       return 0;
> +}
> +
> +/*
> + * This is run once after each test case, see the comment on example_test_module
> + * for more information.
> + */
> +static void sysctl_test_exit(struct kunit *test)
> +{
> +}

Can the above two be omitted? If they can be empty sometimes it would be
nice to avoid the extra symbols and code by letting them be assigned to
NULL in the kunit_module.

> +
> +/*
> + * Here we make a list of all the test cases we want to add to the test module
> + * below.
> + */
> +static struct kunit_case sysctl_test_cases[] = {
> +       /*
> +        * This is a helper to create a test case object from a test case
> +        * function; its exact function is not important to understand how to
> +        * use KUnit, just know that this is how you associate test cases with a
> +        * test module.
> +        */
> +       KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
> +       KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
> +       KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
> +       KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
> +       KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
> +       KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
> +       KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
> +       KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
> +       {},
> +};
> +
> +/*
> + * This defines a suite or grouping of tests.
> + *
> + * Test cases are defined as belonging to the suite by adding them to
> + * `test_cases`.
> + *
> + * Often it is desirable to run some function which will set up things which
> + * will be used by every test; this is accomplished with an `init` function
> + * which runs before each test case is invoked. Similarly, an `exit` function
> + * may be specified which runs after every test case and can be used to for
> + * cleanup. For clarity, running tests in a test module would behave as follows:
> + *
> + * module.init(test);
> + * module.test_case[0](test);
> + * module.exit(test);
> + * module.init(test);
> + * module.test_case[1](test);
> + * module.exit(test);
> + * ...;

This comment (and the one above for "this is a helper") looks generic
and should probably only be in some documentation somewhere and not for
a sysctl test?

> + */
> +static struct kunit_module sysctl_test_module = {
> +       .name = "sysctl_test",
> +       .init = sysctl_test_init,
> +       .exit = sysctl_test_exit,
> +       .test_cases = sysctl_test_cases,
> +};
> +
> +/*
> + * This registers the above test module telling KUnit that this is a suite of
> + * tests that need to be run.
> + */

Same comment about generic comment.

> +module_test(sysctl_test_module);
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index d5a4a4036d2f8..772af4ec70111 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -1908,6 +1908,12 @@ config TEST_SYSCTL
>  
>           If unsure, say N.
>  
> +config SYSCTL_KUNIT_TEST
> +       bool "KUnit test for sysctl"

Why not tristate?

> +       depends on KUNIT
> +       help
> +         Enables KUnit sysctl test.
> +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
