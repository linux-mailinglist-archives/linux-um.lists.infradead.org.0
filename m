Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5006B39C
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rU8vx4dGMnHpllO72ZkWARxd+RaB/v8h3U2VxAzKhKc=; b=bktx3ReBP0vY04
	PzVvagwIxQA4Jg1Ouyt0KJcsKYmS+6wVCUbWpXg7bAikZAVrPbTPjVB08mzbEQqRliEmqa410gOeP
	e4XtCdHo6AsoF2jHrwenbGfZqzQ7C3CgIitSS4N5pwdQQNRCqyIqa74xONx+O8vjRSLv2Byq/qYK4
	bxVz1OVjgWuTf0Xvjo4lEQIkFckAXLuG+9GLOiv2lEXyOujX0fRz9Y1F1AkC+xes39hL6TqKPc8Nt
	WDLby6gpCuzdckxTvT3i1jDZ8ryZJrMvpRvsnydciEYk7RZN7m3uLEMSn6buFYnGgb8F+wJk09gqD
	SWf1Peo1ziCdv8ly/BBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZAk-0006Jz-RV; Wed, 17 Jul 2019 01:55:58 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZAg-0006Is-Re
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:55:56 +0000
Received: by mail-pg1-x54a.google.com with SMTP id k20so13722481pgg.15
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=g73VbK9hP8iwHcV/w0DEWc6A8T81W2obxVf/JscQhPY=;
 b=Vbb6ETWdoL7/dyTwrtnSjUAJji8HmC0dbYlvBQhYL3ZtcFa53MTUkxRV21Vh+xQzRU
 gtcMrgV6CsUcmCq6PHa2QI2RapBr3kPi3qcDZTk/V+RQINbCgIAGW9XgyyKfzkIP+4A2
 Cj9ApaRpGtUkElZpxENbPQ4y/LhEkO32Y8s6YtL6EobTN8efWAzcypCT1B1B2UtD/u4i
 A3n0+WeJDp01P7yO5hdDAfarVytQtTxJ7QrOXdADRb4dC2e7V8+WsZndPYZvAMZpQ4s7
 2BclIo1VrtBu6iu7lEVSZ2YJI8piqhPI0Z2qIl5B2wcZ4ToCguieuFOeyAl4qvN2wNXh
 HDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=g73VbK9hP8iwHcV/w0DEWc6A8T81W2obxVf/JscQhPY=;
 b=sDOxeXUPgrPwWbMNCL6SDqzjaTdTGbdC9yoOjpgCOtJpovB2GRmjYbGg+rne8lHWAo
 KhjiB2SEKHxwYMMZAFZmbol/JsPA2LNRreGD6hFQHpjdYkNIKRYcrBrRvThgLmkZNP8m
 nWt7uDSUhDqQ4tSoYv9D6IzP1cll1KZxmzPgsHt+Bt9MuBiuaNtRVoJPYA4z1qqYJ14a
 TCduUp/tliNBLKp0UGYSZQ3d8wKS0oIwFUpSvSw+zzbpsF4aKFCLGHN3ClSXAYKBXkNs
 Af/dY47bmvLRIXkUwEMKG39a/NRefilAXFNlAx2xJzKteOiTF/I3IPjhkulfD4KjOyT9
 hO8w==
X-Gm-Message-State: APjAAAXlKHI3tGyTEojqsImiGK/Kei2ZOHbjFtyTBFapF93nHuD5n5I5
 F0cSs4x8ES1utBv7GdqFg7OMTaXUc77tk5EcH25kww==
X-Google-Smtp-Source: APXvYqzIJkjKQ3S+2BDLj5Fx/7Xa9wrPBuZpZW0wEdv7tjBDXndxr0psGCLPsqNbiarNlPEHuGD5doQNqhtuO1IsifVYng==
X-Received: by 2002:a63:2606:: with SMTP id m6mr37469748pgm.436.1563328552353; 
 Tue, 16 Jul 2019 18:55:52 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:25 -0700
Message-Id: <20190717015543.152251-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185554_924986_D705196C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
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

This patchset addresses comments from Stephen Boyd. No changes affect
the API, and all changes are specific to patches 02, 03, and 04;
however, there were some significant changes to how string_stream and
kunit_stream work under the hood.

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
This patchset is on the kunit/rfc/v5.2/v11 branch.

## Changes Since Last Version

- Went back to using spinlock in `struct string_stream`. Needed for so
  that it is compatible with different GFP flags to address comment from
  Stephen.
- Added string_stream_append function to string_stream API. - suggested
  by Stephen.
- Made all string fragments and other allocations internal to
  string_stream and kunit_stream managed by the KUnit resource
  management API.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2/v11

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
