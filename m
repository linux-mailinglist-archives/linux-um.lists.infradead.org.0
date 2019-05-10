Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFAD19B90
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 12:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSey1L5MiBAWK4LPVN+XencnjiYu+QW0T2KzNWxuCmE=; b=YIMsnixDD9K5Ck
	ZIGMEVkCJf7nNnVrETI6g4wgqUfa2ERKmju6FDyHLChBX3HJXDpgOz5Ff04on4r9y7GEXb7h6vzKD
	TVO02rT7gVUn6gdokmRWZBETDDznEkkj2vQ7d/u/MsrlrLtibaP/UTkqtcOh7XNXDTY0UEY/uQD8V
	UhvTsKTjHoke0Bu/QX8mWxoTLe6YADKI4bM5NljpgRn+vBjrgpreAGrhhZjk/aXs9F5uTiE/lYYf+
	1+x3AhFKdd7oNwNR+UDHuAuNj5SHrVPOhMcXBzTOajV4g+zkat4KnG4JThHNTJ9hWcL44FAftFrwp
	NkLKX7hX658lvb2eWnmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2iR-000406-BN; Fri, 10 May 2019 10:25:23 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2iN-0003zL-SO
 for linux-um@lists.infradead.org; Fri, 10 May 2019 10:25:21 +0000
Received: by mail-ot1-x343.google.com with SMTP id r10so4374230otd.4
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 03:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iI9UjzWLOTz9GmvdS5N+dD4tpC8SGzYvR6XlaJd6X3w=;
 b=RWz50WjGVhE778RI5E/gnmwHtyGZ0gaAmZ0iZ0plK5kWhBoeeKOWqyMXplH8fTtUsP
 YFZpCe51wfH5rpKYyGn5ULLWDdnHqiz/qOEV7NBjxq+KfO41fJG4qhtbH5TVMqmlTXuD
 b5rf6YzechDPYqaa7IxCgG1hq1vCZ1jw2HsD3qL0n5got4d9IQUHA7ngtw1jru23KETZ
 S2a1Yzky70EiE/cKvmqv3j36xHYkNkJZpgW2MH+/MVDg0jSJzsPJ2n3uuvsMbcTdrYqq
 lTHYE5RDq+PIvvcx+UdbW+CJ6Tf73MUjggBvl433KWXT2rTGYfdgh08GkTh9dkD5qrWP
 Kl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iI9UjzWLOTz9GmvdS5N+dD4tpC8SGzYvR6XlaJd6X3w=;
 b=rZRO9YjkpI5tQZ4QMri65QHRhemoyflGGr5lwNyj95Wm9EVz05t3lpxalDTFDPWE2P
 rXLCMK5fbtZektlV6HaC12Fgi83CKBPTfJX6PXVMNx/Jo0pTzFMu40p3ORvGhyRdyRoB
 okGTCGQ9qa3Y3pIPZfpyGLEEYNlFCk99ORe57ARNwIoGlihU9J5rRcKBORASDF+CKJsw
 /AISJb+FoRPsIJBGzKPnUedB2cLdDJtkdemI9XjQG1grEvHhqOBxgaf25ZB0bVZ5bjYK
 sDjynDU3YVkcorB/l+bk8VFdOmkm35XMd4cskX5VL1RuUAPN0gIjPnR7SVg2pjtP9GYV
 R7Yg==
X-Gm-Message-State: APjAAAX6XmyACvWQvTnqf6F3jYUAN6IWmldZVOK8TkRVM/fNiGNE6Q1h
 GmYeGaSYEYaMHlvQ4JA4NDkwqVWqSo3qphdTIX0l1A==
X-Google-Smtp-Source: APXvYqxXdPfUlpaL4uIAwV7G2qrVEfAWWo/p1axPqhCLsuZp8oSxIViDaU9/ZJAkWQ8RAXvu3wGakIwT/norp7EOSwY=
X-Received: by 2002:a9d:640f:: with SMTP id h15mr622694otl.338.1557483918605; 
 Fri, 10 May 2019 03:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <CAK7LNARzaeZ+ZNbDSii2cpFkk4bUqOu3keNq4qX0LhftuK8+MQ@mail.gmail.com>
In-Reply-To: <CAK7LNARzaeZ+ZNbDSii2cpFkk4bUqOu3keNq4qX0LhftuK8+MQ@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 10 May 2019 03:25:06 -0700
Message-ID: <CAFd5g47iaxW5Nk+sELxgasnbpNX7O6kwUTT7gMWoN3gA=_we6Q@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_032519_957393_1243B99D 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Cc: Shuah Khan" <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 DTML <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Tim Bird <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> On Thu, May 2, 2019 at 8:02 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > ## TLDR
> >
> > I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> > 5.2.
> >
> > Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
> > we would merge through your tree when the time came? Am I remembering
> > correctly?
> >
> > ## Background
> >
> > This patch set proposes KUnit, a lightweight unit testing and mocking
> > framework for the Linux kernel.
> >
> > Unlike Autotest and kselftest, KUnit is a true unit testing framework;
> > it does not require installing the kernel on a test machine or in a VM
> > and does not require tests to be written in userspace running on a host
> > kernel. Additionally, KUnit is fast: From invocation to completion KUnit
> > can run several dozen tests in under a second. Currently, the entire
> > KUnit test suite for KUnit runs in under a second from the initial
> > invocation (build time excluded).
> >
> > KUnit is heavily inspired by JUnit, Python's unittest.mock, and
> > Googletest/Googlemock for C++. KUnit provides facilities for defining
> > unit test cases, grouping related test cases into test suites, providing
> > common infrastructure for running tests, mocking, spying, and much more.
> >
> > ## What's so special about unit testing?
> >
> > A unit test is supposed to test a single unit of code in isolation,
> > hence the name. There should be no dependencies outside the control of
> > the test; this means no external dependencies, which makes tests orders
> > of magnitudes faster. Likewise, since there are no external dependencies,
> > there are no hoops to jump through to run the tests. Additionally, this
> > makes unit tests deterministic: a failing unit test always indicates a
> > problem. Finally, because unit tests necessarily have finer granularity,
> > they are able to test all code paths easily solving the classic problem
> > of difficulty in exercising error handling code.
> >
> > ## Is KUnit trying to replace other testing frameworks for the kernel?
> >
> > No. Most existing tests for the Linux kernel are end-to-end tests, which
> > have their place. A well tested system has lots of unit tests, a
> > reasonable number of integration tests, and some end-to-end tests. KUnit
> > is just trying to address the unit test space which is currently not
> > being addressed.
> >
> > ## More information on KUnit
> >
> > There is a bunch of documentation near the end of this patch set that
> > describes how to use KUnit and best practices for writing unit tests.
> > For convenience I am hosting the compiled docs here:
> > https://google.github.io/kunit-docs/third_party/kernel/docs/
> > Additionally for convenience, I have applied these patches to a branch:
> > https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1-rc7/v1
> > The repo may be cloned with:
> > git clone https://kunit.googlesource.com/linux
> > This patchset is on the kunit/rfc/v5.1-rc7/v1 branch.
> >
> > ## Changes Since Last Version
> >
> > None. I just rebased the last patchset on v5.1-rc7.
> >
> > --
> > 2.21.0.593.g511ec345e18-goog
> >
>
> The following is the log of 'git am' of this series.
> I see several 'new blank line at EOF' warnings.
>
>
>
> masahiro@pug:~/workspace/bsp/linux$ git am ~/Downloads/*.patch
> Applying: kunit: test: add KUnit test runner core
> Applying: kunit: test: add test resource management API
> Applying: kunit: test: add string_stream a std::stream like string builder
> .git/rebase-apply/patch:223: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kunit: test: add kunit_stream a std::stream like logger
> Applying: kunit: test: add the concept of expectations
> .git/rebase-apply/patch:475: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kbuild: enable building KUnit
> Applying: kunit: test: add initial tests
> .git/rebase-apply/patch:203: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kunit: test: add support for test abort
> .git/rebase-apply/patch:453: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kunit: test: add tests for kunit test abort
> Applying: kunit: test: add the concept of assertions
> .git/rebase-apply/patch:518: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kunit: test: add test managed resource tests
> Applying: kunit: tool: add Python wrappers for running KUnit tests
> .git/rebase-apply/patch:457: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.
> Applying: kunit: defconfig: add defconfigs for building KUnit tests
> Applying: Documentation: kunit: add documentation for KUnit
> .git/rebase-apply/patch:71: new blank line at EOF.
> +
> .git/rebase-apply/patch:209: new blank line at EOF.
> +
> .git/rebase-apply/patch:848: new blank line at EOF.
> +
> warning: 3 lines add whitespace errors.
> Applying: MAINTAINERS: add entry for KUnit the unit testing framework
> Applying: kernel/sysctl-test: Add null pointer test for sysctl.c:proc_dointvec()
> Applying: MAINTAINERS: add proc sysctl KUnit test to PROC SYSCTL section

Sorry about this! I will have it fixed on the next revision.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
