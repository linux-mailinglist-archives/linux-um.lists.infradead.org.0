Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727258AE4F
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 06:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsImFLP6SbWRGoP2d4uI+F+QjBYacImVof47qbqzAA8=; b=qc8x+TpRA13tht
	Dl++3SP27KwY7Rlpm+cMZw/WMxFNxthUqx29wOi/tR8UeBCHRhinwyHk1lzcG2TBknb0pBrWZw0iV
	ml/3nt2yimep891fGdpwB6Snlzsa4H0PfjT/1xyg1KFRfyvsHoQEB0Twe3Dg7b7RwlahmWyOAzrsr
	hptrA38UDlA4N6FYeGmN6pakKF3MWqTX/UVZulApj7Rx3lmbOieZFXok72WyS8immaesqkMYOr5GO
	7OykmL9aLkXJXFF9P1Fnd9fA4ebwHT0pAbYyZKYeHYoqPo2eJcslu1WNcXtb8veMpkxhdA2RxoS10
	XVUt4RoUaCNf7ixW5a+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOsx-0004Zr-NE; Tue, 13 Aug 2019 04:58:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOst-0004YE-O9
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 04:58:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so40259520pgg.8
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 21:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pnlRVMZ6iBpok/GjnJkn72r4BcAF4d5i1NWIdoC0gEw=;
 b=HEBhcLI2cmYqalzmwc8p8SKF7/QKcHJcZWsVRx476cFR2iJ5vru/S4OAzuW9s4VrLm
 YIiYJsXwQWmJRntKEuAAyHxEMtPcYvuWYnyVPjATY6icVzST74H1uKgx8MUj36rgbUXD
 FxB2GQlpKoCAdZJ2kvOSiHADHwimzVESaiwSBZA6Zos+TeSgThEpX+5WQ5a00t1bUaKR
 UUQdUwte+I/Rx+7ZiqS/In0N/YZMD/YFlPaiooDkiQw4h1NI4O0Rfak6fg6SdDeJvOli
 hcwamw3eZk0suluGPE7Ym0eI6RUgdtvmO/Gq5QGde6OMge0QiljKbdFRY31LL6Ckthbk
 NeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pnlRVMZ6iBpok/GjnJkn72r4BcAF4d5i1NWIdoC0gEw=;
 b=bHJKzr7uio6mPVhuVRghaQnqM2bwSI9bsA7xOK3LRMQNA32fBqWWjHFBZPfrp7qSa7
 LJWyvYR3A2clLFmekSDKez7q4BnQ+ITS1KMnaqAkgfA3Xctbamya9NjlJ8TTYl1hwT99
 u/SLn5i+hk7p2hKQqEFtNkxousZe35GIZdgOZD9A9G62AXR6psa/47Y3uV4IqMbURVpI
 kmXST4u3NZhmLxAewTGi8q3hRK6imbStIiZk3bPJDpAAFjZEyBoMr5CBeZnIysz0FzJS
 PlKxUQIj5ecALZhdzXZER/MSSjS8txx0YudsL1XtVolnXQA/nKaWVllKM1uLV055+6fp
 LaeQ==
X-Gm-Message-State: APjAAAW1COmBbo7LY4Z8L3deRZJPGHwLKl3ATvgPo1WmZU+9Dg08VsxT
 ljlxuE7B1jvZdzg3zNIyizf5MGBJ+D9VR5D7ihkojQ==
X-Google-Smtp-Source: APXvYqyYk3iJwgACC/RwhNoQ/JRm4zpcx9SpPW6Ae5CrxLe0F3tu0KHndIY4UocPJxMF138nGk7lxKz7SifCIjcj6bU=
X-Received: by 2002:aa7:81ca:: with SMTP id c10mr4022293pfn.185.1565672286851; 
 Mon, 12 Aug 2019 21:58:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-10-brendanhiggins@google.com>
 <20190813042159.46814206C2@mail.kernel.org>
In-Reply-To: <20190813042159.46814206C2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 21:57:55 -0700
Message-ID: <CAFd5g44XyQi-oprPcdgx-EPboQYaHY6Ocz8Te6NX2SxV=mVhQA@mail.gmail.com>
Subject: Re: [PATCH v12 09/18] kunit: test: add support for test abort
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_215811_798152_65BEF5C6 
X-CRM114-Status: GOOD (  35.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 9:22 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 11:24:12)
> > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > index 2625bcfeb19ac..93381f841e09f 100644
> > --- a/include/kunit/test.h
> > +++ b/include/kunit/test.h
> > @@ -13,6 +13,7 @@
> >  #include <linux/types.h>
> >  #include <linux/slab.h>
> >  #include <kunit/assert.h>
> > +#include <kunit/try-catch.h>
> >
> >  struct kunit_resource;
> >
> > @@ -167,6 +168,7 @@ struct kunit {
> >
> >         /* private: internal use only. */
> >         const char *name; /* Read only after initialization! */
> > +       struct kunit_try_catch try_catch;
> >         /*
> >          * success starts as true, and may only be set to false during a test
> >          * case; thus, it is safe to update this across multiple threads using
> > @@ -176,6 +178,11 @@ struct kunit {
> >          */
> >         bool success; /* Read only after test_case finishes! */
> >         spinlock_t lock; /* Gaurds all mutable test state. */
> > +       /*
> > +        * death_test may be both set and unset from multiple threads in a test
> > +        * case.
> > +        */
> > +       bool death_test; /* Protected by lock. */
> >         /*
> >          * Because resources is a list that may be updated multiple times (with
> >          * new resources) from any thread associated with a test case, we must
> > @@ -184,6 +191,13 @@ struct kunit {
> >         struct list_head resources; /* Protected by lock. */
> >  };
> >
> > +static inline void kunit_set_death_test(struct kunit *test, bool death_test)
> > +{
> > +       spin_lock(&test->lock);
> > +       test->death_test = death_test;
> > +       spin_unlock(&test->lock);
> > +}
>
> These getters and setters are using spinlocks again. It doesn't make any
> sense. It probably needs a rework like was done for the other bool
> member, success.

No, this is intentional. death_test can transition from false to true
and then back to false within the same test. Maybe that deserves a
comment?

> > +
> >  void kunit_init_test(struct kunit *test, const char *name);
> >
> >  int kunit_run_tests(struct kunit_suite *suite);
> > diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
> > new file mode 100644
> > index 0000000000000..8a414a9af0b64
> > --- /dev/null
> > +++ b/include/kunit/try-catch.h
> > @@ -0,0 +1,69 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * An API to allow a function, that may fail, to be executed, and recover in a
> > + * controlled manner.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#ifndef _KUNIT_TRY_CATCH_H
> > +#define _KUNIT_TRY_CATCH_H
> > +
> > +#include <linux/types.h>
> > +
> > +typedef void (*kunit_try_catch_func_t)(void *);
> > +
> > +struct kunit;
>
> Forward declare struct completion?

Sure. Will do.

> > +
> > +/*
> > + * struct kunit_try_catch - provides a generic way to run code which might fail.
> > + * @context: used to pass user data to the try and catch functions.
> > + *
> > + * kunit_try_catch provides a generic, architecture independent way to execute
> > + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
> > + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
> > + * is stopped at the site of invocation and @catch is catch is called.
> > + *
> > + * struct kunit_try_catch provides a generic interface for the functionality
> > + * needed to implement kunit->abort() which in turn is needed for implementing
> > + * assertions. Assertions allow stating a precondition for a test simplifying
> > + * how test cases are written and presented.
> > + *
> > + * Assertions are like expectations, except they abort (call
> > + * kunit_try_catch_throw()) when the specified condition is not met. This is
> > + * useful when you look at a test case as a logical statement about some piece
> > + * of code, where assertions are the premises for the test case, and the
> > + * conclusion is a set of predicates, rather expectations, that must all be
> > + * true. If your premises are violated, it does not makes sense to continue.
> > + */
> > +struct kunit_try_catch {
> > +       /* private: internal use only. */
> > +       struct kunit *test;
> > +       struct completion *try_completion;
> > +       int try_result;
> > +       kunit_try_catch_func_t try;
> > +       kunit_try_catch_func_t catch;
>
> Can these other variables be documented in the kernel doc? And should
> context be marked as 'public'?

Sure, I can document them.

But I don't think context should be public; it should only be accessed
by kunit_try_catch_* functions. context should only be populated by
*_init, and will be passed into *try and *catch when they are called
internally.

> > +       void *context;
> > +};
> > +
> > +void kunit_try_catch_init(struct kunit_try_catch *try_catch,
> > +                         struct kunit *test,
> > +                         kunit_try_catch_func_t try,
> > +                         kunit_try_catch_func_t catch);
> > +
> > +void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context);
> > +
> > +void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch);
> > +
> > +static inline int kunit_try_catch_get_result(struct kunit_try_catch *try_catch)
> > +{
> > +       return try_catch->try_result;
> > +}
> > +
> > +/*
> > + * Exposed for testing only.
>
> Ugh that's sad. I hope we don't expose more functions just for testing
> in other cases.

I don't think I am in any other cases in this patchset. I agree that
it is generally bad to expose a private function for testing purposes,
but I didn't see a better way here.

> > + */
> > +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch);
> > +
> > +#endif /* _KUNIT_TRY_CATCH_H */
> > diff --git a/kunit/test.c b/kunit/test.c
> > index e5080a2c6b29c..995cb53fe4ee9 100644
> > --- a/kunit/test.c
> > +++ b/kunit/test.c
> > @@ -7,13 +7,26 @@
> >   */
> >
> >  #include <linux/kernel.h>
> > +#include <linux/sched/debug.h>
> >  #include <kunit/test.h>
> > +#include <kunit/try-catch.h>
> >
> >  static void kunit_set_failure(struct kunit *test)
> >  {
> >         WRITE_ONCE(test->success, false);
> >  }
> >
> > +static bool kunit_get_death_test(struct kunit *test)
> > +{
> > +       bool death_test;
> > +
> > +       spin_lock(&test->lock);
> > +       death_test = test->death_test;
> > +       spin_unlock(&test->lock);
> > +
> > +       return death_test;
> > +}
> > +
> >  static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
> >  {
> >         return vprintk_emit(0, level, NULL, 0, fmt, args);
> > @@ -158,6 +171,21 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
> >         kunit_print_string_stream(test, stream);
> >  }
> >
> > +void __noreturn kunit_abort(struct kunit *test)
> > +{
> > +       kunit_set_death_test(test, true);
> > +
> > +       kunit_try_catch_throw(&test->try_catch);
> > +
> > +       /*
> > +        * Throw could not abort from test.
> > +        *
> > +        * XXX: we should never reach this line! As kunit_try_catch_throw is
> > +        * marked __noreturn.
> > +        */
> > +       WARN_ONCE(true, "Throw could not abort from test!\n");
>
> Should this just be a BUG_ON? It's supposedly impossible.

It should be impossible; it will only reach this line if there is a
bug in kunit_try_catch_throw. The reason I didn't use BUG_ON was
because I previously got yelled at for having BUG_ON in this code
path.

Nevertheless, I think BUG_ON is more correct, so if you will stand by
it, then that's what I will do.

> > +}
> > +
> >  void kunit_do_assertion(struct kunit *test,
> >                         struct kunit_assert *assert,
> >                         bool pass,
> > @@ -176,6 +204,9 @@ void kunit_do_assertion(struct kunit *test,
> >         kunit_fail(test, assert);
> >
> >         va_end(args);
> > +
> > +       if (assert->type == KUNIT_ASSERTION)
> > +               kunit_abort(test);
> >  }
> >
> >  void kunit_init_test(struct kunit *test, const char *name)
> > @@ -184,36 +215,154 @@ void kunit_init_test(struct kunit *test, const char *name)
> >         INIT_LIST_HEAD(&test->resources);
> >         test->name = name;
> >         test->success = true;
> > +       test->death_test = false;
> >  }
> >
> >  /*
> > - * Performs all logic to run a test case.
> > + * Initializes and runs test case. Does not clean up or do post validations.
> >   */
> > -static void kunit_run_case(struct kunit_suite *suite,
> > -                          struct kunit_case *test_case)
> > +static void kunit_run_case_internal(struct kunit *test,
> > +                                   struct kunit_suite *suite,
> > +                                   struct kunit_case *test_case)
> >  {
> > -       struct kunit test;
> > -
> > -       kunit_init_test(&test, test_case->name);
> > -
> >         if (suite->init) {
> >                 int ret;
> >
> > -               ret = suite->init(&test);
> > +               ret = suite->init(test);
> >                 if (ret) {
> > -                       kunit_err(&test, "failed to initialize: %d\n", ret);
> > -                       kunit_set_failure(&test);
> > -                       test_case->success = test.success;
> > +                       kunit_err(test, "failed to initialize: %d\n", ret);
> > +                       kunit_set_failure(test);
> >                         return;
> >                 }
> >         }
> >
> > -       test_case->run_case(&test);
> > +       test_case->run_case(test);
> > +}
> > +
> > +static void kunit_case_internal_cleanup(struct kunit *test)
> > +{
> > +       kunit_cleanup(test);
> > +}
> >
> > +/*
> > + * Performs post validations and cleanup after a test case was run.
> > + * XXX: Should ONLY BE CALLED AFTER kunit_run_case_internal!
> > + */
> > +static void kunit_run_case_cleanup(struct kunit *test,
> > +                                  struct kunit_suite *suite)
> > +{
> >         if (suite->exit)
> > -               suite->exit(&test);
> > +               suite->exit(test);
> > +
> > +       kunit_case_internal_cleanup(test);
> > +}
> > +
> > +/*
> > + * Handles an unexpected crash in a test case.
> > + */
> > +static void kunit_handle_test_crash(struct kunit *test,
> > +                                  struct kunit_suite *suite,
> > +                                  struct kunit_case *test_case)
> > +{
> > +       kunit_err(test, "kunit test case crashed!");
>
> Does this need a newline?

Yep, nice catch. I thought I grepped for all the instance a while ago,
but I apparently missed this one.

> > +       /*
> > +        * TODO(brendanhiggins@google.com): This prints the stack trace up
> > +        * through this frame, not up to the frame that caused the crash.
> > +        */
> > +       show_stack(NULL, NULL);
> > +
> > +       kunit_case_internal_cleanup(test);
> > +}
> > +
> > +struct kunit_try_catch_context {
> > +       struct kunit *test;
> > +       struct kunit_suite *suite;
> > +       struct kunit_case *test_case;
> > +};
> > +
> > +static void kunit_try_run_case(void *data)
> > +{
> > +       struct kunit_try_catch_context *ctx = data;
> > +       struct kunit *test = ctx->test;
> > +       struct kunit_suite *suite = ctx->suite;
> > +       struct kunit_case *test_case = ctx->test_case;
> > +
> > +       /*
> > +        * kunit_run_case_internal may encounter a fatal error; if it does,
> > +        * abort will be called, this thread will exit, and finally the parent
> > +        * thread will resume control and handle any necessary clean up.
> > +        */
> > +       kunit_run_case_internal(test, suite, test_case);
> > +       /* This line may never be reached. */
> > +       kunit_run_case_cleanup(test, suite);
> > +}
> > +
> > +static void kunit_catch_run_case(void *data)
> > +{
> > +       struct kunit_try_catch_context *ctx = data;
> > +       struct kunit *test = ctx->test;
> > +       struct kunit_suite *suite = ctx->suite;
> > +       struct kunit_case *test_case = ctx->test_case;
> > +       int try_exit_code = kunit_try_catch_get_result(&test->try_catch);
> > +
> > +       if (try_exit_code) {
> > +               kunit_set_failure(test);
> > +               /*
> > +                * Test case could not finish, we have no idea what state it is
> > +                * in, so don't do clean up.
> > +                */
> > +               if (try_exit_code == -ETIMEDOUT)
> > +                       kunit_err(test, "test case timed out\n");
> > +               /*
> > +                * Unknown internal error occurred preventing test case from
> > +                * running, so there is nothing to clean up.
> > +                */
> > +               else
> > +                       kunit_err(test, "internal error occurred preventing test case from running: %d\n",
> > +                                 try_exit_code);
>
> Nitpick: I would add braces here because you make the if statement into
> multi-line arms for each case.

Will do. I think it looks better with braces anyway.

> > +               return;
> > +       }
> > +
> > +       if (kunit_get_death_test(test)) {
> > +               /*
> > +                * EXPECTED DEATH: kunit_run_case_internal encountered
> > +                * anticipated fatal error. Everything should be in a safe
> > +                * state.
> > +                */
> > +               kunit_run_case_cleanup(test, suite);
> > +       } else {
> > +               /*
> > +                * UNEXPECTED DEATH: kunit_run_case_internal encountered an
> > +                * unanticipated fatal error. We have no idea what the state of
> > +                * the test case is in.
> > +                */
> > +               kunit_handle_test_crash(test, suite, test_case);
> > +               kunit_set_failure(test);
>
> Like was done here.

Sorry, like what?

> > +       }
> > +}
> > +
> > +/*
> > + * Performs all logic to run a test case. It also catches most errors that
> > + * occurs in a test case and reports them as failures.
>
> s/occurs/occur/

Damn, I should go over all these with spell check. Will fix, thanks!

> > + */
> > +static void kunit_run_case_catch_errors(struct kunit_suite *suite,
> [...]
> > diff --git a/kunit/try-catch.c b/kunit/try-catch.c
> > new file mode 100644
> > index 0000000000000..de580f074387b
> > --- /dev/null
> > +++ b/kunit/try-catch.c
> > @@ -0,0 +1,95 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * An API to allow a function, that may fail, to be executed, and recover in a
> > + * controlled manner.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <kunit/try-catch.h>
> > +#include <kunit/test.h>
> > +#include <linux/completion.h>
> > +#include <linux/kthread.h>
> > +
> > +void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch)
> > +{
> > +       try_catch->try_result = -EFAULT;
> > +       complete_and_exit(try_catch->try_completion, -EFAULT);
> > +}
> > +
> > +static int kunit_generic_run_threadfn_adapter(void *data)
> > +{
> > +       struct kunit_try_catch *try_catch = data;
> > +
> > +       try_catch->try(try_catch->context);
> > +
> > +       complete_and_exit(try_catch->try_completion, 0);
> > +}
> > +
> > +void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context)
> > +{
> > +       DECLARE_COMPLETION_ONSTACK(try_completion);
> > +       struct kunit *test = try_catch->test;
> > +       struct task_struct *task_struct;
> > +       int exit_code, status;
> > +
> > +       try_catch->context = context;
> > +       try_catch->try_completion = &try_completion;
> > +       try_catch->try_result = 0;
> > +       task_struct = kthread_run(kunit_generic_run_threadfn_adapter,
> > +                                 try_catch,
> > +                                 "kunit_try_catch_thread");
> > +       if (IS_ERR(task_struct)) {
> > +               try_catch->catch(try_catch->context);
> > +               return;
> > +       }
> > +
> > +       /*
> > +        * TODO(brendanhiggins@google.com): We should probably have some type of
> > +        * variable timeout here. The only question is what that timeout value
> > +        * should be.
> > +        *
> > +        * The intention has always been, at some point, to be able to label
> > +        * tests with some type of size bucket (unit/small, integration/medium,
> > +        * large/system/end-to-end, etc), where each size bucket would get a
> > +        * default timeout value kind of like what Bazel does:
> > +        * https://docs.bazel.build/versions/master/be/common-definitions.html#test.size
> > +        * There is still some debate to be had on exactly how we do this. (For
> > +        * one, we probably want to have some sort of test runner level
> > +        * timeout.)
> > +        *
> > +        * For more background on this topic, see:
> > +        * https://mike-bland.com/2011/11/01/small-medium-large.html
> > +        */
> > +       status = wait_for_completion_timeout(&try_completion,
> > +                                            300 * MSEC_PER_SEC); /* 5 min */
> > +       if (status < 0) {
>
> wait_for_completion_timeout() doesn't return a negative value on
> timeout. It returns 0. Please rename 'status' to 'time_remaining' and
> test with if (!time_remaining) instead or some other suitably named
> variable name indicating that the return value is the time remaining
> before the timeout.

Crap, I knew that. Sorry, I wasn't thinking.

> May also want to clamp this to the hung task timeout value, which is
> typically less than 5 minutes. Otherwise, the hung task detector may
> find the problem first before this timeout happens.

Makes sense. Will fix.

> > +               kunit_err(test, "try timed out\n");
> > +               try_catch->try_result = -ETIMEDOUT;
> > +       }

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
