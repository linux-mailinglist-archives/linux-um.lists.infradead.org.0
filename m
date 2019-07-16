Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593A36A51B
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 11:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdXxkv9Orp69G5vNihBq8WD9f8DGSYPSwfb9f6UBbdM=; b=hIJma2U4mIe53I
	xfdMiZZEIcu7mmd7GpnSPzUX8zgOcn98a/dHc84S6Fw7WTnmMMYksVFtqoQ+jL85gfQSIjj31i1Rf
	kDQwIt4hLTBuoT/acvOtK1lqv7mkJ82qLY04ZWRoGgSeHofIMNJrdPwqCD6tmAcWVGKgHtxbHowQx
	rYeQV7iDztQQvcUaroN5PmfuzzogjggJ4nOgl25hCgQ0jvwEq/n/69vznegCqWIQytosfzNe02mKo
	TIVSvshECj+6DYSeagEqDtO+Gn1qac5ENsisMMCAx9KnHPayN04j+3hCErz4gGb/InsDiGqAzrloA
	1eFPZ//jAhx7nSqeBZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJzO-0005cy-NK; Tue, 16 Jul 2019 09:43:14 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJzL-0005bj-87
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 09:43:12 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id d139so4213415vsc.14
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 02:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=pGdEsik+1M6jb/HINg07WI5yjzJ1jMxME0W4+2uDrMc=;
 b=eAEOpY1OH/FnKVljQodIm2gUsxEwhjJezpJfsDh5+L9jGMf2prsNq4n5iGGl8lhFcy
 3GIJYBh3yNP4rG6hnKRTyj90mHYFk0BHKtIgiGVyRA9kF/uIcjPZdmXbW8ZEQW4EZ5IH
 SXn4qORJzI5ksZoYb5wqvx7hlnvhT2sxT5FgtaGJr+HG+NjnhSJ69g9xxveqLaNBs89a
 ktkggSKnDQEOXJdhLHX3eRSCy+Xqa76qSYaf55Id0NRKz4na4h3mnh2/MOGZbY4WN6E8
 fCBR1frwWPhwmOtJudmJgXI/JrEuT7i8sdsJFK8HYCxGVYzU3slHOExwB171GfmM6DRJ
 5ZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=pGdEsik+1M6jb/HINg07WI5yjzJ1jMxME0W4+2uDrMc=;
 b=mrp4Pi2lzMm1OmwKVWsnW600X3tqsCwYKhCMJYraTFSaC/F98eQWHNNrESz8/PiQxa
 xtjn/YPuoAmc78n7QbipjJTCsPo2FUvO61X9a/v3OFYnGL6ka15bq7TbdorXX6Ju2epH
 dmJ/CPknjh/W9J3eS3iS3umlWVLT9eXocoLA2XXieF/T+p9Z+vbLc46qXCGmeJ5VIoBt
 rDdI/KSOfgTfKokD+UFKCXAsJRqGvTR1uGhe3cADzUW3VRv6Lf3jJQy39cflyG+Q7YNQ
 /vZ8e5wbDsRqHaDljCFzMUPHiGOnsVZmJvzK7YAIoU+/J0MTSfEAsppbsLwxVkET5Pp9
 MyIA==
X-Gm-Message-State: APjAAAUZUfqVyIAl2BeOdjFR+R0XqacfvON7Wd7GD91bn7AR3UyA61S0
 obvb7YsPYHe7HM++/kXJdOGa2z+7/OhMjbGoQtYgQA==
X-Google-Smtp-Source: APXvYqw3wlXdIHgaqyGI3Fkb5EoQvIKrYD7PYJZvCXqueiq4LTaNvNX4mlOb1gL0HCxxqPqMgE7qX6kvoBg4NaGW2/1i8w==
X-Received: by 2002:a9f:230c:: with SMTP id 12mr15226541uae.85.1563270188644; 
 Tue, 16 Jul 2019 02:43:08 -0700 (PDT)
Date: Tue, 16 Jul 2019 02:42:44 -0700
Message-Id: <20190716094302.180360-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v10 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_024311_317995_881A290F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, Iurii Zaikin <yzaikin@google.com>,
 jdike@addtoit.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This patchset addresses comments from Stephen Boyd. Most changes are
pretty minor, but this does fix a couple of bugs pointed out by Stephen.

I imagine that Stephen will probably have some more comments, but I
wanted to get this out for him to look at as soon as possible.

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
(however, KUnit still allows you to run tests on test machines or in VMs
if you want[1]) and does not require tests to be written in userspace
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
For convenience I am hosting the compiled docs here[2].

Additionally for convenience, I have applied these patches to a
branch[3]. The repo may be cloned with:
git clone https://kunit.googlesource.com/linux
This patchset is on the kunit/rfc/v5.2/v10 branch.

## Changes Since Last Version

- Went back to using spinlock in `struct kunit`. Needed for resource
  management API. Thanks to Stephen for this change.
- Fixed bug where an init failure may not be recorded as a failure in
  patch 01/18.
- Added append method to string_stream as suggested by Stephen.
- Mostly pretty minor changes after that, which mostly pertain to
  string_stream and kunit_stream.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2/v10

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
