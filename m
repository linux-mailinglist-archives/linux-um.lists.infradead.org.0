Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAE99B591
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 19:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5EQlCXFjlGwwtfOaHg/vuw7MOuzR9i9GFLkB/1NZJc=; b=msIW2fgfrhPWYSX+Kt1KChQr1
	oU2rjNuKdDAlDIExzVo+pBGJI9tSuPw9tDYa9LrrS+R9YbEEjDd1AOM+48kF8bKLQe6Z7esUXY6Ut
	vwz9PYY6opnFionFdS5sgI1H/ezo6comW2YN8ZA66yCxyjQjcCpD8/WHHNLmo8FRIAqqMXNl8QebI
	4A/FurZt2VNOeVeVNS4pilsehZKKV01GmNEckq5eOfiiW7Xt2lP6KpWsh4YNlrkPkHCzLrNQ7Hz9Q
	FeghGnR9KHFYMRkYdtDVyNwi8D6QkXazX8Or9Ldb18XfMyLmTqyQLgVBpkTU+Mdzk6eGWB/lA1Zoe
	yJy6dTwZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1DSP-0007cI-I0; Fri, 23 Aug 2019 17:34:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1DSM-0007bm-MJ
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 17:34:36 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36324206DD;
 Fri, 23 Aug 2019 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566581673;
 bh=MnDHgmtHVoUC5O71SAn2lWqY/5HpVQR/a6wzW32r/Fg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=DDGJEOge//QDHu5P/vX2Lr/yo3am86JXIqoxGkq+riYVFfL/XboZECe6klOycuvjb
 0tvO9qW2HYpJH2K0hh1IidNs4DOI3GsR/6TrYboK8nXgYEBgvB+Swim4YYBu7T63cY
 lmqN2dgfMn6DPtS4BUA+cmQbdZtcfgd6quNsnZlI=
Subject: Re: [PATCH v14 01/18] kunit: test: add KUnit test runner core
To: Brendan Higgins <brendanhiggins@google.com>
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-2-brendanhiggins@google.com>
 <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
 <CAFd5g44mRK9t4f58i_YMEt=e9RTxwrrhFY_V2LW_E7bUwR3cdg@mail.gmail.com>
 <4513d9f3-a69b-a9a4-768b-86c2962b62e0@kernel.org>
 <CAFd5g446J=cVW4QW+QeZMLDi+ANqshAW6KTrFFBTusPcdr6-GA@mail.gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <42c6235c-c586-8de1-1913-7cf1962c6066@kernel.org>
Date: Fri, 23 Aug 2019 11:34:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g446J=cVW4QW+QeZMLDi+ANqshAW6KTrFFBTusPcdr6-GA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_103434_770459_71D1D1EF 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>, shuah <shuah@kernel.org>,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 8/23/19 11:27 AM, Brendan Higgins wrote:
> On Fri, Aug 23, 2019 at 10:05 AM shuah <shuah@kernel.org> wrote:
>>
>> On 8/23/19 10:48 AM, Brendan Higgins wrote:
>>> On Fri, Aug 23, 2019 at 8:33 AM shuah <shuah@kernel.org> wrote:
>>>>
>>>> Hi Brendan,
>>>>
>>>> On 8/20/19 5:20 PM, Brendan Higgins wrote:
>>>>> Add core facilities for defining unit tests; this provides a common way
>>>>> to define test cases, functions that execute code which is under test
>>>>> and determine whether the code under test behaves as expected; this also
>>>>> provides a way to group together related test cases in test suites (here
>>>>> we call them test_modules).
>>>>>
>>>>> Just define test cases and how to execute them for now; setting
>>>>> expectations on code will be defined later.
>>>>>
>>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>>>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>>>>> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
>>>>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>>>>> ---
>>>>>     include/kunit/test.h | 179 ++++++++++++++++++++++++++++++++++++++++
>>>>>     kunit/Kconfig        |  17 ++++
>>>>>     kunit/Makefile       |   1 +
>>>>>     kunit/test.c         | 191 +++++++++++++++++++++++++++++++++++++++++++
>>>>>     4 files changed, 388 insertions(+)
>>>>>     create mode 100644 include/kunit/test.h
>>>>>     create mode 100644 kunit/Kconfig
>>>>>     create mode 100644 kunit/Makefile
>>>>>     create mode 100644 kunit/test.c
>>>>>
>>>>> diff --git a/include/kunit/test.h b/include/kunit/test.h
>>>>> new file mode 100644
>>>>> index 0000000000000..e0b34acb9ee4e
>>>>> --- /dev/null
>>>>> +++ b/include/kunit/test.h
>>>>> @@ -0,0 +1,179 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>>> +/*
>>>>> + * Base unit test (KUnit) API.
>>>>> + *
>>>>> + * Copyright (C) 2019, Google LLC.
>>>>> + * Author: Brendan Higgins <brendanhiggins@google.com>
>>>>> + */
>>>>> +
>>>>> +#ifndef _KUNIT_TEST_H
>>>>> +#define _KUNIT_TEST_H
>>>>> +
>>>>> +#include <linux/types.h>
>>>>> +
>>>>> +struct kunit;
>>>>> +
>>>>> +/**
>>>>> + * struct kunit_case - represents an individual test case.
>>>>> + * @run_case: the function representing the actual test case.
>>>>> + * @name: the name of the test case.
>>>>> + *
>>>>> + * A test case is a function with the signature, ``void (*)(struct kunit *)``
>>>>> + * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
>>>>> + * test case is associated with a &struct kunit_suite and will be run after the
>>>>> + * suite's init function and followed by the suite's exit function.
>>>>> + *
>>>>> + * A test case should be static and should only be created with the KUNIT_CASE()
>>>>> + * macro; additionally, every array of test cases should be terminated with an
>>>>> + * empty test case.
>>>>> + *
>>>>> + * Example:
>>>>
>>>> Can you fix these line continuations. It makes it very hard to read.
>>>> Sorry for this late comment. These comments lines are longer than 80
>>>> and wrap.
>>>
>>> None of the lines in this commit are over 80 characters in column
>>> width. Some are exactly 80 characters (like above).
>>>
>>> My guess is that you are seeing the diff added text (+ ), which when
>>> you add that to a line which is exactly 80 char in length ends up
>>> being over 80 char in email. If you apply the patch you will see that
>>> they are only 80 chars.
>>>
>>>>
>>>> There are several comment lines in the file that are way too long.
>>>
>>> Note that checkpatch also does not complain about any over 80 char
>>> lines in this file.
>>>
>>> Sorry if I am misunderstanding what you are trying to tell me. Please
>>> confirm either way.
>>>
>>
>> WARNING: Avoid unnecessary line continuations
>> #258: FILE: include/kunit/test.h:137:
>> +                */                                                            \
>>
>> total: 0 errors, 2 warnings, 388 lines checked
> 
> Ah, okay so you don't like the warning about the line continuation.
> That's not because it is over 80 char, but because there is a line
> continuation after a comment. I don't really see a way to get rid of
> it without removing the comment from inside the macro.
> 
> I put this TODO there in the first place a Luis' request, and I put it
> in the body of the macro because this macro already had a kernel-doc
> comment and I didn't think that an implementation detail TODO belonged
> in the user documentation.
> 
>> Go ahead fix these. It appears there are few lines that either longer
>> than 80. In general, I keep them around 75, so it is easier read.
> 
> Sorry, the above is the only checkpatch warning other than the
> reminder to update the MAINTAINERS file.
> 
> Are you saying you want me to go through and make all the lines fit in
> 75 char column width? I hope not because that is going to be a pretty
> substantial change to make.
> 

There are two things with these comment lines. One is checkpatch
complaining and the other is general readability.

Please go ahead and adjust them.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
