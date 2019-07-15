Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E8D69E52
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 23:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfxUQhNyI/Rfgybvw49NCOISPo0/c2GkycGG60uMh4I=; b=PTHNhD3eGkfCFI
	imHCw1UZ/ZoC2vRsMOt4eZ5tYYYZXIQbze1PdPb1FZGN10jP1MfIK7xaNIUwzSxuUAhmQsYaTB/NT
	txtqRPrz6Wv/CUKijqA8SropvKL9FBhJrxOWsGKeoO3rxbGNli79Z0Eb1zt68d9wHECPit2Efw5AO
	HpINfsAqy5Z6FewGbxYKmZLrAthZ/K8uYor/NKyd/pQ21m4EnbnJ+MTvlmaQd/jm56o0mNWNowlL0
	86StG/npb5Y/gRNM4G5i1yYbgpAGLbzvRQUP+QcDtwSNWjiDtVQ7sLFskJCqtAFAa31ypyCg2DUfb
	x2Nc5jRdoh0HWOVXz8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8Tx-0006cw-Bt; Mon, 15 Jul 2019 21:26:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8Tu-0006cF-3i
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 21:25:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so8029192pfq.0
 for <linux-um@lists.infradead.org>; Mon, 15 Jul 2019 14:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L1iVnKb9KyH2VdRaa+1X1AxuS2MqitxfIlVlkn/kOv8=;
 b=OKadg9adfR8FnEoQT6HdGl96SBZxASHai1a3d6JJ7kS2KeuZ1gp/Sww0dZ4FNnRfmX
 dsWE9zqYktoShjIU+eYZsCRcFIJfFws6QoK2qlbR+qOq4rr/hOZP2M3LcnN2q482/I73
 uk9eNSjzCb/KkfhP4BJ2nmSyKV5xwGPcSeH7IrIsnT+SSVepNWQYB1x9JIyW2ECp5yWy
 v4jcSyoBZJSrmeWQFBgJn1mNjyDuuQcjVCEz7vy2pTS+5CwXEpnaX+c+7wd+NdqiTuWs
 jLfiDc8e4oMqUtNtGi1qAx20ReiWP9Qgxngtq/5EbA2D41xPwKDuHWOLS0EUq/G9lFRU
 uKpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L1iVnKb9KyH2VdRaa+1X1AxuS2MqitxfIlVlkn/kOv8=;
 b=nSZlXDBEEwQj09NvpTvWoV1gTzd4Z/8pRU2su6YG32xKjsvIIXzbroIWMzHQQCgCjP
 nv6UXqUMi5d9g1uba+rElA5JrpfcBagTiC7T4T0zusO1MOwyMstE11iMHIHLSG/dnsNs
 eyZms+daYoB8LwAhItW+DbtPzEoFtg87KzguN3SflbXeubOdZsODFbP1HzQl03VkJUlK
 XnDJ3ybhLaZ2VPsrM83PB2FX2DXawaEX3/9j80VjyvrTWiYzKoR63TqTJDjKRzHmLsyk
 +Y3/VjmQyHTplp2HFMuV7il87aMIotmhjJ4f5fPUgijwwwB/bPQQtT3yUD8klMP5+HwL
 ATDw==
X-Gm-Message-State: APjAAAXwKLwWgQBCIqbSmIvlUlAWurYPsa4Rkq4o9xWlJoCMZG3Oy39C
 GjqKfhljSQpFME8dPauuFGrmUqr2BdNDmh9NTvioTg==
X-Google-Smtp-Source: APXvYqxYpwH7M9Tn69WNYt23pvYEmwOFSLt2yT+zRsvwVW6B093wD7DIpVEsyGIo3whwBHoCVELofo1GZGIk7QmjTys=
X-Received: by 2002:a63:205f:: with SMTP id r31mr29138784pgm.159.1563225956600; 
 Mon, 15 Jul 2019 14:25:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-2-brendanhiggins@google.com>
 <20190715201054.C69AA2086C@mail.kernel.org>
In-Reply-To: <20190715201054.C69AA2086C@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 15 Jul 2019 14:25:45 -0700
Message-ID: <CAFd5g44kWHYceo85qxL98JKH2FYBwVLFuLzqNR+APpMC1aKWUQ@mail.gmail.com>
Subject: Re: [PATCH v9 01/18] kunit: test: add KUnit test runner core
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_142558_180844_02054AE5 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Jul 15, 2019 at 1:10 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-12 01:17:27)
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
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>
> Minor nits below.
>
> > diff --git a/kunit/test.c b/kunit/test.c
> > new file mode 100644
> > index 0000000000000..571e4c65deb5c
> > --- /dev/null
> > +++ b/kunit/test.c
> > @@ -0,0 +1,189 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Base unit test (KUnit) API.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <linux/kernel.h>
> > +#include <kunit/test.h>
> > +
> > +static void kunit_set_failure(struct kunit *test)
> > +{
> > +       WRITE_ONCE(test->success, false);
> > +}
> > +
> [...]
> > +
> > +void kunit_init_test(struct kunit *test, const char *name)
> > +{
> > +       test->name = name;
> > +       test->success = true;
> > +}
> > +
> > +/*
> > + * Performs all logic to run a test case.
> > + */
> > +static void kunit_run_case(struct kunit_suite *suite,
> > +                          struct kunit_case *test_case)
> > +{
> > +       struct kunit test;
> > +       int ret = 0;
> > +
> > +       kunit_init_test(&test, test_case->name);
> > +
> > +       if (suite->init) {
> > +               ret = suite->init(&test);
>
> Can you push the ret definition into this if scope? That way we can
> avoid default initialize to 0 for it.

Sure! I would actually prefer that from a cosmetic standpoint. I just
thought that mixing declarations and code was against the style guide.

> > +               if (ret) {
> > +                       kunit_err(&test, "failed to initialize: %d\n", ret);
> > +                       kunit_set_failure(&test);
>
> Do we need to 'test_case->success = test.success' here too? Or is the
> test failure extracted somewhere else?

Er, yes. That's kind of embarrassing. Good catch.

> > +                       return;
> > +               }
> > +       }
> > +
> > +       test_case->run_case(&test);
> > +
> > +       if (suite->exit)
> > +               suite->exit(&test);
> > +
> > +       test_case->success = test.success;

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
