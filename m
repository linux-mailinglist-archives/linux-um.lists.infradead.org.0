Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820B257C91
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 08:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCpKNKAf6oKYplHYJQmqppZJgrU++9yh0iW3mtMlACs=; b=fZ7ExpWuYkUsz1
	UBSGtYdh6KergA0J+AXDWXvhrncXOeSH9pRLE5sVcWwAgnehAVrAHVL2GDC+s6JYNzndvEA7WE564
	4DAoFsc5KZMrMd7yZxrsQOAknRaDmAC2/wFfXKyiIBS3/yFJGVgstyuaX29pQm+tfD6ppmObT+bY8
	0K7yiw5vFKyJJi6O6Scw2GUYtrMDsI0BHvUv4OCXXfutdACpuD7zwCr+2F6QP0gOQxc5Oew8xEY3s
	4F6CslK7y1NH8E5oByr8HmSzc5mrmak4wKPF8hoewMeXMkwNjVtkffy7Pe/s6rxBB76ZCjVBAuRzH
	6gbie7zX5My15PyQjugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOJ5-0001Kx-EE; Thu, 27 Jun 2019 06:54:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO94-0006KM-Dp
 for linux-um@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=turlNrZcH8tuujf37Q7HEe8hyhwhiMkMAGSNncSmJd0=; b=xdS+EJTIzTyf+crFj24S1tSu1
 Z4QMnYJB+BjJDvmbb7ybpZj4zKdgmaUSjIUnUC4djVMugBQUR5jAJimjj7Tfgob5lVMUN0EB2Ohc7
 w/U5AmEXcZ7Clb6UWlPdBscB9b1C1iyw+QHhQrd348UGOR9iB8r+SPJPCyyhZwCxt9MJ8Dd7OqMWg
 sN3bN8kHdIunDhbomiXnJxDs/GV40ix3rY+BLXzQ2d+dfN0afQzYr1l+DoAw9XyOK1webBF3+05UW
 wpNuII2iASDlwS23LeBNKdQ5pFKBaIF5rhJigaLLsoMo1re4+ie+n138CXzysYeg2sOSb3s82h30n
 f1Qx8C6Ew==;
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGwJ-00039E-J8
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 23:02:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so146631pla.7
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 16:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=turlNrZcH8tuujf37Q7HEe8hyhwhiMkMAGSNncSmJd0=;
 b=tPbLhI6p7V77PIMP2Ixa9TxEo7roY6MVHPMR6jgk7ZuALrFWvqeemx+Wplsc+xCraa
 pdqaYu92o/6BUX2InP+i1EHq6YxT7QAYYWFgD1MBvytI5KSVDogEPNSSYbdTqT2lCSQ0
 Fn3GAaSQ9CIrxWUpqqCpg+X3DttzdAEUoMp1XrupALh+W8vxcCBtUuzpQXYzG6c3iMf7
 UhPmfILyu8sJnTsr66nAy/yDGC9ePdyx7iIS/nUONAHd9nJ8GTtoBAj4b7HYxRUEhl1e
 BHevIfb/hk6Fobzekl76hHs0k5V4Gu3QLYcO3BnbTSkfvMzcisvJPBxENYWRxYw+rWCH
 v0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=turlNrZcH8tuujf37Q7HEe8hyhwhiMkMAGSNncSmJd0=;
 b=etY+CPlZ17UA4DKjuCIs269I+BkUfPBM7DirGVnzOBp9DFCe61Q9QkaQU4EexHO6Gy
 QWGVoyXHgheQVYG5sFTLwWVkCwWqaVpdL0kR7HrFuTHF6BQ3ci59OYQ8EsZghvBV+8Lu
 fa+g/ar74EvdwiwHM5sFTz9M5u/b5XB+grxOS46Yivy2SSUybK7YNNQ5FJtgIikv6MQs
 7y88zaAfcubNU3JfGS1EBek5DKrKVPQij9I+v63h/M9iAaQKF5GhhmKgQ0vWSJJKoQh1
 WturIt6iw1teymgwgjGQ0i1ldjrpzvz/mQy34LtnkdDxDDG4PjfMknZcbXylKfX2QPx8
 H0OQ==
X-Gm-Message-State: APjAAAXCqYP2hZsjn99IE9yy4ItaX40Zy+tfPgQJACSNDSAG8vY+pI7K
 Au5IISNMMpxjXE9gr21gXSPhL4OciH5Chp3QauJYrA==
X-Google-Smtp-Source: APXvYqyVbS9SuPoqv6WFyOjCnMYrySBcHNuv6jq0PUoe5f5yqgIDv1bI73Ejus2aEdQ4kXu4W/T/wMpAMZdGpDkQTLk=
X-Received: by 2002:a17:902:2006:: with SMTP id
 n6mr669016pla.232.1561590052378; 
 Wed, 26 Jun 2019 16:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190626034100.B238520883@mail.kernel.org>
In-Reply-To: <20190626034100.B238520883@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 26 Jun 2019 16:00:40 -0700
Message-ID: <CAFd5g46zHAupdUh3wDuqPJti2M+_=oje_5weFe7AVLQfkDDM6A@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Stephen Boyd <sboyd@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Tue, Jun 25, 2019 at 8:41 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-06-25 13:28:25)
> > On Wed, Jun 19, 2019 at 5:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-06-17 01:25:56)
> > > > diff --git a/kunit/test.c b/kunit/test.c
> > > > new file mode 100644
> > > > index 0000000000000..d05d254f1521f
> > > > --- /dev/null
> > > > +++ b/kunit/test.c
> > > > @@ -0,0 +1,210 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Base unit test (KUnit) API.
> > > > + *
> > > > + * Copyright (C) 2019, Google LLC.
> > > > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > > > + */
> > > > +
> > > > +#include <linux/sched/debug.h>
> > > > +#include <kunit/test.h>
> > > > +
> > > > +static bool kunit_get_success(struct kunit *test)
> > > > +{
> > > > +       unsigned long flags;
> > > > +       bool success;
> > > > +
> > > > +       spin_lock_irqsave(&test->lock, flags);
> > > > +       success = test->success;
> > > > +       spin_unlock_irqrestore(&test->lock, flags);
> > >
> > > I still don't understand the locking scheme in this code. Is the
> > > intention to make getter and setter APIs that are "safe" by adding in a
> > > spinlock that is held around getting and setting various members in the
> > > kunit structure?
> >
> > Yes, your understanding is correct. It is possible for a user to write
> > a test such that certain elements may be updated in different threads;
> > this would most likely happen in the case where someone wants to make
> > an assertion or an expectation in a thread created by a piece of code
> > under test. Although this should generally be avoided, it is possible,
> > and there are occasionally good reasons to do so, so it is
> > functionality that we should support.
> >
> > Do you think I should add a comment to this effect?
>
> No, I think the locking should be removed.
>
> >
> > > In what situation is there more than one thread reading or writing the
> > > kunit struct? Isn't it only a single process that is going to be
> >
> > As I said above, it is possible that the code under test may spawn a
> > new thread that may make an expectation or an assertion. It is not a
> > super common use case, but it is possible.
>
> Sure, sounds super possible and OK.
>
> >
> > > operating on this structure? And why do we need to disable irqs? Are we
> > > expecting to be modifying the unit tests from irq contexts?
> >
> > There are instances where someone may want to test a driver which has
> > an interrupt handler in it. I actually have (not the greatest) example
> > here. Now in these cases, I expect someone to use a mock irqchip or
> > some other fake mechanism to trigger the interrupt handler and not
> > actual hardware; technically speaking in this case, it is not going to
> > be accessed from a "real" irq context; however, the code under test
> > should think that it is in an irq context; given that, I figured it is
> > best to just treat it as a real irq context. Does that make sense?
>
> Can you please describe the scenario in which grabbing the lock here,
> updating a single variable, and then releasing the lock right after
> does anything useful vs. not having the lock? I'm looking for a two CPU

Sure.

> scenario like below, but where it is a problem. There could be three
> CPUs, or even one CPU and three threads if you want to describe the
> extra thread scenario.
>
> Here's my scenario where it isn't needed:
>
>     CPU0                                      CPU1
>     ----                                      ----
>     kunit_run_test(&test)
>                                               test_case_func()
>                                                 ....
>                                               [mock hardirq]
>                                                 kunit_set_success(&test)
>                                               [hardirq ends]
>                                                 ...
>                                                 complete(&test_done)
>       wait_for_completion(&test_done)
>       kunit_get_success(&test)
>
> We don't need to care about having locking here because success or
> failure only happens in one place and it's synchronized with the
> completion.

Here is the scenario I am concerned about:

CPU0                      CPU1                       CPU2
----                      ----                       ----
kunit_run_test(&test)
                          test_case_func()
                            ....
                            schedule_work(foo_func)
                          [mock hardirq]             foo_func()
                            ...                        ...
                            kunit_set_success(false)   kunit_set_success(false)
                          [hardirq ends]               ...
                            ...
                            complete(&test_done)
  wait_for_completion(...)
  kunit_get_success(&test)

In my scenario, since both CPU1 and CPU2 update the success status of
the test simultaneously, even though they are setting it to the same
value. If my understanding is correct, this could result in a
write-tear on some architectures in some circumstances. I suppose we
could just make it an atomic boolean, but I figured locking is also
fine, and generally preferred.

Also, to be clear, I am onboard with dropping then IRQ stuff for now.
I am fine moving to a mutex for the time being.

>
> >
> > > > +
> > > > +       return success;
> > > > +}
> > > > +
> > > > +static void kunit_set_success(struct kunit *test, bool success)
> > > > +{
> > > > +       unsigned long flags;
> > > > +
> > > > +       spin_lock_irqsave(&test->lock, flags);
> > > > +       test->success = success;
> > > > +       spin_unlock_irqrestore(&test->lock, flags);
> > > > +}

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
