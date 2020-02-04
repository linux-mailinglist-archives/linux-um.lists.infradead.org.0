Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F136E152256
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 23:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCqhGogbqDUPNbZLhjalvqir8Q8sZJyr5igql7zK8vo=; b=Swf5jTXonx8dlB
	MUGWc7O/dYpzCsihpIoWSqrqAaptKpOvyQLgBSpgHwENuBHePqJmo2WNgFuN2/nPT9QxRHVNfLKTe
	0nrPW1ETV7s+/9XYvRRt6RwGvtO32HeHAiqzAfji94byUmxFRuse9LQe/7ldh6OzGUjR+/obP3s24
	J5YrxZzbG9S87cRm50aB+327wPEAVoLa7Gltnj+VPyu5vSQkN269XVSjtw0C6GrtFfD3Tdv78fwSN
	ZgSnjOHz9vsasqeJXd56zFWW8mXckPdedAcFd0+X7js1sl143wf8zsJG/P8PHWP3BVm7xojmwyVcR
	0KzNS9gFKgmYtbngoajA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6f7-0000Yu-Or; Tue, 04 Feb 2020 22:27:17 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6f4-0000YY-Rz
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 22:27:16 +0000
Received: by mail-yw1-xc44.google.com with SMTP id h126so436234ywc.6
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 14:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Qlf9lXYabruIPe7BY1Co9J9v9aB5hsqm1QaXhz8x6vk=;
 b=RbyTv0k8Xr6WorAmAQb7L4q5vAOsjMKznfV4looZQtyEYh+Xjq11BOSdKOb5WmkqDO
 3UhtcKI0E5BFzKihuM9Llq4+WFgCxWThReDL+xHqRHdiIqAXfeDGdZ0meeMRBM67BMfV
 UmIgyVIyE0YwQahyKHog1Lo024gUnsINmg6ksAdp2RwBkrkyIge/zUE6et1FidvzfN5P
 33h0PB1jafaOImbRfp2cl/d8NWGqB0PQtcABk3AH/Edxw9IM6Hw6dQLxmFjj0pzp2xya
 y+Y9NJnMHATepZJ6O2H/tW+50oIACCO3GSirZCf/yQRk8HMq/beTA3g7B96PfZMVDedc
 pU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qlf9lXYabruIPe7BY1Co9J9v9aB5hsqm1QaXhz8x6vk=;
 b=szYA7mAua+ZsZmfYAXc0KXgftatYiJ9VoG3dJLN9bEX2G56ZmguFMeA7X+S2CEW2cx
 vHkGfTrxHkzwT2xYXSj/fQtrYa92YjFKqS9w2CIXU+yYGNRRfboQ5BCjNRH/f3n4YTg3
 /K4sIBHHY9Gn7ta9bPBOKauzwmoNxMlPrJWPJoPZbAMjsNjYy5TGaaSHIFeklHujeOli
 5lRsEAGJfpmrdN5at0stz7+fienapdW+WPDYYGQu95FnqPr2lW2mNdx/s+Zw9WNGcL0x
 rPfw1EHMka0RFG4cP0rCRumWXP1aEggdQXTaFldVbJ2HEGUvS5if+51GIWtzC8D5ynT4
 8MSw==
X-Gm-Message-State: APjAAAXIYxHle0F53USBoMON5Fu6sRBhScXsv2pTOxwZSan08+z/AZ4U
 kqxoL/1ZvKj7/AfzK9vomoA=
X-Google-Smtp-Source: APXvYqzGEhXv6s8sZbVFoRron3hfRXsajLyg8uOv83wej5gSwevGY+lcpfFTiN6S+fqhvz+EA2LNqQ==
X-Received: by 2002:a25:97c7:: with SMTP id j7mr25391925ybo.209.1580855233547; 
 Tue, 04 Feb 2020 14:27:13 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id 144sm10038637ywy.20.2020.02.04.14.27.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 14:27:13 -0800 (PST)
Subject: Re: [PATCH v2 3/7] kunit: test: create a single centralized executor
 for all tests
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-4-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <11977708-bb18-e322-db7a-9f21d7cdec54@gmail.com>
Date: Tue, 4 Feb 2020 16:27:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-4-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_142714_908654_FD29C4FE 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/30/20 5:08 PM, Brendan Higgins wrote:
> From: Alan Maguire <alan.maguire@oracle.com>
> 
> Add a centralized executor to dispatch tests rather than relying on
> late_initcall to schedule each test suite separately.  Centralized
> execution is for built-in tests only; modules will execute tests
> when loaded.
> 
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> Co-developed-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  include/kunit/test.h | 73 +++++++++++++++++++++++++++-----------------
>  lib/kunit/Makefile   |  3 +-
>  lib/kunit/executor.c | 36 ++++++++++++++++++++++
>  3 files changed, 83 insertions(+), 29 deletions(-)
>  create mode 100644 lib/kunit/executor.c
> 
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index 2dfb550c6723a..8a02f93a6b505 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h

The following fragment does not match the test.h in Linux 5.5 or 5.4-rc1 (as one
possible earlier version).  And we are not to Linux 5.5-rc1 yet.  (Simple way
to check for the mis-match - 5.5 has kunit_test_suite() instead of
kunit_test_suites().)

I know that there is an alternate tree where some of the development occurs.
Can you please add a link in MAINTAINERS?  And please note (at least in
patch 0) what tree the series is developed against?

-Frank


> @@ -197,46 +197,63 @@ void kunit_init_test(struct kunit *test, const char *name);
>  
>  int kunit_run_tests(struct kunit_suite *suite);
>  
> -/**
> - * kunit_test_suites() - used to register one or more &struct kunit_suite
> - *			 with KUnit.
> - *
> - * @suites: a statically allocated list of &struct kunit_suite.
> - *
> - * Registers @suites with the test framework. See &struct kunit_suite for
> - * more information.
> - *
> - * When builtin,  KUnit tests are all run as late_initcalls; this means
> - * that they cannot test anything where tests must run at a different init
> - * phase. One significant restriction resulting from this is that KUnit
> - * cannot reliably test anything that is initialize in the late_init phase;
> - * another is that KUnit is useless to test things that need to be run in
> - * an earlier init phase.
> - *
> - * An alternative is to build the tests as a module.  Because modules
> - * do not support multiple late_initcall()s, we need to initialize an
> - * array of suites for a module.
> - *
> - * TODO(brendanhiggins@google.com): Don't run all KUnit tests as
> - * late_initcalls.  I have some future work planned to dispatch all KUnit
> - * tests from the same place, and at the very least to do so after
> - * everything else is definitely initialized.
> +/*
> + * If a test suite is built-in, module_init() gets translated into
> + * an initcall which we don't want as the idea is that for builtins
> + * the executor will manage execution.  So ensure we do not define
> + * module_{init|exit} functions for the builtin case when registering
> + * suites via kunit_test_suites() below.
>   */
> -#define kunit_test_suites(...)						\
> -	static struct kunit_suite *suites[] = { __VA_ARGS__, NULL};	\
> -	static int kunit_test_suites_init(void)				\
> +#ifdef MODULE
> +#define kunit_test_suites_for_module(__suites)				\
> +	static int __init kunit_test_suites_init(void)			\
>  	{								\
> +		struct kunit_suite *suites[] = (__suites);		\
>  		unsigned int i;						\
> +									\
>  		for (i = 0; suites[i] != NULL; i++)			\
>  			kunit_run_tests(suites[i]);			\
>  		return 0;						\
>  	}								\
> -	late_initcall(kunit_test_suites_init);				\
> +	module_init(kunit_test_suites_init);				\
> +									\
>  	static void __exit kunit_test_suites_exit(void)			\
>  	{								\
>  		return;							\
>  	}								\
>  	module_exit(kunit_test_suites_exit)
> +#else
> +#define kunit_test_suites_for_module(__suites)
> +#endif /* MODULE */
> +
> +#define __kunit_test_suites(unique_array, unique_suites, ...)		       \
> +	static struct kunit_suite *unique_array[] = { __VA_ARGS__, NULL };     \
> +	kunit_test_suites_for_module(unique_array);			       \
> +	static struct kunit_suite **unique_suites			       \
> +	__used __aligned(8) __section(.kunit_test_suites) = unique_array
> +
> +/**
> + * kunit_test_suites() - used to register one or more &struct kunit_suite
> + *			 with KUnit.
> + *
> + * @suites: a statically allocated list of &struct kunit_suite.
> + *
> + * Registers @suites with the test framework. See &struct kunit_suite for
> + * more information.
> + *
> + * When builtin,  KUnit tests are all run via executor; this is done
> + * by placing the array of struct kunit_suite * in the .kunit_test_suites
> + * ELF section.
> + *
> + * An alternative is to build the tests as a module.  Because modules do not
> + * support multiple initcall()s, we need to initialize an array of suites for a
> + * module.
> + *
> + */
> +#define kunit_test_suites(...)						\
> +	__kunit_test_suites(__UNIQUE_ID(array),				\
> +			    __UNIQUE_ID(suites),			\
> +			    __VA_ARGS__)
>  
>  #define kunit_test_suite(suite)	kunit_test_suites(&suite)
>  
> diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
> index fab55649b69a5..c282f02ca066b 100644
> --- a/lib/kunit/Makefile
> +++ b/lib/kunit/Makefile
> @@ -3,7 +3,8 @@ obj-$(CONFIG_KUNIT) +=			kunit.o
>  kunit-objs +=				test.o \
>  					string-stream.o \
>  					assert.o \
> -					try-catch.o
> +					try-catch.o \
> +					executor.o
>  
>  obj-$(CONFIG_KUNIT_TEST) +=		kunit-test.o
>  
> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> new file mode 100644
> index 0000000000000..6429927d598a5
> --- /dev/null
> +++ b/lib/kunit/executor.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <kunit/test.h>
> +
> +/*
> + * These symbols point to the .kunit_test_suites section and are defined in
> + * include/asm-generic/vmlinux.lds.h, and consequently must be extern.
> + */
> +extern struct kunit_suite * const * const __kunit_suites_start[];
> +extern struct kunit_suite * const * const __kunit_suites_end[];
> +
> +#if IS_BUILTIN(CONFIG_KUNIT)
> +
> +static int kunit_run_all_tests(void)
> +{
> +	struct kunit_suite * const * const *suites, * const *subsuite;
> +	bool has_test_failed = false;
> +
> +	for (suites = __kunit_suites_start;
> +	     suites < __kunit_suites_end;
> +	     suites++) {
> +		for (subsuite = *suites; *subsuite != NULL; subsuite++) {
> +			if (kunit_run_tests(*subsuite))
> +				has_test_failed = true;
> +		}
> +	}
> +
> +	if (has_test_failed)
> +		return -EFAULT;
> +
> +	return 0;
> +}
> +
> +late_initcall(kunit_run_all_tests);
> +
> +#endif /* IS_BUILTIN(CONFIG_KUNIT) */
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
