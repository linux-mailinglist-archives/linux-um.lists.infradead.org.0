Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2277F14E5E6
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/KZPWiQ1IZ5jqBHSy23BjFYqyIBkRweooDzt7MezeY=; b=Q8QRwdH2YPG7tb
	PQsUxfqmn3mMr1ZCUap1ofEgik8rVcTABXVTpDryN9OOfbH05lEWpkfh64S83RrMhi0tGq0XQNc0Q
	LLC0TV8Q4y942GPo3AmIyRY9MP0FSDDVGqCv6IX+jhxxYfsdsOnJpSgNFP5ijQ+EiTmGZyED/nfrT
	w7XW0tZYqkx1gG39/Z91aPrr3ZKkHQxG3Iv9U3VwHPFceUiat6Ibk88QRPpdv0z25wMdiFNJ8qNV2
	w0V4cWly6ip8dZS6oUnv5i1983nWsIcDXq9F9FmoDvlOkrjdE5fXGdOGodeYmEPFk3Z7fBlaWNIMr
	ENhTaYI8802UDCWRVJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvJ-000694-Jh; Thu, 30 Jan 2020 23:08:33 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvG-00066U-Mm
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:32 +0000
Received: by mail-pl1-x64a.google.com with SMTP id j8so230204plk.1
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=geIt7NTj15qXn0Pd7vHPLbcleORDZqpFgUWoIN42PEM=;
 b=qTlSqhtNx7eHlvPfVYXKqr93F2m/Yz/e2GC7+PA4PGi2HpcSKlShgkySpjTmchthE/
 5rNnvGRoyCEzqtTrv6EKSjlJuYU+3zLDIMbed0HlOkBqTKkEJTRV0KIqoCqJ1LbEvCXI
 C5l6LRInj0spf/zHtk5oN9VVkKAzXr4qJAJkGUF4pWGEZ8RRk/HQsa/nDx/sTN1RsPbH
 7LgfYTwWo44LlVzhkeneNyIe8WsnvZGlJ29B8eTdroQR7CCkZltdJS0DLTO2x8/g41Ns
 pWfuYmthGrGSRVhPyan5JcBXVCnzPt5JWyqH0gqK02Pi3ha+J8hcxghq04jNrisHd7l8
 cWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=geIt7NTj15qXn0Pd7vHPLbcleORDZqpFgUWoIN42PEM=;
 b=mw6kEhhWnt36Z8rsNmdJtrJELQAw6Cw1qFgizKH0BeqNhBBBRx04qKu6x7w2RDFLMk
 9x9sxap2rmVkHM6Mat/koO67XsXtOr2wVCSoryd0oEW/jbJkszxWnaQ935qQVLjcDAkv
 Nqxqs0uFxLNoxa/gx0JaqTpFwU2KIXNgyuEIXiFYe0xgRc3dW0G9GlzTRl18J11BUTQ+
 KRhpm2IvcABrmSRaLzeS6ERrq9SCD4NmAcmOIVXehFjXstw5g67vbcqrw/V1zvyJL28c
 boUuGoDX1Dx2ObhRD7SVFUypzEm/f98ftsDdVyhjjnDV45hCmJ5OLb3I+yMTbCdXvp/+
 /d6g==
X-Gm-Message-State: APjAAAUwdowI48plDYRsEStgVRlYWhJPOyzVMYcOh/yT+7+XF0IF/NWX
 oKCCQvzY9kgI/V1eAEPIumnBJ3hpxrX/0NS7RnGs9w==
X-Google-Smtp-Source: APXvYqzz6DkRHXw8EK9laj0mq1G8A+iOrN6WPOYO4gyPjhuGvx4vvL/HZjrARvRdEkfU4/FggK1bks+nWvmM29c4G/xx0Q==
X-Received: by 2002:a63:4282:: with SMTP id p124mr6813514pga.155.1580425709390; 
 Thu, 30 Jan 2020 15:08:29 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:05 -0800
Message-Id: <20200130230812.142642-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 0/7] kunit: create a centralized executor to dispatch all
 KUnit tests
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150830_767469_375A57FB 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
