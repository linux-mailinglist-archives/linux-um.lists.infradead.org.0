Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF4A1432E
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 02:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpp/8tsAIgg99uvo+g7LuNEjMeUXCC3nDnthoJ+IQUM=; b=jicVamKpsvYGM5
	5LWyEUkCYll9MsS2NGfwTUHbU6SPK55ReplAGRUbDNx/pnbP/bNEXlp8/DSggY3vBe+jMhSIs4ik1
	OmGlbqFfjwsL2lmvakBKLbxZmqv+LNmf+xDr/uJ0ouMTsdmVjL3xnG4dGeuS0vicFb3gXCuVVN2UD
	N1/CUa/bXdtJ2hoSsiMG0jZqDo2G795ngGisMQ3G5/ptfVinNbbwPxydkMDSegOmp/OGPM7Y7zZbk
	lQj+iN2cOyW8jvK5bq7mx8GQh47jxL1WGg7zU/HtBHlfBt+OJZryh1DesXbUr4oWwZmejxokWPXjD
	Cn5UoeHJVAJ5A37CxInw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNRMR-0007Ms-7Q; Mon, 06 May 2019 00:20:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNRMM-0007Hc-MP
 for linux-um@lists.infradead.org; Mon, 06 May 2019 00:20:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so5551467pgi.12
 for <linux-um@lists.infradead.org>; Sun, 05 May 2019 17:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j/fsQWtAkAbBjGOcNq6Nl1DKZwTwwI/gimkSYh06i0c=;
 b=g9/1g8/riGggqgRtjuc0TcOf9e6YyeG+Akn2Qe69T6WNn73uJXDfQvco+B6BKGjJnv
 Tvtwd37gldUksbPISVGg/+vF8gf6VNjiQHoMFVXmmjyB7mEZasQM2cMn/rfqFcJNUSKR
 1o37OKgfd77tbFfVydGGkhsyK7CPCxLEmEcmh5x1skx239uNH/ZAkCgffn2JJhKNC52Y
 p3LXTRqbIkS8TI/qlD/62XidjgN1HUDmnI0qyL9ySHoK7Fo3/6OI4xHcwT9dx25YJoi6
 EemAGxSe37IFRwBH0cWqt186MLuzUNKgWRMcBHAwMMADbZch6CqhzktQnHBtTXnvclai
 jkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j/fsQWtAkAbBjGOcNq6Nl1DKZwTwwI/gimkSYh06i0c=;
 b=eUuppXYhHj7oDg0qyAj359cw0eggx8Fi//R+YrcqQTrlqgMNgeV2frNR8cgULa+DnE
 3qDEZ/i9Y8SrPjmjY1lhxwgqt6+4DQMbNB1lYXYJwb35qjh6bIheWFiBDMuMYdzmVZgK
 eCE+2LVAonVHNO3E/UAAPxng/S9OTZRoOob3AmIorynYt3orPIRhBVqPq0gDXKfuwItH
 zCOv1Cir7GKrn8lkto740S5XSbQkGOBfZqAtDWJagySSD8X4YZR9kzxQ2tyKsYfpRN68
 6bRAg5QglJn9t45JZauwCeGiDMUZRgN64eMAGPo7AXqbzxhUMHJ26RVIkGzzRZuZy5nh
 Dq/w==
X-Gm-Message-State: APjAAAWBsADkHSpFYxq9uTvWVymBztKn6Uz6dXaM7Cw1wn3VWuks2u3y
 +oVeiFPdTX2HdsDZV7WR1EU=
X-Google-Smtp-Source: APXvYqx0tZKV0N+Mwpjoyqxmdlbe3reQe0aBp070qzHELVNyQGDBHlh8Oo6nCcpS4lTKF/4TrGG23w==
X-Received: by 2002:a63:5a4b:: with SMTP id k11mr28524607pgm.119.1557101994985; 
 Sun, 05 May 2019 17:19:54 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id y68sm11821482pfy.28.2019.05.05.17.19.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 17:19:54 -0700 (PDT)
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
 <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
 <1a5f3c44-9fa9-d423-66bf-45255a90c468@gmail.com>
 <CAFd5g45RYm+zfdJXnyp2KZZH5ojfOzy++aq+4zBeE5VDu6WgEw@mail.gmail.com>
 <052fa196-4ea9-8384-79b7-fe6bacc0ee82@gmail.com>
 <CAFd5g47aY-CL+d7DfiyTidY4aAVY+eg1TM1UJ4nYqKSfHOi-0w@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <63f63c7c-6185-5e64-b338-6a5e7fb9e27c@gmail.com>
Date: Sun, 5 May 2019 17:19:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFd5g47aY-CL+d7DfiyTidY4aAVY+eg1TM1UJ4nYqKSfHOi-0w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_171958_765867_E7FABEF7 
X-CRM114-Status: GOOD (  47.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/3/19 4:14 PM, Brendan Higgins wrote:
>> On 5/2/19 10:36 PM, Brendan Higgins wrote:
>>> On Thu, May 2, 2019 at 6:45 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>
>>>> On 5/2/19 4:45 PM, Brendan Higgins wrote:
>>>>> On Thu, May 2, 2019 at 2:16 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>>>
>>>>>> On 5/2/19 11:07 AM, Brendan Higgins wrote:
>>>>>>> On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>>>>>>
>>>>>>>> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
>>>>>>>>> From: Felix Guo <felixguoxiuping@gmail.com>
>>>>>>>>>
>>>>>>>>> The ultimate goal is to create minimal isolated test binaries; in the
>>>>>>>>> meantime we are using UML to provide the infrastructure to run tests, so
>>>>>>>>> define an abstract way to configure and run tests that allow us to
>>>>>>>>> change the context in which tests are built without affecting the user.
>>>>>>>>> This also makes pretty and dynamic error reporting, and a lot of other
>>>>>>>>> nice features easier.
>>>>>>>>>
>>>>>>>>> kunit_config.py:
>>>>>>>>>   - parse .config and Kconfig files.
>>>>>>>>>
>>>>>>>>> kunit_kernel.py: provides helper functions to:
>>>>>>>>>   - configure the kernel using kunitconfig.
>>>>>>>>>   - build the kernel with the appropriate configuration.
>>>>>>>>>   - provide function to invoke the kernel and stream the output back.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
>>>>>>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>>>>>>>>
>>>>>>>> Ah, here's probably my answer to my previous logging format question,
>>>>>>>> right?  What's the chance that these wrappers output stuff in a standard
>>>>>>>> format that test-framework-tools can already parse?  :)
>>>>>
>>>>> To be clear, the test-framework-tools format we are talking about is
>>>>> TAP13[1], correct?
>>>>
>>>> I'm not sure what the test community prefers for a format.  I'll let them
>>>> jump in and debate that question.
>>>>
>>>>
>>>>>
>>>>> My understanding is that is what kselftest is being converted to use.
>>>>>
>>>>>>>
>>>>>>> It should be pretty easy to do. I had some patches that pack up the
>>>>>>> results into a serialized format for a presubmit service; it should be
>>>>>>> pretty straightforward to take the same logic and just change the
>>>>>>> output format.
>>>>>>
>>>>>> When examining and trying out the previous versions of the patch I found
>>>>>> the wrappers useful to provide information about how to control and use
>>>>>> the tests, but I had no interest in using the scripts as they do not
>>>>>> fit in with my personal environment and workflow.
>>>>>>
>>>>>> In the previous versions of the patch, these helper scripts are optional,
>>>>>> which is good for my use case.  If the helper scripts are required to
>>>>>
>>>>> They are still optional.
>>>>>
>>>>>> get the data into the proper format then the scripts are not quite so
>>>>>> optional, they become the expected environment.  I think the proper
>>>>>> format should exist without the helper scripts.
>>>>>
>>>>> That's a good point. A couple things,
>>>>>
>>>>> First off, supporting TAP13, either in the kernel or the wrapper
>>>>> script is not hard, but I don't think that is the real issue that you
>>>>> raise.
>>>>>
>>>>> If your only concern is that you will always be able to have human
>>>>> readable KUnit results printed to the kernel log, that is a guarantee
>>>>> I feel comfortable making. Beyond that, I think it is going to take a
>>>>> long while before I would feel comfortable guaranteeing anything about
>>>>> how will KUnit work, what kind of data it will want to expose, and how
>>>>> it will be organized. I think the wrapper script provides a nice
>>>>> facade that I can maintain, can mediate between the implementation
>>>>> details and the user, and can mediate between the implementation
>>>>> details and other pieces of software that might want to consume
>>>>> results.
>>>>>
>>>>> [1] https://testanything.org/tap-version-13-specification.html
>>>>
>>>> My concern is based on a focus on my little part of the world
>>>> (which in _previous_ versions of the patch series was the devicetree
>>>> unittest.c tests being converted to use the kunit infrastructure).
>>>> If I step back and think of the entire kernel globally I may end
>>>> up with a different conclusion - but I'm going to remain myopic
>>>> for this email.
>>>>
>>>> I want the test results to be usable by me and my fellow
>>>> developers.  I prefer that the test results be easily accessible
>>>> (current printk() implementation means that kunit messages are
>>>> just as accessible as the current unittest.c printk() output).
>>>> If the printk() output needs to be filtered through a script
>>>> to generate the actual test results then that is sub-optimal
>>>> to me.  It is one more step added to my workflow.  And
>>>> potentially with an embedded target a major pain to get a
>>>> data file (the kernel log file) transferred from a target
>>>> to my development host.
>>>
>>> That's fair. If that is indeed your only concern, then I don't think
>>> the wrapper script will ever be an issue for you. You will always be
>>> able to execute a given test the old fashioned/manual way, and the
>>> wrapper script only summarizes results, it does not change the
>>> contents.
>>>
>>>>
>>>> I want a reported test failure to be easy to trace back to the
>>>> point in the source where the failure is reported.  With printk()
>>>> the search is a simple grep for the failure message.  If the
>>>> failure message has been processed by a script, and then the
>>>> failure reported to me in an email, then I may have to look
>>>> at the script to reverse engineer how the original failure
>>>> message was transformed into the message that was reported
>>>> to me in the email.  Then I search for the point in the
>>>> source where the failure is reported.  So a basic task has
>>>> just become more difficult and time consuming.
>>>
>>> That seems to be a valid concern. I would reiterate that you shouldn't
>>> be concerned by any processing done by the wrapper script itself, but
>>> the reality is that depending on what happens with automated
>>> testing/presubmit/CI other people might end up parsing and
>>> transforming test results - it might happen, it might not.
>>
>> You seem to be missing my point.
>>
>> Greg asked that the output be in a standard format.
>>
>> You replied that the standard format could be created by the wrapper script.
> 
> I thought Greg originally meant that that is how it could be done when
> he first commented on this patch, so I was agreeing and elaborating.
> Nevertheless, it seems you and Greg are now in agreement on this
> point, so I won't argue it further.
> 
>>
>> Now you say that "it might happen, it might not".  In other words the output
>> may or may not end up in the standard format.
> 
> Sorry, that was in reference to your concern about getting an email in
> a different format than what the tool that you use generates. It
> wasn't a statement about what I was or wasn't going to do in regards
> to supporting a standard format.
> 
>>
>> As Greg points out in comments to patch 12:
>>
>>   "The core of kunit should also log the messages in this format as well,
>>   and not rely on the helper scripts as Frank points out, not everyone
>>   will use/want them.  Might as well make it easy for everyone to always
>>   do the right thing and not force it to always be added in later."
>>
>> I am requesting that the original message be in the standard format.  Of
>> course anyone is free to transform the messages in later processing, no
>> big deal.
> 
> My mistake, I thought that was a concern of yours.
> 
> In any case, it sounds like you and Greg are in agreement on the core
> libraries generating the output in TAP13, so I won't argue that point
> further.
> 
> ## Analysis of using TAP13

I have never looked at TAP version 13 in any depth at all, so do not consider
me to be any sort of expert.

My entire TAP knowledge is based on:

  https://testanything.org/tap-version-13-specification.html

and the pull request to create the TAP version 14 specification:

   https://github.com/TestAnything/testanything.github.io/pull/36/files

You can see the full version 14 document in the submitter's repo:

  $ git clone https://github.com/isaacs/testanything.github.io.git
  $ cd testanything.github.io
  $ git checkout tap14
  $ ls tap-version-14-specification.md

My understanding is the the version 14 specification is not trying to
add new features, but instead capture what is already implemented in
the wild.


> One of my earlier concerns was that TAP13 is a bit over constrained
> for what I would like to output from the KUnit core. It only allows
> data to be output as either:
>  - test number
>  - ok/not ok with single line description
>  - directive
>  - diagnostics
>  - YAML block
> 
> The test number must become before a set of ok/not ok lines, and does
> not contain any additional information. One annoying thing about this
> is it doesn't provide any kind of nesting or grouping.

Greg's response mentions ktest (?) already does nesting.

Version 14 allows nesting through subtests.  I have not looked at what
ktest does, so I do not know if it uses subtest, or something else.


> There is one ok/not ok line per test and it may have a short
> description of the test immediately after 'ok' or 'not ok'; this is
> problematic because it wants the first thing you say about a test to
> be after you know whether it passes or not.

I think you could output a diagnostic line that says a test is starting.
This is important to me because printk() errors and warnings that are
related to a test can be output by a subsystem other than the subsystem
that I am testing.  If there is no marker at the start of the test
then there is no way to attribute the printk()s to the test.


> Directives are just a way to specify skipped tests and TODOs.
> 
> Diagnostics seem useful, it looks like you can put whatever
> information in them and print them out at anytime. It looks like a lot
> of kselftests emit a lot of data this way.
> 
> The YAML block seems to be the way that they prefer users to emit data
> beyond number of tests run and whether a test passed or failed. I
> could express most things I want to express in terms of YAML, but it
> is not the nicest format for displaying a lot of data like
> expectations, missed function calls, and other things which have a
> natural concise representation. Nevertheless, YAML readability is
> mostly a problem who won't be using the wrapper scripts.

The examples in specification V13 and V14 look very simple and very
readable to me.  (And I am not a fan of YAML.)


> My biggest
> problem with the YAML block is that you can only have one, and TAP
> specifies that it must come after the corresponding ok/not ok line,
> which again has the issue that you have to hold on to a lot of
> diagnostic data longer than you ideally would. Another downside is
> that I now have to write a YAML serializer for the kernel.

If a test generates diagnostic data, then I would expect that to be
the direct result of a test failure.  So the test can output the
"not ok" line, then immediately output the YAML block.  I do not
see a need for stashing YAML output ahead of time.

If diagnostic data is generated before the test can determine
success or failure, then it can be output as diagnostic data
instead of stashing it for later.


> ## Here is what I propose for this patchset:
> 
>  - Print out test number range at the beginning of each test suite.
>  - Print out log lines as soon as they happen as diagnostics.
>  - Print out the lines that state whether a test passes or fails as a
> ok/not ok line.
> 
> This would be technically conforming with TAP13 and is consistent with
> what some kselftests have done.
> 
> ## To be done in a future patchset:
> 
> Add a YAML serializer and print out some logs containing structured
> data (like expectation failures, unexpected function calls, etc) in
> YAML blocks.

YAML serializer sounds like not needed complexity.

> 
> Does this sound reasonable? I will go ahead and start working on this,
> but feel free to give me feedback on the overall idea in the meantime.
> 
> Cheers
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
