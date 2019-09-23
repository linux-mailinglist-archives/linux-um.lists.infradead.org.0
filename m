Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB2BBAF1
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 20:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msvNuDYaTCpMxyEzUdEwP+JXCVmxcnpo2oIe8Bn12Bo=; b=PzONH3JFbRpmyq
	3dJ+LDaFfE+Zn8L7KmhuergCCjJZTzS4oVL7fL+rCV2aFkmQDU2I+sm4fDeHgmd93gMmAKwe2iQb9
	UT108zcV+DhQcjmxt5mOlm6PeM2W3dPqAQIOxNKozorXnYQSyBzE2B/EzgxChl8/hW5fQApg6s+xi
	G2HEKZSRiu6f7Vve4YDkE9LAivHRKp/DGA15DvFVPE6iknhfxdVRVqYs5GrrhhiAvB8A4cZ89FI+U
	g8jrBX/UhQE+tsUC6QnFlO+YW88c0YrCnpcZKJM6HrUC0/ripuvRmvtc28RMICnWQhiAp9U853q23
	Q8WdkrgkD+ijWiOpgkrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSjM-0003xl-I5; Mon, 23 Sep 2019 18:06:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSjJ-0003wo-Kr
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 18:06:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so6849205plr.1
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 11:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nhneKc2j612Q2N+13gaGbKUVRsMhSSxGH7dWRfDGMkM=;
 b=T1+NUcrIy3lmkEWKUYoZizpT4pz7k1bgugAw5x236rFYSY4jiXwwGSkW/t3eTOgxZZ
 BdFUIyPtNrmuOnFW8pMCBh0TOJ0ymwQs3hrr2tpjSwDy/Jn7hGK64HYhWlOR+Pme/Rjs
 q1skpdHUJIQUzoH1STCk8Qg+RNLa+nlemSvf5GuWwDF1JHGzH7MzOgvgGfuUDt1Yjlx+
 jLfCXyd8JabRhAP+sdDZJeube1e/2Pp2+w4UQdEthm0TnALHcGP03fa6VfY8gUFfbf65
 93WWIiL7H75Fl011ZWNdHPF+hL1hlBHne2JyK6E63p3OCh/BSVxvl8asUe8na9vlCXYJ
 Puqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nhneKc2j612Q2N+13gaGbKUVRsMhSSxGH7dWRfDGMkM=;
 b=kzdDidMo+iJ6yWKDUIw/rA9HljGopMCHFrhYBPeXAGfYAstUBw3M0iZSk9DBwxh4ll
 SSX92sDZC3yxSgwePcUdqyvsnOnM+rF8guW+Dk/pBcNfBvReK2JzBok2riOMG0KuzLeb
 WnkGkfUOhr+RdZYTMlRdefPr54IzFs7UrW1e6+zunhySqysoUNbj7eB1Vs6UuJkCgZOX
 2/Xyl2Z1nP8OmC6Uiva4qA1Huql1e+gXg86V1CV3XoOj0144LhkIFQ3WwZ+jWa0Gb5IF
 U6ZIVfcrZINJODHnWhhM7TBUs6YSiU83043YJluyFGAuzEu30Q7hqrNtRdsZJFzzziXR
 WUpw==
X-Gm-Message-State: APjAAAUQPTijjGgg88NFIvWguXti7odrIDKA2MQ3ve00QvEPrio0Hy5W
 VMMKj/77nOk1YqD6q9bC0XMzG9Cuy3PxjhIIiNaGRQ==
X-Google-Smtp-Source: APXvYqwfsjyOL3n2LFVEPJm/qlWBl4UOe3/cXY8+uFis2YYWhVkjpN1GVmQ/ETS5lMq5TdaURd2f4h4p74UheIpwH8I=
X-Received: by 2002:a17:902:ff0e:: with SMTP id
 f14mr1025347plj.325.1569261990405; 
 Mon, 23 Sep 2019 11:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20190923090249.127984-16-brendanhiggins@google.com>
 <d87eba35-ae09-0c53-bbbe-51ee9dc9531f@infradead.org>
In-Reply-To: <d87eba35-ae09-0c53-bbbe-51ee9dc9531f@infradead.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 23 Sep 2019 11:06:19 -0700
Message-ID: <CAFd5g45y-NWzbn8E8hUg=n4U5E+N6_4D8eCXhQ74Y0N4zqVW=w@mail.gmail.com>
Subject: Re: [PATCH v18 15/19] Documentation: kunit: add documentation for
 KUnit
To: Randy Dunlap <rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_110633_720031_56480E1D 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 8:48 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 9/23/19 2:02 AM, Brendan Higgins wrote:
> > Add documentation for KUnit, the Linux kernel unit testing framework.
> > - Add intro and usage guide for KUnit
> > - Add API reference
> >
> > Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >  Documentation/dev-tools/index.rst           |   1 +
> >  Documentation/dev-tools/kunit/api/index.rst |  16 +
> >  Documentation/dev-tools/kunit/api/test.rst  |  11 +
> >  Documentation/dev-tools/kunit/faq.rst       |  62 +++
> >  Documentation/dev-tools/kunit/index.rst     |  79 +++
> >  Documentation/dev-tools/kunit/start.rst     | 180 ++++++
> >  Documentation/dev-tools/kunit/usage.rst     | 576 ++++++++++++++++++++
> >  7 files changed, 925 insertions(+)
> >  create mode 100644 Documentation/dev-tools/kunit/api/index.rst
> >  create mode 100644 Documentation/dev-tools/kunit/api/test.rst
> >  create mode 100644 Documentation/dev-tools/kunit/faq.rst
> >  create mode 100644 Documentation/dev-tools/kunit/index.rst
> >  create mode 100644 Documentation/dev-tools/kunit/start.rst
> >  create mode 100644 Documentation/dev-tools/kunit/usage.rst
>
>
> > diff --git a/Documentation/dev-tools/kunit/start.rst b/Documentation/dev-tools/kunit/start.rst
> > new file mode 100644
> > index 000000000000..6dc229e46bb3
> > --- /dev/null
> > +++ b/Documentation/dev-tools/kunit/start.rst
> > @@ -0,0 +1,180 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> > +===============
> > +Getting Started
> > +===============
> > +
> > +Installing dependencies
> > +=======================
> > +KUnit has the same dependencies as the Linux kernel. As long as you can build
> > +the kernel, you can run KUnit.
> > +
> > +KUnit Wrapper
> > +=============
> > +Included with KUnit is a simple Python wrapper that helps format the output to
> > +easily use and read KUnit output. It handles building and running the kernel, as
> > +well as formatting the output.
> > +
> > +The wrapper can be run with:
> > +
> > +.. code-block:: bash
> > +
> > +   ./tools/testing/kunit/kunit.py run
> > +
> > +Creating a kunitconfig
> > +======================
> > +The Python script is a thin wrapper around Kbuild as such, it needs to be
>
>                                        around Kbuild. As such,

Thanks for pointing this out.

>
> > +configured with a ``kunitconfig`` file. This file essentially contains the
> > +regular Kernel config, with the specific test targets as well.
> > +
> > +.. code-block:: bash
> > +
> > +     git clone -b master https://kunit.googlesource.com/kunitconfig $PATH_TO_KUNITCONFIG_REPO
> > +     cd $PATH_TO_LINUX_REPO
> > +     ln -s $PATH_TO_KUNIT_CONFIG_REPO/kunitconfig kunitconfig
> > +
> > +You may want to add kunitconfig to your local gitignore.
> > +
> > +Verifying KUnit Works
> > +---------------------
> > +
> > +To make sure that everything is set up correctly, simply invoke the Python
> > +wrapper from your kernel repo:
> > +
> > +.. code-block:: bash
> > +
> > +     ./tools/testing/kunit/kunit.py
> > +
> > +.. note::
> > +   You may want to run ``make mrproper`` first.
>
> I normally use O=builddir when building kernels.
> Does this support using O=builddir ?

Yep, it supports specifying a separate build directory.

> > +
> > +If everything worked correctly, you should see the following:
> > +
> > +.. code-block:: bash
> > +
> > +     Generating .config ...
> > +     Building KUnit Kernel ...
> > +     Starting KUnit Kernel ...
> > +
> > +followed by a list of tests that are run. All of them should be passing.
> > +
> > +.. note::
> > +   Because it is building a lot of sources for the first time, the ``Building
> > +   kunit kernel`` step may take a while.
> > +
> > +Writing your first test
> > +=======================
>
> [snip]
>
> > diff --git a/Documentation/dev-tools/kunit/usage.rst b/Documentation/dev-tools/kunit/usage.rst
> > new file mode 100644
> > index 000000000000..c6e69634e274
> > --- /dev/null
> > +++ b/Documentation/dev-tools/kunit/usage.rst
>
> TBD...

What did you mean by this comment?

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
