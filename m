Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C13618CD9
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 17:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXEptIVirOxsU6hoVV9w2Y1fUfZRJDYQAKR1q7g9E0Y=; b=ReBtHOMiL5CeFK
	pKe/0wFE5Zy+mr8ygvNBi475THDy27a6m+DiTJaj0UB8Dia6mhgl/EhRmANyEOSndvJA0qRvyQCEx
	I9cjA2juo78rbGNVzQ5W3ZSnzxxA41dckLeI2/Bq7FE5aH/brrH6YUbcXr9A45ySwE/2uw3uhIIgP
	rtK0QEcVG9P7LzFoseXXdi1gOgl/U5JEXXLNtYSMPehfNrg/yEjhxtnnzTNrE/jlQnz1bu9KhXj4W
	96+chNKKlOtHYz+H4MzinR/AR43by/5wO8s6cD/UJhEIacv2JlEKIqQsT0DXzJ78tpFLcOP1FwLvT
	DYVxEQ5Lf6TmO3A2VSkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkqH-00025q-Jk; Thu, 09 May 2019 15:20:17 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkqC-00024Q-TZ
 for linux-um@lists.infradead.org; Thu, 09 May 2019 15:20:15 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x49FJkLZ008071
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 00:19:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x49FJkLZ008071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557415188;
 bh=/RmcGIvKlIeX5sautHUKWG9CqgOL/snHwlMz4C7RK7Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LpHPoAEd2po4sFlMrUGrNwEbOY28Aww4RDFL8YojNSo8sO3uY8ARSe11GyQZr8OUc
 PRXjmAA9Atra/ht71v0rHNXzigOrkVT34erRnwrRqUUVqzsgRkUrKxyr6wo4jKapXO
 x+D0BbHsXbe3nlzMrhdbo42vgj+AHOcWxsHTrvXbYr0d6fzsy1ol6RSHLUHYi3ayUH
 MOjWMWO+tHDDhtImH09a0PoueXUKhmfqqJyCQ57GfOsMfWyrvnUPEY+1c8oag+THsl
 aQtv59lraQ5Gmx3yk+TyXlcVHT55wTSMsVki/rd1We3cI4eZ1og6VgKylmkDa0tjDc
 q7H/XL+sV3XHw==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id r62so1641615vsc.9
 for <linux-um@lists.infradead.org>; Thu, 09 May 2019 08:19:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUx3trJN+omlmuevYFQSIL/HQswPO15kxcu1M4x7MlLF/1bcRcj
 4xRmjX1LEcbZbc2Sdhg0N8Ymt8D+YoeVf262/hw=
X-Google-Smtp-Source: APXvYqx6QjKlJ2f+g4A6WK94eltfaSbhy0aZvu24LJigaNs8MefbVE61l1HSqEqjAJsc0x0q+dn5JmOY0plbpWccbg8=
X-Received: by 2002:a67:f109:: with SMTP id n9mr2430794vsk.181.1557415186326; 
 Thu, 09 May 2019 08:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 10 May 2019 00:19:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNARzaeZ+ZNbDSii2cpFkk4bUqOu3keNq4qX0LhftuK8+MQ@mail.gmail.com>
Message-ID: <CAK7LNARzaeZ+ZNbDSii2cpFkk4bUqOu3keNq4qX0LhftuK8+MQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_082013_198004_E50F519B 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, amir73il@gmail.com,
 dri-devel <dri-devel@lists.freedesktop.org>, Alexander.Levin@microsoft.com,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Cc: Shuah Khan" <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm@lists.01.org, Frank Rowand <frowand.list@gmail.com>,
 Knut Omang <knut.omang@oracle.com>, kieran.bingham@ideasonboard.com,
 wfg@linux.intel.com, Joel Stanley <joel@jms.id.au>, rientjes@google.com,
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
 keescook@google.com, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 8:02 AM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> ## TLDR
>
> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> 5.2.
>
> Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
> we would merge through your tree when the time came? Am I remembering
> correctly?
>
> ## Background
>
> This patch set proposes KUnit, a lightweight unit testing and mocking
> framework for the Linux kernel.
>
> Unlike Autotest and kselftest, KUnit is a true unit testing framework;
> it does not require installing the kernel on a test machine or in a VM
> and does not require tests to be written in userspace running on a host
> kernel. Additionally, KUnit is fast: From invocation to completion KUnit
> can run several dozen tests in under a second. Currently, the entire
> KUnit test suite for KUnit runs in under a second from the initial
> invocation (build time excluded).
>
> KUnit is heavily inspired by JUnit, Python's unittest.mock, and
> Googletest/Googlemock for C++. KUnit provides facilities for defining
> unit test cases, grouping related test cases into test suites, providing
> common infrastructure for running tests, mocking, spying, and much more.
>
> ## What's so special about unit testing?
>
> A unit test is supposed to test a single unit of code in isolation,
> hence the name. There should be no dependencies outside the control of
> the test; this means no external dependencies, which makes tests orders
> of magnitudes faster. Likewise, since there are no external dependencies,
> there are no hoops to jump through to run the tests. Additionally, this
> makes unit tests deterministic: a failing unit test always indicates a
> problem. Finally, because unit tests necessarily have finer granularity,
> they are able to test all code paths easily solving the classic problem
> of difficulty in exercising error handling code.
>
> ## Is KUnit trying to replace other testing frameworks for the kernel?
>
> No. Most existing tests for the Linux kernel are end-to-end tests, which
> have their place. A well tested system has lots of unit tests, a
> reasonable number of integration tests, and some end-to-end tests. KUnit
> is just trying to address the unit test space which is currently not
> being addressed.
>
> ## More information on KUnit
>
> There is a bunch of documentation near the end of this patch set that
> describes how to use KUnit and best practices for writing unit tests.
> For convenience I am hosting the compiled docs here:
> https://google.github.io/kunit-docs/third_party/kernel/docs/
> Additionally for convenience, I have applied these patches to a branch:
> https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1-rc7/v1
> The repo may be cloned with:
> git clone https://kunit.googlesource.com/linux
> This patchset is on the kunit/rfc/v5.1-rc7/v1 branch.
>
> ## Changes Since Last Version
>
> None. I just rebased the last patchset on v5.1-rc7.
>
> --
> 2.21.0.593.g511ec345e18-goog
>

The following is the log of 'git am' of this series.
I see several 'new blank line at EOF' warnings.



masahiro@pug:~/workspace/bsp/linux$ git am ~/Downloads/*.patch
Applying: kunit: test: add KUnit test runner core
Applying: kunit: test: add test resource management API
Applying: kunit: test: add string_stream a std::stream like string builder
.git/rebase-apply/patch:223: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kunit: test: add kunit_stream a std::stream like logger
Applying: kunit: test: add the concept of expectations
.git/rebase-apply/patch:475: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kbuild: enable building KUnit
Applying: kunit: test: add initial tests
.git/rebase-apply/patch:203: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kunit: test: add support for test abort
.git/rebase-apply/patch:453: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kunit: test: add tests for kunit test abort
Applying: kunit: test: add the concept of assertions
.git/rebase-apply/patch:518: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kunit: test: add test managed resource tests
Applying: kunit: tool: add Python wrappers for running KUnit tests
.git/rebase-apply/patch:457: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Applying: kunit: defconfig: add defconfigs for building KUnit tests
Applying: Documentation: kunit: add documentation for KUnit
.git/rebase-apply/patch:71: new blank line at EOF.
+
.git/rebase-apply/patch:209: new blank line at EOF.
+
.git/rebase-apply/patch:848: new blank line at EOF.
+
warning: 3 lines add whitespace errors.
Applying: MAINTAINERS: add entry for KUnit the unit testing framework
Applying: kernel/sysctl-test: Add null pointer test for sysctl.c:proc_dointvec()
Applying: MAINTAINERS: add proc sysctl KUnit test to PROC SYSCTL section






--
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
