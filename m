Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83CA96D0D
	for <lists+linux-um@lfdr.de>; Wed, 21 Aug 2019 01:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GOeT0xUqH1xaU5O4rU4V+plpSY9Bo/uTavUKCXke764=; b=EhOsIhBkOBsgjn
	9yvWlKsN4Tiu6lw8XVspDWZPgWLKiHcxYGcM2D9Qo7ICnSZgAGEkoyBu9pmOGImJBSmsl700fROt+
	KqHm1uIzApHoWS+C8nr0BZ69py5BFiEY1wUqq42wXlTZMvOQ0JM8fjYa3yGrN1EOfyoUhRrgGNvHy
	66h8ZXXFk8HJ1RHscoC0n4gIqjPnEAq5FlittntEPl/94IjGDphT6I4ddbBSKKe0xh0wns4cqGwMR
	p1n1d4/mhyCzG4mKo02kkvYyaQx203XcsJzrPKs4c5moj2jCaZpUYia47B03ETIfZ5JSWmqIC/dup
	MYfstFYEhYm8S8wED0Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DQw-0002vE-KC; Tue, 20 Aug 2019 23:20:58 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DQt-0002tt-DF
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 23:20:57 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id l25so229772vkn.1
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 16:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=d/yRotIqofKL6ivNLT0spFL8C+ImKotVaARxIwjjT6U=;
 b=AVw2bVu+4NwiDCTMe7ctCvAsytyWg/rXh1qSlFIYcZ34MZ2W4zFBX61usfUDXKDI+U
 6mkzeHkKvCm3jsXc7ellvdvzMZ/yYq5pQYIgEJEeej2GmzjldUwbhas7sVL0y1BF9R5Q
 aeLd89FDK15SPfbl+SuyrbqBs3o2uiag6LIW+dn6YgaIXzRVfITYu/qa+PVnh2pu0la1
 EgwkQGeMgeft4WVs3y+cr1sGSCDFeF0e6bPs6wefJLtZGnA3fREotyJnv1WY33ED8Kos
 PZta1YwDrJCXLZftQ0jdf7GzZQX+uUMqkEw7bGquy+vwd3aApIC+kCto7n+WJu4zEbsw
 +lOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=d/yRotIqofKL6ivNLT0spFL8C+ImKotVaARxIwjjT6U=;
 b=EAcLAZiFmH2bsGLjouXudVAeHX/7TuUAdOHvLVr/a8uUQybIxOV03sKZvmoM+c4t8i
 7jfckhZ/feERaDphwPqA+jottHEDHWc3mgHq0Oynl3+DTqA0eYsU2Dx1AbOgDnX798wR
 zkJs20Wg2UVlLEFyxLweZKrqDPNkb4Nnv+8QaOQDlU2lFQNlBinmJlrPNCg0zVP5zY3H
 6Utnxe9e6TECm3VRIvaZ90L9PHxbUjUH+s2J/mOaQMwUUBADLEvsTXZeoQX6nuirlkWk
 ok6Lw9rbOJJRjoAc27JHAcqTStuvziMgao1pvSP5N/8xXJzckbs/aILy6YYqi1FUhVch
 Rf7A==
X-Gm-Message-State: APjAAAViojESQlHLbwTHS9VYL7TU3FzONxKuAZ16xclqgVVp13Y0QATe
 AqX0HDloSJ04VGqZQvEMeXv+mBO/5xFAlVQBs3mHRQ==
X-Google-Smtp-Source: APXvYqxI/nPId+DHfk6D741GOqFrVhdMCpaqnV+6xqhMReBcYshk3sm1bvTSqco2NKWiElhS3+UgytqYYzLVwPw9MVYXZA==
X-Received: by 2002:a67:2605:: with SMTP id m5mr19353609vsm.120.1566343253112; 
 Tue, 20 Aug 2019 16:20:53 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:20:28 -0700
Message-Id: <20190820232046.50175-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v14 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162055_472060_FC05F493 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 rostedt@goodmis.org, julia.lawall@lip6.fr, Bjorn Helgaas <bhelgaas@google.com>,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This revision addresses comments from Shuah by removing two macros that
were causing checkpatch errors. No API or major structual changes have
been made since v13.

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
This patchset is on the kunit/rfc/v5.3/v14 branch.

## Changes Since Last Version

- Removed to macros which helped define expectation and assertion
  macros; these values are now just copied and pasted. Change was made
  to fix checkpatch error, as suggested by Shuah.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.3/v14

-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
