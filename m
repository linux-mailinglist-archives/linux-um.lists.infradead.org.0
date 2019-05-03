Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ACE1360D
	for <lists+linux-um@lfdr.de>; Sat,  4 May 2019 01:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPylAd5wczVsOlVI5fwDMWiwJh7q9I97T6GmxRA/U8c=; b=X4gW9mGkHY/5RT
	f4RT4LaoC7RkaU7aDH7bdw6ylF7UOml1ob4eJruRkT/8uvL3WqBblsQ9QUjsgQjbcqAiDq+5k2bjp
	AC1vVEVeIWlGtx/BBABCqVzwuCBIh8yuZIeAZapNJWqXmXL77X/zBNpKkd1EzP1JhFHHhZb73wJ2f
	340eggjNZkURlxh19TpC4Z0mnxIT2pBj7QRgD4uyuiPmE7YAgCeaJy122MSos+JNmmg+EFxWGv1f8
	mhOFkI3JpV9NI8N4Ooo4rRnx8ugDfcgxJQwFm344meRDlfyNtA0Jg/KmYJs22DHeFV8JjQUAChJgW
	/qqDXMht9QLVa/ksUO5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhOX-0003Il-0H; Fri, 03 May 2019 23:15:09 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhOT-00026K-E0
 for linux-um@lists.infradead.org; Fri, 03 May 2019 23:15:07 +0000
Received: by mail-oi1-x242.google.com with SMTP id w197so5713082oia.2
 for <linux-um@lists.infradead.org>; Fri, 03 May 2019 16:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YiBKDqzegd04O+PzAcr7R/FeGobNFYgVSfswMBcZCZU=;
 b=SXAm3yjCa0nibHXK4ceAAGFs6uCwaUpLsdyCU1o2lKOvlI3rqheWTpKnj2wyShZ7lu
 TPJifTqWsstn9qWG7fCugTMkSy8sDN1Wk1HhrgYmZcpapX1zR4GB6osSwq4oYO68ERug
 m0zSS0SWlzMDnDTsEAVvAyt86c9z8vzc3wqoXGPWKAEB7EiOd+Kh78da/TO1uS4+hvXu
 KHDx+3hb12TUOvvVeISvhVNnosdHc8Tl78soob4D9ge86intpqwkzZ5hweRv3v6ENiSu
 1rA6a30tpPPT6VjU3M1ZMvAEXkExGqUONafw5xmmYaV8aTHBJJADG16CXD8P/IByq2ER
 s7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YiBKDqzegd04O+PzAcr7R/FeGobNFYgVSfswMBcZCZU=;
 b=LxYlVM1aphWJkqmtjm+2/e9Jr0dU6n7Zf2j+WYsxi8TeNJrlHy32idQZ1t4RHi9ISP
 yi7x/CGePX5wZO+Ei+TE8Qtlo7uknDT+hW3Pf+AHd4I2YBpSAM2voWNElr8MVVh2Wdtv
 87vOWkxW5KKUjLTxuysMPrtDoE9UKclqBTOmrUKTPVeoczVDRP6oEjgWNY7esCFbSraR
 EjbJesK61oguaE+oS6Oupx2edhkJ/A3D7s+2uD4GCdyOzhZ/wggT3zgfKJ6VyVqWUxtl
 WWTgy5MsWPfSlW7/erYoYVojX98YjfRvM+tic9Bt+Otb1Lmukms7TXpX3ibS4CENJJZQ
 BZFA==
X-Gm-Message-State: APjAAAUbOH/uG4ReeBM7TAIVkXO0ZA6eKeCWXRWsx4vU+BFbC5A5Mgzv
 hY2aNoE2VXkJRQbi78Fa8HpZ+n0p/vjMEsJic6vfwA==
X-Google-Smtp-Source: APXvYqy8jY7gfDI7WH+mEtQuPQSGdDFLmcOn9yaaI5FbZz82XQ12EIWD3sphcpnXXnG85dXFQdhExQpRbCPKPfTjxbk=
X-Received: by 2002:aca:43d5:: with SMTP id q204mr880835oia.100.1556925301033; 
 Fri, 03 May 2019 16:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
 <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
 <1a5f3c44-9fa9-d423-66bf-45255a90c468@gmail.com>
 <CAFd5g45RYm+zfdJXnyp2KZZH5ojfOzy++aq+4zBeE5VDu6WgEw@mail.gmail.com>
 <052fa196-4ea9-8384-79b7-fe6bacc0ee82@gmail.com>
In-Reply-To: <052fa196-4ea9-8384-79b7-fe6bacc0ee82@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 3 May 2019 16:14:49 -0700
Message-ID: <CAFd5g47aY-CL+d7DfiyTidY4aAVY+eg1TM1UJ4nYqKSfHOi-0w@mail.gmail.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_161505_481596_D00474BD 
X-CRM114-Status: GOOD (  49.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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

> On 5/2/19 10:36 PM, Brendan Higgins wrote:
> > On Thu, May 2, 2019 at 6:45 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 5/2/19 4:45 PM, Brendan Higgins wrote:
> >>> On Thu, May 2, 2019 at 2:16 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >>>>
> >>>> On 5/2/19 11:07 AM, Brendan Higgins wrote:
> >>>>> On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >>>>>>
> >>>>>> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
> >>>>>>> From: Felix Guo <felixguoxiuping@gmail.com>
> >>>>>>>
> >>>>>>> The ultimate goal is to create minimal isolated test binaries; in the
> >>>>>>> meantime we are using UML to provide the infrastructure to run tests, so
> >>>>>>> define an abstract way to configure and run tests that allow us to
> >>>>>>> change the context in which tests are built without affecting the user.
> >>>>>>> This also makes pretty and dynamic error reporting, and a lot of other
> >>>>>>> nice features easier.
> >>>>>>>
> >>>>>>> kunit_config.py:
> >>>>>>>   - parse .config and Kconfig files.
> >>>>>>>
> >>>>>>> kunit_kernel.py: provides helper functions to:
> >>>>>>>   - configure the kernel using kunitconfig.
> >>>>>>>   - build the kernel with the appropriate configuration.
> >>>>>>>   - provide function to invoke the kernel and stream the output back.
> >>>>>>>
> >>>>>>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> >>>>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >>>>>>
> >>>>>> Ah, here's probably my answer to my previous logging format question,
> >>>>>> right?  What's the chance that these wrappers output stuff in a standard
> >>>>>> format that test-framework-tools can already parse?  :)
> >>>
> >>> To be clear, the test-framework-tools format we are talking about is
> >>> TAP13[1], correct?
> >>
> >> I'm not sure what the test community prefers for a format.  I'll let them
> >> jump in and debate that question.
> >>
> >>
> >>>
> >>> My understanding is that is what kselftest is being converted to use.
> >>>
> >>>>>
> >>>>> It should be pretty easy to do. I had some patches that pack up the
> >>>>> results into a serialized format for a presubmit service; it should be
> >>>>> pretty straightforward to take the same logic and just change the
> >>>>> output format.
> >>>>
> >>>> When examining and trying out the previous versions of the patch I found
> >>>> the wrappers useful to provide information about how to control and use
> >>>> the tests, but I had no interest in using the scripts as they do not
> >>>> fit in with my personal environment and workflow.
> >>>>
> >>>> In the previous versions of the patch, these helper scripts are optional,
> >>>> which is good for my use case.  If the helper scripts are required to
> >>>
> >>> They are still optional.
> >>>
> >>>> get the data into the proper format then the scripts are not quite so
> >>>> optional, they become the expected environment.  I think the proper
> >>>> format should exist without the helper scripts.
> >>>
> >>> That's a good point. A couple things,
> >>>
> >>> First off, supporting TAP13, either in the kernel or the wrapper
> >>> script is not hard, but I don't think that is the real issue that you
> >>> raise.
> >>>
> >>> If your only concern is that you will always be able to have human
> >>> readable KUnit results printed to the kernel log, that is a guarantee
> >>> I feel comfortable making. Beyond that, I think it is going to take a
> >>> long while before I would feel comfortable guaranteeing anything about
> >>> how will KUnit work, what kind of data it will want to expose, and how
> >>> it will be organized. I think the wrapper script provides a nice
> >>> facade that I can maintain, can mediate between the implementation
> >>> details and the user, and can mediate between the implementation
> >>> details and other pieces of software that might want to consume
> >>> results.
> >>>
> >>> [1] https://testanything.org/tap-version-13-specification.html
> >>
> >> My concern is based on a focus on my little part of the world
> >> (which in _previous_ versions of the patch series was the devicetree
> >> unittest.c tests being converted to use the kunit infrastructure).
> >> If I step back and think of the entire kernel globally I may end
> >> up with a different conclusion - but I'm going to remain myopic
> >> for this email.
> >>
> >> I want the test results to be usable by me and my fellow
> >> developers.  I prefer that the test results be easily accessible
> >> (current printk() implementation means that kunit messages are
> >> just as accessible as the current unittest.c printk() output).
> >> If the printk() output needs to be filtered through a script
> >> to generate the actual test results then that is sub-optimal
> >> to me.  It is one more step added to my workflow.  And
> >> potentially with an embedded target a major pain to get a
> >> data file (the kernel log file) transferred from a target
> >> to my development host.
> >
> > That's fair. If that is indeed your only concern, then I don't think
> > the wrapper script will ever be an issue for you. You will always be
> > able to execute a given test the old fashioned/manual way, and the
> > wrapper script only summarizes results, it does not change the
> > contents.
> >
> >>
> >> I want a reported test failure to be easy to trace back to the
> >> point in the source where the failure is reported.  With printk()
> >> the search is a simple grep for the failure message.  If the
> >> failure message has been processed by a script, and then the
> >> failure reported to me in an email, then I may have to look
> >> at the script to reverse engineer how the original failure
> >> message was transformed into the message that was reported
> >> to me in the email.  Then I search for the point in the
> >> source where the failure is reported.  So a basic task has
> >> just become more difficult and time consuming.
> >
> > That seems to be a valid concern. I would reiterate that you shouldn't
> > be concerned by any processing done by the wrapper script itself, but
> > the reality is that depending on what happens with automated
> > testing/presubmit/CI other people might end up parsing and
> > transforming test results - it might happen, it might not.
>
> You seem to be missing my point.
>
> Greg asked that the output be in a standard format.
>
> You replied that the standard format could be created by the wrapper script.

I thought Greg originally meant that that is how it could be done when
he first commented on this patch, so I was agreeing and elaborating.
Nevertheless, it seems you and Greg are now in agreement on this
point, so I won't argue it further.

>
> Now you say that "it might happen, it might not".  In other words the output
> may or may not end up in the standard format.

Sorry, that was in reference to your concern about getting an email in
a different format than what the tool that you use generates. It
wasn't a statement about what I was or wasn't going to do in regards
to supporting a standard format.

>
> As Greg points out in comments to patch 12:
>
>   "The core of kunit should also log the messages in this format as well,
>   and not rely on the helper scripts as Frank points out, not everyone
>   will use/want them.  Might as well make it easy for everyone to always
>   do the right thing and not force it to always be added in later."
>
> I am requesting that the original message be in the standard format.  Of
> course anyone is free to transform the messages in later processing, no
> big deal.

My mistake, I thought that was a concern of yours.

In any case, it sounds like you and Greg are in agreement on the core
libraries generating the output in TAP13, so I won't argue that point
further.

## Analysis of using TAP13

One of my earlier concerns was that TAP13 is a bit over constrained
for what I would like to output from the KUnit core. It only allows
data to be output as either:
 - test number
 - ok/not ok with single line description
 - directive
 - diagnostics
 - YAML block

The test number must become before a set of ok/not ok lines, and does
not contain any additional information. One annoying thing about this
is it doesn't provide any kind of nesting or grouping.

There is one ok/not ok line per test and it may have a short
description of the test immediately after 'ok' or 'not ok'; this is
problematic because it wants the first thing you say about a test to
be after you know whether it passes or not.

Directives are just a way to specify skipped tests and TODOs.

Diagnostics seem useful, it looks like you can put whatever
information in them and print them out at anytime. It looks like a lot
of kselftests emit a lot of data this way.

The YAML block seems to be the way that they prefer users to emit data
beyond number of tests run and whether a test passed or failed. I
could express most things I want to express in terms of YAML, but it
is not the nicest format for displaying a lot of data like
expectations, missed function calls, and other things which have a
natural concise representation. Nevertheless, YAML readability is
mostly a problem who won't be using the wrapper scripts. My biggest
problem with the YAML block is that you can only have one, and TAP
specifies that it must come after the corresponding ok/not ok line,
which again has the issue that you have to hold on to a lot of
diagnostic data longer than you ideally would. Another downside is
that I now have to write a YAML serializer for the kernel.

## Here is what I propose for this patchset:

 - Print out test number range at the beginning of each test suite.
 - Print out log lines as soon as they happen as diagnostics.
 - Print out the lines that state whether a test passes or fails as a
ok/not ok line.

This would be technically conforming with TAP13 and is consistent with
what some kselftests have done.

## To be done in a future patchset:

Add a YAML serializer and print out some logs containing structured
data (like expectation failures, unexpected function calls, etc) in
YAML blocks.

Does this sound reasonable? I will go ahead and start working on this,
but feel free to give me feedback on the overall idea in the meantime.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
