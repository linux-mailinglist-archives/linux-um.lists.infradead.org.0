Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0270856284
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 08:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXJn4vulyRjMTwhHzEB0HGTBhjUdowrq8rHNvwGosNA=; b=g+LLvWpK8zl/t8
	0NFAw8bb2MS9JLsiM+/4CZHyb/mp20Ym5rzxz30ovrqBPCHpf7L1Bjxgb1QGJXcxuXAGpvCsCnIEK
	hAN121iBLLVWruQ9RTZY/zZSroTB/wVvGGtL0Yp5zwQIEFXI4wUMMk+6EJvt/cZ1Enp6l+RVEYcyJ
	hrBfWvIhVGPq/G9gcJBcKN8TW22Y3igf2EqxzURyM+tFrI4SOjUayBTthKUO9H+avKk3v12k6SIfX
	WrIyh4C/ET/KP2caZ0ax4XI+Mx5itpX01MotQ+BZ1OY8ZtH9GAmLTkNSVPzQ7fX/d8+PeEzuiqlik
	1mWyJKf040NDvkdVAixQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1d5-00011I-Rg; Wed, 26 Jun 2019 06:42:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1d2-00010f-GC
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 06:42:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi6so846098plb.12
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 23:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=97fNQhRc8wq4ewqRwHUZivSXGNy3wo+DiktNt6BuM1o=;
 b=m8w/QLFUOkV2r8nM4dXom4nB8yKJb7/7QTMOMQn0qijo9CexrHeK+bR0MPOk7K64RN
 oMDOQhVkXnI4UYsxoZERTzMchuU8ZuSXQVbe7PD7GBq58swJ1B0wl9zg2T1jDJjIFcpW
 O/5R7uaHiYc5vvAJDPHpVhmTpcBeCykDYFrlkLu92iDqXDEGHmkNFrPVme8ha3yeMa+9
 SSjqnz+drMupIrIAA5p2oUG6JB/gHz+XdzOb+NPLguWQM152NiUsdJnj04d+wIazVHoY
 RqDDXsDiktD7TWekl63ZaXNaVelF0ltlqznPeRmml4YQVzfq60nVLckHZybN7zV2zT1m
 aBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=97fNQhRc8wq4ewqRwHUZivSXGNy3wo+DiktNt6BuM1o=;
 b=DNi03CtJvEx+doqMikLqnDhTu8RhuuImgqpZX8zTfs1MNRL51UwbQXluZaEiFR1Ag2
 LqeKB1pen4kwYHA/JNRwnm5WW8BERRzzT5t39bQc3+BcPw4VKpkk0dHUFisJwCFdATvN
 7e+fFLK7jDenMEGlbETNoByx8+q9jjYo6l6NjP9pgcaEqeCsPJc+Ee+Hf/xzu85d6PVA
 f1WkGOu535FqwbARob9CkX73fGufTPpK3AEgT9jlr/dAY14xZb3iYwTrzmYcCvYWjDJu
 zW7QtYcwY2lzYKY3Id8KmmOaSp2DqjGirtc7kdiEZfNyPWcryxgqVKkCjFOAiqnxO0Fu
 SdPQ==
X-Gm-Message-State: APjAAAXXhH57LviSkd7mxlapHHS8Pc5MxzGgFEdx7wEfXltunnvGHvfS
 keAWGFt1ZlzfTaAUpoyR4AZjl5u1kpUvXfT1bb7kVg==
X-Google-Smtp-Source: APXvYqybmTOAarjOR0jsvnzpNTD7C7S9tNEkokPreMksaC4ZkzPoppWa0LA/1WlZ/NQmXAUQqe9Hs4JcwK0nevbM4K4=
X-Received: by 2002:a17:902:1004:: with SMTP id
 b4mr3503891pla.325.1561531318934; 
 Tue, 25 Jun 2019 23:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190625214427.GN19023@42.do-not-panic.com>
 <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
 <20190625230253.GQ19023@42.do-not-panic.com>
In-Reply-To: <20190625230253.GQ19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Jun 2019 23:41:47 -0700
Message-ID: <CAFd5g45fSdpytudDyD3Yo1ti=kU_JJ6S9yz53_L=pnZTjQFU9A@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_234200_570287_757DE3E5 
X-CRM114-Status: GOOD (  30.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Jun 25, 2019 at 4:02 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Tue, Jun 25, 2019 at 03:14:45PM -0700, Brendan Higgins wrote:
> > On Tue, Jun 25, 2019 at 2:44 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > Since its a new architecture and since you seem to imply most tests
> > > don't require locking or even IRQs disabled, I think its worth to
> > > consider the impact of adding such extreme locking requirements for
> > > an initial ramp up.
> >
> > Fair enough, I can see the point of not wanting to use irq disabled
> > until we get someone complaining about it, but I think making it
> > thread safe is reasonable. It means there is one less thing to confuse
> > a KUnit user and the only penalty paid is some very minor performance.
>
> One reason I'm really excited about kunit is speed... so by all means I
> think we're at a good point to analyze performance optimizationsm if
> they do make sense.

Yeah, but I think there are much lower hanging fruit than this (as you
point out below). I am all for making/keeping KUnit super fast, but I
also don't want to waste time with premature optimizations and I think
having thread safe expectations and non-thread safe expectations hurts
usability.

Still, I am on board with making this a mutex instead of a spinlock for now.

> While on the topic of parallization, what about support for running
> different test cases in parallel? Or at the very least different kunit
> modules in parallel.  Few questions come up based on this prospect:
>
>   * Why not support parallelism from the start?

Just because it is more work and there isn't much to gain from it right now.

Some numbers:
I currently have a collection of 86 test cases in the branch that this
patchset is from. I turned on PRINTK_TIME and looked at the first
KUnit output and the last. On UML, start time was 0.090000, and end
time was 0.090000. Looks like sched_clock is not very good on UML.

Still it seems quite likely that all of these tests run around 0.01
seconds or less on UML: I ran KUnit with only 2 test cases enabled
three times and got an average runtime of 1.55867 seconds with a
standard deviation of 0.0346747. I then ran it another three times
with all test cases enabled and got an average runtime of 1.535
seconds with a standard deviation of 0.0150997. The second average is
less, but that doesn't really mean anything because it is well within
one standard deviation with a very small sample size. Nevertheless, we
can conclude that the actual runtime of those 84 test cases is most
likely within one standard deviation, so on the order of 0.01 seconds.

On x86 running on QEMU, first message from KUnit was printed at
0.194251 and the last KUnit message was printed at 0.340915, meaning
that all 86 test cases ran in about 0.146664 seconds.

In any case, running KUnit tests in parallel is definitely something I
plan on adding it eventually, but it just doesn't really seem worth it
right now. I find the incremental build time of the kernel to
typically be between 3 and 30 seconds, and a clean build to be between
30 seconds to several minutes, depending on the number of available
cores, so I don't think most users would even notice the amount of
runtime contributed by the actual unit tests until we start getting
into the 1000s of test cases. I don't suspect it will become an issue
until we get into the 10,000s of test cases. I think we are a pretty
long way off from that.

>   * Are you opposed to eventually having this added? For instance, there is
>     enough code on lib/test_kmod.c for batching tons of kthreads each
>     one running its own thing for testing purposes which could be used
>     as template.

I am not opposed to adding it eventually at all. I actually plan on
doing so, just not in this patchset. There are a lot of additional
features, improvements, and sugar that I really want to add, so much
so that most of it doesn't belong in this patchset; I just think this
is one of those things that belongs in a follow up. I tried to boil
down this patchset to as small as I could while still being useful;
this is basically an MVP. Maybe after this patchset gets merged I
should post a list of things I have ready for review, or would like to
work on, and people can comment on what things they want to see next.

>   * If we eventually *did* support it:
>     - Would logs be skewed?

Probably, before I went with the TAP approach, I was tagging each
message with the test case it came from and I could have parsed it and
assembled a coherent view of the logs using that; now that I am using
TAP conforming output, that won't work. I haven't really thought too
hard about how to address it, but there are ways. For the UML users, I
am planning on adding a feature to guarantee hermeticity between tests
running in different modules by adding a feature that allows a single
kernel to be built with all tests included, and then determine which
tests get run by passing in command line arguments or something. This
way you can get the isolation from running tests in separate
environments without increasing the build cost. We could also use this
method to achieve parallelism by dispatching multiple kernels at once.
That only works for UML, but I imagine you could do something similar
for users running tests under qemu.

>     - Could we have a way to query: give me log for only kunit module
>       named "foo"?

Yeah, I think that would make sense as part of the hermeticity thing I
mentioned above.

Hope that seems reasonable!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
