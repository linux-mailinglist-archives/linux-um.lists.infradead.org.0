Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7EB8A5B2
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pdDK2A0NxTxSu4NjrKRLsjfYc/icDu5Rq4a8PdtJAfA=; b=lHnguqV8+2uZjQ
	MmBQTDAACs6pJ7RJp3xXZQBuodeuy4vWhq78qiArThvkm0YUjJMarhhkbFAPcJDisq8xvOj20noBk
	l+kJmrmsc4O2PdP8jyrt1+EzWqcodjKqu4cZCQcJvlKdAwnlFHgpSyOihNJPVPj/E3wc4ZzzHCqS6
	RpNDSEDLKxGw29v1IgCutl9PUJYIqZUmeywgiU4aJIbbq6hFrXsF3EsB9/XMjKCe6j3bvHyIiVcbR
	u5wwtzT5ftNBqevgW1euJuvjPcdNxEBgFg2El+HZ/gRnBd7lz1DA1nHS2S6akzM1nC0sz6FJNsY8A
	QIN+d0GcXsGtTM9vou1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEzv-0003Uj-C0; Mon, 12 Aug 2019 18:24:47 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxEzp-0003TQ-Su
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:24:43 +0000
Received: by mail-qt1-x849.google.com with SMTP id g33so5049194qtc.14
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=9mTljNvnyVjruVsrPNgUh53D69b4G0uh+rf/XKR7JZU=;
 b=LnitzvMrBNB6LXONfL+PvwD9Ikk/vWzKySiopcnIrxQgVqiY5+jLuNhJ9ZjzPBotY0
 Y0ntD2wGlkRwN/WqMUqePvF0CIftp/LQyZGsiE/rMamSPolRPy/gI1hWyTFrYjj8Az0S
 iO+WLGSlSP4wDNeKPbhpSACldOlKIN0vm2AbpOTth5lwOi+wd5FtPBH+6DMV4BF7XZ5u
 DCsO7wsqQZmhB7r+8C/SPCwSznOeI9ADcdzFPsEOZDZ9rWtgCf15F0uO/DhlcKvYD1vS
 ikhy6UaROEOWv19ZHJDw8MIz7i0jbDy1yYL+vXOT6UpBhCm16LBtfsDmmxW8jdqFq7iG
 CYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=9mTljNvnyVjruVsrPNgUh53D69b4G0uh+rf/XKR7JZU=;
 b=EL2lwshE3U6w40HfNVc2I8/l3BCzoFQkffu3v/24LAuF5mOpZX0cK8BKG5WJUq3QEE
 mvttl3IQypv6St8tfs3YTjCFKoSEmx2xc7vZqNyG3lb4jhQD7pSaFbOa1xXgvtHGcrGS
 2tes2n3KK1x6tUrvEkFeexPLFVf1SLqp9QuRgDxhgnG5NdUKuAkQLNfMGRCBc9y8wP55
 6Peb5H+mR1SY4wzkrU8Tj68uz5e6PYbFhE9UTXpycSuoWYT4WeqcS4cEWCn+/2993dmm
 /oy1OZn7S3t4UP5QweffCvJj4PFAtHb6O2S74Lte6tqTtlAleXKQMs4nT1hguyovwLAe
 jhWQ==
X-Gm-Message-State: APjAAAUGJpNh8Xn5vbBq/8ke31xKbzYtX7INsMoajdz9VA7cR9x9HgJI
 IAspsImsC/NN+UXg46KiptPDvlPkAT5/5rimZ3Xb4A==
X-Google-Smtp-Source: APXvYqyX/pgx0ykzeqZ6WcltGi5sso4Ln3mqeyyrGVZaHJD02/SPkwtsL4N8Ya+oDgvaUGfqUr1kIJOvfUwiqmtqKuHktw==
X-Received: by 2002:a37:4a88:: with SMTP id
 x130mr13395431qka.501.1565634278957; 
 Mon, 12 Aug 2019 11:24:38 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:03 -0700
Message-Id: <20190812182421.141150-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112442_113138_9FDB745F 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This revision removes dependence on kunit_stream in favor of
kunit_assert, as suggested by Stephen Boyd. kunit_assert provides a more
structured interface for constructing messages and allows most required
data to be stored on the stack for most expectations until it is
determined that a failure message must be produced.

As a part of introducing kunit_assert, expectations (KUNIT_EXPECT_*) and
assertions (KUNIT_ASSERT_*) have been substantially refactored.
Nevertheless, behavior should be the same.

As this revision, adds a new patch, it, [PATCH v12 04/18], needs to be
reviewed. All other patches have appropriate reviews and acks.

I also rebased the patchset on v5.3-rc3.

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
This patchset is on the kunit/rfc/v5.3/v12 branch.

## Changes Since Last Version

- Dropped patch "[PATCH v11 04/18] kunit: test: add kunit_stream a
  std::stream like logger" and replaced it with "[PATCH v12 04/18]
  kunit: test: add assertion printing library", which provides a totally
  new mechanism for constructing expectation/assertion failure messages.
- Substantially refactored expectations and assertions definitions in
  [PATCH 05/18] and [PATCH 11/18] respectively.
- Rebased patchset on v5.3-rc3.
- Fixed a minor documentation bug.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.3/v12

-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
