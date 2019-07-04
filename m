Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E955F01E
	for <lists+linux-um@lfdr.de>; Thu,  4 Jul 2019 02:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dtvjvcXYe5bJQ+hXnPVHkB07oVsDYD1+8zTRiy8dspg=; b=N/PkLSfc9ZHeck
	LbfVYQRzRwQLfJ/uKyc2y+22oiv1Jk0DW56CzcJB7PYBIE06YhKXKzxPpZY2b/CZyI+3h/Q1X89Is
	mrhXGBgSMMWcRQFzJay4LOOE3PPVrx8+XDbX9AANiJKxYbEeKWAfAHHUISsPGdpdMuWuhC3vunzGY
	mlhNaomRDaQALh4ZYXPMGprzHg7Dvf+0TXZiV4wpYO2eD78RrHDWmFkw7xz0i6U3NzgIMDVOycT6o
	H1MRcH7UPCD69KQACRgktAi0cGMkq6dw8GZMJPvGOkZypXzMt9hYVsgYwJuC9xv1qv+I2eKV2Olyd
	wjuhIuSkF4Wh9aOrdIBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hipkJ-00075E-Hf; Thu, 04 Jul 2019 00:37:07 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hipkF-00074I-Oe
 for linux-um@lists.infradead.org; Thu, 04 Jul 2019 00:37:05 +0000
Received: by mail-vk1-xa49.google.com with SMTP id d14so449680vka.6
 for <linux-um@lists.infradead.org>; Wed, 03 Jul 2019 17:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=3dkcwHp7UkbBjeC+jKJgdEez1r7JnE/QFVNxh/Av3lE=;
 b=P/9Q0U57X0Mjr2pSdVR3fq5Q9Stk+yaqd+YUm9sq0ou6AVsZSt/1N/33ozuhbgY2vA
 l95M1OTPG7AMpCdkXNxZwoF74wXCpWnPckCjmlCUOfpVWb6OUe1dqoKeBMLQ2rRoWAC+
 fNHaGobDGBWH78hBlHjYyz8R5pV2r1lKhN6q853RMfM6pw8GA8VVYjvcvo3uf8gDuuir
 ENB2mZWRXg62IrhKkC86LfkNF4vHPkE6nmhUv9Xome467fLx+E9J0pgZrqEdzyy++0mz
 884zs7eBSkOyiHbrPJJuzc+Z2DaP9Fz7PcxSltbsQgqsrKy/bR2ai8bDNYsLrfqN7e+f
 Qiwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=3dkcwHp7UkbBjeC+jKJgdEez1r7JnE/QFVNxh/Av3lE=;
 b=iUts0XGOsFCZZZ9jDxzXy00UT6aSjhA9oPE5TPv2YhejbvqL6dzUNoT4WnOZymdMhK
 +40rmq2HV8Zxjs5OGxcYi65BOY+X4nfDKZ65TF7N6ltcoVwQsfD2uwXd2x0yg/GQGnSP
 CwF14SZFQMYXMGCrkp9tCsKQLH5iUimUKl68L73eZwq/K7O7uWGH1x7RuirLNV+wLnW+
 mnnS5UaMgFbTYwxP/0ohh3uBGD3xUjKQFuT5XUfFbaFepniqsqg8s0zORKwNZB619Jao
 s7o0lVwXP2LMDWyBcx7nwh+ZvFOK08G6U0DlNwPaRwq59a3sf/zMDETYe6NhoFe4qWq+
 fiHA==
X-Gm-Message-State: APjAAAUJq4PL10X6uPqMCAObTkZq65g+vASFcuoB7ZKYgd0+2+9XgyBo
 MF3rMtqTA0PWpiZLGkS93PTHiUtY+D5nejjYTmarPQ==
X-Google-Smtp-Source: APXvYqxifi+9P2uuB2xECPxDjII80enpIo8mSlNTAxiC8KmAvRxtyVWjtDGXaCnqTdPCo5Xn7dOc4Z0daGhonP28ve9Qzg==
X-Received: by 2002:a1f:5945:: with SMTP id n66mr6468396vkb.58.1562200621022; 
 Wed, 03 Jul 2019 17:37:01 -0700 (PDT)
Date: Wed,  3 Jul 2019 17:35:57 -0700
Message-Id: <20190704003615.204860-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v6 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_173703_831674_C74DEE9D 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

This is a pretty straightforward follow-up to Stephen and Luis' comments
on PATCH v5: There is nothing that really changes any functionality or
usage with the minor exception that I renamed `struct kunit_module` to
`struct kunit_suite`. Nevertheless, a good deal of clean ups and fixes.
See "Changes Since Last Version" section below.

As for our current status, right now we got Reviewed-bys on all patches
except:

- [PATCH v6 08/18] objtool: add kunit_try_catch_throw to the noreturn
  list

However, it would probably be good to get reviews/acks from the
subsystem maintainers on:

- [PATCH v6 06/18] kbuild: enable building KUnit
- [PATCH v6 08/18] objtool: add kunit_try_catch_throw to the noreturn
  list
- [PATCH v6 15/18] Documentation: kunit: add documentation for KUnit
- [PATCH v6 17/18] kernel/sysctl-test: Add null pointer test for
  sysctl.c:proc_dointvec()

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
This patchset is on the kunit/rfc/v5.2-rc7/v6 branch.

## Changes Since Last Version

Aside from renaming `struct kunit_module` to `struct kunit_suite`, there
isn't really anything in here that changes any functionality:

- Rebased on v5.2-rc7
- Got rid of spinlocks.
  - Now update success field using WRITE_ONCE. - Suggested by Stephen
  - Other instances replaced by mutex. - Suggested by Stephen and Luis
- Renamed `struct kunit_module` to `struct kunit_suite`. - Inspired by
  Luis.
- Fixed a broken example of how to use kunit_tool. - Pointed out by Ted
- Added descriptions to unit tests. - Suggested by Luis
- Labeled unit tests which tested the API. - Suggested by Luis
- Made a number of minor cleanups. - Suggested by Luis and Stephen.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2-rc7/v6

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
