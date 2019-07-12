Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8585866863
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 10:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsZlk+ZrS/UX1SHZP7J2b94qFPsYPCsTjewivAajlyg=; b=nWjTgOJCWrB1M0
	t+WQxbk94h5bHWARmpwBZA0uAMNzKwvM5ICUIJ8lB7f3WDetm9KcV9PsDTHJdP1O5cg9xDtpkR2+J
	si92TDWyAP2TFnRSktO6j/LK+p3TocPugfolpc3ahpxxf3SlBzDpHf9rvwDzU6EXSvaGICH8trFNs
	ftfYkcrnRf9QKTA1e9Hg/3VLm0lPzAaVPFDKHjTlZM3ZJ0cg/0kjeQQmIYJs9ot39qzc97+CxP+jN
	N0l9npWxs0V/Tipg3wGxf0kUkoqsweEAZwx3Kk4BIj6Qmb55DwmSeIDZPB+pKJRc8c8uEzZAVFO4i
	bh+bUdLb8dvmrBFqesnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqke-00061n-Ji; Fri, 12 Jul 2019 08:17:56 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqka-00060Q-S7
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 08:17:54 +0000
Received: by mail-pl1-x649.google.com with SMTP id s22so4809493plp.5
 for <linux-um@lists.infradead.org>; Fri, 12 Jul 2019 01:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=UvKno1DQ1En2T0BAydqL8aKwWtOHxHpLOB0ZXuFETLs=;
 b=JtlStr7snNzmz5ulMB5eP37s7rbgIx50z+AVGP2t2WlEdfRbEZO8W2XTT3bE3WZnLv
 keBpChTguji20fGG9MZtiJLfIGuGAQMR0xBWsqfAPNv7xBwu2S4omSfLGIwdCobd9HG0
 xEIx+MC/l52zarabPfgQ095HslgbhlLi4Z2VOa7yRbXGn1OMnhIjlbG9wufHRgT48Rw8
 N31KLcKdJR3xIPKj8X7rcKFfr9bJzXFefGvAJSqFErU5ciZBVgJrNxh12tyuyphu+Fd0
 ntbZjblO4lofJT/rrUQvPdmmolFfkVV45QPFi2V3CSuuX8nBjrc2V4ynCPPNIkIg5MTd
 4B0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=UvKno1DQ1En2T0BAydqL8aKwWtOHxHpLOB0ZXuFETLs=;
 b=gmESvyu1A7c3I96/URJnFBUqPg77BWjDBzR73DbD1E1w3aToDPJKR4BqRWVnmfl9fa
 HAyRB7TzUxI8cX7pSmWbWS7dF8r+jYqStbYocJefJYhzPCOWQDu81yuwKYiX/4f7YSBc
 kEKhQE5WZijYu7A40skhnmhyll2hv86YJobWFejxPQhhBn7ur0K3W3hlDLymr05iIlVx
 b70Xey4M9QXs7nINEM9kmsRdF1GvZd0FFmKTWD1gUAbUMoJO8rMNh+AT11TPX7pbHNPm
 BNF7DPezi4N0Bx1rutuW06TDK0dKVavPy6DA58/r+heb/lj/rK/EGPW3U3IjHwH5Ql/M
 ftUg==
X-Gm-Message-State: APjAAAWSTUYxhxEI9JxCa819+ZendnhbTQaekxXdH+Ke6uA19T2iQQ7N
 XvT6wYfNJYpSZ31H/5uckQXFa65kOLDH5FHOXzgqUg==
X-Google-Smtp-Source: APXvYqwxVjSSyLsmH5X5K9D5aFhrhgELvG+6tDMdeYJeUGZ3SfBpCQBrCaJmP5g1KYNhq+xNRut9+ZtuWUgQ3Ro3jfxY+Q==
X-Received: by 2002:a65:5348:: with SMTP id w8mr9232476pgr.176.1562919470178; 
 Fri, 12 Jul 2019 01:17:50 -0700 (PDT)
Date: Fri, 12 Jul 2019 01:17:26 -0700
Message-Id: <20190712081744.87097-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v9 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011752_932342_0CC7594F 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This new patch set only contains a very minor change to address a sparse
warning in the PROC SYSCTL KUnit test. Otherwise this patchset is
identical to the previous.

As I mentioned in the previous patchset, all patches now have acks and
reviews.

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
This patchset is on the kunit/rfc/v5.2/v9 branch.

## Changes Since Last Version

Like I said in the TL;DR, there is only one minor change since the
previous revision. That change only affects patch 17/18; it addresses a
sparse warning in the PROC SYSCTL unit test.

Thanks to Masahiro for applying previous patches to a branch in his
kbuild tree and running sparse and other static analysis tools against
my patches.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2/v9

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
