Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5061557B86
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 07:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/TM9025H1X75syTtxydbNzhJf/Jj2ZsnMxxuaIyY10=; b=OCen6yDO4sQCDO
	A2i0qN+xrWo/TQSo1D08CWokW4PjeJPCF1APgkL3Pr+1Yy+3DJvBdhninp7Ugayh7aR0TYv24N6jY
	SUF7OHmBdUxEcyydGVRjvB4IpobfyE/1GZmqsIYR/heLTPTsxaKjPQoVkBxwA5gY+mChAKu8of9at
	EFhDMuOIUPHyviWRKDUTJs8nynRbtcNJ+nIu/MbNe4HMKHblrq0TDl3Z8MRhdx6JOqNm3ZOoB/3nX
	B3SSPUY4sm9fTIsMz/LWnsH9mPARGE0QRrRsq0VqwBSj4fTq/oFk7wsCQeKyQ0UhWDUt6kjbUHG9m
	vL7GmJhImcNr2Uc7z9nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN3A-0005Yk-Ep; Thu, 27 Jun 2019 05:34:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsJ-0007bR-5q
 for linux-um@bombadil.infradead.org; Thu, 27 Jun 2019 05:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KKZ1R9QgEMrkGcZ9YLvKRKzkpMRTcKXcwCOxP+teR7M=; b=JeGCRnJ9iPV13zphZVk3Gv2bP
 6Ewgln2hrT35T8LV0HByTADOifnX9FqRVutoWYXIeraMBWjDzLqbRfBMum77A5EG6hzt1Kd95Pmvq
 L2JJKV4ZtoBrpoOaDxJeajeIx94YR5vvB+bIz3TyoD+Zm7akhXzB51qLoT8gPo7ZSajzxa4/+VB8c
 KlRMb4+xZc5o1fPx6K2xnua0LPhrTjPfQ76sqrW/4Vy6hbjMTW/hiLX4eejWM5j7TiZ1nI+oD/d9n
 2xeQ2DLJJ7HncTxQ0ZQaojWzYYu4fOOm5SUoTiJV71KUWWHJO6GghjR2tgn5HFW/isPtSCRr9JI5V
 6lJ5oycGw==;
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHwo-0001ID-AN
 for linux-um@lists.infradead.org; Thu, 27 Jun 2019 00:07:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so273829pfq.0
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 17:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KKZ1R9QgEMrkGcZ9YLvKRKzkpMRTcKXcwCOxP+teR7M=;
 b=L8/gCEeRIbIoy4dFbDu3aEhSPRF7rPfAvmRCx3ItHECNXHr8HCgKjM5mXTC9wUyNb+
 nrwS1zeX/UJfOPKYmEwGKVHcruUS1znp6TN5vQdfI6b+Y9H9BFcsfEseAINmMZxhStlc
 TWZydfC6tN4zj88A97CBxhrzFDd0ti0kMTr/cu0YxAbGMXlEHBEdlOAi6SMiewszVXs4
 tjHCgRLCojzI+WbS+S1y0aA/Xq96zu61RfJ8CIwkL7VdAC9ftOckX4/U6suQeLl1pxPk
 S14J2HjbLRLV7EnZm9hwujt2kW8WGbocpgogTslAlxCeXfFnyXJuzl1ibcVD4NJR7iWw
 Fh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KKZ1R9QgEMrkGcZ9YLvKRKzkpMRTcKXcwCOxP+teR7M=;
 b=J0Qp4UXOoUF+G8hRplqM8cHohxLIghfVKtbhkkG7F+X4vAY+ctjvMjgoojFpxSErvm
 bq0bSIEIHCBZ5/cpDTNP1QKiGKpkGNzJ2SGs33LiELBJSSNTfzam8d1ZlAArsNBXgYqQ
 k0gCZPKDM22Nb4jhPDd3uJDGpFQtlGNaU2cyP9hVLvhhQaWtGU8STSPohQnY7fTqtghd
 iCKmVTFhahpIjSLxss1jpBoP/DtdkUKLxXPcJNAaQM+AN6clf6OnZeFA0q/KZDQ/U1jq
 bUTuRISq/l7Xq1bxYOP4e99ud+JkE8a8QzNVhHv6gMcJaw3LcwRFf+ZpJnuHO9wwDuUx
 FMdg==
X-Gm-Message-State: APjAAAWiTOVJLjyyJwIRJz/AAJc9TLlRw3GP9lFXVqMLsp4KDTLtfZb5
 g0kWHuvb0NFXVUS6uLKA4mv9ssWjQ7h4rh1Zb9CNdg==
X-Google-Smtp-Source: APXvYqw0luNcANHXyMUiFoyyUu0AVErgnzQun0+KNERaAUHA3h78Phk03thaTOrgTG//zK4/DgIcpxo61LJZY0ft9FY=
X-Received: by 2002:a63:b919:: with SMTP id z25mr654931pge.201.1561593925659; 
 Wed, 26 Jun 2019 17:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190625214427.GN19023@42.do-not-panic.com>
 <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
 <20190625230253.GQ19023@42.do-not-panic.com>
 <CAFd5g45fSdpytudDyD3Yo1ti=kU_JJ6S9yz53_L=pnZTjQFU9A@mail.gmail.com>
 <20190626220204.GZ19023@42.do-not-panic.com>
In-Reply-To: <20190626220204.GZ19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 26 Jun 2019 17:05:13 -0700
Message-ID: <CAFd5g46yp3B6SB9OZRoum8-CDA-BW_En7BGz5WH8qFRx1d=8iA@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010730_545765_9FF9C248 
X-CRM114-Status: GOOD (  75.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-15.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 3:02 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Tue, Jun 25, 2019 at 11:41:47PM -0700, Brendan Higgins wrote:
> > On Tue, Jun 25, 2019 at 4:02 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > >
> > > On Tue, Jun 25, 2019 at 03:14:45PM -0700, Brendan Higgins wrote:
> > > > On Tue, Jun 25, 2019 at 2:44 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > > > Since its a new architecture and since you seem to imply most tests
> > > > > don't require locking or even IRQs disabled, I think its worth to
> > > > > consider the impact of adding such extreme locking requirements for
> > > > > an initial ramp up.
> > > >
> > > > Fair enough, I can see the point of not wanting to use irq disabled
> > > > until we get someone complaining about it, but I think making it
> > > > thread safe is reasonable. It means there is one less thing to confuse
> > > > a KUnit user and the only penalty paid is some very minor performance.
> > >
> > > One reason I'm really excited about kunit is speed... so by all means I
> > > think we're at a good point to analyze performance optimizationsm if
> > > they do make sense.
> >
> > Yeah, but I think there are much lower hanging fruit than this (as you
> > point out below). I am all for making/keeping KUnit super fast, but I
> > also don't want to waste time with premature optimizations and I think
> > having thread safe expectations and non-thread safe expectations hurts
> > usability.
> >
> > Still, I am on board with making this a mutex instead of a spinlock for now.
> >
> > > While on the topic of parallization, what about support for running
> > > different test cases in parallel? Or at the very least different kunit
> > > modules in parallel.  Few questions come up based on this prospect:
> > >
> > >   * Why not support parallelism from the start?
> >
> > Just because it is more work and there isn't much to gain from it right now.
> >
> > Some numbers:
> > I currently have a collection of 86 test cases in the branch that this
> > patchset is from.
>
> Impressive, imagine 86 tests and kunit is not even *merged yet*.

Full disclaimer, about half of them are KUnit tests for KUnit - to
make sure KUnit works, so I don't know if you consider that cheating.

> > I turned on PRINTK_TIME and looked at the first
> > KUnit output and the last. On UML, start time was 0.090000, and end
> > time was 0.090000. Looks like sched_clock is not very good on UML.
>
> Since you have a python thing that kicks tests, what if you just run
> time on it?

That's what I did on the this following paragraph (I just couldn't
time the tests by themselves in this case):

> > Still it seems quite likely that all of these tests run around 0.01
> > seconds or less on UML: I ran KUnit with only 2 test cases enabled
> > three times and got an average runtime of 1.55867 seconds with a
> > standard deviation of 0.0346747. I then ran it another three times
> > with all test cases enabled and got an average runtime of 1.535
> > seconds with a standard deviation of 0.0150997. The second average is
> > less, but that doesn't really mean anything because it is well within
> > one standard deviation with a very small sample size. Nevertheless, we
> > can conclude that the actual runtime of those 84 test cases is most
> > likely within one standard deviation, so on the order of 0.01 seconds.
> >
> > On x86 running on QEMU, first message from KUnit was printed at
> > 0.194251 and the last KUnit message was printed at 0.340915, meaning
> > that all 86 test cases ran in about 0.146664 seconds.
>
> Pretty impressive numbers. But can you blame me for expressing the
> desire to possibly being able to do better? I am not saying -- let's
> definitely have parallelism in place *now*. Just wanted to hear out
> tangibles of why we *don't* want it now.

I agree, faster is almost always better in these types of things, and
certainly is in this case.

In fairness to you, I also short sold the speed of KUnit in the cover
letter. I was too lazy to do this complete of an analysis back when I
wrote it (even if I did a complete timing like this, I would have to
put a bunch of asterisks since it wouldn't include the time to "boot"
the kernel or to build it, which vastly outstrip the speed of
individual test cases). And given the original numbers, I think
speeding things up would probably seem more urgent. So no, I really
cannot blame you.

Sorry if it came across that I was frustrated or impatient, but I am
actually glad you asked because I now have this public email where I
did the full analysis of how fast KUnit really is which I can refer to
in the future.

> And.. also, since we are reviewing now, try to target so that the code
> can later likely get a face lift to support parallelism without
> requiring much changes.

Also fair.

> > In any case, running KUnit tests in parallel is definitely something I
> > plan on adding it eventually, but it just doesn't really seem worth it
> > right now.
>
> Makes sense!
>
> > I find the incremental build time of the kernel to
> > typically be between 3 and 30 seconds, and a clean build to be between
> > 30 seconds to several minutes, depending on the number of available
> > cores, so I don't think most users would even notice the amount of
> > runtime contributed by the actual unit tests until we start getting
> > into the 1000s of test cases. I don't suspect it will become an issue
> > until we get into the 10,000s of test cases. I think we are a pretty
> > long way off from that.
>
> All makes sense, and agreed based on the numbers you are providing.
> Thanks for the details!
>
> > >   * Are you opposed to eventually having this added? For instance, there is
> > >     enough code on lib/test_kmod.c for batching tons of kthreads each
> > >     one running its own thing for testing purposes which could be used
> > >     as template.
> >
> > I am not opposed to adding it eventually at all. I actually plan on
> > doing so, just not in this patchset. There are a lot of additional
> > features, improvements, and sugar that I really want to add, so much
> > so that most of it doesn't belong in this patchset; I just think this
> > is one of those things that belongs in a follow up. I tried to boil
> > down this patchset to as small as I could while still being useful;
> > this is basically an MVP. Maybe after this patchset gets merged I
> > should post a list of things I have ready for review, or would like to
> > work on, and people can comment on what things they want to see next.
>
> Groovy.

Cool, I will do that then!

> > >   * If we eventually *did* support it:
> > >     - Would logs be skewed?
> >
> > Probably, before I went with the TAP approach, I was tagging each
> > message with the test case it came from and I could have parsed it and
> > assembled a coherent view of the logs using that; now that I am using
> > TAP conforming output, that won't work. I haven't really thought too
> > hard about how to address it, but there are ways. For the UML users, I
> > am planning on adding a feature to guarantee hermeticity between tests
> > running in different modules by adding a feature that allows a single
> > kernel to be built with all tests included, and then determine which
> > tests get run by passing in command line arguments or something. This
> > way you can get the isolation from running tests in separate
> > environments without increasing the build cost. We could also use this
> > method to achieve parallelism by dispatching multiple kernels at once.
>
> Indeed. Or... wait for it... containers... There tools for these sorts
> of things already. And I'm evaluating such prospects now for some other
> tests I care for.

Containers could definitely be useful in the long run. I have a long
term goal to build and run just parts of the kernel as I have
mentioned to you, and doing so in a totally hermetic environment could
provide a lot of value; in this case I would probably only want a
chroot, but if I want to deploy tests to run on different machines
containers could be very useful.

Actually, on the topic of containers for running tests, the presubmit
system I have set up for KUnit uses containers for deploying KUnit on
servers for testing[1]. Actually, I have some experimental patches to
make it work with LKML instead of Gerrit, but I am not sure whether it
makes more sense to go that route, with one of the many patchworks
clones that support presubmit, or something else.

> > That only works for UML, but I imagine you could do something similar
> > for users running tests under qemu.
>
> Or containers.
>
> > >     - Could we have a way to query: give me log for only kunit module
> > >       named "foo"?
> >
> > Yeah, I think that would make sense as part of the hermeticity thing I
> > mentioned above.
> >
> > Hope that seems reasonable!
>
> All groovy. Thanks for the details!

[1] https://kunit-review.googlesource.com/c/linux/+/1809/2#message-c243e1c9086d9432d2dcabc67a42a977b8a020ff

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
