Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616D9B5EC
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 19:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpgBXMqIt3YhvDCfOsWvwvO4ivksGJPmb5j5Oh1qRP0=; b=SYOfbJxwl1fUKE
	vMZoRdx0mccCGHowfN1EX5l0qzVagaTUZ21JMC6XrIrCicyNZkC2/4VQeydI9Usy1/qR64bCPo2D8
	9VpwNHPHXNx1CRkbPGxHUNnxRz7oKLaGS3NQh5PXd3yJm9D00nrVlcXaVDK8tNuYJedvfWLJ6SYZF
	+uRo3c+4FOR9VI0HcfJyp3n5p59Svq990ZjVzBtpBSvMlVi0rVFWOI0faBymrJkDqrAZni3oKD/q6
	qRlI+n28En8aqx6tkgPwM8M//INu4fF3sB6RK29zosRPtE9yQZhsF8Ij60bYs0/hDC2HDiFW7FMXh
	3M04c7ApPsudiEA+av3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1DmA-00060i-Rk; Fri, 23 Aug 2019 17:55:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Dm7-0005mE-Pi
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 17:55:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so5942628plp.9
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 10:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oJQHuXj2JCkei+LzAqMmfF5WMmItYkgIBLOwd3YKHHU=;
 b=as2GbJLzdqzNAqUgSmnXIDF1BcuLfKjwEE5SaTHa85bpup0x7bBuqdmB7IRu03SJDz
 nsDrxkoHtWSWpl7uIoO7NyJj76X9H64lUkSOjFsdY1vPpDl+eet3/ZFBRM1Sa6vt6eso
 HTz9NYjovjbTCW5bLG0zYUva7Q9yFgciUc0oGfxZz/cy0RqOxu9aS6hjEfqo45dh24Dj
 3gcFcVQ6EgJ04xhPIBJBgrCoNkltfn6KR1UYG6CIyHIFUJV4f9W4CoQ44fM4fN8qEZM/
 bRfq3X2rU6JvVsQHun+//ZzfW8TJNIav72tq/bizAme2saJI6aLbnDG9CUIemeJ7k2Qh
 XjPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oJQHuXj2JCkei+LzAqMmfF5WMmItYkgIBLOwd3YKHHU=;
 b=GtNa/IZ8PDNaTTP0/lk1Kw3wAFLdguxLyKGEgjQrmK1Ae8NZcv8AQow9D4EsP9qP4Y
 4MAmv1WVIR4lA2YWj4hqpsdAJXvztdHZQeDysAXF+EVNme+xFtMxrMaM2oU84LqOLX04
 PRMuS0YfpuNtzcGapTJXl4RCnSVvhKH///nZhSE1+oJVwcgrD1vFmIP0A32evJGR0OYA
 X2IVFa/L8r05ynfa1c6GB2ooNYjNtfFrYWbjyNzuBS0bkmYwIKA/Yeq75SF5RY8pXdz+
 pNo2PUyquRhAU5HLlZr+tttwlp5gJEyKh3LtmGfOPM/gJXa7kvgq8ShDLqoJ6Ik99qNF
 eQHw==
X-Gm-Message-State: APjAAAUEGDHfKFgGW7DlTKgSaOz29kYmnLGCqst7jzMF7amukT88Y0DL
 NgUHwodiqC0RHaeO3BXmoQvec8zE7s4sWuOy40iCEQ==
X-Google-Smtp-Source: APXvYqxZfWf8P8ZD/n5mEOu+RCReFOO4xhsyegaOP88QwWfVPD5J2QmymWkv+AZPBrXPJum0X3tIaDoZOA+apSk6SOI=
X-Received: by 2002:a17:902:7049:: with SMTP id
 h9mr6316654plt.232.1566582897042; 
 Fri, 23 Aug 2019 10:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-2-brendanhiggins@google.com>
 <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
 <CAFd5g44mRK9t4f58i_YMEt=e9RTxwrrhFY_V2LW_E7bUwR3cdg@mail.gmail.com>
 <4513d9f3-a69b-a9a4-768b-86c2962b62e0@kernel.org>
 <CAFd5g446J=cVW4QW+QeZMLDi+ANqshAW6KTrFFBTusPcdr6-GA@mail.gmail.com>
 <42c6235c-c586-8de1-1913-7cf1962c6066@kernel.org>
In-Reply-To: <42c6235c-c586-8de1-1913-7cf1962c6066@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 23 Aug 2019 10:54:45 -0700
Message-ID: <CAFd5g44hLgeqPtNw1zQ5k_+apBm=ri_6=wAgHk=oPOvQs6xgNg@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] kunit: test: add KUnit test runner core
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_105459_864971_EAA9491B 
X-CRM114-Status: GOOD (  29.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
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
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 10:34 AM shuah <shuah@kernel.org> wrote:
>
> On 8/23/19 11:27 AM, Brendan Higgins wrote:
> > On Fri, Aug 23, 2019 at 10:05 AM shuah <shuah@kernel.org> wrote:
> >>
> >> On 8/23/19 10:48 AM, Brendan Higgins wrote:
> >>> On Fri, Aug 23, 2019 at 8:33 AM shuah <shuah@kernel.org> wrote:
> >>>>
> >>>> Hi Brendan,
> >>>>
> >>>> On 8/20/19 5:20 PM, Brendan Higgins wrote:
> >>>>> Add core facilities for defining unit tests; this provides a common way
> >>>>> to define test cases, functions that execute code which is under test
> >>>>> and determine whether the code under test behaves as expected; this also
> >>>>> provides a way to group together related test cases in test suites (here
> >>>>> we call them test_modules).
> >>>>>
> >>>>> Just define test cases and how to execute them for now; setting
> >>>>> expectations on code will be defined later.
> >>>>>
> >>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >>>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >>>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> >>>>> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> >>>>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> >>>>> ---
> >>>>>     include/kunit/test.h | 179 ++++++++++++++++++++++++++++++++++++++++
> >>>>>     kunit/Kconfig        |  17 ++++
> >>>>>     kunit/Makefile       |   1 +
> >>>>>     kunit/test.c         | 191 +++++++++++++++++++++++++++++++++++++++++++
> >>>>>     4 files changed, 388 insertions(+)
> >>>>>     create mode 100644 include/kunit/test.h
> >>>>>     create mode 100644 kunit/Kconfig
> >>>>>     create mode 100644 kunit/Makefile
> >>>>>     create mode 100644 kunit/test.c
> >>>>>
> >>>>> diff --git a/include/kunit/test.h b/include/kunit/test.h
> >>>>> new file mode 100644
> >>>>> index 0000000000000..e0b34acb9ee4e
> >>>>> --- /dev/null
> >>>>> +++ b/include/kunit/test.h
> >>>>> @@ -0,0 +1,179 @@
> >>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>> +/*
> >>>>> + * Base unit test (KUnit) API.
> >>>>> + *
> >>>>> + * Copyright (C) 2019, Google LLC.
> >>>>> + * Author: Brendan Higgins <brendanhiggins@google.com>
> >>>>> + */
> >>>>> +
> >>>>> +#ifndef _KUNIT_TEST_H
> >>>>> +#define _KUNIT_TEST_H
> >>>>> +
> >>>>> +#include <linux/types.h>
> >>>>> +
> >>>>> +struct kunit;
> >>>>> +
> >>>>> +/**
> >>>>> + * struct kunit_case - represents an individual test case.
> >>>>> + * @run_case: the function representing the actual test case.
> >>>>> + * @name: the name of the test case.
> >>>>> + *
> >>>>> + * A test case is a function with the signature, ``void (*)(struct kunit *)``
> >>>>> + * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
> >>>>> + * test case is associated with a &struct kunit_suite and will be run after the
> >>>>> + * suite's init function and followed by the suite's exit function.
> >>>>> + *
> >>>>> + * A test case should be static and should only be created with the KUNIT_CASE()
> >>>>> + * macro; additionally, every array of test cases should be terminated with an
> >>>>> + * empty test case.
> >>>>> + *
> >>>>> + * Example:
> >>>>
> >>>> Can you fix these line continuations. It makes it very hard to read.
> >>>> Sorry for this late comment. These comments lines are longer than 80
> >>>> and wrap.
> >>>
> >>> None of the lines in this commit are over 80 characters in column
> >>> width. Some are exactly 80 characters (like above).
> >>>
> >>> My guess is that you are seeing the diff added text (+ ), which when
> >>> you add that to a line which is exactly 80 char in length ends up
> >>> being over 80 char in email. If you apply the patch you will see that
> >>> they are only 80 chars.
> >>>
> >>>>
> >>>> There are several comment lines in the file that are way too long.
> >>>
> >>> Note that checkpatch also does not complain about any over 80 char
> >>> lines in this file.
> >>>
> >>> Sorry if I am misunderstanding what you are trying to tell me. Please
> >>> confirm either way.
> >>>
> >>
> >> WARNING: Avoid unnecessary line continuations
> >> #258: FILE: include/kunit/test.h:137:
> >> +                */                                                            \
> >>
> >> total: 0 errors, 2 warnings, 388 lines checked
> >
> > Ah, okay so you don't like the warning about the line continuation.
> > That's not because it is over 80 char, but because there is a line
> > continuation after a comment. I don't really see a way to get rid of
> > it without removing the comment from inside the macro.
> >
> > I put this TODO there in the first place a Luis' request, and I put it
> > in the body of the macro because this macro already had a kernel-doc
> > comment and I didn't think that an implementation detail TODO belonged
> > in the user documentation.
> >
> >> Go ahead fix these. It appears there are few lines that either longer
> >> than 80. In general, I keep them around 75, so it is easier read.
> >
> > Sorry, the above is the only checkpatch warning other than the
> > reminder to update the MAINTAINERS file.
> >
> > Are you saying you want me to go through and make all the lines fit in
> > 75 char column width? I hope not because that is going to be a pretty
> > substantial change to make.
> >
>
> There are two things with these comment lines. One is checkpatch
> complaining and the other is general readability.

So for the checkpatch warning, do you want me to move the comment out
of the macro body into the kernel-doc comment? I don't really think it
is the right place for a comment of this nature, but I think it is
probably better than dropping it entirely (I don't see how else to do
it without just removing the comment entirely).

As for general readability, are you asking me to readjust all my code
in all 18 patches to fit in 75 chars? Sorry for the confusion, I am
just really surprised by this request. I thought the policy is 80
char, and reflowing all of my code in this patchset to 75 chars is not
a quick and easy thing to do. Additionally, there are some other short
term and long term issues about enforcing a 75 char limit on the KUnit
code.

Sorry, maybe I am just not understanding what you are asking me.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
