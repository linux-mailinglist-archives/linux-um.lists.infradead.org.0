Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C7857C94
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 08:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CwPltivyfd4ltBaxvGW54ItNdzqz1P/Vr2RAiWnNZw=; b=qJ4w+rKyNiIxP6
	00Tk5I+oc3RTjc+9JIL19C2fjpnoVjIbQA5zoohaqGHXQ6dw4vfBftW4Jck8DND0xMRQzxNIm7MA3
	h4VD8yV0YfUkCDnac3kUu8LVwxTg0vtjXru7B1+ldX93Qae/QBBIsDRSGtZlJlUWcD+bs3aAt1oyP
	YdVWIU5ZH0P5XaQrIbxOH67Jn9em+UjMw7CQ+B6z/EKzXiRKR2Tk5cDfq5jkfcFL656d0We/pNVTN
	qBKjoCwK41f+mQ22kQh4SnDJoGKWaKC0NNbnQKQuDlzsnFVZky7PcQ1RAlh61UWqoWFHo9LIes/1R
	SdgqjEPo5rGDta7nQSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOJg-0002zF-UC; Thu, 27 Jun 2019 06:55:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO9A-0006KM-85
 for linux-um@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GeRJM7RinPoMIQ6Cxu4JfD/FJhf/Q7830l4heE4Z/70=; b=TrCu0JUZ2oi/KUelhXr7XTT8X
 sDbJkf3oMEgJp7NFhBRx+50ZyLPBrdjSDYYNUNE/dnP8YKJpxjiB43+x81CNK2RcJ64/t8zM+nDky
 TsyiHdxiFlCmB2t1DJryA4EQCq1PpOyYQzmekiP0IkKPtG1m0+kzlSTdf7nG0Fnp2VynBS5B+LYWN
 nI0I/m7lqTGG+0WKQ0EJRnC6oeOlKP8cfxSC2ESC9I6lxtWchchD+A2muN5nO0awIvFVPYxU+VnUM
 eGpiXIbg1pwa4RQXl3RfrPrbHVuUswNjMS3kF3mAhB0mmHJVbQCdatsaAnoubPJM80CKt+jKY0O2L
 teGC0B52A==;
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGFi-0002gk-3z
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 22:18:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so36139pgl.2
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 15:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GeRJM7RinPoMIQ6Cxu4JfD/FJhf/Q7830l4heE4Z/70=;
 b=S6f2tU7Miw4rgiEW47807L33bYsjxaGq9kSV5FlqDefi2WxZ9lTn6WNXPehPhg/T1u
 QlukqMtHkRexD1aKOxiS1bTcFztoPMq6vRmfl07xvAlF8qkmKEYcRYv6yewHpyrNh/C2
 b54UNQQh2z4Ml5QHakDNUwkkVSa3wpee9qOwZX656U2rr12uOzmYMsnmgvSxd7nO2lJu
 uPRgbm1UzaYtxmtry6zEXpmUHhjd6DhSWjC+3Gn8V/HQxryzbZ7pGyLo06Eq0gUDpp5U
 DjOJXTOOdEhiALmttRxHwycmxPuBaL40MgKhCWjDKs1lUcvOyyLeVeXFZ4cT8o8pd53u
 IzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GeRJM7RinPoMIQ6Cxu4JfD/FJhf/Q7830l4heE4Z/70=;
 b=XSz1kE8UcumsxMkg0rZDTooQ4SXL+oWHEb2cQJO8DY63VLhbSLJAgrmHL2habYlRl2
 8vU/yhG4XwEfwiYp3EzvrebwzyMGQPQg72JiXm5sq8Ky+meOJFd1NRU66TSR1Enca3aX
 77udbJBt3NPwZp3JdWN21EvkbgNmgUEFi1Y4JwIPkz6Evk4cnnxL5biMenUBD+7ivFSu
 I4BfFTPQzltiyiud3qNNTGEdLvjHnA3xi3XiiB3G7zP29dYYpSnrBzCkpTs9eQhmeGq8
 EBawaLVjGskHBNpzM7iDZPGC7vOOJNKUJDGQUrWVVWUON95FMFD8+saCkVxiKQ0KvF7i
 K4MA==
X-Gm-Message-State: APjAAAXTWC64lKanMsAowYhLwHky9eXvIqj7ZoSKfMDppU83xGWtqLlS
 gu9K/T+KOeab+kFAYcUM8GF9uQLMUuBqteol3mFC6g==
X-Google-Smtp-Source: APXvYqzsQMLB7isztv92bzu5YXVWaHFQchBB4ZbMDdOvCDM8VotktY7nYV0uIl6GRCqZMb6GciobJW+UAft7ArjB2vg=
X-Received: by 2002:a17:90b:f0e:: with SMTP id
 br14mr1630712pjb.117.1561587408779; 
 Wed, 26 Jun 2019 15:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190625223312.GP19023@42.do-not-panic.com>
 <CAFd5g46TLAONgXiZkFM98BPd-sariMTwhmYG9hSJ+M9=r-ixeg@mail.gmail.com>
 <20190626033643.GX19023@42.do-not-panic.com>
In-Reply-To: <20190626033643.GX19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 26 Jun 2019 15:16:36 -0700
Message-ID: <CAFd5g45PTtPumkpp1i41kkixZaR55pbqaF2DsuKNmh5UyAVwOg@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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

On Tue, Jun 25, 2019 at 8:36 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Tue, Jun 25, 2019 at 05:07:32PM -0700, Brendan Higgins wrote:
> > On Tue, Jun 25, 2019 at 3:33 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > >
> > > On Mon, Jun 17, 2019 at 01:25:56AM -0700, Brendan Higgins wrote:
> > > > +/**
> > > > + * module_test() - used to register a &struct kunit_module with KUnit.
> > > > + * @module: a statically allocated &struct kunit_module.
> > > > + *
> > > > + * Registers @module with the test framework. See &struct kunit_module for more
> > > > + * information.
> > > > + */
> > > > +#define module_test(module) \
> > > > +             static int module_kunit_init##module(void) \
> > > > +             { \
> > > > +                     return kunit_run_tests(&module); \
> > > > +             } \
> > > > +             late_initcall(module_kunit_init##module)
> > >
> > > Becuase late_initcall() is used, if these modules are built-in, this
> > > would preclude the ability to test things prior to this part of the
> > > kernel under UML or whatever architecture runs the tests. So, this
> > > limits the scope of testing. Small detail but the scope whould be
> > > documented.
> >
> > You aren't the first person to complain about this (and I am not sure
> > it is the first time you have complained about it). Anyway, I have
> > some follow on patches that will improve the late_initcall thing, and
> > people seemed okay with discussing the follow on patches as part of a
> > subsequent patchset after this gets merged.
> >
> > I will nevertheless document the restriction until then.
>
> To be clear, I am not complaining about it. I just find it simply
> critical to document its limitations, so folks don't try to invest
> time and energy on kunit right away for an early init test, if it
> cannot support it.
>
> If support for that requires some work, it may be worth mentioning
> as well.

Makes sense. And in anycase, it is something I do want to do, just not
right now. I will put a TODO here in the next revision.

> > > > +static void kunit_print_tap_version(void)
> > > > +{
> > > > +     if (!kunit_has_printed_tap_version) {
> > > > +             kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
> > >
> > > What is this TAP thing? Why should we care what version it is on?
> > > Why are we printing this?
> >
> > It's part of the TAP specification[1]. Greg and Frank asked me to make
> > the intermediate format conform to TAP. Seems like something else I
> > should probable document...
>
> Yes thanks!
>
> > > > +             kunit_has_printed_tap_version = true;
> > > > +     }
> > > > +}
> > > > +
> > > > +static size_t kunit_test_cases_len(struct kunit_case *test_cases)
> > > > +{
> > > > +     struct kunit_case *test_case;
> > > > +     size_t len = 0;
> > > > +
> > > > +     for (test_case = test_cases; test_case->run_case; test_case++)
> > >
> > > If we make the last test case NULL, we'd just check for test_case here,
> > > and save ourselves an extra few bytes per test module. Any reason why
> > > the last test case cannot be NULL?
> >
> > Is there anyway to make that work with a statically defined array?
>
> No you're right.
>
> > Basically, I want to be able to do something like:
> >
> > static struct kunit_case example_test_cases[] = {
> >         KUNIT_CASE(example_simple_test),
> >         KUNIT_CASE(example_mock_test),
> >         {}
> > };
> >
> > FYI,
> > #define KUNIT_CASE(test_name) { .run_case = test_name, .name = #test_name }
>
> >
> > In order to do what you are proposing, I think I need an array of
> > pointers to test cases, which is not ideal.
>
> Yeah, you're right. The only other alternative is to have a:
>
> struct kunit_module {
>        const char name[256];
>        int (*init)(struct kunit *test);
>        void (*exit)(struct kunit *test);
>        struct kunit_case *test_cases;
> +       unsigned int num_cases;
> };
>
> And then something like:
>
> #define KUNIT_MODULE(name, init, exit, cases) { \
>         .name = name, \
>         .init = init, \
>         .exit = exit, \
>         .test_cases = cases,
>         num_cases = ARRAY_SIZE(cases), \
> }
>
> Let's evaluate which is better: one extra test case per all test cases, or
> an extra unsigned int for each kunit module.

I am in favor of the current method since init and exit are optional
arguments. I could see myself (actually I am planning on) adding more
optional things to the kunit_module, so having optional arguments will
make my life a lot easier since I won't have to go through big
refactorings around the kernel to support new features that tie in
here.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
