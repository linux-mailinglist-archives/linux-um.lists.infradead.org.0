Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569564F139
	for <lists+linux-um@lfdr.de>; Sat, 22 Jun 2019 01:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnXJgX+CrtFEEDpEYWsd34vhRfIa4SXNBHfeTAtIKPM=; b=Jpro7yPTBYOF6M
	x7hMnL5kpFB9wt7kqUYLHwtx9V/8qBQFAtK3vrYcK09nNiLcNmde8PpiTmTSJEKSovwHJry7XuP+T
	QfQA8S4Flq4sTqTstEZeFLPs7Ny9QLoCTR+eeEVSNI3rRediK1x2qG/VduvcdYX+c98CCuROQRC+X
	vfdyY0a6ZK4Q4jfc7Ja+nMEHDQ2BjcRu1s1Sq+7CqeUFLi6dywRE6R8hFrwyMzB/LkfKgTrW+bmiO
	Nf40+kNOQwYY9KRVP5ZCpd5QEHo6afMJxWuaT82R7nvowt6MEMkq2xlfbXNFMGgQ7VkxZQ9MoTytn
	//mD7DlNqCQ/F9zySUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heT4v-00075d-C7; Fri, 21 Jun 2019 23:36:21 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heT4r-00073y-C1
 for linux-um@lists.infradead.org; Fri, 21 Jun 2019 23:36:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so3697483plb.10
 for <linux-um@lists.infradead.org>; Fri, 21 Jun 2019 16:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sb/H3tilyj0EK++EBKlbF8X4xe8yU07TZHy2A/fenNk=;
 b=prCrzdXSk30AJCMv+sSZXVQB3mmI52zCpk3QjvPfrXjbWUmkr5RJeHN3VW/8BA6CtD
 Jx+Y3u0DTDnIxHWzhNwKRF3g+yYiM0VQDnlPoGbWO6x9TECCHkj/zY2eNm2q4KwUaUZ/
 PQbESGU8dN38EnQdNQDuqjJhGeXZSEH6VjPKkplzJ14HM3z2D0OLGNiCDAFsVLWwXGiA
 7ZDc9Mw1C6t7AWgJLW2hxZEi1cehAPWXMRlpbHzdzBLMCJ0hGRQpxsZh6A2Mpc3unus3
 j1UcGGXHaAcBECA9lXClfSZsiNhKKKtWOOzJkNkzfY2AZmXyeX6TxWegDfm7bsaZxvCf
 PEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sb/H3tilyj0EK++EBKlbF8X4xe8yU07TZHy2A/fenNk=;
 b=aq+Aq6mNaQ3U+W7rjRqwluQY9c03pXcEWYdJfxreNaBOu4jK71LZecFHKyeRPDSLAe
 GEl3q00qxBomGnU+L1mZIvFt0ZwFk6JisEmS1Ab+OY+LNzkak99/bQEliU7aSJYPBUyD
 vb/NLxFiMjKXs+kdYyL7VboSSfR4+Aq3MJywz65HT/UwxjEIkrpPC0aBkAMABbxVBJby
 3cMLJen9NezF8AHkCNjug9NxHdSrFETyEKbW9iVeiVmn60IwhVpS/Vt3whtRrU83t6Z0
 rtnYN+wM2N5qT6AkojvKSGqYqsFD4JadMlXhw43luxAtUss8FNcyToS6XyvXawbzrIpC
 xQSQ==
X-Gm-Message-State: APjAAAWNAwfdsMdnSlzlx7AGoFlY1oLs6NRnzE98fkv9O6fGw9g+/Niu
 /DNnr9rSXIJj8+KAQO6fxDbN2bMZXFmoBc77+OwuWQ==
X-Google-Smtp-Source: APXvYqyDOITFnbEbjASefA/StmtDVD64C4tIs4B7EpCbn+epn4j9i0oWshY43Kw2oFG+/67p1uNjgDJBcCkm/XE/zVk=
X-Received: by 2002:a17:902:2006:: with SMTP id
 n6mr78068890pla.232.1561160170725; 
 Fri, 21 Jun 2019 16:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
In-Reply-To: <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 21 Jun 2019 16:35:59 -0700
Message-ID: <CAFd5g44S-3J+g328PT42HVd=v4Us-JAzFP0MuA7f_qJ-srddsg@mail.gmail.com>
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_163617_421861_BFE6DB77 
X-CRM114-Status: GOOD (  52.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 6:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> Hi Brendan,
>
> I am only responding to this because you asked me to in the v4 thread.

Yes, I did! Thank you, I appreciate it!

> Thank you for evaluating my comments in the v4 thread and asking me to
> comment on v5

Of course, I feel as though I ought to address any and all valid comments.

> On 6/17/19 1:25 AM, Brendan Higgins wrote:
> > ## TL;DR
> >
> > A not so quick follow-up to Stephen's suggestions on PATCH v4. Nothing
> > that really changes any functionality or usage with the minor exception
> > of a couple public functions that Stephen asked me to rename.
> > Nevertheless, a good deal of clean up and fixes. See changes below.
> >
> > As for our current status, right now we got Reviewed-bys on all patches
> > except:
> >
> > - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
> >   list
> >
> > However, it would probably be good to get reviews/acks from the
> > subsystem maintainers on:
> >
> > - [PATCH v5 06/18] kbuild: enable building KUnit
> > - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
> >   list
> > - [PATCH v5 15/18] Documentation: kunit: add documentation for KUnit
> > - [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
> >   sysctl.c:proc_dointvec()
> > - [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
> >   SYSCTL section
> >
> > Other than that, I think we should be good to go.
> >
> > One last thing, I updated the background to include my thoughts on KUnit
> > vs. in kernel testing with kselftest in the background sections as
> > suggested by Frank in the discussion on PATCH v2.
> >
> > ## Background
> >
> > This patch set proposes KUnit, a lightweight unit testing and mocking
> > framework for the Linux kernel.
> >
> > Unlike Autotest and kselftest, KUnit is a true unit testing framework;
> > it does not require installing the kernel on a test machine or in a VM
> > (however, KUnit still allows you to run tests on test machines or in VMs
> > if you want[1]) and does not require tests to be written in userspace
> > running on a host kernel. Additionally, KUnit is fast: From invocation
> > to completion KUnit can run several dozen tests in under a second.
> > Currently, the entire KUnit test suite for KUnit runs in under a second
> > from the initial invocation (build time excluded).
> >
> > KUnit is heavily inspired by JUnit, Python's unittest.mock, and
> > Googletest/Googlemock for C++. KUnit provides facilities for defining
> > unit test cases, grouping related test cases into test suites, providing
> > common infrastructure for running tests, mocking, spying, and much more.
> >
>
> I looked only at this section, as was specifically requested:
>
> > ### But wait! Doesn't kselftest support in kernel testing?!
> >
> > In a previous version of this patchset Frank pointed out that kselftest
> > already supports writing a test that resides in the kernel using the
> > test module feature[2]. LWN did a really great summary on this
> > discussion here[3].
> >
> > Kselftest has a feature that allows a test module to be loaded into a
> > kernel using the kselftest framework; this does allow someone to write
> > tests against kernel code not directly exposed to userland; however, it
> > does not provide much of a framework around how to structure the tests.
> > The kselftest test module feature just provides a header which has a
> > standardized way of reporting test failures,
>
>
> > and then provides
> > infrastructure to load and run the tests using the kselftest test
> > harness.
>
> The in-kernel tests can also be invoked at boot time if they are
> configured (Kconfig) as in-kernel instead of as modules.  I did not
> check how many of the tests have tri-state configuration to allow
> this, but the few that I looked at did.
>
> >
> > The kselftest test module does not seem to be opinionated at all in
> > regards to how tests are structured, how they check for failures, how
> > tests are organized. Even in the method it provides for reporting
> > failures is pretty simple; it doesn't have any more advanced failure
> > reporting or logging features. Given what's there, I think it is fair to
> > say that it is not actually a framework, but a feature that makes it
> > possible for someone to do some checks in kernel space.
>
> I would call that description a little dismissive.  The set of in-kernel
> tests that I looked like followed a common pattern and reported results
> in a uniform manner.

I didn't mean to sound dismissive. I was only referring to what was
present in the actual header itself. There really isn't much there; it
provides a function which takes an expression, evaluates it,
increments a counter of all tests, and if false, prints out a warning;
also, it provides a module init which runs the user defined test
function called selftest(), and then prints the number of tests that
passed and the number of tests that failed; that's it. I was just
trying to make the point that it is pretty bare bones, and isn't
really much of a framework.

> >
> > Furthermore, kselftest test module has very few users. I checked for all
> > the tests that use it using the following grep command:
> >
> > grep -Hrn -e 'kselftest_module\.h'
> >
> > and only got three results: lib/test_strscpy.c, lib/test_printf.c, and
> > lib/test_bitmap.c.
>
> You missed many tests.  I listed much more than that in the v4 thread, and
> someone else also listed more in the v4 thread.

Oh, sorry, I forgot that more were listed in the thread.

> >
> > So despite kselftest test module's existence, there really is no feature
> > overlap between kselftest and KUnit, save one: that you can use either
> > to write an in-kernel test, but this is a very small feature in
> > comparison to everything that KUnit allows you to do. KUnit is a full
> > x-unit style unit testing framework, whereas kselftest looks a lot more
> > like an end-to-end/functional testing framework, with a feature that
> > makes it possible to write in-kernel tests.
>
> The description does not give enough credit to what is in kselftest.

You are right about me missing a number of the tests, but there really
is not much infrastructure in kselftest for this at all. It really
doesn't impose any structure of any kind other than that there must be
exactly one static function named selftest() that takes no arguments;
and then you use KSTM_CHECK_ZERO() to do some checks; that's it. It
doesn't have anything else in the actual kselftest module stuff.

>
> It does not matter whether KUnit provides additional things, relative
> to kselftest.  The point I was making is that there appears to be
> _some_ overlap between kselftest and KUnit, and if there is overlap
> then it is worth considering whether the overlap can be unified instead
> of duplicated.

I think I understand what you are saying, but the point I was trying
to make here is that it is so simplistic, it doesn't really
conceptually overlap since it is so limited in what structure and
features it provides. It's kind of like what Ted said previously about
how you have C so you can technically do whatever you want, but there
is nothing inherent to the kselftest test module that does any of
those things (other than what I mentioned above).

> I don't have a dog in this fight and the discussion in the v4 thread
> went way off track.  Thus I am not going to get sucked back into a
> pointless debate in this thread.

Sure, I don't want to debate the point further either (I had a hard
time understanding what the point was at the end myself).

Nevertheless, I do want to make sure that I addressed this because I
think you did indeed have a point that was worth addressing, and I
don't want to waste anyone's time in the future by not addressing it.

Nevertheless, like I said, I don't want to get too detailed on the
topic otherwise like Shuah suggests later, it might end up just
leading people to draw a comparison that doesn't need to be made, but
I also don't want to misrepresent anything. In anycase, I will follow
up on this point directly with Shuah.

> Thanks for adding this section to address the issue.

No need to thank me; that is what I felt is the correct thing to do. I
didn't address the point before and it caused you and other to spend a
lot of time debating the point.

Also, it looks like Shuah is asking me to drop the section. I will
discuss this point further there.

Thanks!

> -Frank
>
>
> >
> > ### What's so special about unit testing?
> >
> > A unit test is supposed to test a single unit of code in isolation,
> > hence the name. There should be no dependencies outside the control of
> > the test; this means no external dependencies, which makes tests orders
> > of magnitudes faster. Likewise, since there are no external dependencies,
> > there are no hoops to jump through to run the tests. Additionally, this
> > makes unit tests deterministic: a failing unit test always indicates a
> > problem. Finally, because unit tests necessarily have finer granularity,
> > they are able to test all code paths easily solving the classic problem
> > of difficulty in exercising error handling code.
> >
> > ### Is KUnit trying to replace other testing frameworks for the kernel?
> >
> > No. Most existing tests for the Linux kernel are end-to-end tests, which
> > have their place. A well tested system has lots of unit tests, a
> > reasonable number of integration tests, and some end-to-end tests. KUnit
> > is just trying to address the unit test space which is currently not
> > being addressed.
> >
> > ### More information on KUnit
> >
> > There is a bunch of documentation near the end of this patch set that
> > describes how to use KUnit and best practices for writing unit tests.
> > For convenience I am hosting the compiled docs here[4].
> >
> > Additionally for convenience, I have applied these patches to a
> > branch[5]. The repo may be cloned with:
> > git clone https://kunit.googlesource.com/linux
> > This patchset is on the kunit/rfc/v5.2-rc4/v5 branch.
> >
> > ## Changes Since Last Version
> >
> > Aside from a couple public function renames, there isn't really anything
> > in here that changes any functionality.
> >
> > - Went through and fixed a couple of anti-patterns suggested by Stephen
> >   Boyd. Things like:
> >   - Dropping an else clause at the end of a function.
> >   - Dropping the comma on the closing sentinel, `{}`, of a list.
> > - Inlines a bunch of functions in the test case running logic in patch
> >   01/18 to make it more readable as suggested by Stephen Boyd
> > - Found and fixed bug in resource deallocation logic in patch 02/18. Bug
> >   was discovered as a result of making a change suggested by Stephen
> >   Boyd. This does not substantially change how any of the code works
> >   conceptually.
> > - Renamed new_string_stream() to alloc_string_stream() as suggested by
> >   Stephen Boyd.
> > - Made string-stream a KUnit managed object - based on a suggestion made
> >   by Stephen Boyd.
> > - Renamed kunit_new_stream() to alloc_kunit_stream() as suggested by
> >   Stephen Boyd.
> > - Removed the ability to set log level after allocating a kunit_stream,
> >   as suggested by Stephen Boyd.
> >
> > [1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
> > [2] https://www.kernel.org/doc/html/latest/dev-tools/kselftest.html#test-module
> > [3] https://lwn.net/Articles/790235/
> > [4] https://google.github.io/kunit-docs/third_party/kernel/docs/
> > [5] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2-rc4/v5
> >
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
