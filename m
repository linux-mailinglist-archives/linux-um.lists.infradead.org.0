Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E001D55FA5
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 05:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljTxenTMBBfXUECpF12tRXkUDt1D2S+ViSom47mBBB4=; b=C2BDywdiSUwnAd
	V9AG6sH7XEwfzCHsUfXayneZCgFS6lf3TgMNkTYCNkHUTGflaqOXyCsKl0Zf4czNjsvPJrvrUpScF
	OXYppTYHUED9Om5zgpyX4AGd/+gSD3aotXhvQE1cCLO0mADXZlCBmFGU75dRoNRRo01Q6N+zDhLwT
	sVEy+nn0s6Yirm4nBTn1TIMAXW5PzBtRmtfaNyTwABFd4QhmOL88ri/IXf6CiEsEg44T3gEDQfx2s
	NZlXWYUS/wiGGASzihQ3NPck3y4ZXcjqGa0Gq2GsqJVq+Yotl+lav05xyf5Gw7ETPMi0K9yJQrKfA
	i4e8KraU5x35WWCV7aEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfynx-0004tZ-92; Wed, 26 Jun 2019 03:41:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfynu-0004sy-26
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 03:41:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B238520883;
 Wed, 26 Jun 2019 03:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561520460;
 bh=YjnOrrgSNhT6RWlqKXwtbjuCaQYM6DgeF+J68o3kqsE=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=TozaXDPsvQQt/kVas3URc54NSndgjkoC4JTDYWEqG70XXqn3fWJpPNfLyDu06hZCO
 ksLT9uE8zoDvTnwOTaGmRz8VF+Rm9bpa8KzXo9tWm3/qM5QRpGdRrtfc1krtZGPl7s
 UrIkXsoPp/B2GQ3tBVMxOkqmDHBq+Vr71I5oFTqc=
MIME-Version: 1.0
In-Reply-To: <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
To: Brendan Higgins <brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 20:40:59 -0700
Message-Id: <20190626034100.B238520883@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_204102_139808_314CFB89 
X-CRM114-Status: GOOD (  28.75  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-06-25 13:28:25)
> On Wed, Jun 19, 2019 at 5:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-06-17 01:25:56)
> > > diff --git a/kunit/test.c b/kunit/test.c
> > > new file mode 100644
> > > index 0000000000000..d05d254f1521f
> > > --- /dev/null
> > > +++ b/kunit/test.c
> > > @@ -0,0 +1,210 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Base unit test (KUnit) API.
> > > + *
> > > + * Copyright (C) 2019, Google LLC.
> > > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > > + */
> > > +
> > > +#include <linux/sched/debug.h>
> > > +#include <kunit/test.h>
> > > +
> > > +static bool kunit_get_success(struct kunit *test)
> > > +{
> > > +       unsigned long flags;
> > > +       bool success;
> > > +
> > > +       spin_lock_irqsave(&test->lock, flags);
> > > +       success = test->success;
> > > +       spin_unlock_irqrestore(&test->lock, flags);
> >
> > I still don't understand the locking scheme in this code. Is the
> > intention to make getter and setter APIs that are "safe" by adding in a
> > spinlock that is held around getting and setting various members in the
> > kunit structure?
> 
> Yes, your understanding is correct. It is possible for a user to write
> a test such that certain elements may be updated in different threads;
> this would most likely happen in the case where someone wants to make
> an assertion or an expectation in a thread created by a piece of code
> under test. Although this should generally be avoided, it is possible,
> and there are occasionally good reasons to do so, so it is
> functionality that we should support.
> 
> Do you think I should add a comment to this effect?

No, I think the locking should be removed.

> 
> > In what situation is there more than one thread reading or writing the
> > kunit struct? Isn't it only a single process that is going to be
> 
> As I said above, it is possible that the code under test may spawn a
> new thread that may make an expectation or an assertion. It is not a
> super common use case, but it is possible.

Sure, sounds super possible and OK.

> 
> > operating on this structure? And why do we need to disable irqs? Are we
> > expecting to be modifying the unit tests from irq contexts?
> 
> There are instances where someone may want to test a driver which has
> an interrupt handler in it. I actually have (not the greatest) example
> here. Now in these cases, I expect someone to use a mock irqchip or
> some other fake mechanism to trigger the interrupt handler and not
> actual hardware; technically speaking in this case, it is not going to
> be accessed from a "real" irq context; however, the code under test
> should think that it is in an irq context; given that, I figured it is
> best to just treat it as a real irq context. Does that make sense?

Can you please describe the scenario in which grabbing the lock here,
updating a single variable, and then releasing the lock right after
does anything useful vs. not having the lock? I'm looking for a two CPU
scenario like below, but where it is a problem. There could be three
CPUs, or even one CPU and three threads if you want to describe the
extra thread scenario.

Here's my scenario where it isn't needed:

    CPU0                                      CPU1
    ----                                      ----
    kunit_run_test(&test)
                                              test_case_func()
					        ....
                                              [mock hardirq]
					        kunit_set_success(&test)
					      [hardirq ends]
                                                ...
                                                complete(&test_done)
      wait_for_completion(&test_done)
      kunit_get_success(&test)

We don't need to care about having locking here because success or
failure only happens in one place and it's synchronized with the
completion.

> 
> > > +
> > > +       return success;
> > > +}
> > > +
> > > +static void kunit_set_success(struct kunit *test, bool success)
> > > +{
> > > +       unsigned long flags;
> > > +
> > > +       spin_lock_irqsave(&test->lock, flags);
> > > +       test->success = success;
> > > +       spin_unlock_irqrestore(&test->lock, flags);
> > > +}

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
