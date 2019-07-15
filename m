Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D869C68
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 22:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbCuWIAv8r4ALKsHONfpwfcLIw4OLj3AA0mocwf+Ubo=; b=HVoxzF5wrgRMsW
	onyvYpVzkKyyyTQjdwCJ7Jbz//+XGeE8miEd3hSjE6fDRM592IPBJAslqIVEDDaNP9G4k3/kw/Dkr
	b5oocOpFj9F5P0cQg2T9SHsTotXO0HwjjljMhua8cKFrHgVWyRAj0rTx5VsU8xRQGK1ZyrXh0fQrh
	TzYURBbnH4Rodfx5wPJRyCeW+Stoe8LbMwFMIdsUL2LQPB2xC9NlMdV6WRHLMaCryg2jfNkc7gX2g
	vy5cZ+FYOsy/WH6Mm9l6bKmJYaZ16s786wOvRmNYD9I5LcRH6FkYsaht4MVhraOTgIV/7l+SdB5/H
	d5EWjShwnzWileu6FJCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn7JN-0005t3-4w; Mon, 15 Jul 2019 20:11:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn7JJ-0005s7-Ht
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 20:10:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C69AA2086C;
 Mon, 15 Jul 2019 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563221454;
 bh=VRTZWx/5sKJHdH3qQkzEYYxjC5JMv+S2b65daQVUdGU=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=JQmD4doZtzPy2RsxVJTfXU4+HVaWbuij6HH8oF8RC7zWY3b+zfLb6BjosM4nFE8Zv
 mrb4jXugiyvntNyKdYloWJPzuahddLnXpqJKuYJRQSRO/Vb9WmX1qLLp99cO9XQ/uR
 gs7n762HrytDofL3ccz7u/kjKohqqEh0qv06XoyM=
MIME-Version: 1.0
In-Reply-To: <20190712081744.87097-2-brendanhiggins@google.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-2-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
Subject: Re: [PATCH v9 01/18] kunit: test: add KUnit test runner core
User-Agent: alot/0.8.1
Date: Mon, 15 Jul 2019 13:10:53 -0700
Message-Id: <20190715201054.C69AA2086C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_131057_626770_01FB15B5 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Quoting Brendan Higgins (2019-07-12 01:17:27)
> Add core facilities for defining unit tests; this provides a common way
> to define test cases, functions that execute code which is under test
> and determine whether the code under test behaves as expected; this also
> provides a way to group together related test cases in test suites (here
> we call them test_modules).
> 
> Just define test cases and how to execute them for now; setting
> expectations on code will be defined later.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Minor nits below.

> diff --git a/kunit/test.c b/kunit/test.c
> new file mode 100644
> index 0000000000000..571e4c65deb5c
> --- /dev/null
> +++ b/kunit/test.c
> @@ -0,0 +1,189 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Base unit test (KUnit) API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <linux/kernel.h>
> +#include <kunit/test.h>
> +
> +static void kunit_set_failure(struct kunit *test)
> +{
> +       WRITE_ONCE(test->success, false);
> +}
> +
[...]
> +
> +void kunit_init_test(struct kunit *test, const char *name)
> +{
> +       test->name = name;
> +       test->success = true;
> +}
> +
> +/*
> + * Performs all logic to run a test case.
> + */
> +static void kunit_run_case(struct kunit_suite *suite,
> +                          struct kunit_case *test_case)
> +{
> +       struct kunit test;
> +       int ret = 0;
> +
> +       kunit_init_test(&test, test_case->name);
> +
> +       if (suite->init) {
> +               ret = suite->init(&test);

Can you push the ret definition into this if scope? That way we can
avoid default initialize to 0 for it.

> +               if (ret) {
> +                       kunit_err(&test, "failed to initialize: %d\n", ret);
> +                       kunit_set_failure(&test);

Do we need to 'test_case->success = test.success' here too? Or is the
test failure extracted somewhere else?

> +                       return;
> +               }
> +       }
> +
> +       test_case->run_case(&test);
> +
> +       if (suite->exit)
> +               suite->exit(&test);
> +
> +       test_case->success = test.success;

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
