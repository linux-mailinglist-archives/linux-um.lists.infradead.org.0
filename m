Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5D2172E1B
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wd7R8A2FfcqcnR/aawJO/4TAtGGNnm1El/9KoPEy3c0=; b=kOFRZ0ma7Qcrjf
	aMq71lHVrIV9sDZnWNna5IRYR4TwrzqQT8kayqJQvJRZ8QW7GmKb7bxfPWZWGm0sg85B/5sVUoggl
	X+UkMjj4LGpJklYYhxNeGb++2X805KTMfCHbCiJPa8Qo1GVOEfI8CMeLWe/gxd+liJckja7fWtjJI
	h0pTvqdoBDwKWr+jd/bGwzTXU508BsyBRfgI6dFmvQPOu3pr+lOjTDFJUF/NKrQM5G4faeGtypVuV
	MUJRVGaIYC/X2bSN7ac8KEJkA6Hna/r0Zjm1es2SOdBeHceFyRRiD+kKyxI3bHjuWHhifQoVm8kIL
	9G+jE4NLtBnBPjGqb2aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UKq-0006Ya-HG; Fri, 28 Feb 2020 01:21:00 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UKo-0006Xp-0K
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:20:59 +0000
Received: by mail-qk1-x749.google.com with SMTP id 205so1431473qkg.0
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=UxlFvDl+mYUOihiySIoFvbuwiyqTD12ewe+CWWzU0ro=;
 b=Cc0JuZTfhaIDHKNZM37wEYgZzqrbvgr4Kpn3pNKsq4dpXHFoVOP/Iy5EaG8MPe0qHM
 fqaKBpOtGroaVggoO0eF0KR+YehCClaj/Fe6Id9L8BwOyhmJPWqN9SqFrmwV1nMGBhYG
 3By6Lr+I1WyhWZyW9wmCgDsFO7Rxty9/jcF6ClbLWK9kpirrBKtj1cNL9AN8bXAhQtTl
 iBWN4ey/UqpntnkjYAfHHiMifGNshfQBWvKDt1AlkCaOsbEk/qxvpEVWm3gdz8Z47PdR
 CVNrCbYHxZXcU6vawXUsmqm9jUqvKhaV6R3SAMk2XWXdWBznnf4nrx5vUJyFAgtSyPzD
 0lLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=UxlFvDl+mYUOihiySIoFvbuwiyqTD12ewe+CWWzU0ro=;
 b=WY0804mqcxB449xBFSyDEFu7KLT3mvPNVuHgiG57wtjKuzy+iOEyPQPWfIUIMoei6C
 dC+rcY3KaYi6fKuAs+COu/aSSVOyAQNa/YHyk74XIkRLiKhNERT7KOrZ9RAROPCeC99d
 pwsDsg7kq2pdLAGGKrJ5wMQEdLNK3BpmlAPpiBLpJZGw2LGLM4h3F6WyAz65ryl/3Owa
 18ju1dZuR3bARnCrFta97j9E/o19BfDM5cQa6q/DKLbciKZpqtGLQVbbC7AwlNSD5M/I
 Tor6BvvlnvqXYQr6617No9/B+vGYG+qJ+JbBnSHPhowhCNuxRUZ7bWQv7Zhf7+n1Xa/3
 GwIg==
X-Gm-Message-State: APjAAAWP8vS52rGcFxhozlrZHsPEijS90Vw4EqRVMUtUjzUzlIqJmMEu
 qxMZgzlYTQBJnWgDQifIvesFl9gXr74hZ4S3Hx2dGg==
X-Google-Smtp-Source: APXvYqxBgrAvVVUr+eI3w9pSyj8Z2/ifloxhO80OhuCfxDoH9J4UCvD3tbTVrS4n5PAVeq88ixanzwm/QJ1cJqGp96pfXQ==
X-Received: by 2002:a05:620a:2288:: with SMTP id
 o8mr2477361qkh.368.1582852855324; 
 Thu, 27 Feb 2020 17:20:55 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:29 -0800
Message-Id: <20200228012036.15682-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 0/7] kunit: create a centralized executor to dispatch all
 KUnit tests
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172058_074926_F79027BE 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This patchset adds a centralized executor to dispatch tests rather than
relying on late_initcall to schedule each test suite separately along
with a couple of new features that depend on it.

Also, sorry for the delay in getting this new revision out. I have been
really busy for the past couple weeks.

## What am I trying to do?

Conceptually, I am trying to provide a mechanism by which test suites
can be grouped together so that they can be reasoned about collectively.
The last two of three patches in this series add features which depend
on this:

PATCH 5/7 Prints out a test plan[1] right before KUnit tests are run;
          this is valuable because it makes it possible for a test
          harness to detect whether the number of tests run matches the
          number of tests expected to be run, ensuring that no tests
          silently failed. The test plan includes a count of tests that
          will run. With the centralized executor, the tests are located
          in a single data structure and thus can be counted.

PATCH 6/7 Add a new kernel command-line option which allows the user to
          specify that the kernel poweroff, halt, or reboot after
          completing all KUnit tests; this is very handy for running
          KUnit tests on UML or a VM so that the UML/VM process exits
          cleanly immediately after running all tests without needing a
          special initramfs. The centralized executor provides a
          definitive point when all tests have completed and the
          poweroff, halt, or reboot could occur.

In addition, by dispatching tests from a single location, we can
guarantee that all KUnit tests run after late_init is complete, which
was a concern during the initial KUnit patchset review (this has not
been a problem in practice, but resolving with certainty is nevertheless
desirable).

Other use cases for this exist, but the above features should provide an
idea of the value that this could provide.

## Changes since last revision:
- On patch 7/7, I added some additional wording around the
  kunit_shutdown command line option explaining that it runs after
  built-in tests as suggested by Frank.
- On the coverletter, I improved some wording and added a missing link.
  I also specified the base-commit for the series.
- Frank asked for some changes to the documentation; however, David is
  taking care of that in a separate patch[2], so I did not make those
  changes here. There will be some additional changes necessary
  after David's patch is applied.

Alan Maguire (1):
  kunit: test: create a single centralized executor for all tests

Brendan Higgins (5):
  vmlinux.lds.h: add linker section for KUnit test suites
  arch: um: add linker section for KUnit test suites
  init: main: add KUnit to kernel init
  kunit: test: add test plan to KUnit TAP format
  Documentation: Add kunit_shutdown to kernel-parameters.txt

David Gow (1):
  kunit: Add 'kunit_shutdown' option

 .../admin-guide/kernel-parameters.txt         |  8 ++
 arch/um/include/asm/common.lds.S              |  4 +
 include/asm-generic/vmlinux.lds.h             |  8 ++
 include/kunit/test.h                          | 82 ++++++++++++-------
 init/main.c                                   |  4 +
 lib/kunit/Makefile                            |  3 +-
 lib/kunit/executor.c                          | 71 ++++++++++++++++
 lib/kunit/test.c                              | 11 ---
 tools/testing/kunit/kunit_kernel.py           |  2 +-
 tools/testing/kunit/kunit_parser.py           | 76 ++++++++++++++---
 .../test_is_test_passed-all_passed.log        |  1 +
 .../test_data/test_is_test_passed-crash.log   |  1 +
 .../test_data/test_is_test_passed-failure.log |  1 +
 13 files changed, 218 insertions(+), 54 deletions(-)
 create mode 100644 lib/kunit/executor.c


base-commit: a2f0b878c3ca531a1706cb2a8b079cea3b17bafc

[1] https://github.com/isaacs/testanything.github.io/blob/tap14/tap-version-14-specification.md#the-plan
[2] https://patchwork.kernel.org/patch/11383635/

-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
