Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321DF55CD3
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 02:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbsGE9LL0o6qADCKb9k4bzPTLAugGvtHiizfCwFgZBU=; b=HwE438M1ezKbJP
	uzzw6JPzy9Ds3NNWciPv7mIPD8cpMADtYtZKx3EnDSYh7zT+BIjSQMY2hLJnTudyQSylWkXQZM2U4
	i4e7TKapIXNAt6bUtN1zd3gRQwOO1H1qlShsgACcEy34vVAVTwkuyegK5RykJ7SuNweBNhO3g6OdK
	OxznJ/yUHfoDzVmfpD+AueB3oZUMmRNJCNt7U/Esrc9CwxY5wI0Oy/6p3/A+AN1L3iBXXCMfwaWvM
	rl13V9aq1zi574PTj1gm5mRy9mWYJQW2upQKqnaEcC/T6pZ3jI4GJF+Uh02gGROYOeZRaoWOl7izQ
	opdH9ihnqBg6EaMZ5CGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfvTZ-0002Fm-Dp; Wed, 26 Jun 2019 00:07:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfvTW-0002FF-EF
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 00:07:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so269070pfl.3
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 17:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0CKSZbZdZTCXDsFevmx6xy0jVDdxhx+j1rEEB3vl63s=;
 b=Udp0DSI1eicbAQ93CL5kbvi8Xp/6zCCrOWD+4my5+Z2KobfpntEZptXwNDN+m1HYdl
 aWzrSvRzjBSRt+1Ke5gfgolTpuldTSDWCwjjFSm2u0fallCYK2AWnGnpndlL89sFN0Zl
 GTwNluZIxE+q2xxZzY/SPhBF2gsVikHJ199bU9KJdjOqqrHUctG5Or1EMQYsJztcsOoC
 DiYGphxIA91H14nI8J5aNbvthpK6V9fOCpd2OHMJOcinqK81dIeXjiZaAKjLmKAP2Jwx
 0nEa6ArcVSNjpUjZHNws6GQlmspmdwUJ/ZxXDeWnV3qF6zllsbtRDaXwGrbAJh9mZIai
 k2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0CKSZbZdZTCXDsFevmx6xy0jVDdxhx+j1rEEB3vl63s=;
 b=M+rr4SuqYclZi3fs0YbmT8P59mJY2C/a43ICoQ5iqMrde/xyyEvSJWnlNsZlNayiYb
 8UQeYBFI3x0fMxvsFy33kTYqORzk2zUGSUt1enWhoNXD6+uMX1z8gbQapOZTulPfGYyZ
 KiGEPYTPaj4MdUfu3ki5JVa5Bh90QyN79eirJdw4waoz+Gj5ahGuSJN6991ETI7ngO5M
 gan/AsKd+z03wpyZyu9ix+FenR8v8KB250LvIYNEl+abjB0nS+KJfbbuOKMCUh7T/GUu
 vjx3JH8DfV9a0D5L0qrlpcS7j0hOHOLG7WYGpgjoCnAydGMSmXpn85hpc63kZbpAkbet
 sx5w==
X-Gm-Message-State: APjAAAUbjU0NZDY5L4sXQiFM/JO+Zsk+u3AIeXZlJ9NVPtnBez/dSqhR
 dSKdIt4DIzGOuTawDJvdAkB3yLQz+dFpWrt3wDk+nQ==
X-Google-Smtp-Source: APXvYqwFUlf+fXcTuEW4suwRhf8sO2Hw8q7BLLIj3tSrVcwKVl/cK8K/AXXabwkRnwCip/wX7DtGYsxR83H1S/Y9Z64=
X-Received: by 2002:a17:90a:be0d:: with SMTP id
 a13mr657604pjs.84.1561507663974; 
 Tue, 25 Jun 2019 17:07:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190625223312.GP19023@42.do-not-panic.com>
In-Reply-To: <20190625223312.GP19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Jun 2019 17:07:32 -0700
Message-ID: <CAFd5g46TLAONgXiZkFM98BPd-sariMTwhmYG9hSJ+M9=r-ixeg@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_170746_509034_F17150D7 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Tue, Jun 25, 2019 at 3:33 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:25:56AM -0700, Brendan Higgins wrote:
> > +/**
> > + * module_test() - used to register a &struct kunit_module with KUnit.
> > + * @module: a statically allocated &struct kunit_module.
> > + *
> > + * Registers @module with the test framework. See &struct kunit_module for more
> > + * information.
> > + */
> > +#define module_test(module) \
> > +             static int module_kunit_init##module(void) \
> > +             { \
> > +                     return kunit_run_tests(&module); \
> > +             } \
> > +             late_initcall(module_kunit_init##module)
>
> Becuase late_initcall() is used, if these modules are built-in, this
> would preclude the ability to test things prior to this part of the
> kernel under UML or whatever architecture runs the tests. So, this
> limits the scope of testing. Small detail but the scope whould be
> documented.

You aren't the first person to complain about this (and I am not sure
it is the first time you have complained about it). Anyway, I have
some follow on patches that will improve the late_initcall thing, and
people seemed okay with discussing the follow on patches as part of a
subsequent patchset after this gets merged.

I will nevertheless document the restriction until then.

> > +static void kunit_print_tap_version(void)
> > +{
> > +     if (!kunit_has_printed_tap_version) {
> > +             kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
>
> What is this TAP thing? Why should we care what version it is on?
> Why are we printing this?

It's part of the TAP specification[1]. Greg and Frank asked me to make
the intermediate format conform to TAP. Seems like something else I
should probable document...

> > +             kunit_has_printed_tap_version = true;
> > +     }
> > +}
> > +
> > +static size_t kunit_test_cases_len(struct kunit_case *test_cases)
> > +{
> > +     struct kunit_case *test_case;
> > +     size_t len = 0;
> > +
> > +     for (test_case = test_cases; test_case->run_case; test_case++)
>
> If we make the last test case NULL, we'd just check for test_case here,
> and save ourselves an extra few bytes per test module. Any reason why
> the last test case cannot be NULL?

Is there anyway to make that work with a statically defined array?

Basically, I want to be able to do something like:

static struct kunit_case example_test_cases[] = {
        KUNIT_CASE(example_simple_test),
        KUNIT_CASE(example_mock_test),
        {}
};

FYI,
#define KUNIT_CASE(test_name) { .run_case = test_name, .name = #test_name }

In order to do what you are proposing, I think I need an array of
pointers to test cases, which is not ideal.

> > +void kunit_init_test(struct kunit *test, const char *name)
> > +{
> > +     spin_lock_init(&test->lock);
> > +     test->name = name;
> > +     test->success = true;
> > +}
> > +
> > +/*
> > + * Performs all logic to run a test case.
> > + */
> > +static void kunit_run_case(struct kunit_module *module,
> > +                        struct kunit_case *test_case)
> > +{
> > +     struct kunit test;
> > +     int ret = 0;
> > +
> > +     kunit_init_test(&test, test_case->name);
> > +
> > +     if (module->init) {
> > +             ret = module->init(&test);
>
> I believe if we used struct kunit_module *kmodule it would be much
> clearer who's init this is.

That's reasonable. I will fix in next revision.

Cheers!

[1] https://github.com/TestAnything/Specification/blob/tap-14-specification/specification.md

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
