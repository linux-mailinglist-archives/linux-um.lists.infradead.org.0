Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83A112365
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 22:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0T9bx10K+A7PbLa6jLn5nzPpWfv9XwiIsMd4i3JPgvI=; b=Zk7LfSnOb6Q0ci
	fUZwcOoGTWxEjAH3ypGT8PulN69gLaHzJgO7+Ac7fLncGgSXg2a1tOJcYtEcYfWJD+5QDwe/k4ZGt
	vAtdMGoyGrItiFaLu0RynmFAORAMXMSLBJkmLQgVRWB4MyEt0nPSHnAw95uqMWaa3dHKhGKCEmnJR
	/xKGVakDivf6Os4+R9d9A2/J3PWEkZmddOmrnEP9/qgzrAUlub/C1il2mKBQ+XZEMtPfw+IP7FNIj
	Pjqfxruceeo8EZUeb/V2ekG9wNY8EWnXwo3CQlXiLvM445ezq6qzz+FWsRlw8dEF8f8Fc9Wdz8o2r
	MgAMF3XjkGsFlcA5gvgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMILb-0007RX-6Z; Thu, 02 May 2019 20:30:27 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMILY-0007R4-Fd
 for linux-um@lists.infradead.org; Thu, 02 May 2019 20:30:25 +0000
Received: by mail-ot1-x344.google.com with SMTP id g24so3367637otq.2
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 13:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EDdiyphkogtVcXTbSVRyR+FjzQZde+G185126UMJh7I=;
 b=gITVrJC9deQ8wHwXinOhDV5dI98+XHC/WuqFuL8GH7a8CRP7Weez43rOFpDLFNlC0p
 SurYDhddnsqnL5Ihvys33lK/4j+PLxs8IphZcAQuHXXE7X5COStC3ZBhj/5h/Hdg9FPW
 sQYG3mb/RBDu620PDIXl0abFAqievobMhbfvYW6GdeEoPEN8iXGYFBkxbfpJn8Y1y4f8
 F6SjQjXGRwZVR+lGXlZDhrUGxSdzCSH/YiD/bsD5q2GkFQLqoLWuw3S9nlwb/QcTf+/G
 D2dqk3uPHxSxGLiPz52WCid9DnN+TbYr8zJiLQQDEG4D0HgQVfXL2NqaKqq1E/1r4TBH
 gHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EDdiyphkogtVcXTbSVRyR+FjzQZde+G185126UMJh7I=;
 b=lxoA+fNx8eEN1pP7oZ4gN7SXTUsgnN6q5U8fgysMKY4loJtUzTWvqWTwNu5F+x+pqg
 6+5/1xcH0kQOXuzvjGpwhQVoKC8+uPguB32chU02IbW4W1Uaa3WGgilbzWj+TXFWXnWn
 cTABTXDWLYjNOMAf6SXJsNbYxboeUusmxLq2Gw9jeL4o3CnWCt5TrtdO4+soafXa/FJj
 AYYs7SmTty5Qz2ldJGoGoLlgYFa9tw/cPulxuhm+49Ru84CmnlExvs9FddnPhilnUFpz
 F9QEZ0irpo3lsTQjqDWsnCHMwqQemY2s19Z++kvfPPQZ7JpeQKfkFe+JwLNPTymKlcd6
 tA8Q==
X-Gm-Message-State: APjAAAWmlj1KoCK+HxJo8dP7wql5R8D6GGyR7ThWKPBtKAqBGJmU9Pek
 tel1jixIcAdYmUwRRK/mhINMR33ZxvnmNAwJaMhh6w==
X-Google-Smtp-Source: APXvYqz43GD9Ydk/3iHIuvGx3dSX5DTZZLzaJSUOTfbGyq2mCG6ID5DjuBQ5u6fo5kf0q+kWNBtbkFi3ckrHB0dUqUs=
X-Received: by 2002:a9d:7f19:: with SMTP id j25mr3854222otq.25.1556829023216; 
 Thu, 02 May 2019 13:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-8-brendanhiggins@google.com>
 <20190502105849.GB12416@kroah.com>
In-Reply-To: <20190502105849.GB12416@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 13:30:12 -0700
Message-ID: <CAFd5g44os8xEMMiROkmX_KM4-9yL=+y6kw4-JApxhdzJV5pwkg@mail.gmail.com>
Subject: Re: [PATCH v2 07/17] kunit: test: add initial tests
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_133024_548962_77CAE832 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 3:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 01, 2019 at 04:01:16PM -0700, Brendan Higgins wrote:
> > Add a test for string stream along with a simpler example.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> >  kunit/Kconfig              | 12 ++++++
> >  kunit/Makefile             |  4 ++
> >  kunit/example-test.c       | 88 ++++++++++++++++++++++++++++++++++++++
> >  kunit/string-stream-test.c | 61 ++++++++++++++++++++++++++
> >  4 files changed, 165 insertions(+)
> >  create mode 100644 kunit/example-test.c
> >  create mode 100644 kunit/string-stream-test.c
> >
> > diff --git a/kunit/Kconfig b/kunit/Kconfig
> > index 64480092b2c24..5cb500355c873 100644
> > --- a/kunit/Kconfig
> > +++ b/kunit/Kconfig
> > @@ -13,4 +13,16 @@ config KUNIT
> >         special hardware. For more information, please see
> >         Documentation/kunit/
> >
> > +config KUNIT_TEST
> > +     bool "KUnit test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables KUnit test to test KUnit.
> > +
> > +config KUNIT_EXAMPLE_TEST
> > +     bool "Example test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables example KUnit test to demo features of KUnit.
>
> Can't these tests be module?

At this time, no. KUnit doesn't support loading tests as kernel
modules; it is something we could add in in the future, but I would
rather not open that can of worms right now. There are some other
things I would like to do that would probably be easier to do before
adding support for tests as loadable modules.

>
> Or am I mis-reading the previous logic?
>
> Anyway, just a question, nothing objecting to this as-is for now.

Cool

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
