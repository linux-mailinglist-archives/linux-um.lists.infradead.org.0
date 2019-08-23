Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A1A9B685
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 20:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29IVAjvXmWfwqL8FW8fcA8eZsDmZ1PMt8pLDcUKA/v4=; b=T6J9O4iG5BzC5x
	uOKA59zIvjltNvYD+2C1BR9X1AeKwNfxpaNSMXWbTJflsRmrGCLJQq4ywH4/O3coz3HgkniSd8Qhp
	hXLypejsIz3y98XQ5JdPN1slcndYWDYIJyKrBQXKGr3mJGdN8jMGgp3d0Y64stJcIrMj62o6hb/aH
	xAZq8Sat7wBDa0KjG/EC8uBLnh6f0uqDDZ75i3m1Iidxmno32mXwg1Nr0D+Y9Cte2BjRClz1k2fk4
	m9FqO80NBNa6oV3BJFNh/hJGorEs984tj3bA/8i42JaS3RZ4ZMaO0zL4a/qDBcOzvNDZK+ZvbJOFb
	/4osQvF+PS9ua+6F2qIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1EjU-00080C-QJ; Fri, 23 Aug 2019 18:56:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EjR-0007zf-5x
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 18:56:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so6236843pgi.6
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 11:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s/+aPLXaaGZm0z/f+opsuLonUw7MdHLn7J6CRhMZwFI=;
 b=aLqCki7OFRYb/zbxlgpGpa4MLZg24uOYeXo+bf759ur8hv1j2TRWPaLstl3a5bk10n
 k9gZHsbj7RxEFvNm/UBw4x6AHMOqoIf/ZGCxlxIps6H1nGB4dHIYzRm+iwSZsHo9cyep
 NQSVwGP5NR+YSOXJmM805vzb7tKcZoohUkGLv2BSmjPrKeneCaMQK2eneKbObMLvTYkP
 lUd9iMs9dZblf94k6Ei365fYzU3AUwiPyeM1OqmPPs95PxMEymqhlGu1BcqjfCV5P0OP
 qkLQ4DDcSRoXYkgDNbUMDsSyuoKrdlN3EVmPRXJtcw1zjcwJLDnJgdEsctFaR5HmJxC5
 nJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s/+aPLXaaGZm0z/f+opsuLonUw7MdHLn7J6CRhMZwFI=;
 b=jLYIEJ+ZgDjN97zQQxLiO5NKP7L5ch4+ITqhieFioiOf4Dxhw1UcwAm8lvKS69slRz
 8wzrohq6M4NiWP6ZQTMvQnrKZt2I32HhPFNXhPJP1ttWSN1/C+8qtT0li/jfZNKIqQRE
 j9inX1F6eLL74AqabuOy0QIgoKHFaBj9r2Y8qd+UlpAh5cmQghk03EmfyibHz1D4MVB9
 rD4fLfsdUXfHTqhQu6kbV050anhbrqFverDphyXJWebBAzylnnPuujcWAl+LapBqDhyz
 G2TzcWm4m0CeXz6FjLXNkGk+FXQ7IHisB5aJptSJJvdCytlQEsVgcAYbjbjZ24hLAWA4
 ZoTQ==
X-Gm-Message-State: APjAAAUxTxeMIGpwMCL9RvKE108OJavEgN3ZvRe3ADiOVN5X54RNGLKL
 sQHvyb4UH7zFcG8UxUnW4ZgwMrE9C6VrvbZemMzpFw==
X-Google-Smtp-Source: APXvYqwVWo6KNiW0mQ1ETfauvPQKOgX6Abfum/nAPgc5t6Yzc0edHSPUqib3OQFJdFu2HNr4tJqGaSMlXFS9ixOmggs=
X-Received: by 2002:a17:90a:25ea:: with SMTP id
 k97mr6804556pje.131.1566586575337; 
 Fri, 23 Aug 2019 11:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-2-brendanhiggins@google.com>
 <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
 <CAFd5g44mRK9t4f58i_YMEt=e9RTxwrrhFY_V2LW_E7bUwR3cdg@mail.gmail.com>
 <4513d9f3-a69b-a9a4-768b-86c2962b62e0@kernel.org>
 <CAFd5g446J=cVW4QW+QeZMLDi+ANqshAW6KTrFFBTusPcdr6-GA@mail.gmail.com>
 <42c6235c-c586-8de1-1913-7cf1962c6066@kernel.org>
 <CAFd5g44hLgeqPtNw1zQ5k_+apBm=ri_6=wAgHk=oPOvQs6xgNg@mail.gmail.com>
 <54f3c011-d666-e828-5e77-359b7a7374e7@kernel.org>
In-Reply-To: <54f3c011-d666-e828-5e77-359b7a7374e7@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 23 Aug 2019 11:56:03 -0700
Message-ID: <CAFd5g44NAs6KK0_sG9itgT5qxujpyx36XV6tT8=zMynG-ZyVhQ@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] kunit: test: add KUnit test runner core
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_115617_251092_7F623632 
X-CRM114-Status: GOOD (  33.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Fri, Aug 23, 2019 at 11:32 AM shuah <shuah@kernel.org> wrote:
>
> On 8/23/19 11:54 AM, Brendan Higgins wrote:
> > On Fri, Aug 23, 2019 at 10:34 AM shuah <shuah@kernel.org> wrote:
> >>
> >> On 8/23/19 11:27 AM, Brendan Higgins wrote:
> >>> On Fri, Aug 23, 2019 at 10:05 AM shuah <shuah@kernel.org> wrote:
> >>>>
> >>>> On 8/23/19 10:48 AM, Brendan Higgins wrote:
> >>>>> On Fri, Aug 23, 2019 at 8:33 AM shuah <shuah@kernel.org> wrote:
> >>>>>>
> >>>>>> Hi Brendan,
> >>>>>>
> >>>>>> On 8/20/19 5:20 PM, Brendan Higgins wrote:
> >>>>>>> Add core facilities for defining unit tests; this provides a common way
> >>>>>>> to define test cases, functions that execute code which is under test
> >>>>>>> and determine whether the code under test behaves as expected; this also
> >>>>>>> provides a way to group together related test cases in test suites (here
> >>>>>>> we call them test_modules).
> >>>>>>>
> >>>>>>> Just define test cases and how to execute them for now; setting
> >>>>>>> expectations on code will be defined later.
> >>>>>>>
> >>>>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >>>>>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >>>>>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> >>>>>>> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> >>>>>>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> >>>>>>> ---
> >>>>>>>      include/kunit/test.h | 179 ++++++++++++++++++++++++++++++++++++++++
> >>>>>>>      kunit/Kconfig        |  17 ++++
> >>>>>>>      kunit/Makefile       |   1 +
> >>>>>>>      kunit/test.c         | 191 +++++++++++++++++++++++++++++++++++++++++++
> >>>>>>>      4 files changed, 388 insertions(+)
> >>>>>>>      create mode 100644 include/kunit/test.h
> >>>>>>>      create mode 100644 kunit/Kconfig
> >>>>>>>      create mode 100644 kunit/Makefile
> >>>>>>>      create mode 100644 kunit/test.c
> >>>>>>>
> >>>>>>> diff --git a/include/kunit/test.h b/include/kunit/test.h
> >>>>>>> new file mode 100644
> >>>>>>> index 0000000000000..e0b34acb9ee4e
> >>>>>>> --- /dev/null
> >>>>>>> +++ b/include/kunit/test.h
> >>>>>>> @@ -0,0 +1,179 @@
> >>>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>>>> +/*
> >>>>>>> + * Base unit test (KUnit) API.
> >>>>>>> + *
> >>>>>>> + * Copyright (C) 2019, Google LLC.
> >>>>>>> + * Author: Brendan Higgins <brendanhiggins@google.com>
> >>>>>>> + */
> >>>>>>> +
> >>>>>>> +#ifndef _KUNIT_TEST_H
> >>>>>>> +#define _KUNIT_TEST_H
> >>>>>>> +
> >>>>>>> +#include <linux/types.h>
> >>>>>>> +
> >>>>>>> +struct kunit;
> >>>>>>> +
> >>>>>>> +/**
> >>>>>>> + * struct kunit_case - represents an individual test case.
> >>>>>>> + * @run_case: the function representing the actual test case.
> >>>>>>> + * @name: the name of the test case.
> >>>>>>> + *
> >>>>>>> + * A test case is a function with the signature, ``void (*)(struct kunit *)``
> >>>>>>> + * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
> >>>>>>> + * test case is associated with a &struct kunit_suite and will be run after the
> >>>>>>> + * suite's init function and followed by the suite's exit function.
> >>>>>>> + *
> >>>>>>> + * A test case should be static and should only be created with the KUNIT_CASE()
> >>>>>>> + * macro; additionally, every array of test cases should be terminated with an
> >>>>>>> + * empty test case.
> >>>>>>> + *
> >>>>>>> + * Example:
> >>>>>>
> >>>>>> Can you fix these line continuations. It makes it very hard to read.
> >>>>>> Sorry for this late comment. These comments lines are longer than 80
> >>>>>> and wrap.
> >>>>>
> >>>>> None of the lines in this commit are over 80 characters in column
> >>>>> width. Some are exactly 80 characters (like above).
> >>>>>
> >>>>> My guess is that you are seeing the diff added text (+ ), which when
> >>>>> you add that to a line which is exactly 80 char in length ends up
> >>>>> being over 80 char in email. If you apply the patch you will see that
> >>>>> they are only 80 chars.
> >>>>>
> >>>>>>
> >>>>>> There are several comment lines in the file that are way too long.
> >>>>>
> >>>>> Note that checkpatch also does not complain about any over 80 char
> >>>>> lines in this file.
> >>>>>
> >>>>> Sorry if I am misunderstanding what you are trying to tell me. Please
> >>>>> confirm either way.
> >>>>>
> >>>>
> >>>> WARNING: Avoid unnecessary line continuations
> >>>> #258: FILE: include/kunit/test.h:137:
> >>>> +                */                                                            \
> >>>>
> >>>> total: 0 errors, 2 warnings, 388 lines checked
> >>>
> >>> Ah, okay so you don't like the warning about the line continuation.
> >>> That's not because it is over 80 char, but because there is a line
> >>> continuation after a comment. I don't really see a way to get rid of
> >>> it without removing the comment from inside the macro.
> >>>
> >>> I put this TODO there in the first place a Luis' request, and I put it
> >>> in the body of the macro because this macro already had a kernel-doc
> >>> comment and I didn't think that an implementation detail TODO belonged
> >>> in the user documentation.
> >>>
> >>>> Go ahead fix these. It appears there are few lines that either longer
> >>>> than 80. In general, I keep them around 75, so it is easier read.
> >>>
> >>> Sorry, the above is the only checkpatch warning other than the
> >>> reminder to update the MAINTAINERS file.
> >>>
> >>> Are you saying you want me to go through and make all the lines fit in
> >>> 75 char column width? I hope not because that is going to be a pretty
> >>> substantial change to make.
> >>>
> >>
> >> There are two things with these comment lines. One is checkpatch
> >> complaining and the other is general readability.
> >
> > So for the checkpatch warning, do you want me to move the comment out
> > of the macro body into the kernel-doc comment? I don't really think it
> > is the right place for a comment of this nature, but I think it is
> > probably better than dropping it entirely (I don't see how else to do
> > it without just removing the comment entirely).
> >
>
> Don't drop the comments. It makes perfect sense to turn this into a
> kernel-doc comment.

I am fine with that. I will do that in a subsequent revision once we
figure out the column limit issue.

> We are going back forth on this a lot. I see several lines 81+ in
> this file. I am at 5.3-rc5 and my commit hooks aren't happy. I am
> fine with it if you want to convert these to kernel-doc comments.
> I think it makes perfect sense.

Okay, so this is interesting. When I look at the applied patches in my
local repo, I don't see any 81+ lines. So it seems that something
interesting is going on here.

To be clear (sorry for the stupid question) you are seeing the issue
after you applied the patch, and not in the patch file itself?

Since we are still at OSS, would you mind if we meet up this afternoon
so I can see this issue you are seeing? I imagine we should get this
figured out pretty quickly.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
