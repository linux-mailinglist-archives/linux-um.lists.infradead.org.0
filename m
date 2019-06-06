Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEEE36935
	for <lists+linux-um@lfdr.de>; Thu,  6 Jun 2019 03:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmbYuw2lgKKN1F++67Yo6nbycl2o2ZMaA+kN17noGy0=; b=I7qXaAqvxpsZPg
	BsMimBd/Jw0bKrRQ8TVxL6cdixUBDrFXGHNaQDtRJT9foL0T6OT6cK7YSnJ8AkXxV5hbD9a3VZogd
	swpiMOACa25Iytvy0RQ2N0usz8/0JusIAolKYaDXjmNpgLgJvzDTWs1I+XgljRy1hdnjgzyE4WO6a
	Pc01JtEnBAYLAUWyg6ZcCAzL2MBmS6DCmbot7YEhdKeZP5ev/+eMhW8+G8w7UuWX+KF3YK0kvofqs
	OmZJFX36a/nv8tA9+j/jVs3kAzaFJePIFkDZBkRO40ecEQZ96RD5eNCRq/CXc1rSKCSxf8DUdYV2l
	YCcWxsaE5w1Y7Vhi63UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhEd-0003Qp-25; Thu, 06 Jun 2019 01:30:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhEa-0003NE-7x
 for linux-um@lists.infradead.org; Thu, 06 Jun 2019 01:30:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id d18so618779wrs.5
 for <linux-um@lists.infradead.org>; Wed, 05 Jun 2019 18:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZpGCO041Tg4SdQTzukwjDvK5uvTmFYR2PFl3r1dL9b8=;
 b=ejvHIsk4euV0ppc0epTzvVzKP6ja3YamlfuEnsYOlwGiRDpcKsu5blj9KswKc1lmHk
 FlHNai9oKCPDuqXa7TJVSlPeiKK3R0r+zHaoc0/vO+KgoYHspMWlx28mglyIxvgpaPHe
 hzizJY3TdPzpNMvRO3GLuNa2Z3bBIyLELT3tU3Ha3njuSlNB+l7YFoEZJGWDICks22rP
 Qed1+wFLqO11s+sVV1ovH/1qQeWozeg+0PR8715Yw5GgkDw0trU7l6zXsnXOhVJDNEMj
 aMz3quLWYhYCfEO9JKtWdOPTQc+vfT1SWWx3gQh089h7Li6omjAeHLZGPGCeWfbJrYgP
 eqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZpGCO041Tg4SdQTzukwjDvK5uvTmFYR2PFl3r1dL9b8=;
 b=tsrw+XNBJiYE3A/C0Sen474SbJtHf8LbC2CBL71ZfRdPz0aYbGsarj4Aymi/L7psi0
 ATErVmBZ8Da7UW0fyxrw9KkfyfCr7IsNR+gBkEbOonVrqGXpL3czOAnCQddj8Jzu1+cT
 jbyWk7MVyX8+/iMjeVjKqhRROd74+98BsjxzxHrVJ/b17GxNkRxmFBDaoj10Knab2eRL
 xlzeqZdbBMhVBUx8wqSY+auR1AN2m52q0l4Jmf64uPLL+ogIIepTJURtQX4jcR5CsGdx
 Pd1WbU7XVyCRCpkbFEkYKU3i8GjKWs8Of+KptnWLUVcZkr6nosdEHL0qAfjCnXMfow47
 L2Tw==
X-Gm-Message-State: APjAAAVBIAftdM7nZw/yW9q+X+IlakBgR9pRkosh6jnQbASyIr+1Oj3t
 1YwnadEMxpSz02Cdv8N6UNhOdWSZ/Q2I9jtfTEhm
X-Google-Smtp-Source: APXvYqwxpKa2J21eVqy9vuAUqWSndFyq+8Hj5f1fxZf/oyQGr75L3YoqW8zROuipuK2Zrr7VCYmxZRrq/mq2BI+GwQw=
X-Received: by 2002:adf:e352:: with SMTP id n18mr4855529wrj.82.1559784619871; 
 Wed, 05 Jun 2019 18:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
 <20190517182254.548EA20815@mail.kernel.org>
In-Reply-To: <20190517182254.548EA20815@mail.kernel.org>
From: Iurii Zaikin <yzaikin@google.com>
Date: Wed, 5 Jun 2019 18:29:42 -0700
Message-ID: <CAAXuY3p4qhKVsSpQ44_kQeGDMfg7OuFLgFyxhcFWS3yf-5A_7g@mail.gmail.com>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_183028_288922_B90C0068 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, Brendan Higgins <brendanhiggins@google.com>,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, frowand.list@gmail.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 jpoimboe@redhat.com, kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:22 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-05-14 15:17:10)
> > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > new file mode 100644
> > index 0000000000000..fe0f2bae66085
> > --- /dev/null
> > +++ b/kernel/sysctl-test.c
> > @@ -0,0 +1,293 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * KUnit test of proc sysctl.
> > + */
> > +
> > +#include <kunit/test.h>
> > +#include <linux/printk.h>
>
> Is this include used?
  Deleted.
>
> > +#include <linux/sysctl.h>
> > +#include <linux/uaccess.h>
>
> Is this include used?
Deleted.
>
> > +
> > +
> > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > +{
> > +       struct ctl_table table = {
> > +               .procname = "foo",
> > +               .data           = &test_data.int_0001,
> > +               .maxlen         = sizeof(int),
> > +               .mode           = 0644,
> > +               .proc_handler   = proc_dointvec,
> > +               .extra1         = &i_zero,
> > +               .extra2         = &i_one_hundred,
> > +       };
> > +       char input[] = "-9";
> > +       size_t len = sizeof(input) - 1;
> > +       loff_t pos = 0;
> > +
> > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> > +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
>
> Is the casting necessary? Or can the macro do a type coercion of the
> second parameter based on the first type?
 Data field is defined as void* so I believe casting is necessary to
dereference it as a pointer to an array of ints. I don't think the
macro should do any type coercion that == operator wouldn't do.
 I did change the cast to make it more clear that it's a pointer to an
array of ints being dereferenced.
>
> > +}
> > +
> > +static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
> > +{
> > +       struct ctl_table table = {
> > +               .procname = "foo",
> > +               .data           = &test_data.int_0001,
> > +               .maxlen         = sizeof(int),
> > +               .mode           = 0644,
> > +               .proc_handler   = proc_dointvec,
> > +               .extra1         = &i_zero,
> > +               .extra2         = &i_one_hundred,
> > +       };
> > +       char input[32];
> > +       size_t len = sizeof(input) - 1;
> > +       loff_t pos = 0;
> > +       unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
> > +                                            - (INT_MAX + INT_MIN) + 1;
> > +
> > +       KUNIT_EXPECT_LT(test,
> > +                       snprintf(input, sizeof(input), "-%lu",
> > +                                abs_of_less_than_min),
> > +                       sizeof(input));
> > +
> > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +       KUNIT_EXPECT_EQ(test, -EINVAL,
> > +                       proc_dointvec(&table, 1, input, &len, &pos));
> > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +       KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
> > +}
> > +
> > +static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
> > +{
> > +       struct ctl_table table = {
> > +               .procname = "foo",
> > +               .data           = &test_data.int_0001,
> > +               .maxlen         = sizeof(int),
> > +               .mode           = 0644,
> > +               .proc_handler   = proc_dointvec,
> > +               .extra1         = &i_zero,
> > +               .extra2         = &i_one_hundred,
> > +       };
> > +       char input[32];
> > +       size_t len = sizeof(input) - 1;
> > +       loff_t pos = 0;
> > +       unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
> > +
> > +       KUNIT_EXPECT_GT(test, greater_than_max, INT_MAX);
> > +       KUNIT_EXPECT_LT(test, snprintf(input, sizeof(input), "%lu",
> > +                                      greater_than_max),
> > +                       sizeof(input));
> > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +       KUNIT_EXPECT_EQ(test, -EINVAL,
> > +                       proc_dointvec(&table, 1, input, &len, &pos));
> > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +       KUNIT_EXPECT_EQ(test, 0, *(int *)table.data);
> > +}
> > +
> > +static int sysctl_test_init(struct kunit *test)
> > +{
> > +       return 0;
> > +}
> > +
> > +/*
> > + * This is run once after each test case, see the comment on example_test_module
> > + * for more information.
> > + */
> > +static void sysctl_test_exit(struct kunit *test)
> > +{
> > +}
> Can the above two be omitted? If they can be empty sometimes it would be
> nice to avoid the extra symbols and code by letting them be assigned to
> NULL in the kunit_module.
 Deleted.
>
> > +
> > +/*
> > + * Here we make a list of all the test cases we want to add to the test module
> > + * below.
> > + */
> > +static struct kunit_case sysctl_test_cases[] = {
> > +       /*
> > +        * This is a helper to create a test case object from a test case
> > +        * function; its exact function is not important to understand how to
> > +        * use KUnit, just know that this is how you associate test cases with a
> > +        * test module.
> > +        */
> > +       KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
> > +       KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
> > +       KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
> > +       KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
> > +       KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
> > +       KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
> > +       KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
> > +       KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
> > +       {},
> > +};
> > +
> > +/*
> > + * This defines a suite or grouping of tests.
> > + *
> > + * Test cases are defined as belonging to the suite by adding them to
> > + * `test_cases`.
> > + *
> > + * Often it is desirable to run some function which will set up things which
> > + * will be used by every test; this is accomplished with an `init` function
> > + * which runs before each test case is invoked. Similarly, an `exit` function
> > + * may be specified which runs after every test case and can be used to for
> > + * cleanup. For clarity, running tests in a test module would behave as follows:
> > + *
> > + * module.init(test);
> > + * module.test_case[0](test);
> > + * module.exit(test);
> > + * module.init(test);
> > + * module.test_case[1](test);
> > + * module.exit(test);
> > + * ...;
>
> This comment (and the one above for "this is a helper") looks generic
> and should probably only be in some documentation somewhere and not for
> a sysctl test?
>
Deleted.
> > + */
> > +static struct kunit_module sysctl_test_module = {
> > +       .name = "sysctl_test",
> > +       .init = sysctl_test_init,
> > +       .exit = sysctl_test_exit,
> > +       .test_cases = sysctl_test_cases,
> > +};
> > +
> > +/*
> > + * This registers the above test module telling KUnit that this is a suite of
> > + * tests that need to be run.
> > + */
>
> Same comment about generic comment.
>
Deleted.
> > +module_test(sysctl_test_module);
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index d5a4a4036d2f8..772af4ec70111 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -1908,6 +1908,12 @@ config TEST_SYSCTL
> >
> >           If unsure, say N.
> >
> > +config SYSCTL_KUNIT_TEST
> > +       bool "KUnit test for sysctl"
>
> Why not tristate?
>
I don't believe KUnit as a module is currently supported.
> > +       depends on KUNIT
> > +       help
> > +         Enables KUnit sysctl test.
> > +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
