Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBFEBBF78
	for <lists+linux-um@lfdr.de>; Tue, 24 Sep 2019 02:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s81aQedd8Ch2Gk6pzpKKhD2uAyNFg9nnp5+9L9DW/ZU=; b=Cea9Lfj95QG8U3
	kYJP08m9mPS78yGNR86oiOAwXrVvnwg4Vw6qIXqvPH/h7PVsna8byNzdthv7HSztkAoNzYYG7VYgm
	0Ycj3ZnHHbJe3df19m0jT/Ifs6b3kTtVYDzMOk8R5EL/69fk2xIhXdOQNhwTlrl8hwKrZAkUDAsvP
	D6Dv/MfpqSkJuu6MjZcs+ZGypaVYHK+HycSlKfHDbB5N+K4a1QOCKVO5qOwLZ8cm478mryEFKf8J7
	5IWHuHQl5reuoFhEmDBNLQEPDS/4iqXisvr81nFSzCh71Tq2YvNCuS8AcoIxqAlHU63CpKbrn4Eg0
	kFBr0ZC2jybAHgxTlszQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZ3a-00048N-4p; Tue, 24 Sep 2019 00:51:54 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZ3R-00047x-0N; Tue, 24 Sep 2019 00:51:45 +0000
Subject: Re: [PATCH v18 15/19] Documentation: kunit: add documentation for
 KUnit
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20190923090249.127984-16-brendanhiggins@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <9cd80aa2-fc8d-1fed-838b-cf4951692b6d@infradead.org>
Date: Mon, 23 Sep 2019 17:51:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923090249.127984-16-brendanhiggins@google.com>
Content-Language: en-US
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, torvalds@linux-foundation.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 9/23/19 2:02 AM, Brendan Higgins wrote:

> diff --git a/Documentation/dev-tools/kunit/usage.rst b/Documentation/dev-tools/kunit/usage.rst
> new file mode 100644
> index 000000000000..c6e69634e274
> --- /dev/null
> +++ b/Documentation/dev-tools/kunit/usage.rst
> @@ -0,0 +1,576 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===========
> +Using KUnit
> +===========
> +
> +The purpose of this document is to describe what KUnit is, how it works, how it
> +is intended to be used, and all the concepts and terminology that are needed to
> +understand it. This guide assumes a working knowledge of the Linux kernel and
> +some basic knowledge of testing.
> +
> +For a high level introduction to KUnit, including setting up KUnit for your
> +project, see :doc:`start`.
> +
> +Organization of this document
> +=============================
> +
> +This document is organized into two main sections: Testing and Isolating
> +Behavior. The first covers what a unit test is and how to use KUnit to write

                              what unit tests are
would agree with the following "them."

> +them. The second covers how to use KUnit to isolate code and make it possible
> +to unit test code that was otherwise un-unit-testable.
> +
> +Testing
> +=======
> +

[snip]


> +
> +Test Suites
> +~~~~~~~~~~~
> +
> +Now obviously one unit test isn't very helpful; the power comes from having
> +many test cases covering all of your behaviors. Consequently it is common to

                   covering all of a unit's behaviors.

> +have many *similar* tests; in order to reduce duplication in these closely
> +related tests most unit testing frameworks provide the concept of a *test
> +suite*, in KUnit we call it a *test suite*; all it is is just a collection of

                                             . This is just a collection of

> +test cases for a unit of code with a set up function that gets invoked before
> +every test cases and then a tear down function that gets invoked after every

   every test case

> +test case completes.
> +
> +Example:
> +
> +.. code-block:: c
> +
> +	static struct kunit_case example_test_cases[] = {
> +		KUNIT_CASE(example_test_foo),
> +		KUNIT_CASE(example_test_bar),
> +		KUNIT_CASE(example_test_baz),
> +		{}
> +	};
> +
> +	static struct kunit_suite example_test_suite = {
> +		.name = "example",
> +		.init = example_test_init,
> +		.exit = example_test_exit,
> +		.test_cases = example_test_cases,
> +	};
> +	kunit_test_suite(example_test_suite);
> +
> +In the above example the test suite, ``example_test_suite``, would run the test
> +cases ``example_test_foo``, ``example_test_bar``, and ``example_test_baz``,
> +each would have ``example_test_init`` called immediately before it and would
> +have ``example_test_exit`` called immediately after it.
> +``kunit_test_suite(example_test_suite)`` registers the test suite with the
> +KUnit test framework.
> +
> +.. note::
> +   A test case will only be run if it is associated with a test suite.
> +
> +For a more information on these types of things see the :doc:`api/test`.

   For more

> +
> +Isolating Behavior
> +==================
> +

[snip]

> +
> +.. _kunit-on-non-uml:
> +
> +KUnit on non-UML architectures
> +==============================
> +
> +By default KUnit uses UML as a way to provide dependencies for code under test.
> +Under most circumstances KUnit's usage of UML should be treated as an
> +implementation detail of how KUnit works under the hood. Nevertheless, there
> +are instances where being able to run architecture specific code, or test

                           I would drop the comma above.

> +against real hardware is desirable. For these reasons KUnit supports running on
> +other architectures.
> +
> +Running existing KUnit tests on non-UML architectures
> +-----------------------------------------------------
> +

[snip]

> +Writing new tests for other architectures
> +-----------------------------------------
> +
> +The first thing you must do is ask yourself whether it is necessary to write a
> +KUnit test for a specific architecture, and then whether it is necessary to
> +write that test for a particular piece of hardware. In general, writing a test
> +that depends on having access to a particular piece of hardware or software (not
> +included in the Linux source repo) should be avoided at all costs.
> +
> +Even if you only ever plan on running your KUnit test on your hardware
> +configuration, other people may want to run your tests and may not have access
> +to your hardware. If you write your test to run on UML, then anyone can run your
> +tests without knowing anything about your particular setup, and you can still
> +run your tests on your hardware setup just by compiling for your architecture.
> +
> +.. important::
> +   Always prefer tests that run on UML to tests that only run under a particular
> +   architecture, and always prefer tests that run under QEMU or another easy
> +   (and monitarily free) to obtain software environment to a specific piece of

           monetarily

> +   hardware.
> +
> +Nevertheless, there are still valid reasons to write an architecture or hardware
> +specific test: for example, you might want to test some code that really belongs
> +in ``arch/some-arch/*``. Even so, try your best to write the test so that it
> +does not depend on physical hardware: if some of your test cases don't need the
> +hardware, only require the hardware for tests that actually need it.
> +
> +Now that you have narrowed down exactly what bits are hardware specific, the
> +actual procedure for writing and running the tests is pretty much the same as
> +writing normal KUnit tests. One special caveat is that you have to reset
> +hardware state in between test cases; if this is not possible, you may only be
> +able to run one test case per invocation.
> +
> +.. TODO(brendanhiggins@google.com): Add an actual example of an architecture
> +   dependent KUnit test.


-- 
~Randy

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
