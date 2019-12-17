Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B7E12262C
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 09:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKWM0zAeavEASjBGi+rBDXVSehvD4DcTQNGfN6rfNFU=; b=R3DYfLO7Ap7H0M
	TG2ezha/oxpcZfP/j1OiY04A1oukPlcVAFtqGr9DgeCP8wCJHkbhmUcvZUJL4QsDOsll1YCFOsJd+
	5zw9rjgq9ng3d5S1A9x6yGEAcjI82dUjJLAjrIM3pEmn24Lx0GX09IZg7lxsEqLg0QYyd+g6LqmJc
	BAqKGNOEFgbTxZYVTM797n8/rK6lnnFWQx2tC+XCgvBAuZopQxngZG3ORNxYzajfsSnhPaePRjWG7
	rjv+J06+8+LEjgrjGWSYWa/U0jH+m9C8JY/S8QGbxwEq9UN8DBpDWRxehTNBuTN4ulzSVIik5CQQg
	F40Fwfb2ovdOlLj9PQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7pz-0004Jm-9d; Tue, 17 Dec 2019 08:04:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7pw-0004J5-Ep
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 08:04:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E805207FF;
 Tue, 17 Dec 2019 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576569848;
 bh=Y+8NIgqGUB5GGoVAmC1QyodloTkHrKNoE9BJ1KDgc0I=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=NtCUV3NXdw3uz6E3WWDJ/f8avNB+JW3MgzuhyTbvTeFVozCkBMA1VlwHv2Z3SNFi6
 RfLW0D/1wbdJ8NsGI6PG+SW7IFEhnDvWvYJ0QAE1crrChc0U0DyFDqJna8T8DTxc+U
 fFlOb8qoGap3jmz9IyfKyLMKNHRAW2V9WYKcDVp4=
MIME-Version: 1.0
In-Reply-To: <20191216220555.245089-4-brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-4-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, jdike@addtoit.com, keescook@chromium.org, richard@nod.at,
 rppt@linux.ibm.com, skhan@linuxfoundation.org, yzaikin@google.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 3/6] kunit: test: create a single centralized executor
 for all tests
User-Agent: alot/0.8.1
Date: Tue, 17 Dec 2019 00:04:07 -0800
Message-Id: <20191217080408.0E805207FF@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000408_540068_E4809822 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-12-16 14:05:52)
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index dba48304b3bd3..c070798ebb765 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h
> @@ -217,11 +217,8 @@ int kunit_run_tests(struct kunit_suite *suite);
>   * everything else is definitely initialized.
>   */
>  #define kunit_test_suite(suite)                                                       \
> -       static int kunit_suite_init##suite(void)                               \

Oh this should have been __init before.

> -       {                                                                      \
> -               return kunit_run_tests(&suite);                                \
> -       }                                                                      \
> -       late_initcall(kunit_suite_init##suite)
> +       static struct kunit_suite *__kunit_suite_##suite                       \
> +       __used __aligned(8) __section(.kunit_test_suites) = &suite
>  
>  /*
>   * Like kunit_alloc_resource() below, but returns the struct kunit_resource
> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> new file mode 100644
> index 0000000000000..978086cfd257d
> --- /dev/null
> +++ b/lib/kunit/executor.c
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Base unit test (KUnit) API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <linux/init.h>
> +#include <linux/printk.h>
> +#include <kunit/test.h>
> +
> +/*
> + * These symbols point to the .kunit_test_suites section and are defined in
> + * include/asm-generic/vmlinux.lds.h, and consequently must be extern.
> + */
> +extern struct kunit_suite *__kunit_suites_start[];
> +extern struct kunit_suite *__kunit_suites_end[];
> +
> +static bool kunit_run_all_tests(void)

Should be __init?

> +{
> +       struct kunit_suite **suite;

Can this be const? And the linker references above too?

> +       bool has_test_failed = false;
> +
> +       for (suite = __kunit_suites_start;
> +            suite < __kunit_suites_end;
> +            ++suite) {
> +               if (kunit_run_tests(*suite))
> +                       has_test_failed = true;
> +       }
> +
> +       return !has_test_failed;
> +}
> +
> +static int kunit_executor_init(void)

Should be __init?

> +{
> +       if (kunit_run_all_tests())
> +               return 0;
> +       else
> +               return -EFAULT;

Why two functions instead of just one that is the target of the
late_initcall? Nitpick: deindent that last return and take it out of the
else.

> +}
> +
> +late_initcall(kunit_executor_init);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
