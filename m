Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A47641D0
	for <lists+linux-um@lfdr.de>; Wed, 10 Jul 2019 09:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=67mN+eNSYczJB29z2Yr+XG8OZ9YU0lP//G5H8gvym2E=; b=CU30IQwDOXleJb
	jyMgqGVrjEvdUznK2aluYXbvdzgtagYpsPkqHRglNbylBjoVsU4AgvB9dTweqszzcQc5TWRglJ0vA
	JKpuyskodXZZfggAZtgDPCRx0zzC4vSRPWyhmLwr73Mt+ckOhFyzenNifpFwb7lSgto3ACAKJ1JwN
	57+xBZ+uvYzFvSK110+ZdmWqEfGr6lxBusDfNo2qB1cCcF0ma9aCl53ZvuLRzEIu6pAOWy5DDlCY+
	49pDqtGQDT4IrZntGzmXtJLQscX744gTCm6hO37EqqPOZB+ip+xG54lrWpQOj7Rug343NzVJ/I+jM
	I+DEpsjXyLm4gAiyytgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6pH-000142-MH; Wed, 10 Jul 2019 07:15:39 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6pD-000117-S7
 for linux-um@lists.infradead.org; Wed, 10 Jul 2019 07:15:37 +0000
Received: by mail-pl1-x64a.google.com with SMTP id o6so824401plk.23
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 00:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=0pW1BcsjTPSHyEkMo96k/o71l5W8M51wh7ZyhpVzADM=;
 b=mHi2l865KLWjgVk77JKmNtYGZe0xgmJqUcNAffie+cN+57XolMX3GDCpJ2ZH1ceLYR
 MfFyvnNY0Qwe0x/ZOIiekj7NzIlsbUZDTxthSd/LJOgqPFNF5dEsFtGMwPVF/nYSdHyJ
 3VdZcCGqzormHX3dS/yuInQiUg9E6laAPfQmLbGCGEz4HepJhwqJgmDJF7yj1dr6aCix
 Siqg+NV9jVwUY3x9AB0/e1BJUu0lC4cmATkNcO/Wd9E8nEXdmqgE1jZEc5mwC0ai37Am
 Pbg5JO4uqte1qi5grtXQRrH7O14tsuFUMbYzcI0pjXuihXi7w4+aV03+iVTZpiuzAPq1
 67HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=0pW1BcsjTPSHyEkMo96k/o71l5W8M51wh7ZyhpVzADM=;
 b=pvCi8xWdK0TtSuQXp1jhDvIvP+9j3/0ptb21WiqO1H04pqfaV9va9LbkUarAIxClVn
 E2QzEVePfeGsp7MUvRjx4ulNg+oAZgYrrNPKKTk0xCol8Uo2LzaJV+l8FemaO6DmA3b0
 TQElWRPUJ/S+m1mV4bjG3dlfHu1+nSfNJ4LdMkUfE3V6x9hdmf4TBbW0THC2vxqsk9eh
 4LFSETF1awtz+2EMd+lehLeDbA0gIFOZhLVWrFh/4OFbMroJFX458H7P0b2v5dLRHS7A
 jzTpWqIZLVLckxRwY02Ckgnv5xkkW4K7d0Xku7DuXEZv0jqbu6ZnAtmKY9r3Qg5nSMIY
 cP2g==
X-Gm-Message-State: APjAAAWUtS1b/SISGw6W+8nM5TN+Oqu4Ev9PLsU3A/awzCW/nKIOjLCn
 yvApPquWNC65NWB4MKP42AztGVR6C5I2mbK2fQtSuQ==
X-Google-Smtp-Source: APXvYqyb0LRYaKSRSGjVUbWvUV4R01ShtwO7/fsNXpVB/VnszhSBSXJqqHQquziMhALgKYKtHVI7t5pL3wpE0iRmNMtOpg==
X-Received: by 2002:a63:1f56:: with SMTP id q22mr33295799pgm.315.1562742929971; 
 Wed, 10 Jul 2019 00:15:29 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:14:50 -0700
Message-Id: <20190710071508.173491-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v8 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_001535_934918_06DE55B0 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This new patch set only contains a very minor change suggested by
Masahiro to [PATCH v7 06/18] and is otherwise identical to PATCH v7.

Also, with Josh's ack on the preceding patch set, I think we now have
all necessary reviews and acks from all interested parties.

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
This patchset is on the kunit/rfc/v5.2/v8 branch.

## Changes Since Last Version

Like I said in the TL;DR, there is only one minor change since the
previous revision. That change only affects patch 06/18; it makes it so
that make doesn't attempt to scan the kunit/ directory when CONFIG_KUNIT
is not set as suggested by Masahiro.

[1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
[2] https://google.github.io/kunit-docs/third_party/kernel/docs/
[3] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2/v8

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
