Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138B68CACC
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jfCj/WMQc5aDfQFfi4MO23HuX2rOEQB0gCPCfNVfemQ=; b=DMIcsSSqW2KZWd
	8dMREA36nhuX83G2k8Bjcw0085F9soChCFvVeZCF4dYFbDqlJsgEU4fsgEp9hnSFmLo27ai4Q59bu
	TDeKXBhn7Sqo1bSBFDscS3WFqCBZIgMmXmwjHc66zqWtloEQS0/gQlukCFEhl8sSdwVCAF0pllH0w
	IGTI6kizEHIwk23u/h2maaaH/Abdsk2ilecdQcBBA5hllV71pX02nPL9jbcMIsIwR7f/k7Rdv0ZkW
	BHSrnqyjENgS81k0qTBU2E176iAWLsGmRJ7E5h+3N97yuzMAZvRTNDx/XFl9JWmhI1wCjqFXA+vFk
	TJCUs84tfs7yL8ded4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmCj-0002ot-Qj; Wed, 14 Aug 2019 05:52:13 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmCg-0002lK-DQ
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:12 +0000
Received: by mail-pg1-x54a.google.com with SMTP id i134so30596868pgd.11
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=JIx6gT8XrMurJkYFq0Mwh3doyQoWfrR1Obdr19umRAo=;
 b=lYtLPslE++KBhps7EtMXbyUcustGXe90OzEpA99zwHxQbVzot3NR81r30SxELmpTRj
 bFTX6PGmhfSfkUB0/hnN4TiDWPb9DGLT5n61SEFnAdjshDyjj9bfjOnYsVA8+2Wxa382
 hltZppNluZLMP3S27A5ep9xYE0fIqIXqNkFfqFxv/fX4amYyXfyPeKZMuHa0KtJyXYcL
 3dfzQ9XQrdy8jFFrB3jJCdZRXVPkDPt0BxDMzHm0Rbo2i7qahJfYSiN5kDw0wJhAXIM9
 5J0ignULWuWomRnfxW/Cnhs9Nkq0yzbvKJSmYrGdmqVvm6nl9IXqxbyhcWibeLv1FLvS
 sTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=JIx6gT8XrMurJkYFq0Mwh3doyQoWfrR1Obdr19umRAo=;
 b=gH0E4XbZ2V8Jt0RjMGYaRj8sen2qYxipKjFj6LkMYbzZzJsBhUe+N+eZ4qhkypLaBE
 pXnvUPcTVkQnADeNvVcOLqo82OgY/QQjFeGe208D1L+RoLgdfg66xbz+Pm1Q/UVTaGvl
 BHc/QGl97x7pbrlZus8u3o1crxwBu6Mxx6w69g9TZ+W9+NQ/DW8/t1HnNwmEczIECB3G
 dtkcBr5e8h+D6EjmEeKx/o+7wsbG7kbq87cNuHm0KqjcR1NN+4A9j2B8Xu/WYT4/hy/k
 f1wZonnwt9JjTDNvYZQUO+U2ZC6elVyJRTvXNdvGNZr170IdRZHNJYgl6bfaj/VercRb
 rL8Q==
X-Gm-Message-State: APjAAAUZ5jCJQLc+G9o8JeWyZvglR2tD+jgi+iCEnYI2kWC57pBdCMqy
 eCf21CX4uRuzEvYrtfh9iuMUFJHJQMClaGS5IzcAgA==
X-Google-Smtp-Source: APXvYqzpu9CiuWlTANWLufkskZGUP8V49k9uzqoRz2WmUPz8UVqc7iwJcusHzog7K8pIU/rzSJgkN1EhsWWgKYr26ckb6g==
X-Received: by 2002:a63:6c4:: with SMTP id 187mr34796011pgg.401.1565761928470; 
 Tue, 13 Aug 2019 22:52:08 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:50:50 -0700
Message-Id: <20190814055108.214253-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225210_539039_FBE95927 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, Bjorn Helgaas <bhelgaas@google.com>,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This revision addresses comments from Stephen and Bjorn Helgaas. Most
changes are pretty minor stuff that doesn't affect the API in anyway.
One significant change, however, is that I added support for freeing
kunit_resource managed resources before the test case is finished via
kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
KUnit on certain configurations (like the default one for x86, whoops).

Based on Stephen's feedback on the previous change, I think we are
pretty close. I am not expecting any significant changes from here on
out.

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
This patchset is on the kunit/rfc/v5.3/v13 branch.

## Changes Since Last Version

- Added support for freeing kunit_resources (KUnit managed resources)
  via kunit_resource_destroy() as suggested by Stephen.
- Promoted WARN() after __noreturn function to BUG() in
  "[PATCH v13 09/18] kunit: test: add support for test abort" as
  suggested by Stephen.
- Dropped concept of death test since I am not actually using it yet as
  pointed out by Stephen.
- Replaced usage of warn_slowpath_fmt with WARN in kunit_do_assertion
  since warn_slowpath_fmt is not available on some build configurations,
  as pointed out by Bjorn.
- Lots of other minor changes suggested by Stephen.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.3/v13

-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
