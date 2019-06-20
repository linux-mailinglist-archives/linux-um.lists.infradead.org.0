Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB3D4C465
	for <lists+linux-um@lfdr.de>; Thu, 20 Jun 2019 02:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkPFrGBfs3LGr7W2lLMfMbY1Fpj9nBNu7voC5XmNv/I=; b=rizs15Fe6JCp9w
	yxuqI6nLOX/JV+SjujtzaWwYjweBrhipzhRpoej5wGpk3TuqJDkLzfelULnYrSq7fKQNUYDQYNFzf
	1pY48dTvY7pQtcyWUlJhwDjINkMqIvqkWrZEohQ9bqMAFAcse08kXOLenfq5jYf4VJ4sYiEfrJ8/0
	+8RyILgpr+Sx3NiXyMMRzcafSlZrFOvA6DfRGXNin+DrIYzscf4K3lJMp8DmaBDdbFFK/zcvziHQx
	/0RY8cHpqAkd7vUgcrdk1XxBytwmqthmtL8pJlXpYh7itad8kK0KI023EhYAcbNBOcvDsOuslprxC
	G8eLIMoA0ikU/yM94gCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdkjj-0004FI-R5; Thu, 20 Jun 2019 00:15:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdkjg-0004Eg-6L
 for linux-um@lists.infradead.org; Thu, 20 Jun 2019 00:15:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93426218BE;
 Thu, 20 Jun 2019 00:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560989726;
 bh=Cyw3CS4Us7cHDynulRLePwpLSsuY8ho08g4vXgTjDFM=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=uxkDxyYpF7laGQMQdbheNapqj0FQjS0o/hFsG69mDV7yMnicTh9sX+q1GYO8mfbwg
 E1z69sHUGBcQdsi2WlYDYbSc4B2+s17Nz6qJQoCAMJgUsjAbryk7FV2ai2kP081uXc
 0hRlrWl2NbES9/L1UjKNP/E97FgjeS8RMgUcodoM=
MIME-Version: 1.0
In-Reply-To: <20190617082613.109131-2-brendanhiggins@google.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
User-Agent: alot/0.8.1
Date: Wed, 19 Jun 2019 17:15:25 -0700
Message-Id: <20190620001526.93426218BE@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_171528_270766_3C24553D 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Quoting Brendan Higgins (2019-06-17 01:25:56)
> diff --git a/kunit/test.c b/kunit/test.c
> new file mode 100644
> index 0000000000000..d05d254f1521f
> --- /dev/null
> +++ b/kunit/test.c
> @@ -0,0 +1,210 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Base unit test (KUnit) API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <linux/sched/debug.h>
> +#include <kunit/test.h>
> +
> +static bool kunit_get_success(struct kunit *test)
> +{
> +       unsigned long flags;
> +       bool success;
> +
> +       spin_lock_irqsave(&test->lock, flags);
> +       success = test->success;
> +       spin_unlock_irqrestore(&test->lock, flags);

I still don't understand the locking scheme in this code. Is the
intention to make getter and setter APIs that are "safe" by adding in a
spinlock that is held around getting and setting various members in the
kunit structure?

In what situation is there more than one thread reading or writing the
kunit struct? Isn't it only a single process that is going to be
operating on this structure? And why do we need to disable irqs? Are we
expecting to be modifying the unit tests from irq contexts?

> +
> +       return success;
> +}
> +
> +static void kunit_set_success(struct kunit *test, bool success)
> +{
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&test->lock, flags);
> +       test->success = success;
> +       spin_unlock_irqrestore(&test->lock, flags);
> +}
> +
> +static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
> +{
> +       return vprintk_emit(0, level, NULL, 0, fmt, args);
> +}
> +
> +static int kunit_printk_emit(int level, const char *fmt, ...)
> +{
> +       va_list args;
> +       int ret;
> +
> +       va_start(args, fmt);
> +       ret = kunit_vprintk_emit(level, fmt, args);
> +       va_end(args);
> +
> +       return ret;
> +}
> +
> +static void kunit_vprintk(const struct kunit *test,
> +                         const char *level,
> +                         struct va_format *vaf)
> +{
> +       kunit_printk_emit(level[1] - '0', "\t# %s: %pV", test->name, vaf);
> +}
> +
> +static bool kunit_has_printed_tap_version;

Can you please move this into function local scope in the function
below?

> +
> +static void kunit_print_tap_version(void)
> +{
> +       if (!kunit_has_printed_tap_version) {
> +               kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
> +               kunit_has_printed_tap_version = true;
> +       }
> +}
> +
[...]
> +
> +static bool kunit_module_has_succeeded(struct kunit_module *module)
> +{
> +       const struct kunit_case *test_case;
> +       bool success = true;
> +
> +       for (test_case = module->test_cases; test_case->run_case; test_case++)
> +               if (!test_case->success) {
> +                       success = false;
> +                       break;

Why not 'return false'?

> +               }
> +
> +       return success;

And 'return true'?

> +}
> +
> +static size_t kunit_module_counter = 1;
> +
> +static void kunit_print_subtest_end(struct kunit_module *module)
> +{
> +       kunit_print_ok_not_ok(false,
> +                             kunit_module_has_succeeded(module),
> +                             kunit_module_counter++,
> +                             module->name);
> +}
> +
> +static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
> +                                           size_t test_number)
> +{
> +       kunit_print_ok_not_ok(true,
> +                             test_case->success,
> +                             test_number,
> +                             test_case->name);
> +}
> +
> +void kunit_init_test(struct kunit *test, const char *name)
> +{
> +       spin_lock_init(&test->lock);
> +       test->name = name;
> +       test->success = true;
> +}
> +
> +/*
> + * Performs all logic to run a test case.
> + */
> +static void kunit_run_case(struct kunit_module *module,
> +                          struct kunit_case *test_case)
> +{
> +       struct kunit test;
> +       int ret = 0;
> +
> +       kunit_init_test(&test, test_case->name);
> +
> +       if (module->init) {
> +               ret = module->init(&test);
> +               if (ret) {
> +                       kunit_err(&test, "failed to initialize: %d\n", ret);
> +                       kunit_set_success(&test, false);
> +                       return;
> +               }
> +       }
> +
> +       if (!ret)
> +               test_case->run_case(&test);

Do we need this if condition? ret can only be set to non-zero above but
then we'll exit the function early so it seems unnecessary. Given that,
ret should probably be moved into the module->init path.

> +
> +       if (module->exit)
> +               module->exit(&test);
> +
> +       test_case->success = kunit_get_success(&test);
> +}
> +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
