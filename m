Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616E9154B6F
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 19:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inogZLtbO2yX4aoLhZuVu53zFYQiqSS4gJSMBL4Wag4=; b=CZRCgVPnf2iN11
	KQ7UGLlLumzgPw+tLuqX0cqaOWT7pC+VlAcdGY9kM5yDmtCtgZVKQVpKnxj1TB5Dt05K37YPBey/7
	C36SL5g+12ilvLMXsw8q3G2owl4+sOsTGrM4r8tFuXjna7K1BCqYsKoayEC4XQGGaSUFiNaUIervz
	Ms4N+pTSemqYITavNPCOWQSQGxOBl2Cbme5lxwjNVD6SsYT5nDuxXw6ncGfgnMZrHVX2+jXCJxMzB
	n4DuHE/kBtd9oxAoCXXJKRGIz9GmkA3NuMd9935zLxaNL2pTrvUleexqJdIMMfa7ZoY9eptLYyNJd
	XoJOgUQ7WFIQc2PO49+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmBm-0006aW-Cx; Thu, 06 Feb 2020 18:47:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmBk-0006ZH-7o
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 18:47:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay11so2698579plb.0
 for <linux-um@lists.infradead.org>; Thu, 06 Feb 2020 10:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rx4sRzOip+Mq3tGXU7kM2rwUAP/FgU+xMoujRQ/y4dA=;
 b=lgvMv7Qc1FR7VzTuur5zQETjZ4R1hLqWvzzOgqfbayhBhP23i0+A0FqGpEuB7DKUBV
 qUU9Exb4rnQCoSYh7ld+zLT8gVbRvAoq7i+qdijRiM80OtiTWIgeQeYfScSMWKrN5lTr
 sh8GL0Thd6+Mk8gjOO1VtjNrXhZISbfIHIfuRZihLSeUaz/gKrNAV+pJhJTLbJd+XVis
 JjIAfW0KRiSdumBRagvfqbpvjlU+I2lSPuqP5hAupoK2wrq+jJ9W/MgeBGv/0WfSWOxY
 JdckjHdCGrx/36SdGls8IO/qyexTSmGzzfw+LoXRTxQoROJUVHIRp/HRKVQs7/q6znL1
 bufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rx4sRzOip+Mq3tGXU7kM2rwUAP/FgU+xMoujRQ/y4dA=;
 b=TfKhbDr7a39scMh4JiDzH0xd8cUmRBuN+rCDMuCdZqeZVXKhJwFlLMRfsEgkBwhOqb
 6KgqTxOVMc5HtTmlGb/XT3+3Ny0lkyr2EB0yUCMHrkNmaID4qpI63vbPQDlTlgQD5okT
 1SHt0pdVLLRSNYBnZqHMHJN9EkDQocbNNVzZRMEeq6ToQhzYB5OEkrmpaiSOmy/qhMX/
 Khgcea6705bjB7bFQHQTAIGBomn1OLsYJJ9LJYdDE+QDUNZXZlkfr2uMFlKxgPszuUjg
 2dElcXNS1hNM+du0HPCqgfMicCVt5cMxcCsW0MDiZcqFcg5xi9um0H25jV1Nl54HkCZP
 11+g==
X-Gm-Message-State: APjAAAWTlOJdR+vZYqcYHFUJeHrPX38GJ+J9z/xs7n76U3vU56IzQjgR
 G+gi36HbrG3qW9BlC+UKgTcv1ls6yn9yzQ1xkXaOzw==
X-Google-Smtp-Source: APXvYqwoMLnyphmn9jqUaL6zuzdMwQhZMO0C2FVmu1LrHrHVcviCyfV/O9rId5UR/by0bAMcdwlU6ZoLG29qVB4ScLk=
X-Received: by 2002:a17:90a:6c26:: with SMTP id
 x35mr5868897pjj.84.1581014860109; 
 Thu, 06 Feb 2020 10:47:40 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-6-brendanhiggins@google.com>
 <69582db9-d379-7d2a-1342-6de9a5d79141@gmail.com>
In-Reply-To: <69582db9-d379-7d2a-1342-6de9a5d79141@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 6 Feb 2020 10:47:28 -0800
Message-ID: <CAFd5g45jHKXoMU4k103cqfeTAtUpaZh7ZK2ALpzHkRZTuVYa-g@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] kunit: test: add test plan to KUnit TAP format
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_104744_283304_BAE73D1F 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 3:01 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/30/20 5:08 PM, Brendan Higgins wrote:
> > TAP 14 allows an optional test plan to be emitted before the start of
> > the start of testing[1]; this is valuable because it makes it possible
> > for a test harness to detect whether the number of tests run matches the
> > number of tests expected to be run, ensuring that no tests silently
> > failed.
> >
> > Link[1]: https://github.com/isaacs/testanything.github.io/blob/tap14/tap-version-14-specification.md#the-plan
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >  lib/kunit/executor.c                          | 17 +++++
> >  lib/kunit/test.c                              | 11 ---
> >  tools/testing/kunit/kunit_parser.py           | 74 ++++++++++++++++---
> >  .../test_is_test_passed-all_passed.log        |  1 +
> >  .../test_data/test_is_test_passed-crash.log   |  1 +
> >  .../test_data/test_is_test_passed-failure.log |  1 +
> >  6 files changed, 82 insertions(+), 23 deletions(-)
> >
> > diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> > index b75a46c560847..7fd16feff157e 100644
> > --- a/lib/kunit/executor.c
> > +++ b/lib/kunit/executor.c
> > @@ -11,11 +11,28 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
> >
> >  #if IS_BUILTIN(CONFIG_KUNIT)
> >
> > +static void kunit_print_tap_header(void)
> > +{
> > +     struct kunit_suite * const * const *suites, * const *subsuite;
> > +     int num_of_suites = 0;
> > +
> > +     for (suites = __kunit_suites_start;
> > +          suites < __kunit_suites_end;
> > +          suites++)
> > +             for (subsuite = *suites; *subsuite != NULL; subsuite++)
> > +                     num_of_suites++;
> > +
> > +     pr_info("TAP version 14\n");
> > +     pr_info("1..%d\n", num_of_suites);
> > +}
> > +
>
> Subsuites are not in Linux 5.5, as far as I can tell, so it is hard to review
> this.
>
> But I think this observation will still be valid even though I am not up
> to speed on subsuites.

"substitutes" are just an artifact from having to group together all
suites that occur in a module. It should be mostly immaterial to most
users, but we have to have all the suites that occur in a module
grouped together in order to support KUnit tests as loadable modules.

I just call them subsuites here because I didn't know what else to
call them. Still, the relationship between them should be mostly
ignored by users as you seem to recognize below.

Also, module support for KUnit was just recently accepted into torvalds/master:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=08a3ef8f6b0b1341c670caba35f782c9a452d488

You should be able to apply this change to torvalds/master now.

> num_of_suites is all test suites declared (as built in).  In Linux 5.5,
> each kunit_suite contains one or more test cases.  Each test case leads
> to either "ok" or "not ok".  So instead of counting number of tests
> suites, the number of test cases needs to be counted.

Nope, but I think you understand correctly below...

> Ahhh, I think my lack of visibility of what tree this series is against
> is about to lead me astray!  Are the test cases in the subsuite
> implemented as what TAP 14 calls "subtests"?  If so, then the above
> code that counts suites instead of test cases would be correct.

Yep! You got it! Test cases are "subtests" in TAP 14. So there is a
ok/not ok line for each suite, and nested as subtests above that are
indented ok/not ok lines for each test case. KUnit already does this
today. We are just moving some of the printing logic out so we can
count the suites and print a test plan.

Technically, what we print today (before this change) is legal TAP 14.
The test plan is not required. However, the test plan is very helpful
as it makes it possible to know if some tests just never ran for some
reason.

> I'm spinning my wheels now, since I don't know what I am
> reviewing against, so I'm going to stop reviewing, other
> than maybe a quick scan.

I just applied this patch series against torvalds/master which I
pulled this morning, and it applied cleanly. I will specify in any
subsequent revisions that this is based on linux-kselftest/kunit since
that's where these patches will be applied, but they should apply
against any rc of 5.6 just fine once they are cut.

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
