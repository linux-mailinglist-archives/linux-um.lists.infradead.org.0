Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2539B516
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 19:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e2AX/UYSc9KarhATCNUfBnjwtYJv4kLPOzyUe9KbUyM=; b=MqjysaZlfrIMy53dzDjjDo317
	1rVhS+7EjW8Fq65ok9mxBOCz8yg0Yj96ohQQw4AT5R0IQqRjXb9MM6X0qlOch4ljyEZxFyA9ty3Ps
	te5u2c+HftdNH/yCzqqGFzFh3v5qiVSFGPL5TKf1j1qkyB8tCElCOHIwjcAjxTFluBS8R3QmzYAhe
	l7eSCQYrWJ8m/EC6vQi/Bk9mDpTJOQISPNvHQsbWr0QiyhIE8lpW399zuwG7h/E8UtfgdKcI00oJE
	RR8iGwxIbotNY+woWiucgg1WFIlVpGAVEuPgSupTOamAQidS/k1WvPOQjb7iHzQdzFUOnCC8bisnE
	/cjjJi/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1D2c-0006v6-3x; Fri, 23 Aug 2019 17:07:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1D2Y-0006uW-Hm
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 17:07:56 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4580B21019;
 Fri, 23 Aug 2019 17:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566580074;
 bh=wIgpzFnVILtaYlS98nm4i3LLzSeb+4sXzvCVPxUqUeY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=qGNpAiBEjCD5C7zWmlrtyZv7MvbwI+dt0LJfWcZn2NiU6o8vdv6P3H/QxFWB6OpOZ
 H9pEZtR0+ZQtMpoVrTUB0AQaFeIShWBiUz5FgB72eRbDTjEdB60UX99TNsLHVAyBA8
 6QEs12P89ATl0sWL2zaJIE0W2VnLLQ/hiBERtSQQ=
Subject: Re: [PATCH v14 09/18] kunit: test: add support for test abort
To: Brendan Higgins <brendanhiggins@google.com>
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-10-brendanhiggins@google.com>
 <ae6722ce-80ac-5840-5c4b-6f6726e4239d@kernel.org>
 <CAFd5g451bF2-RGZ3wT9gO1FOu+8e8yQO9evvxtQQ9Vkh4UUhVQ@mail.gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <93cad898-78c8-2bd4-f1c7-5d34fdfbb7cb@kernel.org>
Date: Fri, 23 Aug 2019 11:07:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g451bF2-RGZ3wT9gO1FOu+8e8yQO9evvxtQQ9Vkh4UUhVQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_100754_634414_6049E38B 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, shuah <shuah@kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 8/23/19 10:56 AM, Brendan Higgins wrote:
> On Fri, Aug 23, 2019 at 8:36 AM shuah <shuah@kernel.org> wrote:
>>
>> Hi Brendan,
>>
>> On 8/20/19 5:20 PM, Brendan Higgins wrote:
>>> Add support for aborting/bailing out of test cases, which is needed for
>>> implementing assertions.
>>>
>>> An assertion is like an expectation, but bails out of the test case
>>> early if the assertion is not met. The idea with assertions is that you
>>> use them to state all the preconditions for your test. Logically
>>> speaking, these are the premises of the test case, so if a premise isn't
>>> true, there is no point in continuing the test case because there are no
>>> conclusions that can be drawn without the premises. Whereas, the
>>> expectation is the thing you are trying to prove.
>>>
>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>>> ---
>>>    include/kunit/test.h      |   2 +
>>>    include/kunit/try-catch.h |  75 +++++++++++++++++++++
>>>    kunit/Makefile            |   3 +-
>>>    kunit/test.c              | 137 +++++++++++++++++++++++++++++++++-----
>>>    kunit/try-catch.c         | 118 ++++++++++++++++++++++++++++++++
>>>    5 files changed, 319 insertions(+), 16 deletions(-)
>>>    create mode 100644 include/kunit/try-catch.h
>>>    create mode 100644 kunit/try-catch.c
>>>
>>> diff --git a/include/kunit/test.h b/include/kunit/test.h
>>> index 6917b186b737a..390ce02f717b6 100644
>>> --- a/include/kunit/test.h
>>> +++ b/include/kunit/test.h
>>> @@ -10,6 +10,7 @@
>>>    #define _KUNIT_TEST_H
>>>
>>>    #include <kunit/assert.h>
>>> +#include <kunit/try-catch.h>
>>>    #include <linux/kernel.h>
>>>    #include <linux/slab.h>
>>>    #include <linux/types.h>
>>> @@ -167,6 +168,7 @@ struct kunit {
>>>
>>>        /* private: internal use only. */
>>>        const char *name; /* Read only after initialization! */
>>> +     struct kunit_try_catch try_catch;
>>>        /*
>>>         * success starts as true, and may only be set to false during a test
>>>         * case; thus, it is safe to update this across multiple threads using
>>> diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
>>> new file mode 100644
>>> index 0000000000000..404f336cbdc85
>>> --- /dev/null
>>> +++ b/include/kunit/try-catch.h
>>> @@ -0,0 +1,75 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/*
>>> + * An API to allow a function, that may fail, to be executed, and recover in a
>>> + * controlled manner.
>>> + *
>>> + * Copyright (C) 2019, Google LLC.
>>> + * Author: Brendan Higgins <brendanhiggins@google.com>
>>> + */
>>> +
>>> +#ifndef _KUNIT_TRY_CATCH_H
>>> +#define _KUNIT_TRY_CATCH_H
>>> +
>>> +#include <linux/types.h>
>>> +
>>> +typedef void (*kunit_try_catch_func_t)(void *);
>>> +
>>> +struct completion;
>>> +struct kunit;
>>> +
>>> +/**
>>> + * struct kunit_try_catch - provides a generic way to run code which might fail.
>>> + * @test: The test case that is currently being executed.
>>> + * @try_completion: Completion that the control thread waits on while test runs.
>>> + * @try_result: Contains any errno obtained while running test case.
>>> + * @try: The function, the test case, to attempt to run.
>>> + * @catch: The function called if @try bails out.
>>> + * @context: used to pass user data to the try and catch functions.
>>> + *
>>> + * kunit_try_catch provides a generic, architecture independent way to execute
>>> + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
>>> + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
>>> + * is stopped at the site of invocation and @catch is called.
>>> + *
>>> + * struct kunit_try_catch provides a generic interface for the functionality
>>> + * needed to implement kunit->abort() which in turn is needed for implementing
>>> + * assertions. Assertions allow stating a precondition for a test simplifying
>>> + * how test cases are written and presented.
>>> + *
>>> + * Assertions are like expectations, except they abort (call
>>> + * kunit_try_catch_throw()) when the specified condition is not met. This is
>>> + * useful when you look at a test case as a logical statement about some piece
>>> + * of code, where assertions are the premises for the test case, and the
>>> + * conclusion is a set of predicates, rather expectations, that must all be
>>> + * true. If your premises are violated, it does not makes sense to continue.
>>> + */
>>> +struct kunit_try_catch {
>>> +     /* private: internal use only. */
>>> +     struct kunit *test;
>>> +     struct completion *try_completion;
>>> +     int try_result;
>>> +     kunit_try_catch_func_t try;
>>> +     kunit_try_catch_func_t catch;
>>> +     void *context;
>>> +};
>>> +
>>> +void kunit_try_catch_init(struct kunit_try_catch *try_catch,
>>> +                       struct kunit *test,
>>> +                       kunit_try_catch_func_t try,
>>> +                       kunit_try_catch_func_t catch);
>>> +
>>> +void kunit_try_catch_run(struct kunit_try_catch *try_catch, void *context);
>>> +
>>> +void __noreturn kunit_try_catch_throw(struct kunit_try_catch *try_catch);
>>> +
>>> +static inline int kunit_try_catch_get_result(struct kunit_try_catch *try_catch)
>>> +{
>>> +     return try_catch->try_result;
>>> +}
>>> +
>>> +/*
>>> + * Exposed for testing only.
>>> + */
>>> +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch);
>>> +
>>> +#endif /* _KUNIT_TRY_CATCH_H */
>>> diff --git a/kunit/Makefile b/kunit/Makefile
>>> index 4e46450bcb3a8..c9176c9c578c6 100644
>>> --- a/kunit/Makefile
>>> +++ b/kunit/Makefile
>>> @@ -1,6 +1,7 @@
>>>    obj-$(CONFIG_KUNIT) +=                      test.o \
>>>                                        string-stream.o \
>>> -                                     assert.o
>>> +                                     assert.o \
>>> +                                     try-catch.o
>>>
>>>    obj-$(CONFIG_KUNIT_TEST) +=         string-stream-test.o
>>>
>>> diff --git a/kunit/test.c b/kunit/test.c
>>> index 3cbceb34b3b36..ded9895143209 100644
>>> --- a/kunit/test.c
>>> +++ b/kunit/test.c
>>> @@ -7,7 +7,9 @@
>>>     */
>>>
>>>    #include <kunit/test.h>
>>> +#include <kunit/try-catch.h>
>>>    #include <linux/kernel.h>
>>> +#include <linux/sched/debug.h>
>>>
>>>    static void kunit_set_failure(struct kunit *test)
>>>    {
>>> @@ -162,6 +164,19 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
>>>        WARN_ON(string_stream_destroy(stream));
>>>    }
>>>
>>> +static void __noreturn kunit_abort(struct kunit *test)
>>> +{
>>> +     kunit_try_catch_throw(&test->try_catch); /* Does not return. */
>>> +
>>> +     /*
>>> +      * Throw could not abort from test.
>>> +      *
>>> +      * XXX: we should never reach this line! As kunit_try_catch_throw is
>>> +      * marked __noreturn.
>>> +      */
>>> +     BUG();
>>
>>
>> I recall discussion on this. What's the point in keeping thie
>> BUG() around when it doesn't even reach? It can even be a
>> WARN_ON() in that case right?
> 
> Originally I had BUG() here, and Frank (I think it was Frank, sorry it
> was a while ago) told me it should be WARN_ON(). In v12 Stephen told
> me it should be BUG(), and nobody objected so I went back to making it
> a BUG() (note I also mentioned this change on the cover letter of v13
> and still no one objected).
> 

Yeah. Sorry for the confusing advice. WARN_ON() or nothing is the right
thing here. I have been cleaning BUG() and WARN_ON() that aren't needed.

I would just delete BUG all together.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
