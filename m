Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFD8627F6
	for <lists+linux-um@lfdr.de>; Mon,  8 Jul 2019 20:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZjTPH0R1WORllF1kw98dMgab53iJNPG4/2R+rUTads=; b=Q0FsEvyu+bR1bB
	lc385zbELRsK8R5k9iJXAtteisPnvnGu5oIm8oHu8X9BYEFwCfmmtLt+ziSKc22Cfdws2GHxaD1+U
	K3NvimA5qKaMIe4EBVd2ea6xQSv3KCkMXvZedtW3dCgKd2jLSD8AWXAarrYfLEZwxJenOqIC9fWja
	E88YbHu2GCkVkpe/bAC52O62jYHjwDDZeC16SGi0PoPcZNwWQSNH4sDWtqTgewBiLkL8ntTC9gBRu
	ZCKkuj4vgLAYGeYxzwqrSzdbKoD3xQMBom/toezBDWDh66dGi09M4w40JVIokm3dxmigmY9LGyf4x
	Zldz57aDKtMm28SUqlcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkY4D-00017U-Ia; Mon, 08 Jul 2019 18:08:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkY4A-00015w-IG
 for linux-um@lists.infradead.org; Mon, 08 Jul 2019 18:08:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so7965108pfe.11
 for <linux-um@lists.infradead.org>; Mon, 08 Jul 2019 11:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pl4l3gaXCZ0Civm5i1pNfvFYe/9qjH5f6pxejgr6AT8=;
 b=SmOjZWgQtja4PiBSvkc/DsaRuuY8KuEdsMMIKFu//v+ppa1NV5GwqJ4JU08u4uuqXU
 KBGOdoVwwU+z3nPB5Yc7Nj2ei2N1Y2sszCQi7aydqX+v1bs0R5WVY9VfrLuAxD0X22yO
 et4/wVXqTEuA8XKb8I+GG2Cy0aB5wgbYiiI9zkmmG0P1bXmqCbs0GEYAywdf8m69uDNv
 i3LNyALK0qO5EHrEqLLK7h1Y4PRr0CfVpj56uFuOU19A9ib63eiTFseAJoBv3geF+XdI
 Ex1jzjCOgerKv5XAy3Zhbk2qyoHk/ecWgRcxMQ7auZjG3EZDzZIqKZ+9SL7kyLXtMMIf
 MRgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pl4l3gaXCZ0Civm5i1pNfvFYe/9qjH5f6pxejgr6AT8=;
 b=eyGbMiMpTHTzz4DUfiSTPEAVr1r5WJ2Z92orTMUEluzJzIGoSWR0k7hnOoNnlraMmD
 nwL+H3HevXus79YpUoDNAo30tlzYjA7OuIUg/HsC1FWjYAwyzwvV/Iw6JPxO3Z+X4Xl8
 a7a8K/ZkaVChBSUFSpgCipPXywvcYZlCTtUpAGbOURFDi188zSbeYijDNNCvkLS9Da1W
 tT8t1eRB5x4KssYaj+G6oOlkXQpGwghM+qS56SfbI8udvdZz+4lXv2ReYkwiKX7mM/eH
 qRc0vAS7M6BfkOZebFnd89y4fheeziCeSoRrlQsO1yWpfFER8hh0eLgEi+UKsRQjxdfG
 Ozow==
X-Gm-Message-State: APjAAAWtp/A7Ddxn2SAqCjnFjIaj5GYFO2mXRm0tD0IzsYkWywVEpIUV
 nsJEZ5hlZWe8O+C5ilWej9iOQPHItoQhRCvxplOxjQ==
X-Google-Smtp-Source: APXvYqwoLoh11AGLeVf5uSZhLWgN1V0Lf0IPFYJElvqds2Mjg+FKGEtSZZdm1FCZKhiAeE2kYC6jZBxFraVmnG074HI=
X-Received: by 2002:a63:b919:: with SMTP id z25mr25337810pge.201.1562609318390; 
 Mon, 08 Jul 2019 11:08:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-2-brendanhiggins@google.com>
 <20190705201505.GA19023@42.do-not-panic.com>
In-Reply-To: <20190705201505.GA19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 8 Jul 2019 11:08:27 -0700
Message-ID: <CAFd5g45cF9rYc8YupnCgd=7xz_yW+_TMp_L+cSFUBW7d9njnVQ@mail.gmail.com>
Subject: Re: [PATCH v6 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_110842_610708_7138F57A 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Fri, Jul 5, 2019 at 1:15 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Wed, Jul 03, 2019 at 05:35:58PM -0700, Brendan Higgins wrote:
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
>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
>
> But a nitpick below, I think that can be fixed later with a follow up
> patch.
>
> > +/**
> > + * struct kunit - represents a running instance of a test.
> > + * @priv: for user to store arbitrary data. Commonly used to pass data created
> > + * in the init function (see &struct kunit_suite).
> > + *
> > + * Used to store information about the current context under which the test is
> > + * running. Most of this data is private and should only be accessed indirectly
> > + * via public functions; the one exception is @priv which can be used by the
> > + * test writer to store arbitrary data.
> > + *
> > + * A brief note on locking:
> > + *
> > + * First off, we need to lock because in certain cases a user may want to use an
> > + * expectation in a thread other than the thread that the test case is running
> > + * in.
>
> This as a prefix to the struct without a lock seems odd. It would be
> clearer I think if you'd explain here what locking mechanism we decided
> to use and why it suffices today.

Whoops, sorry this should have been in the next patch. Will fix.

> > +/**
> > + * suite_test() - used to register a &struct kunit_suite with KUnit.
>
> You mean kunit_test_suite()?

Yep, sorry about that. Will fix.

> > + * @suite: a statically allocated &struct kunit_suite.
> > + *
> > + * Registers @suite with the test framework. See &struct kunit_suite for more
> > + * information.
> > + *
> > + * NOTE: Currently KUnit tests are all run as late_initcalls; this means that
> > + * they cannot test anything where tests must run at a different init phase. One
> > + * significant restriction resulting from this is that KUnit cannot reliably
> > + * test anything that is initialize in the late_init phase.
>                             initialize prior to the late init phase.
>
>
> That is, this is useless to test things running early.

Yeah, I can add that phrasing in.

> > + *
> > + * TODO(brendanhiggins@google.com): Don't run all KUnit tests as late_initcalls.
> > + * I have some future work planned to dispatch all KUnit tests from the same
> > + * place, and at the very least to do so after everything else is definitely
> > + * initialized.
>
> TODOs are odd to be adding to documentation, this is just not common
> place practice. The NOTE should suffice for you.

Because it is a kernel doc? Would you usually make a separate
non-kernel doc comment for a TODO? I guess that makes sense.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
