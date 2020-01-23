Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7483414741A
	for <lists+linux-um@lfdr.de>; Thu, 23 Jan 2020 23:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnePpq4ta0jYXsFucraMPJeOA4CEQykgMHzN+X6g4tg=; b=k0BKBYUQfzEU6t
	pobszz6rTS6+z2dEairJ5Rax4z6jSJ5hyo6QrcK+6TEnjhVh66dekQ0kSt8+lQA5IvtUvOd99HvHa
	1rMOGBC98YMOnhrdiH8Qxh2PVdhXwI40ZSVQ7nKK+CjaB8kHMEPS77EGjvto/aXHIaA66+xwabCgC
	iI4mdtrqaeUVEApSTfWdQhCgjwGnLXGp/Rl9vjBRkPESpZ7gBDhR9tWTQUK8Oi1va4iwrn9ZrNK+p
	Vu3/UEB+j0miwZcqvQpVDQN4Uz/+cZnEqsiii6O2289tv60gkbHS2mzXQorfxArvPGrMcjm9YT0s1
	v7PkJHrh1WmECHsfC/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulNb-0000qo-QU; Thu, 23 Jan 2020 22:55:15 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulNY-0000aT-D4
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 22:55:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s7so166156pjc.0
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 14:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bdR2VIngUyNsUGbPsP+UPl746ALnDu+ORGiYpHLsy/M=;
 b=JYMcOHTdAKO6qaAxt2V6dRl499d2oCBChvSKIPRVWm/EJYVbbKZob8zLiyhHlveyrk
 p+KvC/twgDmyuyPk4TqU6B4LjpV3xHxY03utbDuKBU6lhgSNxvHuoSu/JTiR4cyLZ6rk
 9oVRRwxoX2c6oxsLLaLz9PYzd4kpQQiuYN/K2ecvoS766fFWpFNMIEYDHx8ebGAd0eir
 OkwhLZFL4pUC0U41ljkGgZ3MUEvNQwNCk8ilet4PeJDEIZLq3ZN9SZjBVSSWs1j8sh6g
 1mBUxNyR5Zd+s2FiiiY/8Ss9qP69I2CyNbfhQxwnpP4ttaB+8MrwJ4bst6KAhAUDRkCJ
 7qUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bdR2VIngUyNsUGbPsP+UPl746ALnDu+ORGiYpHLsy/M=;
 b=KozQIwIIMsq+VDLUpL4zBn8FaeDX9HUa4qSGN+1+3yieyXlbLk7eghdM6lLWl7rrrf
 w48LeaCpTOlfvR139vP97X6kTrZnYlxQ9414/kgXciYjrpTHRIDiME465JgxA2LTWKRr
 OnOUtTZILoCvaAPo2QWCmpxMq63+Ib+NWUVlp/cK4TSde2hbwp2zaIjSNErGcHzsRCWW
 q1zIclpLtK9AxpcyFQhocx5I+bVQOkUdnn/HCR0BApIXne9wa0KIZmR2sjSu/HZgN3A9
 p4w22T/heLtns1icfbhwm3iEmwzo15jarNG4sP+34QSVB1MZ4FOU9RsTkJQ9e9QuCjN0
 5pwA==
X-Gm-Message-State: APjAAAVUWcM638sP1ODH5HAwFRvovkyAUzW3/Ev3zHof1Dwd89VrvXuE
 P8Q/QfCL2AtyvnlE0x+Dp92EHwXSU5Sficqlc3a6/g==
X-Google-Smtp-Source: APXvYqzdbpR7pO8euiReITGLrsk+/Oy+gyJrt9hmrf3x4sUM9Laf+reGcryH8NHCxinjRW4t04WOyzPtBwugde0z+ec=
X-Received: by 2002:a17:902:9f98:: with SMTP id
 g24mr423318plq.325.1579820106653; 
 Thu, 23 Jan 2020 14:55:06 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-4-brendanhiggins@google.com>
 <20191217080408.0E805207FF@mail.kernel.org>
In-Reply-To: <20191217080408.0E805207FF@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:54:55 -0800
Message-ID: <CAFd5g44Wh9kwXsY_M4GfMp0+wzN_3HhVfa360J-tF48aQ_KADg@mail.gmail.com>
Subject: Re: [RFC v1 3/6] kunit: test: create a single centralized executor
 for all tests
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145512_445216_F3334028 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Knut Omang <knut.omang@oracle.com>,
 Luis Chamberlain <mcgrof@kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:04 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-12-16 14:05:52)
> > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > index dba48304b3bd3..c070798ebb765 100644
> > --- a/include/kunit/test.h
> > +++ b/include/kunit/test.h
> > @@ -217,11 +217,8 @@ int kunit_run_tests(struct kunit_suite *suite);
> >   * everything else is definitely initialized.
> >   */
> >  #define kunit_test_suite(suite)                                                       \
> > -       static int kunit_suite_init##suite(void)                               \
>
> Oh this should have been __init before.

No, the stuff in this patch shouldn't be init. With the work that Alan
has been doing (adding support for modules, debugfs); the test code
can run after booting, so init in any of this code is incorrect.

> > -       {                                                                      \
> > -               return kunit_run_tests(&suite);                                \
> > -       }                                                                      \
> > -       late_initcall(kunit_suite_init##suite)
> > +       static struct kunit_suite *__kunit_suite_##suite                       \
> > +       __used __aligned(8) __section(.kunit_test_suites) = &suite
> >
> >  /*
> >   * Like kunit_alloc_resource() below, but returns the struct kunit_resource
> > diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> > new file mode 100644
> > index 0000000000000..978086cfd257d
> > --- /dev/null
> > +++ b/lib/kunit/executor.c
> > @@ -0,0 +1,43 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Base unit test (KUnit) API.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/printk.h>
> > +#include <kunit/test.h>
> > +
> > +/*
> > + * These symbols point to the .kunit_test_suites section and are defined in
> > + * include/asm-generic/vmlinux.lds.h, and consequently must be extern.
> > + */
> > +extern struct kunit_suite *__kunit_suites_start[];
> > +extern struct kunit_suite *__kunit_suites_end[];
> > +
> > +static bool kunit_run_all_tests(void)
>
> Should be __init?

It could be, I think. Alan's code doesn't call this, so for now we
might as well make it __init.

> > +{
> > +       struct kunit_suite **suite;
>
> Can this be const? And the linker references above too?

Good catch. Will fix.

> > +       bool has_test_failed = false;
> > +
> > +       for (suite = __kunit_suites_start;
> > +            suite < __kunit_suites_end;
> > +            ++suite) {
> > +               if (kunit_run_tests(*suite))
> > +                       has_test_failed = true;
> > +       }
> > +
> > +       return !has_test_failed;
> > +}
> > +
> > +static int kunit_executor_init(void)
>
> Should be __init?

Will do.

> > +{
> > +       if (kunit_run_all_tests())
> > +               return 0;
> > +       else
> > +               return -EFAULT;
>
> Why two functions instead of just one that is the target of the
> late_initcall? Nitpick: deindent that last return and take it out of the
> else.

Yeah, it probably makes more sense to just call kunit_run_all_tests
and have it return an int.

> > +}
> > +
> > +late_initcall(kunit_executor_init);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
