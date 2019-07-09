Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BD663082
	for <lists+linux-um@lfdr.de>; Tue,  9 Jul 2019 08:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQmtC+yBXdqGBd5/ytGkpwZqxUKdsoeAvcA2XrWslus=; b=kU6oVebnfrxBZG
	jDNFSCdniIwbCa8TF27KN1iu4DUf4EZr/IjCEffIW8X8gfUGZzrIgP5VoAL2DVDgWUXLhmEi1iMWW
	EDdS7JUW7tFmydEYoqrQ3KzdQljznUMimxWvKL4UbiqjdwNUBfeFaCmV060dJoAyhzGz0esAjLiv8
	XDKjDYX568E2TL895WSHOgTGjQG7dEigXTN73nL8O+4EsTu8cqsxZEmQRIbko0GUdWfTRgbHUGs/2
	tZIZvOysH4GsAjp9cH1HRYYanoL3vKN42mV6LbwkygebTDrMFJwxOIv/YGF/WNwNXoV1Ht4E2JNtM
	Hl95IFxdokUA+5WrF2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkjgF-0008RO-Tf; Tue, 09 Jul 2019 06:32:47 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkjgC-0008QK-Lc
 for linux-um@lists.infradead.org; Tue, 09 Jul 2019 06:32:46 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id u9so11526105ybb.14
 for <linux-um@lists.infradead.org>; Mon, 08 Jul 2019 23:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=ccEO1tkkeH8HT1/mhIGVUKFl/9lAslI495fANVrqi9k=;
 b=e2JKyD27N2epGYfKgaRHgJrtns9MYtHULutiWECP0zFRJv3jgMPgvU/mgzt7m2CruN
 qyDh4tO7vEMXIwz5uC90ZiqlsOp6jxtaX8TLEstg/mB6t2n5nc3E1nANny//4ZuViIuT
 Q3ccwNzcmvwEgQPy45ljMduIsRcMZ+yyArZsE7tNVMmyeTDybeKjOVOQs49sE+w8xRgU
 l6IbFINnO1SRMJvZ1e6x0/QcQs5GYjWItk2Tf6QcJnNv92P+Yml808NgCvyRAieR+7tt
 vVHGQ59GH0W9PqLAZQXcyb1ZKKpl+uFrILyK+81ZrKs3HHFsWjaaDhu+6fgoH9G5s9wC
 jETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=ccEO1tkkeH8HT1/mhIGVUKFl/9lAslI495fANVrqi9k=;
 b=GRjFaCuhF6Sac4pNjOi/dJt9lN67b2Jb+nNjwL4HK0HBzz//b2grqvOw4l206tRHyp
 ETLhyFZ12Fi+4Lpl0KmV2duTQLmHiKQSnEiEV+dQawgQzfzJy7hL0JnVuLvEl4FkZMDW
 EEKDXd8YA2vuUpNuKp391ef9qieoUrWFyGB84W9k/g/keBn7kr0voexJbhcw3DH1xMIh
 Bz7bxYDL+HAKg3NBGbvX25eAvsW4ua4Zzin9+kFsRpmSmhBsd4zRcHQG0qwqC3qwCCOr
 8sDDLF+NV4xQhHtAnvV93I8IJrSwP3Lii8462om8kdj/CTpFER0Zlg0kaa0S3elAfKbp
 HwOA==
X-Gm-Message-State: APjAAAX9mKkfd7QnygUEOXenEBTxQHwg+Lfk8Rdk0zAx+WhOPZTD9BZi
 RVhaBReLLk1XBSH9991dBByOrMh90lbRlC2jy30VKw==
X-Google-Smtp-Source: APXvYqxTCUgwXCc9biuo/mRL1pSgsNPvKrcZOBY5oaano9+5jCyWavrpS1UTvqWVKgVXm3lya3N2nYit0+zc7OI5xI8uZg==
X-Received: by 2002:a81:710a:: with SMTP id m10mr13083743ywc.277.1562653960705; 
 Mon, 08 Jul 2019 23:32:40 -0700 (PDT)
Date: Mon,  8 Jul 2019 23:30:05 -0700
Message-Id: <20190709063023.251446-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v7 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_233244_737219_AE620FC3 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

This is a pretty straightforward follow-up to Luis' comments on PATCH
v6: There is nothing that changes any functionality or usage.

As for our current status, we only need reviews/acks on the following
patches:

- [PATCH v7 06/18] kbuild: enable building KUnit
  - Need a review or ack from Masahiro Yamada or Michal Marek
- [PATCH v7 08/18] objtool: add kunit_try_catch_throw to the noreturn
  list
  - Need a review or ack from Josh Poimboeuf or Peter Zijlstra

Other than that, I think we should be good to go.

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
This patchset is on the kunit/rfc/v5.2/v7 branch.

## Changes Since Last Version

Aside from renaming `struct kunit_module` to `struct kunit_suite`, there
isn't really anything in here that changes any functionality:

- Rebased on v5.2
- Added Iurii as a maintainer for PROC SYSCTL, as suggested by Luis.
- Removed some references to spinlock that I failed to remove in the
  previous version, as pointed out by Luis.
- Cleaned up some comments, as suggested by Luis.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2/v7

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
