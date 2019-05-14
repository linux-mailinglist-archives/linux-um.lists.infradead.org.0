Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EF31C1FF
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q8Gzfihk73fo9FEzLNG+tri3lutplkDcugLYwwn5Njs=; b=EVsFlbPg8J4Bd+
	MD8L/cH15WUIjHq5nDrP+0KKv+Ly+3mV8IWlGmj6MC4vJmmGMyt/7odNzUe9JPw9vQhDdj4akt4Uw
	j8oRx0NpMoU+1azHbOjUnpOT+R8PLy2LTJ034wRM6D6PDDBHIDI2rI18Gd1VlzPoK36v3guE/1Rec
	HY5HMBJYaS3ClYfr15OOAzdf/po5nrtuSpLGtV7Jj0qJf4KYd1EvVX32A5zyyN+KMlv/7lVNQ/32u
	UVFClZK+1tWH0VqHLU+x4AzbKItQjzNbCwmI33pjqkT8YZvnjw3SC8VhyKf/Hb4vZo+BB5HaQ3J4Y
	CC3pMiSdwa1bbHKlyh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQE3-0004k8-1y; Tue, 14 May 2019 05:43:43 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQDz-0004j9-GY
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:43:41 +0000
Received: by mail-pg1-x549.google.com with SMTP id e16so4031074pga.4
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=CA1N44QTqLhlVaroRojZdGi6CcVwoP2KNr1A1UImFq0=;
 b=h6AZqHkX1OcXuKiWGxhO61tdk+HR2HvTKQEpCCBYcqn6plqrOohI9Okal84aTEN2gJ
 pcUal3uJknEB+RrEmMmXoyWtFQ8z/VEve2BGMzS/N7pXPIQp0h1NVAva9rDSUnGHjLEJ
 vx1VU8Uvu79S0JOwGTWgOfWHxd/ASKWGvpXSYxqiyDlRKx/kfa47HynTXrI6mghbfUkz
 ftvsf604JHZwsEPgj7aK8R+INHqcBEEkFy98bk6arBDrrsX/GZ25q4wQIXVIU1DJAHdt
 6dh5pUod4MbGUjQOr69py/QRwji6PeGn961MqFFs+Tum9tKKLYMRMp7U9XKdfLOGJDyx
 zipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=CA1N44QTqLhlVaroRojZdGi6CcVwoP2KNr1A1UImFq0=;
 b=kAau5y16GKX6rc6YjgcNMtyX/oKii7FZ/5ai/uUPAwbwJkaSq98wJZlDWCx2yhx64F
 HYtjAv4UUZIQS9QEDzidRsj/hYrHIZ7us7kXNriGV25+GMMD4HFjqtX9+S/bQBBL7mBk
 TyEfOqMWb96ntLx9RSjWu4RJ1gzn2u9Wq8NKI5jOHVqggmBR72Enuo2TDKRRW7zXOgzm
 YYKduDNgQRA0CTJUq6+YMXuGlCrf57pNwvdbJ2Sv9biYmjsDARCSTSyP+XT8AH/pwOPO
 tPC2uKYEG+6H/J4uItp7f/iGWjk/tR+U87ikcWOGv1KLLlVIXNGWD7BLblDH2XM1rw+5
 JNQw==
X-Gm-Message-State: APjAAAXP/wh5JxshOzDYxpYHGE0OH9VFNiKHxg/dj1FqB/lxorrSL9+Q
 4IuqDxuxBenp15FzCzw+NFJkdQraR8ZXA831MEaP3A==
X-Google-Smtp-Source: APXvYqyBPTv6v4eKPVDjcz6uhAI6teASmDK3xBqeYKpM9SuSjEAG+BViYVdVY5Rrq8TOB5itpc/QrUR1WPgEkoPcFI6QTA==
X-Received: by 2002:a65:550b:: with SMTP id f11mr35449216pgr.311.1557812616583; 
 Mon, 13 May 2019 22:43:36 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:33 -0700
Message-Id: <20190514054251.186196-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224339_578519_D82DFBB9 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TLDR

I mostly wanted to incorporate feedback I got over the last week and a
half.

Biggest things to look out for:

- KUnit core now outputs results in TAP14.
- Heavily reworked tools/testing/kunit/kunit.py
  - Changed how parsing works.
  - Added testing.
  - Greg, Logan, you might want to re-review this.
- Added documentation on how to use KUnit on non-UML kernels. You can
  see the docs rendered here[1].

There is still some discussion going on on the [PATCH v2 00/17] thread,
but I wanted to get some of these updates out before they got too stale
(and too difficult for me to keep track of). I hope no one minds.

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
(however, KUnit still allows you to run tests on test machines or in VMs
if you want) and does not require tests to be written in userspace
running on a host kernel. Additionally, KUnit is fast: From invocation
to completion KUnit can run several dozen tests in under a second.
Currently, the entire KUnit test suite for KUnit runs in under a second
from the initial invocation (build time excluded).

KUnit is heavily inspired by JUnit, Python's unittest.mock, and
Googletest/Googlemock for C++. KUnit provides facilities for defining
unit test cases, grouping related test cases into test suites, providing
common infrastructure for running tests, mocking, spying, and much more.

## What's so special about unit testing?

A unit test is supposed to test a single unit of code in isolation,
hence the name. There should be no dependencies outside the control of
the test; this means no external dependencies, which makes tests orders
of magnitudes faster. Likewise, since there are no external dependencies,
there are no hoops to jump through to run the tests. Additionally, this
makes unit tests deterministic: a failing unit test always indicates a
problem. Finally, because unit tests necessarily have finer granularity,
they are able to test all code paths easily solving the classic problem
of difficulty in exercising error handling code.

## Is KUnit trying to replace other testing frameworks for the kernel?

No. Most existing tests for the Linux kernel are end-to-end tests, which
have their place. A well tested system has lots of unit tests, a
reasonable number of integration tests, and some end-to-end tests. KUnit
is just trying to address the unit test space which is currently not
being addressed.

## More information on KUnit

There is a bunch of documentation near the end of this patch set that
describes how to use KUnit and best practices for writing unit tests.
For convenience I am hosting the compiled docs here[2].

Additionally for convenience, I have applied these patches to a
branch[3].
The repo may be cloned with:
git clone https://kunit.googlesource.com/linux
This patchset is on the kunit/rfc/v5.1/v3 branch.

## Changes Since Last Version

- Converted KUnit core to print test results in TAP14 format as
  suggested by Greg and Frank.
- Heavily reworked tools/testing/kunit/kunit.py
  - Changed how parsing works.
  - Added testing.
- Added documentation on how to use KUnit on non-UML kernels. You can
  see the docs rendered here[1].
- Added a new set of EXPECTs and ASSERTs for pointer comparison.
- Removed more function indirection as suggested by Logan.
- Added a new patch that adds `kunit_try_catch_throw` to objtool's
  noreturn list.
- Fixed a number of minorish issues pointed out by Shuah, Masahiro, and
  kbuild bot.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1/v3

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
