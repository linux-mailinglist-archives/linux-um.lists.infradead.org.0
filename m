Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9195740C
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 00:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gfxzwmx/4aspFUSop6uvfW46s+J+xjROcGfjMi2Ko+c=; b=Ew/AUAH7319ibK
	sdQ3oMAs8+3TJuSswFyiLpsQA/0cqiu+nbBSaJZjN185m9KOFSaMR6bumhyLelL0SOHCfHnt9C/nB
	VJk3hRb+Pf1AzY7VUMJwIuI0y605sbtLNW20pUyEpnBUzfeU0qZTdfxHwR9+OagwviIjSolLxdcMp
	nz5DPreyZoWAlY/XIay7mLj6KKdCosP7iuYBv0FdSb4g/K7729mqzBiMKUbinE020So4T8Z9oRbAq
	6izIlbzfSCJhPcgZmwDnm7hUGEVb0OQIUlw0Y0pAIgecMsDMrLjZCD9Q++vgag3UOX1E7PHeMJNFP
	kleOOeH87yAlHvQ0lxzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFzX-0000YR-QL; Wed, 26 Jun 2019 22:02:11 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFzU-0000Xs-2U
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 22:02:09 +0000
Received: by mail-pl1-f193.google.com with SMTP id w24so89722plp.2
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 15:02:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pncFvuTLXYoGgXNL3R5Dcm7FSED9aawZhvXRFRAEX+A=;
 b=lFYpXJzvMGMwWCxcwnMoEjhtfOoX8aYlvgr3W0VJE4oMFdH1PD0wydZKOtU3lIfaEn
 O6K0AxWpgBbu6cRVzd5Sl2/YJlQj+CeTFqsBKwfpOenSGObcFkzwFAsp0TXKwQH0J+Co
 J7dkHexECxtNG3E9EaKkuHXv5VVEbW7ovNBg3+yKTW0bIZm2Khhx5PptZPCoyCNxET3o
 Liz2w6V6b+Dq99tZ3muoTH4ubz50DvJzMikhF508dEhEvYd+JAx3abO552xL+Z4CrXNx
 KXyXDVkYTLUjDt9X5YmBJ8wOpLBjFUnI9XAq9VJPCMNWVNJg5kKDWaB0Qd91qBwCjDi3
 je9A==
X-Gm-Message-State: APjAAAXwYr5B7VaE4w5H4MKxuE0B0Cug3PCCnLGL4x7c8y7hCBfTGRzs
 oN7XjsBzkOS1ZNjmBigPlzU=
X-Google-Smtp-Source: APXvYqz2bPP4PqTF9BuVt2O9juLFvMSSMYKeoVt6+esjv4Dsli0F9B+q17JOFwfl4ENv66EipVz4ng==
X-Received: by 2002:a17:902:a517:: with SMTP id
 s23mr381726plq.306.1561586526522; 
 Wed, 26 Jun 2019 15:02:06 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t13sm3933781pjo.13.2019.06.26.15.02.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 15:02:05 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 67612401D0; Wed, 26 Jun 2019 22:02:04 +0000 (UTC)
Date: Wed, 26 Jun 2019 22:02:04 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190626220204.GZ19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190625214427.GN19023@42.do-not-panic.com>
 <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
 <20190625230253.GQ19023@42.do-not-panic.com>
 <CAFd5g45fSdpytudDyD3Yo1ti=kU_JJ6S9yz53_L=pnZTjQFU9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g45fSdpytudDyD3Yo1ti=kU_JJ6S9yz53_L=pnZTjQFU9A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_150208_123830_47DE6D7D 
X-CRM114-Status: GOOD (  39.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, Jun 25, 2019 at 11:41:47PM -0700, Brendan Higgins wrote:
> On Tue, Jun 25, 2019 at 4:02 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >
> > On Tue, Jun 25, 2019 at 03:14:45PM -0700, Brendan Higgins wrote:
> > > On Tue, Jun 25, 2019 at 2:44 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > > Since its a new architecture and since you seem to imply most tests
> > > > don't require locking or even IRQs disabled, I think its worth to
> > > > consider the impact of adding such extreme locking requirements for
> > > > an initial ramp up.
> > >
> > > Fair enough, I can see the point of not wanting to use irq disabled
> > > until we get someone complaining about it, but I think making it
> > > thread safe is reasonable. It means there is one less thing to confuse
> > > a KUnit user and the only penalty paid is some very minor performance.
> >
> > One reason I'm really excited about kunit is speed... so by all means I
> > think we're at a good point to analyze performance optimizationsm if
> > they do make sense.
> 
> Yeah, but I think there are much lower hanging fruit than this (as you
> point out below). I am all for making/keeping KUnit super fast, but I
> also don't want to waste time with premature optimizations and I think
> having thread safe expectations and non-thread safe expectations hurts
> usability.
> 
> Still, I am on board with making this a mutex instead of a spinlock for now.
> 
> > While on the topic of parallization, what about support for running
> > different test cases in parallel? Or at the very least different kunit
> > modules in parallel.  Few questions come up based on this prospect:
> >
> >   * Why not support parallelism from the start?
> 
> Just because it is more work and there isn't much to gain from it right now.
> 
> Some numbers:
> I currently have a collection of 86 test cases in the branch that this
> patchset is from.

Impressive, imagine 86 tests and kunit is not even *merged yet*.

> I turned on PRINTK_TIME and looked at the first
> KUnit output and the last. On UML, start time was 0.090000, and end
> time was 0.090000. Looks like sched_clock is not very good on UML.

Since you have a python thing that kicks tests, what if you just run
time on it?

> Still it seems quite likely that all of these tests run around 0.01
> seconds or less on UML: I ran KUnit with only 2 test cases enabled
> three times and got an average runtime of 1.55867 seconds with a
> standard deviation of 0.0346747. I then ran it another three times
> with all test cases enabled and got an average runtime of 1.535
> seconds with a standard deviation of 0.0150997. The second average is
> less, but that doesn't really mean anything because it is well within
> one standard deviation with a very small sample size. Nevertheless, we
> can conclude that the actual runtime of those 84 test cases is most
> likely within one standard deviation, so on the order of 0.01 seconds.
> 
> On x86 running on QEMU, first message from KUnit was printed at
> 0.194251 and the last KUnit message was printed at 0.340915, meaning
> that all 86 test cases ran in about 0.146664 seconds.

Pretty impressive numbers. But can you blame me for expressing the
desire to possibly being able to do better? I am not saying -- let's
definitely have parallelism in place *now*. Just wanted to hear out
tangibles of why we *don't* want it now.

And.. also, since we are reviewing now, try to target so that the code
can later likely get a face lift to support parallelism without
requiring much changes.

> In any case, running KUnit tests in parallel is definitely something I
> plan on adding it eventually, but it just doesn't really seem worth it
> right now.

Makes sense!

> I find the incremental build time of the kernel to
> typically be between 3 and 30 seconds, and a clean build to be between
> 30 seconds to several minutes, depending on the number of available
> cores, so I don't think most users would even notice the amount of
> runtime contributed by the actual unit tests until we start getting
> into the 1000s of test cases. I don't suspect it will become an issue
> until we get into the 10,000s of test cases. I think we are a pretty
> long way off from that.

All makes sense, and agreed based on the numbers you are providing.
Thanks for the details!

> >   * Are you opposed to eventually having this added? For instance, there is
> >     enough code on lib/test_kmod.c for batching tons of kthreads each
> >     one running its own thing for testing purposes which could be used
> >     as template.
> 
> I am not opposed to adding it eventually at all. I actually plan on
> doing so, just not in this patchset. There are a lot of additional
> features, improvements, and sugar that I really want to add, so much
> so that most of it doesn't belong in this patchset; I just think this
> is one of those things that belongs in a follow up. I tried to boil
> down this patchset to as small as I could while still being useful;
> this is basically an MVP. Maybe after this patchset gets merged I
> should post a list of things I have ready for review, or would like to
> work on, and people can comment on what things they want to see next.

Groovy.

> >   * If we eventually *did* support it:
> >     - Would logs be skewed?
> 
> Probably, before I went with the TAP approach, I was tagging each
> message with the test case it came from and I could have parsed it and
> assembled a coherent view of the logs using that; now that I am using
> TAP conforming output, that won't work. I haven't really thought too
> hard about how to address it, but there are ways. For the UML users, I
> am planning on adding a feature to guarantee hermeticity between tests
> running in different modules by adding a feature that allows a single
> kernel to be built with all tests included, and then determine which
> tests get run by passing in command line arguments or something. This
> way you can get the isolation from running tests in separate
> environments without increasing the build cost. We could also use this
> method to achieve parallelism by dispatching multiple kernels at once.

Indeed. Or... wait for it... containers... There tools for these sorts
of things already. And I'm evaluating such prospects now for some other
tests I care for.

> That only works for UML, but I imagine you could do something similar
> for users running tests under qemu.

Or containers.

> >     - Could we have a way to query: give me log for only kunit module
> >       named "foo"?
> 
> Yeah, I think that would make sense as part of the hermeticity thing I
> mentioned above.
> 
> Hope that seems reasonable!

All groovy. Thanks for the details!

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
