Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644CBB9B0D
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 02:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7EP9iuHFxWxP/94O2FTcmUQq6doY9cdf5mutXhb6nQ=; b=KD8YSHueRiSglz
	rnLEdvMOBOiwYUauH0yQ6V2MNkGI/aliPm8ByqX8nj7zYfDCfGWB0nBZXK3YicOE3Aadbi5KqajxC
	rAxv6EgQmflr2Nic9YwPgTaJRcGqIjO0kTfznzQzg9qJYGRIDhEcoIkH/cEbekqn68a/4OnQFR2Q7
	UajUscG1Unuhup1e4t/cP1+25bacaZVscVArTtUNJ6yoOX5H8fObFLJ57eaWMGkocbnUM8ntXYiIi
	YD08odx6iVL3nRTQEELCn0Wld79zkp9SCca3H8zrHiKhKSsYb69K1Mz6k21wqy8U+GzvGmuOkc6Ph
	uYaOJoM80qmwfXi4QQsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT7E-0005CJ-JT; Sat, 21 Sep 2019 00:19:08 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT7B-0005BX-1v
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 00:19:07 +0000
Received: by mail-pf1-x449.google.com with SMTP id q127so5828596pfc.17
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 17:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=b333+3kU3sNm1guAvj5VAE2cIf3fv45+vyYGNDAuAeE=;
 b=mziq7dsMElwEKnE1Z7ti79XMqDY7c/2K4hTPRgTcmt/uJm/FDpfsCztwZ+w7qdA7QX
 cWIcYpMvZF7XU/Rai8qNzBCPmLM2rxwmmvuSrQuQMwc4RCMB7u1BKdHPTgV7SOyIkILM
 /+9JuZoYISDytzawuH6Le9KixbEBfpczjFPyVSf3MN2EM7va18p+Olf0W59MQ2epAu17
 odPXBt1H/hj3PfMx0DjDYB5fZFKAYtIWifJ9zBeXZFJHtaqddA5d38/t9wwEVKr1WXUJ
 ODGP0GLzVruYjTn89kr0c6Ut7CUY4DjD5fA+eVGK4t1QxMX6OoN0Y65y4ZTEKZqdKkMB
 5i3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=b333+3kU3sNm1guAvj5VAE2cIf3fv45+vyYGNDAuAeE=;
 b=UbJOK7JOsk8yrdm6yR2ohxPg9EH7KFHIH5fGHfHLIq1hiFunZhVuW0PPeVrv8P/6Td
 3gE6ppP6Kk2ieJN/WmF+FutSmSRCrkax7gXnGHd5ll/K+Oa7aJ10p+xu78lbC49eAxke
 mWbmeluioJOe5OUbF1364QsUdYntwS2h9wOjdVluiWhBW4dplHEAQ9h6oN+/hgQ+9Gpz
 JDEFE7tNn1DYKwM/G58w/tPOkstatC6Mm0DymEJazMjNqKzAP/QfBjAq9Rke2zn4IeKS
 O07RZGKnfsBV6G1T8NKDZ1HEjlvHM07kKecAtvllwjcmNAeyxoUbjjfLJgbZr0oR8JHM
 lpRw==
X-Gm-Message-State: APjAAAWCnpVgRsVKIcUVtD+7K+EonfbkA8IjMZPhoyviYSUxqpyuGqOp
 rAPK6hP/ni8Fg6xy6FzXu0mTVIzF1lZg9fOUVjZBaw==
X-Google-Smtp-Source: APXvYqw8GLoMb6Kss29cJO37f73z8953oOCu04U9qJiShjXq1nWZykvaYDEc/VJlamPMqIFZnL5bLBONGJcNWXQKydKvZw==
X-Received: by 2002:a65:4002:: with SMTP id f2mr18079221pgp.447.1569025143686; 
 Fri, 20 Sep 2019 17:19:03 -0700 (PDT)
Date: Fri, 20 Sep 2019 17:18:36 -0700
Message-Id: <20190921001855.200947-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v17 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171905_128179_ECB09C35 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
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
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This revision addresses comments from Linus[1] and Randy[2], by moving
top level `kunit/` directory to `lib/kunit/` and likewise moves top
level Kconfig entry under lib/Kconfig.debug, so the KUnit submenu now
shows up under the "Kernel Hacking" menu.

As a consequence of this, I rewrote patch 06/18 (kbuild: enable building
KUnit), and now needs to be re-acked/reviewed.

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
(however, KUnit still allows you to run tests on test machines or in VMs
if you want[3]) and does not require tests to be written in userspace
running on a host kernel. Additionally, KUnit is fast: From invocation
to completion KUnit can run several dozen tests in about a second.
Currently, the entire KUnit test suite for KUnit runs in under a second
from the initial invocation (build time excluded).

KUnit is heavily inspired by JUnit, Python's unittest.mock, and
Googletest/Googlemock for C++. KUnit provides facilities for defining
unit test cases, grouping related test cases into test suites, providing
common infrastructure for running tests, mocking, spying, and much more.

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
This patchset is on the kunit/initial/v5.3/v17 branch.

## History since v15

### v17

 - Addressed comments on 06/19 (lib: enable building KUnit in lib/) from
   Stephen Boyd by moving KUnit submenu ahead of Runtime Testing
   submenu.

### v16

 - Addressed comments from Linus Torvalds by moving all kunit/ paths to
   lib/kunit/.
 - Addressed comments by Randy Dunlap by moving KUnit Kconfig under
   lib/Kconfig.debug so the KUnit submenu shows up under the "Kernel
   Hacking" menu.

[1] https://www.lkml.org/lkml/2019/9/20/696
[2] https://www.lkml.org/lkml/2019/9/20/738
[3] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[4] https://google.github.io/kunit-docs/third_party/kernel/docs/
[5] https://kunit.googlesource.com/linux/+/kunit/initial/v5.3/v17

---

Avinash Kondareddy (1):
  kunit: test: add tests for KUnit managed resources

Brendan Higgins (16):
  kunit: test: add KUnit test runner core
  kunit: test: add test resource management API
  kunit: test: add string_stream a std::stream like string builder
  kunit: test: add assertion printing library
  kunit: test: add the concept of expectations
  lib: enable building KUnit in lib/
  kunit: test: add initial tests
  objtool: add kunit_try_catch_throw to the noreturn list
  kunit: test: add support for test abort
  kunit: test: add tests for kunit test abort
  kunit: test: add the concept of assertions
  kunit: defconfig: add defconfigs for building KUnit tests
  Documentation: kunit: add documentation for KUnit
  MAINTAINERS: add entry for KUnit the unit testing framework
  MAINTAINERS: add proc sysctl KUnit test to PROC SYSCTL section
  kunit: fix failure to build without printk

Felix Guo (1):
  kunit: tool: add Python wrappers for running KUnit tests

Iurii Zaikin (1):
  kernel/sysctl-test: Add null pointer test for sysctl.c:proc_dointvec()

 Documentation/dev-tools/index.rst             |    1 +
 Documentation/dev-tools/kunit/api/index.rst   |   16 +
 Documentation/dev-tools/kunit/api/test.rst    |   11 +
 Documentation/dev-tools/kunit/faq.rst         |   62 +
 Documentation/dev-tools/kunit/index.rst       |   79 +
 Documentation/dev-tools/kunit/start.rst       |  180 ++
 Documentation/dev-tools/kunit/usage.rst       |  576 +++++++
 MAINTAINERS                                   |   13 +
 arch/um/configs/kunit_defconfig               |    3 +
 include/kunit/assert.h                        |  356 ++++
 include/kunit/string-stream.h                 |   51 +
 include/kunit/test.h                          | 1490 +++++++++++++++++
 include/kunit/try-catch.h                     |   75 +
 kernel/Makefile                               |    2 +
 kernel/sysctl-test.c                          |  392 +++++
 lib/Kconfig.debug                             |   13 +
 lib/Makefile                                  |    2 +
 lib/kunit/Kconfig                             |   38 +
 lib/kunit/Makefile                            |    9 +
 lib/kunit/assert.c                            |  141 ++
 lib/kunit/example-test.c                      |   88 +
 lib/kunit/string-stream-test.c                |   52 +
 lib/kunit/string-stream.c                     |  217 +++
 lib/kunit/test-test.c                         |  331 ++++
 lib/kunit/test.c                              |  478 ++++++
 lib/kunit/try-catch.c                         |  118 ++
 tools/objtool/check.c                         |    1 +
 tools/testing/kunit/.gitignore                |    3 +
 tools/testing/kunit/configs/all_tests.config  |    3 +
 tools/testing/kunit/kunit.py                  |  136 ++
 tools/testing/kunit/kunit_config.py           |   66 +
 tools/testing/kunit/kunit_kernel.py           |  149 ++
 tools/testing/kunit/kunit_parser.py           |  310 ++++
 tools/testing/kunit/kunit_tool_test.py        |  206 +++
 .../test_is_test_passed-all_passed.log        |   32 +
 .../test_data/test_is_test_passed-crash.log   |   69 +
 .../test_data/test_is_test_passed-failure.log |   36 +
 .../test_is_test_passed-no_tests_run.log      |   75 +
 .../test_output_isolated_correctly.log        |  106 ++
 .../test_data/test_read_from_file.kconfig     |   17 +
 40 files changed, 6003 insertions(+)
 create mode 100644 Documentation/dev-tools/kunit/api/index.rst
 create mode 100644 Documentation/dev-tools/kunit/api/test.rst
 create mode 100644 Documentation/dev-tools/kunit/faq.rst
 create mode 100644 Documentation/dev-tools/kunit/index.rst
 create mode 100644 Documentation/dev-tools/kunit/start.rst
 create mode 100644 Documentation/dev-tools/kunit/usage.rst
 create mode 100644 arch/um/configs/kunit_defconfig
 create mode 100644 include/kunit/assert.h
 create mode 100644 include/kunit/string-stream.h
 create mode 100644 include/kunit/test.h
 create mode 100644 include/kunit/try-catch.h
 create mode 100644 kernel/sysctl-test.c
 create mode 100644 lib/kunit/Kconfig
 create mode 100644 lib/kunit/Makefile
 create mode 100644 lib/kunit/assert.c
 create mode 100644 lib/kunit/example-test.c
 create mode 100644 lib/kunit/string-stream-test.c
 create mode 100644 lib/kunit/string-stream.c
 create mode 100644 lib/kunit/test-test.c
 create mode 100644 lib/kunit/test.c
 create mode 100644 lib/kunit/try-catch.c
 create mode 100644 tools/testing/kunit/.gitignore
 create mode 100644 tools/testing/kunit/configs/all_tests.config
 create mode 100755 tools/testing/kunit/kunit.py
 create mode 100644 tools/testing/kunit/kunit_config.py
 create mode 100644 tools/testing/kunit/kunit_kernel.py
 create mode 100644 tools/testing/kunit/kunit_parser.py
 create mode 100755 tools/testing/kunit/kunit_tool_test.py
 create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
 create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-crash.log
 create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-failure.log
 create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-no_tests_run.log
 create mode 100644 tools/testing/kunit/test_data/test_output_isolated_correctly.log
 create mode 100644 tools/testing/kunit/test_data/test_read_from_file.kconfig

-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
