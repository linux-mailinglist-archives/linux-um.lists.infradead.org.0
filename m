Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E080B14B036
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:20:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/KZPWiQ1IZ5jqBHSy23BjFYqyIBkRweooDzt7MezeY=; b=c3IHoUowW7Hjr/
	QW1MppobEgJPojXgK9Oi8ViyD7btMhBXKsz8vys4wkWvLscbgXHM5UB1YvWvJDK0VEntLOq4B2Rif
	oWuDQsPzFRcCuItxTpouMxrlR3jZ/VeIdxNVNq/nmgzxHktM8MmJJLGVPiu177SSr7po9E60CPOsk
	GnEMjsjIEqMOFn2e5g+RwgGNHFFDSOtreE0PDammA3zGmBlmKTorlVZFfFykaLRq4cQrCE6LZ81z6
	T+FBsu8N9gBs5b59U9heygRp5P0ytrB361x4/L+Ec0z2Rpyy88Mf8y+qET2DZK4rjMnDla5fa1ceF
	QGAq9l8/x5X7ksMLVL6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLAZ-0004o7-MK; Tue, 28 Jan 2020 07:20:19 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLAW-0004mt-RW
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:20:18 +0000
Received: by mail-pg1-x54a.google.com with SMTP id o21so8116336pgm.11
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=geIt7NTj15qXn0Pd7vHPLbcleORDZqpFgUWoIN42PEM=;
 b=QvEXh6vx1uu5+MqSyqNpYaqM0+WH+gnl/II2vETCPrUPXtj+INkYpNvum2xVSiePqx
 t2/NWdcygIobxjQwa6b1OnLgvNTscgcCzwk3Kw36NhrFIWMkNB+UMzrLz77/vEJkezdN
 15guaSPb7ab1mnGvB+LtN0ErleZfv4RBuk2g7w4q3DMM5WCH/e9o2GfN///ZX1kp+P2k
 9OtN5uEDF4qS+QZEf323rO0sMLIeC/Xw2+dPQ0tCmivr5rQ4PxRJoq7SiQXxSHuWxBpw
 M/ivCrQQeOhdoSDO7BN4ynNQSAV+TGlgrrSPB/kV0uDwtRpyqiwvZ/W28+FQICH5XA89
 pVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=geIt7NTj15qXn0Pd7vHPLbcleORDZqpFgUWoIN42PEM=;
 b=Sa309Xw3ySvbfx66dyBtWptigwQwN1EBGYFYfuhQ30k3XBrKGLmE7CcRT3YuQnX+9+
 lgURNiB1uGqBAvCJlzQTZapXyMofX5zm4v/xi1p86LeSVmjvjrxW9xoPBPh3IfBg5r3h
 LgfFiihzQTomK740U56q8Z5Yw6szUu8g5UEpO4LSRRAcrbOHKbBRABiT9vfuhNxuKDKk
 F85B649XLlRkx93WHDJPGosTT802Kt18RnMjp7Jn879kFvhl7a6OogruB7R/ZNkv5t7L
 W+WKyU9XoT7vKe/UV2v1L2YDAlHGs9pWyzKjDEwyQV5rhfZzDPIS7XgOzHS9kNAECKTF
 qc+A==
X-Gm-Message-State: APjAAAWNwFK0PYJQhcSKT3pDYEWviMG3XfX3gXxCK2T2laCUq9sW3CIf
 v8fdrjkWLqBX20oknm2sdp3Z5RoMPGC+94imN3rAMQ==
X-Google-Smtp-Source: APXvYqzxUoPIpd2+KXb0X0NAkTjM1rpz5agpoINUJNKoxT6jjwLdIPKlYS+TLWvc+a1bwy5Pu70qMjsB/y7aNJ72Gg23zw==
X-Received: by 2002:a65:4b89:: with SMTP id t9mr9307336pgq.102.1580196015485; 
 Mon, 27 Jan 2020 23:20:15 -0800 (PST)
Date: Mon, 27 Jan 2020 23:19:55 -0800
Message-Id: <20200128072002.79250-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 0/7] kunit: create a centralized executor to dispatch all
 KUnit tests
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232016_893624_D6DD3CF1 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

## TL;DR

This patchset adds a centralized executor to dispatch tests rather than
relying on late_initcall to schedule each test suite separately along
with a couple of new features that depend on it.

## What am I trying to do?

Conceptually, I am trying to provide a mechanism by which test suites
can be grouped together so that they can be reasoned about collectively.
The last two of three patches in this series add features which depend
on this:

PATCH 5/7 Prints out a test plan right before KUnit tests are run[1];
          this is valuable because it makes it possible for a test
          harness to detect whether the number of tests run matches the
          number of tests expected to be run, ensuring that no tests
          silently failed.

PATCH 6/7 Add a new kernel command-line option which allows the user to
          specify that the kernel poweroff, halt, or reboot after
          completing all KUnit tests; this is very handy for running
          KUnit tests on UML or a VM so that the UML/VM process exits
          cleanly immediately after running all tests without needing a
          special initramfs.

In addition, by dispatching tests from a single location, we can
guarantee that all KUnit tests run after late_init is complete, which
was a concern during the initial KUnit patchset review (this has not
been a problem in practice, but resolving with certainty is nevertheless
desirable).

Other use cases for this exist, but the above features should provide an
idea of the value that this could provide.

Alan Maguire (1):
  kunit: test: create a single centralized executor for all tests

Brendan Higgins (5):
  vmlinux.lds.h: add linker section for KUnit test suites
  arch: um: add linker section for KUnit test suites
  init: main: add KUnit to kernel init
  kunit: test: add test plan to KUnit TAP format
  Documentation: Add kunit_shutdown to kernel-parameters.txt

David Gow (1):
  kunit: Add 'kunit_shutdown' option

 .../admin-guide/kernel-parameters.txt         |  7 ++
 arch/um/include/asm/common.lds.S              |  4 +
 include/asm-generic/vmlinux.lds.h             |  8 ++
 include/kunit/test.h                          | 82 ++++++++++++-------
 init/main.c                                   |  4 +
 lib/kunit/Makefile                            |  3 +-
 lib/kunit/executor.c                          | 71 ++++++++++++++++
 lib/kunit/test.c                              | 11 ---
 tools/testing/kunit/kunit_kernel.py           |  2 +-
 tools/testing/kunit/kunit_parser.py           | 76 ++++++++++++++---
 .../test_is_test_passed-all_passed.log        |  1 +
 .../test_data/test_is_test_passed-crash.log   |  1 +
 .../test_data/test_is_test_passed-failure.log |  1 +
 13 files changed, 217 insertions(+), 54 deletions(-)
 create mode 100644 lib/kunit/executor.c

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
