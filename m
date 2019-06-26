Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ACD55F95
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 05:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM9gM5m+Y4iTnvo2g2qlgwMmol32dfush/oXROCbUz0=; b=NTs7oAv5YGzAe0
	y+i4++VV7abty/WudmAm371RbF1eLpIsL7Cx13E5Vld5J7XgHovDJoM564T/+lteQHS17UUOz5tGt
	2kqSOWwHNU8CwwW2vwa6HWNfBC9R8R9F0PE+pMizi26lqGG7m/g4Qpw4oBbCfbDcr/Viq2w3c2M21
	UeEeZgC9MLF03fQDQ2COrTixYdcRHntDr2aZIfM71MK6zHqd8L2w34Ga1jicz470iwbt1do/tooD1
	maLfBNIkmqmYWeb0Tas8P3axE+82p1wJdNIxBqeQph/YpLIKFQ0lC1f7BknlU3YGu90K5wiycgvQf
	LQulMJUKAp37/lUK6VAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfyjq-0003VX-Db; Wed, 26 Jun 2019 03:36:50 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfyjn-0003V2-33
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 03:36:48 +0000
Received: by mail-pf1-f193.google.com with SMTP id c85so550221pfc.1
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 20:36:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OjCrPT4hCWb7xnrRZjLNhlZP4Wd3/W1zcGw/ncRINUY=;
 b=Tftrj1XD61hgISF2vc+CkV+p1Xu92HY7KqyA/8oWtxYZJS3xtS6HopMPo2gNSxtcj6
 Zakv2EwyO0cczWAkaXIoMWQ88u6wGv4SJ7T0lZJx+4QDJeCdecd1ItYr2lAQF7Akal+c
 TEOtL3U2tR9Ki5XOX+0yXusFbl8eh1AELkdxYICRzIBMC0OW8EXXjxT895m4ql/0I3MU
 Ih5Vpl75n+Z3MRf6yDSlrbOtCYiO1zYSDNjmtKNdiSzzj6Ly0CSkZk19fxoHqlGwQXER
 yZlJImtsUIgCYFM1sjTy+bDQJJ9yO8NpiUpRfFv3AYBamBTindc+39lV+m7Clox3EEJz
 P72Q==
X-Gm-Message-State: APjAAAWDEBrUnnGyYlo6Nr9YlRtbGddC2dVAQLig7r2pScU0w3+8qgdP
 hnqXibLThk4sXoOkjH42uD8=
X-Google-Smtp-Source: APXvYqzdBmpyE53WQRasxEh7JB6Bcl0/Rzj4Dgw3h206UsHqJ5Xslk8HuWxgkcEgUlDNN6u05UT4Bg==
X-Received: by 2002:a17:90a:2190:: with SMTP id
 q16mr1703219pjc.23.1561520205640; 
 Tue, 25 Jun 2019 20:36:45 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id d187sm17418788pfa.38.2019.06.25.20.36.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 20:36:44 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BA50240336; Wed, 26 Jun 2019 03:36:43 +0000 (UTC)
Date: Wed, 26 Jun 2019 03:36:43 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190626033643.GX19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190625223312.GP19023@42.do-not-panic.com>
 <CAFd5g46TLAONgXiZkFM98BPd-sariMTwhmYG9hSJ+M9=r-ixeg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g46TLAONgXiZkFM98BPd-sariMTwhmYG9hSJ+M9=r-ixeg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_203647_134968_9C99B5EF 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, Jun 25, 2019 at 05:07:32PM -0700, Brendan Higgins wrote:
> On Tue, Jun 25, 2019 at 3:33 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >
> > On Mon, Jun 17, 2019 at 01:25:56AM -0700, Brendan Higgins wrote:
> > > +/**
> > > + * module_test() - used to register a &struct kunit_module with KUnit.
> > > + * @module: a statically allocated &struct kunit_module.
> > > + *
> > > + * Registers @module with the test framework. See &struct kunit_module for more
> > > + * information.
> > > + */
> > > +#define module_test(module) \
> > > +             static int module_kunit_init##module(void) \
> > > +             { \
> > > +                     return kunit_run_tests(&module); \
> > > +             } \
> > > +             late_initcall(module_kunit_init##module)
> >
> > Becuase late_initcall() is used, if these modules are built-in, this
> > would preclude the ability to test things prior to this part of the
> > kernel under UML or whatever architecture runs the tests. So, this
> > limits the scope of testing. Small detail but the scope whould be
> > documented.
> 
> You aren't the first person to complain about this (and I am not sure
> it is the first time you have complained about it). Anyway, I have
> some follow on patches that will improve the late_initcall thing, and
> people seemed okay with discussing the follow on patches as part of a
> subsequent patchset after this gets merged.
> 
> I will nevertheless document the restriction until then.

To be clear, I am not complaining about it. I just find it simply
critical to document its limitations, so folks don't try to invest
time and energy on kunit right away for an early init test, if it
cannot support it.

If support for that requires some work, it may be worth mentioning
as well.

> > > +static void kunit_print_tap_version(void)
> > > +{
> > > +     if (!kunit_has_printed_tap_version) {
> > > +             kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
> >
> > What is this TAP thing? Why should we care what version it is on?
> > Why are we printing this?
> 
> It's part of the TAP specification[1]. Greg and Frank asked me to make
> the intermediate format conform to TAP. Seems like something else I
> should probable document...

Yes thanks!

> > > +             kunit_has_printed_tap_version = true;
> > > +     }
> > > +}
> > > +
> > > +static size_t kunit_test_cases_len(struct kunit_case *test_cases)
> > > +{
> > > +     struct kunit_case *test_case;
> > > +     size_t len = 0;
> > > +
> > > +     for (test_case = test_cases; test_case->run_case; test_case++)
> >
> > If we make the last test case NULL, we'd just check for test_case here,
> > and save ourselves an extra few bytes per test module. Any reason why
> > the last test case cannot be NULL?
> 
> Is there anyway to make that work with a statically defined array?

No you're right.

> Basically, I want to be able to do something like:
> 
> static struct kunit_case example_test_cases[] = {
>         KUNIT_CASE(example_simple_test),
>         KUNIT_CASE(example_mock_test),
>         {}
> };
> 
> FYI,
> #define KUNIT_CASE(test_name) { .run_case = test_name, .name = #test_name }

> 
> In order to do what you are proposing, I think I need an array of
> pointers to test cases, which is not ideal.

Yeah, you're right. The only other alternative is to have a:

struct kunit_module {
       const char name[256];
       int (*init)(struct kunit *test);
       void (*exit)(struct kunit *test);
       struct kunit_case *test_cases;
+       unsigned int num_cases;
};

And then something like:

#define KUNIT_MODULE(name, init, exit, cases) { \
	.name = name, \
	.init = init, \
	.exit = exit, \
	.test_cases = cases,
	num_cases = ARRAY_SIZE(cases), \
}

Let's evaluate which is better: one extra test case per all test cases, or
an extra unsigned int for each kunit module.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
