Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207E28AD74
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 06:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHecLWYsktc7BrjZZeSpjNbBM/o7aI48n6oWGqm1qG4=; b=ftWpLE/qBfJjez
	Me91gv+CgPbUs0dC7l4vLX6JzAEwQvkXXdYD0NPK3bLhltjkFHZc496Xmcq7S4L3yK8iN+qW/jTci
	xSo4fWIcTjV6Jft9I6oDoQBVmSXDUE/JifRARU0H3YpXmzb/bEznQ7JMAmjUroH6pxOEjkA3JSCCR
	XG70UjdiEleAtxzSHyilRZI07WibYH27ftJBulqIXzwQqc8Emv4dq9efZwLqbVu0zpT7BhpliAqq9
	0xlF01f/emIOvkKAGmEcJ0iy9+S71JUIvIQGrjfMVxnvgvW6d4zHwFdGSCStH3hcjAxRnJXAsfrQQ
	WWueNE1LRMaIGa2OWylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOJw-00027z-ML; Tue, 13 Aug 2019 04:22:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOJs-00027B-EJ
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 04:22:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46814206C2;
 Tue, 13 Aug 2019 04:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565670119;
 bh=2wsciK8EQNkiIDpIzT9gqNOBT1vFkTwhm0156mR8+vg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=wecwCow5B+6BYtZFhLgSBtfBg3HYwUxRc7BK/brCT0tDKGApHgFlM+vfqd81P64X0
 04JP0Nu9+FaPoa3LNBz2rHGjoJcRlNjXPSlwk78/5FIAJiFy49LChFOYIg/iHUwNr0
 72imQjPEbEhZyBYzzpi7XEUQSlI3qDs3pOlrbs2w=
MIME-Version: 1.0
In-Reply-To: <20190812182421.141150-10-brendanhiggins@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-10-brendanhiggins@google.com>
Subject: Re: [PATCH v12 09/18] kunit: test: add support for test abort
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 21:21:58 -0700
Message-Id: <20190813042159.46814206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_212200_532317_4965C0C5 
X-CRM114-Status: GOOD (  29.45  )
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

Quoting Brendan Higgins (2019-08-12 11:24:12)
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index 2625bcfeb19ac..93381f841e09f 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h
> @@ -13,6 +13,7 @@
>  #include <linux/types.h>
>  #include <linux/slab.h>
>  #include <kunit/assert.h>
> +#include <kunit/try-catch.h>
>  
>  struct kunit_resource;
>  
> @@ -167,6 +168,7 @@ struct kunit {
>  
>         /* private: internal use only. */
>         const char *name; /* Read only after initialization! */
> +       struct kunit_try_catch try_catch;
>         /*
>          * success starts as true, and may only be set to false during a test
>          * case; thus, it is safe to update this across multiple threads using
> @@ -176,6 +178,11 @@ struct kunit {
>          */
>         bool success; /* Read only after test_case finishes! */
>         spinlock_t lock; /* Gaurds all mutable test state. */
> +       /*
> +        * death_test may be both set and unset from multiple threads in a test
> +        * case.
> +        */
> +       bool death_test; /* Protected by lock. */
>         /*
>          * Because resources is a list that may be updated multiple times (with
>          * new resources) from any thread associated with a test case, we must
> @@ -184,6 +191,13 @@ struct kunit {
>         struct list_head resources; /* Protected by lock. */
>  };
>  
> +static inline void kunit_set_death_test(struct kunit *test, bool death_test)
> +{
> +       spin_lock(&test->lock);
> +       test->death_test = death_test;
> +       spin_unlock(&test->lock);
> +}

These getters and setters are using spinlocks again. It doesn't make any
sense. It probably needs a rework like was done for the other bool
member, success.

> +
>  void kunit_init_test(struct kunit *test, const char *name);
>  
>  int kunit_run_tests(struct kunit_suite *suite);
> diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
> new file mode 100644
> index 0000000000000..8a414a9af0b64
> --- /dev/null
> +++ b/include/kunit/try-catch.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * An API to allow a function, that may fail, to be executed, and recover in a
> + * controlled manner.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_TRY_CATCH_H
> +#define _KUNIT_TRY_CATCH_H
> +
> +#include <linux/types.h>
> +
> +typedef void (*kunit_try_catch_func_t)(void *);
> +
> +struct kunit;

Forward declare struct completion?

> +
> +/*
> + * struct kunit_try_catch - provides a generic way to run code which might fail.
> + * @context: used to pass user data to the try and catch functions.
> + *
> + * kunit_try_catch provides a generic, architecture independent way to execute
> + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
> + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
> + * is stopped at the site of invocation and @catch is catch is called.
> + *
> + * struct kunit_try_catch provides a generic interface for the functionality
> + * needed to implement kunit->abort() which in turn is needed for implementing
> + * assertions. Assertions allow stating a precondition for a test simplifying
> + * how test cases are written and presented.
> + *
> + * Assertions are like expectations, except they abort (call
> + * kunit_try_catch_throw()) when the specified condition is not met. This is
> + * useful when you look at a test case as a logical statement about some piece
> + * of code, where assertions are the premises for the test case, and the
> + * conclusion is a set of predicates, rather expectations, that must all be
> + * true. If your premises are violated, it does not makes sense to continue.
> + */
> +struct kunit_try_catch {
> +       /* private: internal use only. */
> +       struct kunit *test;
> +       struct completion *try_completion;
> +       int try_result;
> +       kunit_try_catch_func_t try;
> +       kunit_try_catch_func_t catch;

Can these other variables be documented in the kernel doc? And should
context be marked as 'public'?

> +       void *context;
> +};
> +
> +void kunit_try_catch_init(struct kunit_try_catch *try_catch,
> +                         struct kunit *test,
> +                         kunit_try_catch_func_t try,
> +                         kunit_try_catch_func_t catch);
> +
> +void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context);
> +
> +void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch);
> +
> +static inline int kunit_try_catch_get_result(struct kunit_try_catch *try_catch)
> +{
> +       return try_catch->try_result;
> +}
> +
> +/*
> + * Exposed for testing only.

Ugh that's sad. I hope we don't expose more functions just for testing
in other cases.

> + */
> +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch);
> +
> +#endif /* _KUNIT_TRY_CATCH_H */
> diff --git a/kunit/test.c b/kunit/test.c
> index e5080a2c6b29c..995cb53fe4ee9 100644
> --- a/kunit/test.c
> +++ b/kunit/test.c
> @@ -7,13 +7,26 @@
>   */
>  
>  #include <linux/kernel.h>
> +#include <linux/sched/debug.h>
>  #include <kunit/test.h>
> +#include <kunit/try-catch.h>
>  
>  static void kunit_set_failure(struct kunit *test)
>  {
>         WRITE_ONCE(test->success, false);
>  }
>  
> +static bool kunit_get_death_test(struct kunit *test)
> +{
> +       bool death_test;
> +
> +       spin_lock(&test->lock);
> +       death_test = test->death_test;
> +       spin_unlock(&test->lock);
> +
> +       return death_test;
> +}
> +
>  static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
>  {
>         return vprintk_emit(0, level, NULL, 0, fmt, args);
> @@ -158,6 +171,21 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
>         kunit_print_string_stream(test, stream);
>  }
>  
> +void __noreturn kunit_abort(struct kunit *test)
> +{
> +       kunit_set_death_test(test, true);
> +
> +       kunit_try_catch_throw(&test->try_catch);
> +
> +       /*
> +        * Throw could not abort from test.
> +        *
> +        * XXX: we should never reach this line! As kunit_try_catch_throw is
> +        * marked __noreturn.
> +        */
> +       WARN_ONCE(true, "Throw could not abort from test!\n");

Should this just be a BUG_ON? It's supposedly impossible.

> +}
> +
>  void kunit_do_assertion(struct kunit *test,
>                         struct kunit_assert *assert,
>                         bool pass,
> @@ -176,6 +204,9 @@ void kunit_do_assertion(struct kunit *test,
>         kunit_fail(test, assert);
>  
>         va_end(args);
> +
> +       if (assert->type == KUNIT_ASSERTION)
> +               kunit_abort(test);
>  }
>  
>  void kunit_init_test(struct kunit *test, const char *name)
> @@ -184,36 +215,154 @@ void kunit_init_test(struct kunit *test, const char *name)
>         INIT_LIST_HEAD(&test->resources);
>         test->name = name;
>         test->success = true;
> +       test->death_test = false;
>  }
>  
>  /*
> - * Performs all logic to run a test case.
> + * Initializes and runs test case. Does not clean up or do post validations.
>   */
> -static void kunit_run_case(struct kunit_suite *suite,
> -                          struct kunit_case *test_case)
> +static void kunit_run_case_internal(struct kunit *test,
> +                                   struct kunit_suite *suite,
> +                                   struct kunit_case *test_case)
>  {
> -       struct kunit test;
> -
> -       kunit_init_test(&test, test_case->name);
> -
>         if (suite->init) {
>                 int ret;
>  
> -               ret = suite->init(&test);
> +               ret = suite->init(test);
>                 if (ret) {
> -                       kunit_err(&test, "failed to initialize: %d\n", ret);
> -                       kunit_set_failure(&test);
> -                       test_case->success = test.success;
> +                       kunit_err(test, "failed to initialize: %d\n", ret);
> +                       kunit_set_failure(test);
>                         return;
>                 }
>         }
>  
> -       test_case->run_case(&test);
> +       test_case->run_case(test);
> +}
> +
> +static void kunit_case_internal_cleanup(struct kunit *test)
> +{
> +       kunit_cleanup(test);
> +}
>  
> +/*
> + * Performs post validations and cleanup after a test case was run.
> + * XXX: Should ONLY BE CALLED AFTER kunit_run_case_internal!
> + */
> +static void kunit_run_case_cleanup(struct kunit *test,
> +                                  struct kunit_suite *suite)
> +{
>         if (suite->exit)
> -               suite->exit(&test);
> +               suite->exit(test);
> +
> +       kunit_case_internal_cleanup(test);
> +}
> +
> +/*
> + * Handles an unexpected crash in a test case.
> + */
> +static void kunit_handle_test_crash(struct kunit *test,
> +                                  struct kunit_suite *suite,
> +                                  struct kunit_case *test_case)
> +{
> +       kunit_err(test, "kunit test case crashed!");

Does this need a newline?

> +       /*
> +        * TODO(brendanhiggins@google.com): This prints the stack trace up
> +        * through this frame, not up to the frame that caused the crash.
> +        */
> +       show_stack(NULL, NULL);
> +
> +       kunit_case_internal_cleanup(test);
> +}
> +
> +struct kunit_try_catch_context {
> +       struct kunit *test;
> +       struct kunit_suite *suite;
> +       struct kunit_case *test_case;
> +};
> +
> +static void kunit_try_run_case(void *data)
> +{
> +       struct kunit_try_catch_context *ctx = data;
> +       struct kunit *test = ctx->test;
> +       struct kunit_suite *suite = ctx->suite;
> +       struct kunit_case *test_case = ctx->test_case;
> +
> +       /*
> +        * kunit_run_case_internal may encounter a fatal error; if it does,
> +        * abort will be called, this thread will exit, and finally the parent
> +        * thread will resume control and handle any necessary clean up.
> +        */
> +       kunit_run_case_internal(test, suite, test_case);
> +       /* This line may never be reached. */
> +       kunit_run_case_cleanup(test, suite);
> +}
> +
> +static void kunit_catch_run_case(void *data)
> +{
> +       struct kunit_try_catch_context *ctx = data;
> +       struct kunit *test = ctx->test;
> +       struct kunit_suite *suite = ctx->suite;
> +       struct kunit_case *test_case = ctx->test_case;
> +       int try_exit_code = kunit_try_catch_get_result(&test->try_catch);
> +
> +       if (try_exit_code) {
> +               kunit_set_failure(test);
> +               /*
> +                * Test case could not finish, we have no idea what state it is
> +                * in, so don't do clean up.
> +                */
> +               if (try_exit_code == -ETIMEDOUT)
> +                       kunit_err(test, "test case timed out\n");
> +               /*
> +                * Unknown internal error occurred preventing test case from
> +                * running, so there is nothing to clean up.
> +                */
> +               else
> +                       kunit_err(test, "internal error occurred preventing test case from running: %d\n",
> +                                 try_exit_code);

Nitpick: I would add braces here because you make the if statement into
multi-line arms for each case.

> +               return;
> +       }
> +
> +       if (kunit_get_death_test(test)) {
> +               /*
> +                * EXPECTED DEATH: kunit_run_case_internal encountered
> +                * anticipated fatal error. Everything should be in a safe
> +                * state.
> +                */
> +               kunit_run_case_cleanup(test, suite);
> +       } else {
> +               /*
> +                * UNEXPECTED DEATH: kunit_run_case_internal encountered an
> +                * unanticipated fatal error. We have no idea what the state of
> +                * the test case is in.
> +                */
> +               kunit_handle_test_crash(test, suite, test_case);
> +               kunit_set_failure(test);

Like was done here.

> +       }
> +}
> +
> +/*
> + * Performs all logic to run a test case. It also catches most errors that
> + * occurs in a test case and reports them as failures.

s/occurs/occur/

> + */
> +static void kunit_run_case_catch_errors(struct kunit_suite *suite,
[...]
> diff --git a/kunit/try-catch.c b/kunit/try-catch.c
> new file mode 100644
> index 0000000000000..de580f074387b
> --- /dev/null
> +++ b/kunit/try-catch.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * An API to allow a function, that may fail, to be executed, and recover in a
> + * controlled manner.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <kunit/try-catch.h>
> +#include <kunit/test.h>
> +#include <linux/completion.h>
> +#include <linux/kthread.h>
> +
> +void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch)
> +{
> +       try_catch->try_result = -EFAULT;
> +       complete_and_exit(try_catch->try_completion, -EFAULT);
> +}
> +
> +static int kunit_generic_run_threadfn_adapter(void *data)
> +{
> +       struct kunit_try_catch *try_catch = data;
> +
> +       try_catch->try(try_catch->context);
> +
> +       complete_and_exit(try_catch->try_completion, 0);
> +}
> +
> +void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context)
> +{
> +       DECLARE_COMPLETION_ONSTACK(try_completion);
> +       struct kunit *test = try_catch->test;
> +       struct task_struct *task_struct;
> +       int exit_code, status;
> +
> +       try_catch->context = context;
> +       try_catch->try_completion = &try_completion;
> +       try_catch->try_result = 0;
> +       task_struct = kthread_run(kunit_generic_run_threadfn_adapter,
> +                                 try_catch,
> +                                 "kunit_try_catch_thread");
> +       if (IS_ERR(task_struct)) {
> +               try_catch->catch(try_catch->context);
> +               return;
> +       }
> +
> +       /*
> +        * TODO(brendanhiggins@google.com): We should probably have some type of
> +        * variable timeout here. The only question is what that timeout value
> +        * should be.
> +        *
> +        * The intention has always been, at some point, to be able to label
> +        * tests with some type of size bucket (unit/small, integration/medium,
> +        * large/system/end-to-end, etc), where each size bucket would get a
> +        * default timeout value kind of like what Bazel does:
> +        * https://docs.bazel.build/versions/master/be/common-definitions.html#test.size
> +        * There is still some debate to be had on exactly how we do this. (For
> +        * one, we probably want to have some sort of test runner level
> +        * timeout.)
> +        *
> +        * For more background on this topic, see:
> +        * https://mike-bland.com/2011/11/01/small-medium-large.html
> +        */
> +       status = wait_for_completion_timeout(&try_completion,
> +                                            300 * MSEC_PER_SEC); /* 5 min */
> +       if (status < 0) {

wait_for_completion_timeout() doesn't return a negative value on
timeout. It returns 0. Please rename 'status' to 'time_remaining' and
test with if (!time_remaining) instead or some other suitably named
variable name indicating that the return value is the time remaining
before the timeout.

May also want to clamp this to the hung task timeout value, which is
typically less than 5 minutes. Otherwise, the hung task detector may
find the problem first before this timeout happens.

> +               kunit_err(test, "try timed out\n");
> +               try_catch->try_result = -ETIMEDOUT;
> +       }

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
