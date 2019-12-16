Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11390121C4F
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZFJNsqXLyBEjYSZVDLU5/McGPm0fmXztUwkiC8tl5rw=; b=AiKE6coQwTbTwY
	WfF0+Wh7wmfGQuJSsZz64xRc5QKBnrJg2To3WBQLd3hPSE1VUq8PRYaDkKd2ZGR6EjNhn6o7qajmp
	x5rdEKB1N3JKSg7itJQ068dkGMkXzoTqTAw557DPQKx/L+LvlG6RHT6k6CkQtal0mFW2vh9dp3ucA
	vMZW/5amURNTzMarsP5OLsswk4KCt87C0Hm+mq8vjmzumatMe9PstPu60j+bijKg98UAGn2DHEE8w
	xAOrVPIiMeZ6RelVudNZBEVKHZF9ly4oLH4h1v+6v/XJzQXc1REH7rELlhr+rY4sXhRow4+mpViV4
	FTvtav3wCdyXzrK8t+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyVy-0001qY-V5; Mon, 16 Dec 2019 22:06:54 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyVv-0001pe-TV
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:06:53 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id q130so6545772ywh.11
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=eppmz6bMb+izn2RzN3lnlHeodL5pBLSTz1Q/CRKnTLI=;
 b=Ka/YLRaXtmaXZjNlTNPGUBn6yNVXrLBSLTY7QlLmb+pGLBk64G75unoAUKw7ENQh6A
 uN5BE7ghfj4hLmg93Dnjr1XOQx9sqGT0tdRhCq572hnGsODMcX8BJaKgKGcekmQHBOhO
 AT/G6wElDlZ16v6nXSv4LBy5fVRgnz65y56kDJQ63lH+EwqP4r4UCAJCoUmp7jWabH2A
 irCUuf+Ew8cP8BWTuuXQZ7lkAr38ls5Def/i0fnUPPezbu4E1eeS4PwFWlu2NXCQ1HUv
 S/CgWSpEN0xx6SLk+OOe8LLXlhdyBfcgbL4oUC4VSaGDR/NZqrh+rbF0+AzVkdQDf+rM
 tSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=eppmz6bMb+izn2RzN3lnlHeodL5pBLSTz1Q/CRKnTLI=;
 b=C9Gb3JKLW92NI5BBab69s0n0VZCYPsQe1/Ve7Ccw22iTpr7WD5Vf9KfBx/ojG+oTCZ
 rTzxbH9MwyCk9eV1HKAZvg57E0HfQ3aV7FXOZ3D3w6q7gKM/ehrD8JKKsWyhdFsTT1ZY
 ALqXB9tieT9hIzIdGPyIYaUxkuADSGX+7DRYBgZ1XML2acb7fDlV5JNUEV1c7QTiVKdk
 6yqFdtN8HvS+0f0Nsxx3HtWxXwMpNNgCoyNXdLimlenwaIJrM3OHymqhYNn0QVcIXCAh
 QbsxM62tZ+HK5XZTxaDE3JvEeDI63BtJG3J9fNwvcgmXkNowcrqx1c+dU2z8nz1jppOw
 3g0g==
X-Gm-Message-State: APjAAAVMTMaIpMboExmHqFzWvXVGQpYHVpZJxewcly+Lhg7dN6Wt9Pgz
 wN+cf3m22ahcarEbOlYse6HTIVkb6vCZLv5qTU3SNA==
X-Google-Smtp-Source: APXvYqyw/OZ9oh2P4WMQ92Laluc4AJxvHqFO1NRLPLVu6fYKpIM1zMHeoh4jp2nR813dRQsMDcwHNPAwIm/JNWREsel9rQ==
X-Received: by 2002:a0d:ddc8:: with SMTP id
 g191mr21773562ywe.335.1576534009902; 
 Mon, 16 Dec 2019 14:06:49 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:49 -0800
Message-Id: <20191216220555.245089-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140651_979080_DA6C893F 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 knut.omang@oracle.com, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, mcgrof@kernel.org,
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
The last two patches in this series add features which depend on this:

RFC 5/6 Prints out a test plan right before KUnit tests are run[1]; this
        is valuable because it makes it possible for a test harness to
        detect whether the number of tests run matches the number of
        tests expected to be run, ensuring that no tests silently
        failed.

RFC 6/6 Add a new kernel command-line option which allows the user to
        specify that the kernel poweroff, halt, or reboot after
        completing all KUnit tests; this is very handy for running KUnit
        tests on UML or a VM so that the UML/VM process exits cleanly
        immediately after running all tests without needing a special
        initramfs.

In addition, by dispatching tests from a single location, we can
guarantee that all KUnit tests run after late_init is complete, which
was a concern during the initial KUnit patchset review (this has not
been a problem in practice, but resolving with certainty is nevertheless
desirable).

Other use cases for this exist, but the above features should provide an
idea of the value that this could provide.

## What work remains to be done?

These patches were based on patches in our non-upstream branch[2], so we
have a pretty good idea that they are useable as presented;
nevertheless, some of the changes done in this patchset could
*definitely* use some review by subsystem experts (linker scripts, init,
etc), and will likely change a lot after getting feedback.

The biggest thing that I know will require additional attention is
integrating this patchset with the KUnit module support patchset[3]. I
have not even attempted to build these patches on top of the module
support patches as I would like to get people's initial thoughts first
(especially Alan's :-) ). I think that making these patches work with
module support should be fairly straight forward, nevertheless.

Brendan Higgins (5):
  vmlinux.lds.h: add linker section for KUnit test suites
  arch: um: add linker section for KUnit test suites
  kunit: test: create a single centralized executor for all tests
  init: main: add KUnit to kernel init
  kunit: test: add test plan to KUnit TAP format

David Gow (1):
  kunit: Add 'kunit_shutdown' option

 arch/um/include/asm/common.lds.S              |  4 +
 include/asm-generic/vmlinux.lds.h             |  8 ++
 include/kunit/test.h                          | 16 ++--
 init/main.c                                   |  4 +
 lib/kunit/Makefile                            |  3 +-
 lib/kunit/executor.c                          | 74 ++++++++++++++++++
 lib/kunit/test.c                              | 11 ---
 tools/testing/kunit/kunit_kernel.py           |  2 +-
 tools/testing/kunit/kunit_parser.py           | 76 +++++++++++++++----
 .../test_is_test_passed-all_passed.log        |  1 +
 .../test_data/test_is_test_passed-crash.log   |  1 +
 .../test_data/test_is_test_passed-failure.log |  1 +
 12 files changed, 170 insertions(+), 31 deletions(-)
 create mode 100644 lib/kunit/executor.c

[1]: https://github.com/isaacs/testanything.github.io/blob/tap14/tap-version-14-specification.md#the-plan
[2]: https://kunit-review.googlesource.com/c/linux/+/1037
[3]: https://patchwork.kernel.org/project/linux-kselftest/list/?series=211727

-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
