Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543A6558D6
	for <lists+linux-um@lfdr.de>; Tue, 25 Jun 2019 22:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJ/SSaXYpy6WqVkA9mx6b09dgrKyH7NEmusyF16QO4A=; b=HJVcfPjv4UQTS5
	MXQ97fnP5ErRpeL0fRH3T4Ro7GkP1rrEXKhhTYXMzx5o9iP1IBb2gqx4hFsaBIXs7GBPw6bldSIj3
	SG3MxLJ7ctMVMSz/Kpnjfb3tFVk9dfCx9VwzfT36bnD+2vHIDkGiRXsW8iyZsUuZ+ybk0lzrAIYpc
	ZD0mww3PrLnx7OT/hGWr1E8a+P4yGa1ne3epSZ8G4ol46Nda9hrm5XXkNB8nuNdDMtuuNY+wuNpfz
	rZNbcvK3HP5OLsrWdogHyw68vqJDptLpNEI0SWpU6mS1SAvD89wwvkiQK16TdAcYjk1oW9M6yX4p8
	dFOafJ9ppisosUIp+VPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfs3X-0002OJ-Vn; Tue, 25 Jun 2019 20:28:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfs3U-0002My-Fx
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 20:28:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id y72so9505753pgd.8
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 13:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qq39ykktkvFBpmzRtbgM4tstWpOedFNE8kr26lh/InM=;
 b=ni94OwioZx/gzf2szVloCDZTFFpJCo2YKSFZ2X9qr6bxYnBeEpnnagfszyXnnz51L8
 DkJXaethFUsoHnz8KOQVG2ZSAlP6R4YiehiVV+cY7fw97Xus3XNQzLPLdgQULmgYaWnL
 GEAS55DRith5+cQIVd4nDD9PnOpK5SEC0mcAjXyMYNE83XKQ2Jfbx9GzYoD6pnR9q88y
 VjAnVY+gy9KsY/4+Tbda/+4DRlDyvSks4s9chgBxuZrKHnC3t/s2Oqm9eCfJpWO+nPcJ
 ixgXgEVA9P9D5QKdeUq3VIirHZ16lxLB0iDdlrfqM9fruDTYYR+l+8zODcodp3flRnlv
 dArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qq39ykktkvFBpmzRtbgM4tstWpOedFNE8kr26lh/InM=;
 b=r551W9QrwYk3DLfzq8IR3EVCwhz75bDLsF21lN9hEMHRoLZwTyoWL/fYbtoZzORUby
 4XdmejTzgHubFw4khLnosLyB7dYPz0+BGvKrquC/H5Ri1bOljU/H4VkOPDMJi+GE8Djb
 tzgVPaCj7n05SekBw4VRTqL4YsmZPGGRZC+lz3rr1Wavn6E1VntOlx17askWUsNAhEG5
 t4o2zK3h+TCivM1IltmslsjEVMxDtISLTyGtV42omFpv6V4r5hkJDqjWyb3x6I20hola
 6tRQC/d1Hw6CN9XVnJV6f/XN9pttp/bUZoqzJEPBLamrQr9QSl2viYCQsuXBQo1uK2CR
 gfJg==
X-Gm-Message-State: APjAAAV2eD3NvTT3AR5fh+K/K0PaFC2dyeoMCvHXK3CZ2y2PQDH4zR6B
 UAJgmtYEEoOudqfhjAh2ASz8sNM2IBCI+YqCpfikqw==
X-Google-Smtp-Source: APXvYqzvk20XXdVFtm6zl0X1nrjaH0TttItfcdP9iwaQ+JKQIeNhKF1pa7VSVvlXNPpMAUzP/tv1oR2JBEXuSnWnLw4=
X-Received: by 2002:a17:90b:f0e:: with SMTP id
 br14mr754020pjb.117.1561494516332; 
 Tue, 25 Jun 2019 13:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
In-Reply-To: <20190620001526.93426218BE@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Jun 2019 13:28:25 -0700
Message-ID: <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_132840_564272_519053E5 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Jun 19, 2019 at 5:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-06-17 01:25:56)
> > diff --git a/kunit/test.c b/kunit/test.c
> > new file mode 100644
> > index 0000000000000..d05d254f1521f
> > --- /dev/null
> > +++ b/kunit/test.c
> > @@ -0,0 +1,210 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Base unit test (KUnit) API.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <linux/sched/debug.h>
> > +#include <kunit/test.h>
> > +
> > +static bool kunit_get_success(struct kunit *test)
> > +{
> > +       unsigned long flags;
> > +       bool success;
> > +
> > +       spin_lock_irqsave(&test->lock, flags);
> > +       success = test->success;
> > +       spin_unlock_irqrestore(&test->lock, flags);
>
> I still don't understand the locking scheme in this code. Is the
> intention to make getter and setter APIs that are "safe" by adding in a
> spinlock that is held around getting and setting various members in the
> kunit structure?

Yes, your understanding is correct. It is possible for a user to write
a test such that certain elements may be updated in different threads;
this would most likely happen in the case where someone wants to make
an assertion or an expectation in a thread created by a piece of code
under test. Although this should generally be avoided, it is possible,
and there are occasionally good reasons to do so, so it is
functionality that we should support.

Do you think I should add a comment to this effect?

> In what situation is there more than one thread reading or writing the
> kunit struct? Isn't it only a single process that is going to be

As I said above, it is possible that the code under test may spawn a
new thread that may make an expectation or an assertion. It is not a
super common use case, but it is possible.

> operating on this structure? And why do we need to disable irqs? Are we
> expecting to be modifying the unit tests from irq contexts?

There are instances where someone may want to test a driver which has
an interrupt handler in it. I actually have (not the greatest) example
here. Now in these cases, I expect someone to use a mock irqchip or
some other fake mechanism to trigger the interrupt handler and not
actual hardware; technically speaking in this case, it is not going to
be accessed from a "real" irq context; however, the code under test
should think that it is in an irq context; given that, I figured it is
best to just treat it as a real irq context. Does that make sense?

> > +
> > +       return success;
> > +}
> > +
> > +static void kunit_set_success(struct kunit *test, bool success)
> > +{
> > +       unsigned long flags;
> > +
> > +       spin_lock_irqsave(&test->lock, flags);
> > +       test->success = success;
> > +       spin_unlock_irqrestore(&test->lock, flags);
> > +}
> > +
> > +static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
> > +{
> > +       return vprintk_emit(0, level, NULL, 0, fmt, args);
> > +}
> > +
> > +static int kunit_printk_emit(int level, const char *fmt, ...)
> > +{
> > +       va_list args;
> > +       int ret;
> > +
> > +       va_start(args, fmt);
> > +       ret = kunit_vprintk_emit(level, fmt, args);
> > +       va_end(args);
> > +
> > +       return ret;
> > +}
> > +
> > +static void kunit_vprintk(const struct kunit *test,
> > +                         const char *level,
> > +                         struct va_format *vaf)
> > +{
> > +       kunit_printk_emit(level[1] - '0', "\t# %s: %pV", test->name, vaf);
> > +}
> > +
> > +static bool kunit_has_printed_tap_version;
>
> Can you please move this into function local scope in the function
> below?

Sure, that makes sense.

> > +
> > +static void kunit_print_tap_version(void)
> > +{
> > +       if (!kunit_has_printed_tap_version) {
> > +               kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
> > +               kunit_has_printed_tap_version = true;
> > +       }
> > +}
> > +
> [...]
> > +
> > +static bool kunit_module_has_succeeded(struct kunit_module *module)
> > +{
> > +       const struct kunit_case *test_case;
> > +       bool success = true;
> > +
> > +       for (test_case = module->test_cases; test_case->run_case; test_case++)
> > +               if (!test_case->success) {
> > +                       success = false;
> > +                       break;
>
> Why not 'return false'?

Also a good point. Will fix.

> > +               }
> > +
> > +       return success;
>
> And 'return true'?

Will fix.

> > +}
> > +
> > +static size_t kunit_module_counter = 1;
> > +
> > +static void kunit_print_subtest_end(struct kunit_module *module)
> > +{
> > +       kunit_print_ok_not_ok(false,
> > +                             kunit_module_has_succeeded(module),
> > +                             kunit_module_counter++,
> > +                             module->name);
> > +}
> > +
> > +static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
> > +                                           size_t test_number)
> > +{
> > +       kunit_print_ok_not_ok(true,
> > +                             test_case->success,
> > +                             test_number,
> > +                             test_case->name);
> > +}
> > +
> > +void kunit_init_test(struct kunit *test, const char *name)
> > +{
> > +       spin_lock_init(&test->lock);
> > +       test->name = name;
> > +       test->success = true;
> > +}
> > +
> > +/*
> > + * Performs all logic to run a test case.
> > + */
> > +static void kunit_run_case(struct kunit_module *module,
> > +                          struct kunit_case *test_case)
> > +{
> > +       struct kunit test;
> > +       int ret = 0;
> > +
> > +       kunit_init_test(&test, test_case->name);
> > +
> > +       if (module->init) {
> > +               ret = module->init(&test);
> > +               if (ret) {
> > +                       kunit_err(&test, "failed to initialize: %d\n", ret);
> > +                       kunit_set_success(&test, false);
> > +                       return;
> > +               }
> > +       }
> > +
> > +       if (!ret)
> > +               test_case->run_case(&test);
>
> Do we need this if condition? ret can only be set to non-zero above but
> then we'll exit the function early so it seems unnecessary. Given that,
> ret should probably be moved into the module->init path.

Whoops. Sorry, another instance of how it evolved over time and I
forgot why I did the check. Will fix.

> > +
> > +       if (module->exit)
> > +               module->exit(&test);
> > +
> > +       test_case->success = kunit_get_success(&test);
> > +}
> > +

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
