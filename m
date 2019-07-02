Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922655D7AF
	for <lists+linux-um@lfdr.de>; Tue,  2 Jul 2019 22:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8NrWX6rxFaZjSYr8ZFhPdGpUu8cj+jbVS7NAn7Yr1c=; b=XjiJajFQBD557g
	nAghsEbzHmveFDPWhzuLxsx5aFsGMLjloQgGrpxFqKsMIGjVx57PkRCSgquERfGHYFJPfycNyaQ/V
	SAow+um1emrKQDjhT3JvAHlVQ1elk+zynzmJ7adStLs3+0yW0ERHThQam2m7k+wKZeDhlOfQ1I7gp
	whhnVC21Bw+sn8jPzGGGKVU/nxCVTr2BzxIpdGYaHIclx7Vi4/b16NLyDH8SZUqiCQn1MnT1NpHJi
	nB2QZpzr7T46xPL/MBO71xwBoaJKrJ1vNWisiprvIzr1Xaqq88ueNui24F6KmCM/au9DKir8NGn7I
	LO0iBDqWGHBk27Oz2pTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPq3-0007Px-PW; Tue, 02 Jul 2019 20:57:19 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPq0-0007Pd-SP
 for linux-um@lists.infradead.org; Tue, 02 Jul 2019 20:57:18 +0000
Received: by mail-pf1-f196.google.com with SMTP id c85so47838pfc.1
 for <linux-um@lists.infradead.org>; Tue, 02 Jul 2019 13:57:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DtQmDM1bjxYXcqNKxDIhe3kpTPPYxiOv+5lbfQfOZdE=;
 b=dvMGOAER+jvsHACnIs0zSXqdxV6MPvqyUqj7iB85dmdCF8o7mt+pcrAtJ0bSSy6/1E
 kv68I5nINHuPSvr5E3Fpu4b8ApAVq497rURY1JrFYzdJhICQvcAECsnk9jOgCXsHHj3h
 irX4Y+zhjgyU4jg8IrSLJ72toiQOKnO/lMQD6MegY1d0NKDfrdk3EgLhSg7eeEyHNAuX
 HSmAHpRxgOg5LbukgRwy8G0dkOkrCFD/BoSAp+GlO+S6PG5n8HvRJMOGi9D0t084SJqL
 XMJhRwrfeE8tPlVexliVpL6w57jPF95tVu9HS7l12p6JrX0DogHeWFafo9KkRm1hdkVq
 vdHA==
X-Gm-Message-State: APjAAAXsp/69l6UimAaJ5KI+TZPb6fBsrxP0LqPQTtbnDgp4o4Ikhcdx
 DMoBG0cvK3EHNclR+HxdVVw=
X-Google-Smtp-Source: APXvYqxgfIVc55JlioUk1yKtSLmO9ntomZUFE6/lH8QIzZr758B9lCLwgU+mAmopE2kMlm4WWSK35A==
X-Received: by 2002:a63:f342:: with SMTP id t2mr30570356pgj.83.1562101035558; 
 Tue, 02 Jul 2019 13:57:15 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id d26sm16963231pfn.29.2019.07.02.13.57.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 13:57:13 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id DC91A40251; Tue,  2 Jul 2019 20:57:12 +0000 (UTC)
Date: Tue, 2 Jul 2019 20:57:12 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 07/18] kunit: test: add initial tests
Message-ID: <20190702205712.GS19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-8-brendanhiggins@google.com>
 <20190625232249.GS19023@42.do-not-panic.com>
 <CAFd5g46mnd=a0OqFCx0hOHX+DxW+5yA2LXH5Q0gEg8yUZK=4FA@mail.gmail.com>
 <CAFd5g46=7OQDREdLDTiMgVWq-Xj2zfOw8cRhPJEihSbO89MDyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g46=7OQDREdLDTiMgVWq-Xj2zfOw8cRhPJEihSbO89MDyA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_135716_918230_2D5ABD7B 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Jul 02, 2019 at 10:52:50AM -0700, Brendan Higgins wrote:
> On Wed, Jun 26, 2019 at 12:53 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > On Tue, Jun 25, 2019 at 4:22 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > >
> > > On Mon, Jun 17, 2019 at 01:26:02AM -0700, Brendan Higgins wrote:
> > > > diff --git a/kunit/example-test.c b/kunit/example-test.c
> > > > new file mode 100644
> > > > index 0000000000000..f44b8ece488bb
> > > > --- /dev/null
> > > > +++ b/kunit/example-test.c
> > >
> > > <-- snip -->
> > >
> > > > +/*
> > > > + * This defines a suite or grouping of tests.
> > > > + *
> > > > + * Test cases are defined as belonging to the suite by adding them to
> > > > + * `kunit_cases`.
> > > > + *
> > > > + * Often it is desirable to run some function which will set up things which
> > > > + * will be used by every test; this is accomplished with an `init` function
> > > > + * which runs before each test case is invoked. Similarly, an `exit` function
> > > > + * may be specified which runs after every test case and can be used to for
> > > > + * cleanup. For clarity, running tests in a test module would behave as follows:
> > > > + *
> > >
> > > To be clear this is not the kernel module init, but rather the kunit
> > > module init. I think using kmodule would make this clearer to a reader.
> >
> > Seems reasonable. Will fix in next revision.
> >
> > > > + * module.init(test);
> > > > + * module.test_case[0](test);
> > > > + * module.exit(test);
> > > > + * module.init(test);
> > > > + * module.test_case[1](test);
> > > > + * module.exit(test);
> > > > + * ...;
> > > > + */
> 
> Do you think it might be clearer yet to rename `struct kunit_module
> *module;` to `struct kunit_suite *suite;`?

Yes. Definitely. Or struct kunit_test. Up to you.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
