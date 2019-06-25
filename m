Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B150755AE1
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 00:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+B/c5VEnuF7AOaCUjDD3CmBpGd6GxPw8zdsLBP/gwA=; b=ABDm6pb/HKZkWr
	jmFh+pvbLiiT/S2HfgtbVSWeFQzxHFH5WEYHcSCiqvk8hwKtAzAn8A/su1tNC7ZdV7U/LhUkebRa9
	l4uxLfoNobJoP7a2meJdgVKAvImG5wpnIf5g1wescxDSW/e+KaPU18HoPdoEiHnAbSfUrrNTpPD0c
	TTSce5JQOehLjuNEv/oUAn27EUdCOTDQoD63RGXhlOymoIFfn9noZGBAY1LYgdF5273JdAeMxktso
	Orep8qDkNUULXHK1XPthZ6/c1N1jNB4bp35hv027X7rz6WI+o14veKNdcpVUnin+Cv4d2vVhcN3U/
	gLNB5c6IVsa+3Ogk2XiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftim-00024C-Ee; Tue, 25 Jun 2019 22:15:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftiN-0000gC-TJ
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 22:15:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so149910pfq.0
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 15:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3T/u7V091HbAklhSEBy2pvLlCGAKMdVNlTSclQyRnpc=;
 b=ZoosysAkLc7RgErWxK5FnvM9RfcOs6mWm5WOqtPjUqxIqHpReyhsVFvslRzLoV3q6k
 miAcaLs/6/zELponnm9xpGa9FZgG6JHCtwbwwbsHrYPAVLPTXKnsAGZekzo/1E+v3r7q
 MAyz+XT8oIYL+RBKU6gcMfBPkx0i9G9kx5C+icFSHWtjKBEQssSIkQPmyDMJkhDb/APn
 rRRqx5pehUt6wHDwbMbahfsOf2X1S8Q3jv4bjOdkgKsJGdYPvje9VOWjIuTF7Q/SCVfF
 wDn/9hiMVLqSYlkj9TG58JxRLAwgxPn7xvEpgJy0gDIbJSP6wZCqkWFGLqYmeLIB06YQ
 qR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3T/u7V091HbAklhSEBy2pvLlCGAKMdVNlTSclQyRnpc=;
 b=YwZHkQ3FWa2a1U30z7/Ko3MHFT2l2xMU58hkF+V+w7h1yYsTTyC+0ReU7+Urjju4f/
 2l1KMYj3rUD73mmxes2+OyNU/bPqxEnzDkByFAu23+mrWoqsMwjcy5oQOiUkDIiSQoc8
 UOL/OX65i1M9cRnUpcVGjl5FYhsLIwemZgb/lJwc8lRJuIiulH9vvFGU211mkBPxZrO+
 6qCcfJ1DPekM7D37ap/rcnDNMTQGZ+RuXfs1XYkfknMTav2blTYjTogs6EDGu48qR/nx
 Yoh7IBSM7A5WP4gkuQSmj77WHrh1RQ1PN1L1Gdj5SKTBWLghoNL5fSa4gXwpa8CV9zPX
 KmDA==
X-Gm-Message-State: APjAAAWOUKScCHvf3FL4rph18B5whBMQ5UJu9JwGKn9cd7TFDsxX8Ncs
 e6ss5AvAvLumUOk/cpd98eyOKYfIWOHTDu5BPiUblQ==
X-Google-Smtp-Source: APXvYqzlEoDZX+cOnuipK7PjmAMWm3uFqbtUZEXyCZSNz1gEBa4cWncDmW9O+QuwSqz4K1dG1pGT/q+vccTvIeTjlVo=
X-Received: by 2002:a63:1459:: with SMTP id 25mr40704314pgu.201.1561500896729; 
 Tue, 25 Jun 2019 15:14:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190625214427.GN19023@42.do-not-panic.com>
In-Reply-To: <20190625214427.GN19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Jun 2019 15:14:45 -0700
Message-ID: <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151501_254195_48AA8552 
X-CRM114-Status: GOOD (  35.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 2:44 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Tue, Jun 25, 2019 at 01:28:25PM -0700, Brendan Higgins wrote:
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
> >
> > > In what situation is there more than one thread reading or writing the
> > > kunit struct? Isn't it only a single process that is going to be
> >
> > As I said above, it is possible that the code under test may spawn a
> > new thread that may make an expectation or an assertion. It is not a
> > super common use case, but it is possible.
>
> I wonder if it is worth to have then different types of tests based on
> locking requirements. One with no locking, since it seems you imply
> most tests would fall under this category, then locking, and another
> with IRQ context.
>
> If no locking is done at all for all tests which do not require locking,
> is there any gains at run time? I'm sure it might be minimum but
> curious.

Yeah, I don't think it is worth it.

I don't think we need to be squeezing every ounce of performance out
of unit tests, since they are inherently a cost and are not intended
to be run in a production deployed kernel as part of normal production
usage.

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
> Since its a new architecture and since you seem to imply most tests
> don't require locking or even IRQs disabled, I think its worth to
> consider the impact of adding such extreme locking requirements for
> an initial ramp up.

Fair enough, I can see the point of not wanting to use irq disabled
until we get someone complaining about it, but I think making it
thread safe is reasonable. It means there is one less thing to confuse
a KUnit user and the only penalty paid is some very minor performance.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
