Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D847C4D
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l6x1Sec3cepzaoHWYvvUqlU8X/UzK7250apj5P8KeZQ=; b=b17n3VRCIH//10
	AW5RQyEXBJi7jlziTwvHPFCYnjRKMWRSKr4l4Z4voWFvz28p92/Py5jX5farnKQO6ghokZtHKvd2A
	5OxrEfN3HERSJuS5s2N2B1nYHMXVzvtzrX2ZrtPMukB3FNVmElg/KP0DFOlwNLwBTe3646ifmoi2H
	JZrU/TowuEwBtBcOLcicuAZiYNQl9U2F2XjgKlWDYyEQqiageLwbsEsY+0CeCeiEE/tQ8OR+veYrx
	Faqtlzse/9nn1u9gXWhfgLJFTzrPJF6xXxQ0i7Eu6npmXxpAK2J/tYbsK0skQovSzWD1Cc8KOVVmi
	j9wyT+EKXoS4dUNHSAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmyH-000708-Uk; Mon, 17 Jun 2019 08:26:34 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmyD-0006wU-3p
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:26:31 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id l186so4464278vke.19
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=zNrbPgNoeDBUYkvT6WCexqCkglYQYBNMsP2F15bRgzw=;
 b=F28MpQerLXJBLIWRmLuUF47CK1rSBKHh7j1mspgJvxgCYybn8PwQ2icrUPzaqHKgGS
 mIu6S0C5yyN6Zp7XldkF4xD6ADXRhtF07Z6XHvYu+FHZ9BpcPtjJxLCah/daYKhStBrL
 e/azebcPGRR+yjxTyj/+CmfyBaWB+WOK/5hBX1ABlx6ES4eRURKdAl7TuCUbbrUa+sjf
 9OQaMEJ7JNvJccGJ6qWVmFF6O+lhb+vAocDwkUu3q6gqVcuoz5bWd98JWAnSkbeD9kFd
 w/O94T1vg1eotXi2ejHuC1Kdzez1DiJfvULK/QbuJ+i3Z9G8uOEi+IwB+QVFDgZbeEoQ
 +qdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=zNrbPgNoeDBUYkvT6WCexqCkglYQYBNMsP2F15bRgzw=;
 b=T3kKE9v4IR3Tx4qEc8oUUfe65LYTxlo/Xtmx+MBsj4VG4qS8lat8sMo+GV8a6HLGuU
 KQh9luPyDvt45kqF1r9o7Q8FwCDXvI3OnEN8t6piN69+zGhOc9PyiAXFVq+IIq3RgkCV
 8vboVCk8KMKDMK/55go4eSZYnvyMkkM0XAVrWfdJKQjtcUSKRZfGqiRmYnHv20XnhQDH
 3cjAErHMQe5NmAF58Vtz5DqDqIiByAHFypB5Tf+IwSAnuEXMpAQDf27A0mPqU4rCLlle
 YtEWa5Wu0AWrYvnwvsLuPO1U8DqvvW14Tvt9ir7+bovWzPIEVk9R5MENutNf5/KdxGmK
 bNAg==
X-Gm-Message-State: APjAAAWjgScvOp1MILmOBLZ9TC1ggai1mX6UQwnOEyP4xci5bShnwVvc
 SO0QUqCKp5pF+gkroJqk+hrHdS7ZK+36u6zfe5otgA==
X-Google-Smtp-Source: APXvYqyXlDV32pvvOQl7kYiQYbcmB9/A0bZjtVL0WweMM4MzW8RHZHRv/iYANe9ZkFTYpBh8wMtYLyjkF5jTpySuFxTL7Q==
X-Received: by 2002:a67:c419:: with SMTP id c25mr46425824vsk.136.1560759986427; 
 Mon, 17 Jun 2019 01:26:26 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:25:55 -0700
Message-Id: <20190617082613.109131-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012629_192719_4BFC11C8 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

## TL;DR

A not so quick follow-up to Stephen's suggestions on PATCH v4. Nothing
that really changes any functionality or usage with the minor exception
of a couple public functions that Stephen asked me to rename.
Nevertheless, a good deal of clean up and fixes. See changes below.

As for our current status, right now we got Reviewed-bys on all patches
except:

- [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
  list

However, it would probably be good to get reviews/acks from the
subsystem maintainers on:

- [PATCH v5 06/18] kbuild: enable building KUnit
- [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
  list
- [PATCH v5 15/18] Documentation: kunit: add documentation for KUnit
- [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
  sysctl.c:proc_dointvec()
- [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
  SYSCTL section

Other than that, I think we should be good to go.

One last thing, I updated the background to include my thoughts on KUnit
vs. in kernel testing with kselftest in the background sections as
suggested by Frank in the discussion on PATCH v2.

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
(however, KUnit still allows you to run tests on test machines or in VMs
if you want[1]) and does not require tests to be written in userspace
running on a host kernel. Additionally, KUnit is fast: From invocation
to completion KUnit can run several dozen tests in under a second.
Currently, the entire KUnit test suite for KUnit runs in under a second
from the initial invocation (build time excluded).

KUnit is heavily inspired by JUnit, Python's unittest.mock, and
Googletest/Googlemock for C++. KUnit provides facilities for defining
unit test cases, grouping related test cases into test suites, providing
common infrastructure for running tests, mocking, spying, and much more.

### But wait! Doesn't kselftest support in kernel testing?!

In a previous version of this patchset Frank pointed out that kselftest
already supports writing a test that resides in the kernel using the
test module feature[2]. LWN did a really great summary on this
discussion here[3].

Kselftest has a feature that allows a test module to be loaded into a
kernel using the kselftest framework; this does allow someone to write
tests against kernel code not directly exposed to userland; however, it
does not provide much of a framework around how to structure the tests.
The kselftest test module feature just provides a header which has a
standardized way of reporting test failures, and then provides
infrastructure to load and run the tests using the kselftest test
harness.

The kselftest test module does not seem to be opinionated at all in
regards to how tests are structured, how they check for failures, how
tests are organized. Even in the method it provides for reporting
failures is pretty simple; it doesn't have any more advanced failure
reporting or logging features. Given what's there, I think it is fair to
say that it is not actually a framework, but a feature that makes it
possible for someone to do some checks in kernel space.

Furthermore, kselftest test module has very few users. I checked for all
the tests that use it using the following grep command:

grep -Hrn -e 'kselftest_module\.h'

and only got three results: lib/test_strscpy.c, lib/test_printf.c, and
lib/test_bitmap.c.

So despite kselftest test module's existence, there really is no feature
overlap between kselftest and KUnit, save one: that you can use either
to write an in-kernel test, but this is a very small feature in
comparison to everything that KUnit allows you to do. KUnit is a full
x-unit style unit testing framework, whereas kselftest looks a lot more
like an end-to-end/functional testing framework, with a feature that
makes it possible to write in-kernel tests.

### What's so special about unit testing?

A unit test is supposed to test a single unit of code in isolation,
hence the name. There should be no dependencies outside the control of
the test; this means no external dependencies, which makes tests orders
of magnitudes faster. Likewise, since there are no external dependencies,
there are no hoops to jump through to run the tests. Additionally, this
makes unit tests deterministic: a failing unit test always indicates a
problem. Finally, because unit tests necessarily have finer granularity,
they are able to test all code paths easily solving the classic problem
of difficulty in exercising error handling code.

### Is KUnit trying to replace other testing frameworks for the kernel?

No. Most existing tests for the Linux kernel are end-to-end tests, which
have their place. A well tested system has lots of unit tests, a
reasonable number of integration tests, and some end-to-end tests. KUnit
is just trying to address the unit test space which is currently not
being addressed.

### More information on KUnit

There is a bunch of documentation near the end of this patch set that
describes how to use KUnit and best practices for writing unit tests.
For convenience I am hosting the compiled docs here[4].

Additionally for convenience, I have applied these patches to a
branch[5]. The repo may be cloned with:
git clone https://kunit.googlesource.com/linux
This patchset is on the kunit/rfc/v5.2-rc4/v5 branch.

## Changes Since Last Version

Aside from a couple public function renames, there isn't really anything
in here that changes any functionality.

- Went through and fixed a couple of anti-patterns suggested by Stephen
  Boyd. Things like:
  - Dropping an else clause at the end of a function.
  - Dropping the comma on the closing sentinel, `{}`, of a list.
- Inlines a bunch of functions in the test case running logic in patch
  01/18 to make it more readable as suggested by Stephen Boyd
- Found and fixed bug in resource deallocation logic in patch 02/18. Bug
  was discovered as a result of making a change suggested by Stephen
  Boyd. This does not substantially change how any of the code works
  conceptually.
- Renamed new_string_stream() to alloc_string_stream() as suggested by
  Stephen Boyd.
- Made string-stream a KUnit managed object - based on a suggestion made
  by Stephen Boyd.
- Renamed kunit_new_stream() to alloc_kunit_stream() as suggested by
  Stephen Boyd.
- Removed the ability to set log level after allocating a kunit_stream,
  as suggested by Stephen Boyd.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://www.kernel.org/doc/html/latest/dev-tools/kselftest.html#test-module
[3] https://lwn.net/Articles/790235/
[4] https://google.github.io/kunit-docs/third_party/kernel/docs/
[5] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2-rc4/v5

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
