Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FB6D4AC
	for <lists+linux-um@lfdr.de>; Thu, 18 Jul 2019 21:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTfsgCoT3qo9kI6vYuUa7pkdDB/bI4xrNusvtvITKCM=; b=RLiW320OZWygGs
	VCAaCIE0C/sdEpwaJcbuhYwiy4gg2eU6xQxbePsFMb4kRNZBnjVUPVh69ICkCZJD+3jS71JCCrWff
	U9j9ArSqrixy8vs53YsikN6HjClVvzLz2wRSic+V52j3JOln8wuEJ0/u+YuUZKWE2Kw0A6GKYWbct
	zJC04b06awWBzI+grE3SDL/Nj8l9XzjEKPJIaqE9KP8RdcXHU/c/yxpKDO+RcFGG/JQIxmKHr93X5
	LDvk+YaGfFle30h/UEVczH2y5WiGIx9BwmKfwuGMvATCh/IktR3PSACtes5zwVkyarYBXBgkwiJJO
	kmYbbapNEYLXcZhOGC8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBzP-000204-3g; Thu, 18 Jul 2019 19:22:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBzK-0001zO-SB
 for linux-um@lists.infradead.org; Thu, 18 Jul 2019 19:22:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so13313903pgb.9
 for <linux-um@lists.infradead.org>; Thu, 18 Jul 2019 12:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hBFy7EH0mw2SK7uI8qKF1fHgdf6f9ZNwoqzuqnBlZ8E=;
 b=oGY8omtQvGoYcD+e34Yt9qr3X14EjkzXByvA7RTwGiQJZnWtAqL1Qgc9RC1Ce18u1a
 RbnrZ+mwJ+Bd8LTzYPwSiYFHCs8WowxKvwQUvizOSSbKQR7rkEx4fLIQ3xMzqPziBnTB
 BOlPaD8daje4roDr7mPrXuRrfUOUe3Qy+FoHEEHzHmWCQHlcCWyX/ktBi+iFcu6AWcMO
 6n009uLLGTzTGqdQJGOllwp42KObteDH+Y426amI5Qk8U7+eGVut6T5jhIZ7z0uwcv+G
 HL84r54w1Ns/ePAwAPEKi53cTkoAYcjquhAlYy4zKce3KZYEU04o3BUwIDhQJF9RtK/h
 UZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hBFy7EH0mw2SK7uI8qKF1fHgdf6f9ZNwoqzuqnBlZ8E=;
 b=gtfcOhw3qBbz1x8eHPYkgyJDDTGR5BdCDroZNzrA0FYPixYGl7P+4+/ICwT/n37RAB
 qAowH7cLEaYY7hlw2Opo0FPmH40WGNYhMCcWBE6XGx6sQ5HdScXlXuIxOin7kX9neYNR
 +Jt70C35MRjD32WVznO+Sj9OkahGj2eMXh8PRqDh8A+uZuk1tjailVTxyGupC+woTuoc
 BgBhAf0LppCZWcFoQnaYer4v9tgWbUCUFX8fEA+BWiq4sO4wtcQkxabOjvhK/Da8ml0E
 PPT5YvIppX9X0ueEb9iP3R8lli7d49/i864YTW/WJ1PXFWGL2nVZyyB7kNoaQc2izKGT
 GMwg==
X-Gm-Message-State: APjAAAXjmFxNOu4b6O+KjlNpfp6yyrjGEKtseSgWafvW4LZUG1iRCLan
 N4KygrC5tN7QKRkKH5YuFGGdx9Y+6CC0o/Hzwq3xWw==
X-Google-Smtp-Source: APXvYqwEX6bf+N7IshMHyf6Ka9VvTGGohf11maoUS2kqSaEKH7rjYoGxlweVxaB2rT0fUBlD3BQp3PamQk99u/yqGyM=
X-Received: by 2002:a17:90a:ab0d:: with SMTP id
 m13mr50453432pjq.84.1563477765258; 
 Thu, 18 Jul 2019 12:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
In-Reply-To: <20190718175024.C3EC421019@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 18 Jul 2019 12:22:33 -0700
Message-ID: <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_122246_950443_41EF924E 
X-CRM114-Status: GOOD (  49.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 10:50 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-16 11:52:01)
> > On Tue, Jul 16, 2019 at 10:50 AM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> >
> > > The only hypothetical case where this can't be done is a complicated
> > > assertion or expectation that does more than one check and can't be
> > > written as a function that dumps out what went wrong. Is this a real
> > > problem? Maybe such an assertion should just open code that logic so we
> > > don't have to build up a string for all the other simple cases.
> >
> > I have some expectations in follow up patchsets for which I created a
> > set of composable matchers for matching structures and function calls
> > that by their nature cannot be written as a single function. The
> > matcher thing is a bit speculative, I know, but for any kind of
> > function call matching, you need to store a record of functions you
> > are expecting to have called and then each one needs to have a set of
> > expectations defined by the user; I don't think there is a way to do
> > that that doesn't involve having multiple separate functions each
> > having some information useful to constructing the message.
> >
> > I know the code in question isn't in this patchset; the function
> > matching code was in one of the earlier versions of the RFC, but I
> > dropped it to make this patchset smaller and more manageable. So I get
> > it if you would like me to drop it and add it back in when I try to
> > get the function and structure matching stuff in, but I would really
> > prefer to keep it as is if you don't care too much.
>
> Do you have a link to those earlier patches?

This is the first patchset:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1788057.html

In particular you can see the code for matching functions here:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1788073.html

And parameter matching code here:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1788072.html

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1788086.html

My apologies in advance, but the code at this early stage had not
adopted the kunit_* prefix and was still using the test_* and mock_*
prefix. (Hence, struct kunit_stream was known as struct test_stream).

> > > It seems far simpler to get rid of the string stream API and just have a
> > > struct for this.
> > >
> > >         struct kunit_fail_msg {
> > >                 const char *line;
> > >                 const char *file;
> > >                 const char *func;
> > >                 const char *msg;
> > >         };
> > >
> > > Then you can have the assertion macros create this on the stack (with
> > > another macro?).
> > >
> > >         #define DEFINE_KUNIT_FAIL_MSG(name, _msg) \
> > >                 struct kunit_fail_msg name = { \
> > >                         .line =  __LINE__, \
> > >                         .file = __FILE__, \
> > >                         .func = __func__, \
> > >                         .msg = _msg, \
> > >                 }
> > >
> > > I don't want to derail this whole series on this topic, but it seems
> > > like a bunch of code is there to construct this same set of information
> > > over and over again into a buffer a little bit at a time and then throw
> > > it away when nothing fails just because we may want to support the case
> > > where we have some unstructured data to inform the user about.
> >
> > Yeah, that's fair. I think there are a number of improvements to be
> > made with how the expectations are defined other than that, but I was
> > hoping I could do that after this patchset is merged. I just figured
> > with the kinds of things I would like to do, it would lead to a whole
> > new round of discussion.
> >
> > In either case, I think I would still like to use the `struct
> > kunit_stream` as part of the interface to share the failure message
> > with the test case runner code in test.c, at least eventually, so that
> > I only have to have one way to receive data from expectations, but I
> > think I can do that and still do what you suggest by just constructing
> > the kunit_stream at the end of expectations where it is feasible.
> >
> > All in all I agree with what you are saying, but I would rather do it
> > as a follow up possibly once we have some more code on the table. I
> > could just see this opening up a whole new can of worms where we
> > debate about exactly how expectations and assertions work for another
> > several months, only to rip it all out shortly there after. I know
> > that's how these things go, but that's my preference.
> >
> > I can do what you suggest if you feel strongly about it, but I would
> > prefer to hold off until later. It's your call.
> >
>
> The crux of my complaint is that the string stream API is too loosely
> defined to be usable. It allows tests to build up a string of
> unstructured information, but with certain calling constraints so we
> have to tread carefully. If there was more structure to the data that's
> being recorded then the test case runner could operate on the data
> without having to do string/stream operations, allocations, etc. This
> would make the assertion logic much more concrete and specific to kunit,
> instead of this small kunit wrapper that's been placed on top of string
> stream.

Yeah, I can see the point of wanting something that provides more
structure than the raw `struct kunit_stream` interface. In fact, it is
something I had already started working on, when I had determined it
would be a large effort to capture all the variations. I was further
put off from the idea when I had been asked to convert the KUnit
intermediate format from what I was using to TAP, because, as it is,
the current data printed out by KUnit doesn't contain all the data I
would like to put in it in a way that best takes advantage of the TAP
specification. One problematic area in particular: TAP already
provides a way to present a lot of the data I would like to export,
but it involves JSON serialization which was an idea that some of the
other reviewers understandably weren't too keen on. TAP also wants to
report data some time after it is available, which is generally not a
good idea for test debug information; you want to make it available as
soon as you can or you risk crashing with the data still inside.

Hence, I decided we could probably spend a good long while debating
how I present the information. So the idea of having a loose
definition seemed attractive to me in its own right since it would
likely conform to whatever we ended up deciding in the long run. Also,
all the better that it was what I already had and no one seemed to
mind too much.

The only constant I expect is that `struct kunit` will likely need to
take an abstract object with a `commit` method, or a `format` method
or whatever so it could control when data was going to be printed out
to the user. We will probably also use a string builder in there
somewhere.

> TL;DR: If we can get rid of the string stream API I'd view that as an
> improvement because building arbitrary strings in the kernel is complex,
> error prone and has calling context concerns.

True. No argument there.

> Is the intention that other code besides unit tests will use this string
> stream API to build up strings? Any targets in mind? This would be a
> good way to get the API merged upstream given that its 2019 and we
> haven't had such an API in the kernel so far.

Someone, (was it you?) asked about code sharing with a string builder
thingy that was used for creating structured human readable files, but
that seemed like a pretty massive undertaking.

Aside from that, no. I would kind of prefered that nobody used it for
anything else because I the issues you described.

Nevertheless, I think the debate over the usefulness of the
string_stream and kunit_stream are separate topics. Even if we made
kunit_stream more structured, I am pretty sure I would want to use
string_stream or some variation for constructing the message.

> An "object oriented" (strong quotes!) approach where kunit_fail_msg is
> the innermost struct in some assertion specific structure might work
> nicely and allow the test runner to call a generic 'format' function to
> print out the message based on the type of assertion/expectation it is.
> It probably would mean less code size too because the strings that are
> common will be in the common printing function instead of created twice,
> in the macros/code and then copied to the heap for the string stream.
>
>         struct kunit_assert {
>                 const char *line;
>                 const char *file;
>                 const char *func;
>                 void (*format)(struct kunit_assert *assert);
>         };
>
>         struct kunit_comparison_assert {
>                 enum operator operator;
>                 const char *left;
>                 const char *right;
>                 struct kunit_assert assert;
>         };
>
>         struct kunit_bool_assert {
>                 const char *truth;
>                 const char *statement;
>                 struct kunit_assert assert;
>         };
>
>         void kunit_format_comparison(struct kunit_assert *assert)
>         {
>                 struct kunit_comparison_assert *comp = container_of(assert, ...)
>
>                 kunit_printk(...)
>         }

I started working on something similarish, but by the time I ended up
coming up with a parent object whose definition was loose enough to
satisfy all the properties required by the child classes it ended up
basically being the same as what I have now just with a more complex
hierarchy of message manipulation logic.

On the other hand, I didn't have the idea of doing the parent object
quite the way you did and that would clean up a lot of the duplicated
first line logic.

I would like to give it a try, but I am afraid I am going to get
sucked down a really deep rabbit hole.

> Maybe other people have opinions here on if you should do it now or
> later. Future coding is not a great argument because it's hard to
> predict the future. On the other hand, this patchset is in good shape to

Yeah, that's kind of why I am afraid to go down this road when I have
something that works now and I know works with the mocking stuff I
want to do.

I would like to try your suggestion, but I want to try to make it work
with my mocking patches before I commit to it because otherwise I am
just going to have to back it out in a follow up patchset.

> merge and I'd like to use it to write unit tests for code I maintain so
> I don't want to see this stall out. Sorry if I'm opening the can of
> worms you're talking about.

Don't be sorry. I agree with you that the kunit_stream stuff is not very pretty.

Shuah, have we missed the merge window for 5.3?

I saw you only sent one PR out so far for this release, and there
wasn't much in it; I imagine you are going to send at least one more?

I figure, if we still got time to try out your suggestion, Stephen, no
harm in trying.

Also if we missed it, then I have another couple months to play around with it.

What do you think?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
