Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822E59B4DE
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 18:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDKg0Jr7cVtGhc7Bab9k54kPCOmKIgrOBfg5xGRyxuA=; b=uJTTOiXRFUB1Hm
	AVz57wE5bNQnn37lbXDzTDw/trIBmniAszljiN929wDZHsoomZVC3RZRdc/Ox74EZf9peUWGLXEba
	ZRxzCG9BYhXQqRY2NaauRZrLo8EaXE2oWW1j3hdlfxMRSSrYokYsPMWlGYUsieamRUXYo9SGTDu5v
	zL5ds7s8SYxeW1fD4hkUS2IWd0JVBflpGB46Mmm1Bzro9tATiW52j3nSaN/r7qVO4vL2WKOkVkx6B
	7YnOboG9s0Z/sbX+KrUczVjOM2uyX5GoShbiyhoHq1JhWG2A/ZvGujF04DU8RYI2Z5stDUG0Ovvic
	UA6TMuqiYqi5ZfXi7QJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Cjl-0008UB-Bu; Fri, 23 Aug 2019 16:48:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Cji-0008Sk-Ec
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 16:48:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so5863425pld.10
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 09:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=shB6SKOCWrivD7S412WveV0DXQGCOHDXUApJqsM/wlA=;
 b=Ompr7qYsU3e4pxkTUvcGDfd4ML8vgFjnLheqC9j82bJxX2WMtGNPBrUA1tpfZZ7kkl
 2MlcYLnijPbPInvIsR6zoBG80ArVaqo/qH8Nz2C1fLluKeQqMKpdn1Isx73kDPRrmtfA
 uzlQbv8SAmt8wmBgLzDRa1pCbkLXVUC7pw3IzF7X6tCUWtvjtpbvC0Rxd012AHX4+phE
 8vFfpItPxvkt5HF2AluYoxPT8xW+p0eqWdqhZxhn3iXjphBqdQMERaOSG3vodu0lrJ5X
 dliaDAtQHPNKh2+Qm2AedTz/hBlaONpPrX2iSmH0iODNpBCdBlLEBbRkV7kNpmjj1hL+
 ogpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=shB6SKOCWrivD7S412WveV0DXQGCOHDXUApJqsM/wlA=;
 b=hqQO2x9gZneXsBsKs6fD16Te2Xm21Xea6+XBPDF1hPwBnGVQR27N/chhngTLUvTPz0
 fTgU/GZZJqK4VkymTUHhruacCOiCzLOQvq4PE+ZjH3/L3d/SNLiLVG7lrL14CT79U6ia
 MpyaN6/k+GCtbB3hNSYYuNdLvymOg0xcskrAE6vHWiN+AqHhtHIFq5SsuYFRg/LdPQet
 tTMmISnipD3xsAFie9vwvjr4nNOpE9qJq+GR8AVitaWYhlmwb1u/0Adw9aQMzA6SwcVm
 sjBc6g9OyQsUrpT6rrW8QlA6Qdy5rGsAqIiAxk49kLACb8Kf5bw/NQqSLdleKerSPo8a
 F7sw==
X-Gm-Message-State: APjAAAXgCk8n5ncEAe76oH3fdQxQuR1nRxsodFhmFlBTb/nsMXYjQk7/
 8+ncxCH5peeocdcHLrT2xEfoMqS8YXVrGcmxSg/KKQ==
X-Google-Smtp-Source: APXvYqyVqeK74/JWJUZ7pW5UAwhfOe02PTG6GeE5ufM2yWENnaiC/3vIkdv/0Gau1b+w32MpN7Tbr1pv4cTuRxiXwSc=
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr5617305plb.297.1566578900191; 
 Fri, 23 Aug 2019 09:48:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-2-brendanhiggins@google.com>
 <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
In-Reply-To: <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 23 Aug 2019 09:48:08 -0700
Message-ID: <CAFd5g44mRK9t4f58i_YMEt=e9RTxwrrhFY_V2LW_E7bUwR3cdg@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] kunit: test: add KUnit test runner core
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_094826_495429_6A12E83E 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 8:33 AM shuah <shuah@kernel.org> wrote:
>
> Hi Brendan,
>
> On 8/20/19 5:20 PM, Brendan Higgins wrote:
> > Add core facilities for defining unit tests; this provides a common way
> > to define test cases, functions that execute code which is under test
> > and determine whether the code under test behaves as expected; this also
> > provides a way to group together related test cases in test suites (here
> > we call them test_modules).
> >
> > Just define test cases and how to execute them for now; setting
> > expectations on code will be defined later.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >   include/kunit/test.h | 179 ++++++++++++++++++++++++++++++++++++++++
> >   kunit/Kconfig        |  17 ++++
> >   kunit/Makefile       |   1 +
> >   kunit/test.c         | 191 +++++++++++++++++++++++++++++++++++++++++++
> >   4 files changed, 388 insertions(+)
> >   create mode 100644 include/kunit/test.h
> >   create mode 100644 kunit/Kconfig
> >   create mode 100644 kunit/Makefile
> >   create mode 100644 kunit/test.c
> >
> > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > new file mode 100644
> > index 0000000000000..e0b34acb9ee4e
> > --- /dev/null
> > +++ b/include/kunit/test.h
> > @@ -0,0 +1,179 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Base unit test (KUnit) API.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#ifndef _KUNIT_TEST_H
> > +#define _KUNIT_TEST_H
> > +
> > +#include <linux/types.h>
> > +
> > +struct kunit;
> > +
> > +/**
> > + * struct kunit_case - represents an individual test case.
> > + * @run_case: the function representing the actual test case.
> > + * @name: the name of the test case.
> > + *
> > + * A test case is a function with the signature, ``void (*)(struct kunit *)``
> > + * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
> > + * test case is associated with a &struct kunit_suite and will be run after the
> > + * suite's init function and followed by the suite's exit function.
> > + *
> > + * A test case should be static and should only be created with the KUNIT_CASE()
> > + * macro; additionally, every array of test cases should be terminated with an
> > + * empty test case.
> > + *
> > + * Example:
>
> Can you fix these line continuations. It makes it very hard to read.
> Sorry for this late comment. These comments lines are longer than 80
> and wrap.

None of the lines in this commit are over 80 characters in column
width. Some are exactly 80 characters (like above).

My guess is that you are seeing the diff added text (+ ), which when
you add that to a line which is exactly 80 char in length ends up
being over 80 char in email. If you apply the patch you will see that
they are only 80 chars.

>
> There are several comment lines in the file that are way too long.

Note that checkpatch also does not complain about any over 80 char
lines in this file.

Sorry if I am misunderstanding what you are trying to tell me. Please
confirm either way.

Thanks

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
