Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA524CC726
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 03:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7vGS/rNT9ywBBa3w4BTcpJ8cF2hQKE0NTtGNz5n7/g=; b=nOR5avODelrlpd
	WuK3fmpFq80FnRqeugj0dG7qh0byAg2Ke46ne6D2YZpda7c6ZBZd4gLwg5+4SqLhPXJoK83Nc1pZT
	SMwKYMRCoYrnrnPNhMRanxgSVMoPmeLuBNk4+vtzZg1BPazSK/21rIpRRlPeNnF1UcoilW97yD4Hm
	lTKQL6L67eymDxUl6JkMVhpy43ESTASirEBPyBrMhvfaVBYH3WoH4ZA3g8wC6N6GkeU5wL+UfzFxa
	KS1jIVMgRrzIxHAneKg6kGhRbm7io0ccbMs6QXn95wwnEylT4Q+L2HHFb05YTQsNn1Iw3mQTmwrkq
	QqXsXgwWJwX/9N0BqmFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGYiC-0001Vg-LN; Sat, 05 Oct 2019 01:18:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGYi9-0001VF-Oh
 for linux-um@lists.infradead.org; Sat, 05 Oct 2019 01:18:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id f21so3901714plj.10
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 18:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q2oP8A+66Rac3wNrpkR8MWsLUwrIym5JWD2OWoQLn2I=;
 b=GPhhjUv+KkS/VzHR5+UKHbUpig67OUz+p2ab8gzDSHD3qWPn5BM1Y5BuX7lxM7j2sb
 kfHr9wmq/ZxD9CMSuGBeBnRcFNxBoNrc0jkNUB4Rgmx5E/OBumH+nRsrohMgMe+j/Rvr
 t8LXEhaVzelX3CPRpPkB2Y5G0/ztqK3oeYNRWvHYetjEo1eOHmWOT3CD6xhMJchs6eDb
 OxHBa5qEKGeZBHYqpxi4evGAx/VhufwkpQPNLZaEp4DWShmC9T8N6LCor4kERCu29UaE
 O+Yo2QExYcBHz7N8yqMIajJuvzJZ49QCOIBtYIj8yxzgyIBkwnbnqn5CemWWy9ROQDur
 OLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q2oP8A+66Rac3wNrpkR8MWsLUwrIym5JWD2OWoQLn2I=;
 b=NHtdJvc5zx6mYRQHKs7L9yn+yxw7vK+ZVrp273Rxfz6X49vyec2DhPw7ScnTza59jf
 SMDXKWMjtKzSQ8I4xuwy2Sgr9xlEESNqRBWosQuBtAhvrAcSTxutG2iE1WVviKf7MlBZ
 cGqZRshD0ghO0yY9oN5ajSLYDoSwOVD8y9nBc2G6A+QTtMiPCkJ/67unPgaVyO4CBsA7
 AC8SfJB2Y4cJzGFgOakDHUtfAAkjKQn0RTmQQXp9FYpsTyww5NHLvqdj8brQov2nINVR
 0G5fauMIkjo2y2HQ2qjKyH002QA9Ucl607a7qqcSvh66WorVc2J8A+kAVzq9puGNm5w3
 I7DQ==
X-Gm-Message-State: APjAAAUdBuJAP/HpY0MMPwxHQ/KQJPTzB6ZwYB0160AZTsaQ4Lbi04nN
 1ceFmuHxMdeqXU8b+qUKaSIIgfr0PohBs4VObduPPg==
X-Google-Smtp-Source: APXvYqxXIgL1V9Pz63bm5hrH1w7OGcZMj9O7xWX+0gLh6oom7FtSqHJPBvTviBg5NgEsO3lWv0/RgnZ1WUmPfaPcH/I=
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr18539665plo.232.1570238296215; 
 Fri, 04 Oct 2019 18:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
 <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
 <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
In-Reply-To: <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 4 Oct 2019 18:18:04 -0700
Message-ID: <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_181817_831446_F09C288F 
X-CRM114-Status: GOOD (  32.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Logan Gunthorpe <logang@deltatee.com>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 5:49 PM shuah <shuah@kernel.org> wrote:
>
> On 10/4/19 6:33 PM, Brendan Higgins wrote:
> > On Fri, Oct 4, 2019 at 4:57 PM shuah <shuah@kernel.org> wrote:
> >>
> >> On 10/4/19 5:52 PM, Brendan Higgins wrote:
> >>> On Fri, Oct 4, 2019 at 4:30 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >>>>
> >>>> On Fri, Oct 04, 2019 at 04:47:09PM -0600, shuah wrote:
> >>>>>> However, if I encourage arbitrary tests/improvements into my KUnit
> >>>>>> branch, it further diverges away from torvalds/master, and is more
> >>>>>> likely that there will be a merge conflict or issue that is not related
> >>>>>> to the core KUnit changes that will cause the whole thing to be
> >>>>>> rejected again in v5.5.
> >>>>>
> >>>>> The idea is that the new development will happen based on kunit in
> >>>>> linux-kselftest next. It will work just fine. As we accepts patches,
> >>>>> they will go on top of kunit that is in linux-next now.
> >>>>
> >>>> I don't see how this would work.  If I add unit tests to ext4, they
> >>>> would be in fs/ext4.  And to the extent that I need to add test mocks
> >>>> to allow the unit tests to work, they will involve changes to existing
> >>>> files in fs/ext4.  I can't put them in the ext4.git tree without
> >>>> pulling in the kunit changes into the ext4 git tree.  And if they ext4
> >>>> unit tests land in the kunit tree, it would be a receipe for large
> >>>> numbers of merge conflicts.
> >>>
> >>> That's where I was originally coming from.
> >>>
> >>> So here's a dumb idea: what if we merged KUnit through the ext4 tree?
> >>> I imagine that could potentially get very confusing when we go back to
> >>> sending changes in through the kselftest tree, but at least it means
> >>> that ext4 can use it in the meantime, which means that it at least
> >>> gets to be useful to one group of people. Also, since Ted seems pretty
> >>> keen on using this, I imagine it is much more likely to produce real
> >>> world, immediately useful tests not written by me (I'm not being lazy,
> >>> I just think it is better to get other people's experiences other than
> >>> my own).
> >>>
> >>
> >> That doesn't make sense does it? The tests might not be limited to
> >> fs/ext4. We might have other sub-systems that add tests.
> >
> > Well, I have some small isolated examples that I think would probably
> > work no matter what, so we can get some usage outside of ext4. Also,
> > if we want to limit the number of tests, then we don't expect to get
> > much usage outside of ext4 before v5.5 anyway. I just figure, it's
> > better to make it work for one person than no one, right?
> >
> > In any case, I admit it is not a great idea. I just thought it had
> > some interesting advantages over going in through linux-kselftest that
> > were worth exploring.
> >
> >> So, we will have to work to make linux-next as the base for new
> >> development and limit the number of tests to where it will be
> >> easier work in this mode for 5.5. We can stage the pull requests
> >> so that kunit lands first followed by tests.
> >
> > So we are going to encourage maintainers to allow tests in their tree
> > based on KUnit on the assumption that KUnit will get merged before
> > there changes? That sounds like a huge burden, not just on us, but on
> > other maintainers and users.
> >
> > I think if we are going to allow tests before KUnit is merged, we
> > should have the tests come in through the same tree as KUnit.
> >
> >> We have a similar situation with kselftest as well. Sub-systems
> >> send tests that depend on their tress separately.
> >
> > Well it is different if the maintainer wants to send the test in
> > through their tree, right? Otherwise, it won't matter what the state
> > of linux-next is and it won't matter when linux-kselftest gets merged.
> > Or am I not understanding you?
> >
>
> Let's talk about current state. Right now kunit is in linux-next and
> we want to add a few more tests. We will have to coordinate the effort.
> Once kunit get into mainline, then the need for this coordination goes
> down.

Sure, I was just thinking that getting other people to write the tests
would be better. Since not only is it then useful to someone else, it
provides the best possible exercise of KUnit.

Nevertheless, it would probably just be easier to get a handful of
example tests, and it is less likely to result in any issues for v5.5,
so that's probably better. (I think that is what you are hinting at
here. ;-) )

Hey Ted, do you know if that ext4 timestamp test can go in through
linux-kselftest? It seemed fairly self-contained. Or is that what you
were saying wouldn't work for you?

> Let's focus on the next few weeks first so we can get this into mainline
> in 5.5.

I agree. That is the most important thing.

> The two of us can chat next week and come up with a plan.

Sure.

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
