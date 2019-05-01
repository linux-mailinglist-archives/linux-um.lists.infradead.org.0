Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424F410F82
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LxcQ94OmuPMEGMMocKzSKQiQR9sFRQssztYysEeKfkU=; b=upzTESo4GwP9uI
	LTKn2AxW4qMqwIg0CxLzEys/9PN0398F80DCtJz871xYcfE0kEjALNUEy8xcrgXsHPTrDCWQ3upLS
	fKYPvj7uBPGaLgskmI9/XPZ3r3L8S47389u8j/ciQ/kKg9xWx6w7ei8BKYE3LT5wxXAuMfgJYmBEm
	uYxZNYzKGNhiEvTU5ZMAqDoZOHUNKWnaJfZhInLJwgWflS20tr4fNIYr+kyk1p7Frf1P9XmPlStFG
	l/hnRGdfB3WFqUfu+F0x1deM6vOj07J839UQ8UrxKmpS/EcM1HdnQJOST4lHqrpYT7fYwIbkVgXz1
	dr2uykALAqBW/6DcHiNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyF3-0006xy-IW; Wed, 01 May 2019 23:02:21 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyEz-0006wU-Ll
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:02:19 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id v22so247333vkv.12
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=De7JrG6+3XL344zZMScSqunmKbgZceVjMJC0FL9AbxY=;
 b=qtzfVeePMbJhJqE+Yf+Kv1DhoZE9ng7nvFaWF8RJXgdCikBdWv36SI916RGwYzUukq
 xZ9iRq7CanllZWM7N5EMvSrH76h/QHHPUoEYCnmM+oUL1rzrZdP/C9kf6bQfkkH2oii8
 V97WCJiEG/EbkMT96CrHZ3ULLAQCRx09BXRHAZU8A+nmmtZPD4qqi9tcI9XX7ENyOW6Q
 pByKUepLMJrt85M4mkzTyPvyDYRRbm2pwYxrVTb6Gm/Oqz+saBFL/hmmcJKeXHcDy2/O
 6eNpA52lwMEF/MP27yaxHbVokdjjs1RKVkQH0OPZY00rCv9fgG3G1mGLf74KJ8HBy8CY
 U+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=De7JrG6+3XL344zZMScSqunmKbgZceVjMJC0FL9AbxY=;
 b=iPd7CuBX6qftVFxCckukMidsnL10GM9LBzzbyuPIxVZDgYmb5NJoN/jzQF899qNmYo
 MEnccbB35eYKvzmbWCiN5LbfOqLLj5l/XQZ7cShd74qcQeM3LmMV7qtuw7VQHWim+Fpm
 Vo647bfIQqbF7UBdoaMYoRdheqGcunT/3xQU2Mg/Z13WK00RcKauJXYDEhdog/sLPG9k
 WKlFTqa3gzzLj7dBFFhIY3iDxd1ue1LlKO7Jp6Gx/tDQzKwiD+EYhhgfboEYGkrdYT+4
 Jn96scbIYkqsMo42nWiPqtvUmCxFo0iUjcSun9alSOaiUluxxmguwPy9UAAoJ59veIeK
 Ubfg==
X-Gm-Message-State: APjAAAVTHEf8m1paer1H40H9PKvS8XlO9gxx6i/jopXBznEMfuoCwQrg
 ztlSpSUIODJyqPR9lOAZnozJsV4rjKnjGLD8oqoo2w==
X-Google-Smtp-Source: APXvYqytaGaXIlQSl5wsYvREjZvXVeqTJ4FhNvP2xNvz38NyshdL0U4pqVOMRR/ps0I6/FLnggB5b5wmfrnXtO1aUnE0lA==
X-Received: by 2002:ab0:20a1:: with SMTP id y1mr213208ual.101.1556751729917;
 Wed, 01 May 2019 16:02:09 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:09 -0700
Message-Id: <20190501230126.229218-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160217_715291_1343C4E9 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TLDR

I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
5.2.

Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
we would merge through your tree when the time came? Am I remembering
correctly?

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
and does not require tests to be written in userspace running on a host
kernel. Additionally, KUnit is fast: From invocation to completion KUnit
can run several dozen tests in under a second. Currently, the entire
KUnit test suite for KUnit runs in under a second from the initial
invocation (build time excluded).

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
For convenience I am hosting the compiled docs here:
https://google.github.io/kunit-docs/third_party/kernel/docs/
Additionally for convenience, I have applied these patches to a branch:
https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1-rc7/v1
The repo may be cloned with:
git clone https://kunit.googlesource.com/linux
This patchset is on the kunit/rfc/v5.1-rc7/v1 branch.

## Changes Since Last Version

None. I just rebased the last patchset on v5.1-rc7.

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
