Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9993B8A90B
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 23:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXY67nt3SRUdHc6toW/nThajJedinbEiO8r/H6ljDsE=; b=iN6y5lZup2EpZQ
	Ex+apZQtAfzcVx6wEVzgxuKghgJI3eBHkCBHhyf/+tZ7LnMUs/PB4wtsnXCaGIzMUaOZ8hfLhiE5L
	nHdZicP/wufI0rlwGU5WXEOMU1/D0GVqoi8Sc1p6IlKcx6x+D3wDURLIjy0YVfwZpnVJPMTlnCDLH
	KXLAcBti5LP8Xk0MrDhVu68NEjX3ekWYT1WRMSWdvbpC5xwTZP0euD2G+7jLsR9tY9OaODDsBGJ61
	YzGgNB4C7bqVd0XjOfvhKZSZnIHNCUaJdbB29vEJsQw3huTL8xlptZCow1b0cI/p/PLYx3JW6wac4
	ilyi3Gg9LlYEuA1qFD/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHc6-0004Xx-3I; Mon, 12 Aug 2019 21:12:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHc3-0004XD-8c
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 21:12:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id v12so2539311pfn.10
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 14:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0DB9UTHIFldIFFOJr6TZo6jvfDPuMazUP8xd6Lz++AE=;
 b=W2RB/VxjLUJmLwI3i7t/ylV0SqzQU3whRIxHEZY174I3x1TcL09PB9YtE6qqnhZflm
 z3pCM04RE/MNye/FBbIDAB5xKcR9oafYqbRUwtvJ5DVwgm/qIOTG9moOVgz6nn305Uw8
 y1rvZ7JLdIi5MCunZk5glzIxTMD7YjkiHCRrw06dV0ogIAKmkhVB4UbxqOb6EpZcQ1wi
 wGQ82PLZxVN67F+ZL0Hb2WaV4YVS+zJxn6QuG86e5pJerUGaNMa0aoBwlfpRj2SW3tA6
 95vJ3jyazBSzNbXYNRXUgmvtsvUzxz00iARrCQNdCkbULVj/yDPEmaeZdLcJ+wx2hxdN
 Re2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0DB9UTHIFldIFFOJr6TZo6jvfDPuMazUP8xd6Lz++AE=;
 b=ZX3cb7qrTKNFr/ctYsKY6vvtRwLU42+9GWTgYF7pIP4phOXBq2gcvBkXWrQeDgl1Hj
 qwQwNsWCnOAD4A63BvoHDCT2c1PEaCdkgekPlF0L76i1RnmgBEvrRjvvpn3YdeoL8lYv
 1Aeiwj0gIhX+2WWupUOHex1WZ1DEAnIKQqXXwJsk9iLldgyfOofzr93uv+caRZggFYE1
 wI2vqgPpfK/skepiChlT2osQu4hxSLeNOGqDIz5VqtrREDMaaFClE1CpRZcT4EtNYJ0X
 KQh4GvE5XiG3t4nKpBLoSfdCF7lALkX1d1DpO2Shyv067ZPwQBm7qZa4v8mUe7sGEAZD
 ROrQ==
X-Gm-Message-State: APjAAAWr3OyOM/+rUND7ZPHu43ONMl3nBzpHMhl8wiI2H684lTwsfQ+I
 7tCyuFL32cK3S4PyqskGtlT1OQ==
X-Google-Smtp-Source: APXvYqzaUYIImDWpVIC87+7U7jJ4yfPe7QcYdqiyIGP30vU+nD4zCAI11/ydfpsmLO3b3Hmyvs7bhw==
X-Received: by 2002:a17:90a:a404:: with SMTP id
 y4mr1080068pjp.69.1565644337662; 
 Mon, 12 Aug 2019 14:12:17 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id x67sm111873022pfb.21.2019.08.12.14.12.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 14:12:16 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:12:11 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream
 like logger
Message-ID: <20190812211211.GA197038@google.com>
References: <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
 <20190724073125.xyzfywctrcvg6fmh@pathway.suse.cz>
 <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
 <20190726083148.d4gf57w2nt5k7t6n@pathway.suse.cz>
 <CAFd5g46iAhDZ5C_chi7oYLVOkwcoj6+0nw+kPWuXhqWwWKd9jA@mail.gmail.com>
 <871ry4yq3y.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871ry4yq3y.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_141219_338290_55D4D369 
X-CRM114-Status: GOOD (  39.90  )
X-Spam-Score: -12.4 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 3.3 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Timothy Bird <Tim.Bird@sony.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Petr Mladek <pmladek@suse.com>, linux-kbuild <linux-kbuild@vger.kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
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

On Fri, Aug 02, 2019 at 09:37:53AM +0200, John Ogness wrote:
> On 2019-08-01, Brendan Higgins <brendanhiggins@google.com> wrote:
> > On Fri, Jul 26, 2019 at 1:31 AM Petr Mladek <pmladek@suse.com> wrote:
> >> On Thu 2019-07-25 13:21:12, Brendan Higgins wrote:
> >>> On Wed, Jul 24, 2019 at 12:31 AM Petr Mladek <pmladek@suse.com> wrote:
> >>>> On Mon 2019-07-22 16:54:10, Stephen Boyd wrote:
> >>>>> Quoting Brendan Higgins (2019-07-22 15:30:49)
> >>>>>> On Mon, Jul 22, 2019 at 1:03 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >>>>>>> What's the calling context of the assertions and expectations? I
> >>>>>>> still don't like the fact that string stream needs to allocate
> >>>>>>> buffers and throw them into a list somewhere because the calling
> >>>>>>> context matters there.
> >>>>>>
> >>>>>> The calling context is the same as before, which is anywhere.
> >>>>>
> >>>>> Ok. That's concerning then.
> >>>>>
> >>>>>>> I'd prefer we just wrote directly to the console/log via printk
> >>>>>>> instead. That way things are simple because we use the existing
> >>>>>>> buffering path of printk, but maybe there's some benefit to the
> >>>>>>> string stream that I don't see? Right now it looks like it
> >>>>>>> builds a string and then dumps it to printk so I'm sort of lost
> >>>>>>> what the benefit is over just writing directly with printk.
> >>>>>>
> >>>>>> It's just buffering it so the whole string gets printed
> >>>>>> uninterrupted.  If we were to print out piecemeal to printk,
> >>>>>> couldn't we have another call to printk come in causing it to
> >>>>>> garble the KUnit message we are in the middle of printing?
> >>>>>
> >>>>> Yes, printing piecemeal by calling printk many times could lead to
> >>>>> interleaving of messages if something else comes in such as an
> >>>>> interrupt printing something. Printk has some support to hold
> >>>>> "records" but I'm not sure how that would work here because
> >>>>> KERN_CONT talks about only being used early on in boot code. I
> >>>>> haven't looked at printk in detail though so maybe I'm all wrong
> >>>>> and KERN_CONT just works?
> >>>>
> >>>> KERN_CONT does not guarantee that the message will get printed
> >>>> together. The pieces get interleaved with messages printed in
> >>>> parallel.
> >>>>
> >>>> Note that KERN_CONT was originally really meant to be used only
> >>>> during boot. It was later used more widely and ended in the best
> >>>> effort category.
> >>>>
> >>>> There were several attempts to make it more reliable. But it was
> >>>> always either too complicated or error prone or both.
> >>>>
> >>>> You need to use your own buffering if you rely want perfect output.
> >>>> The question is if it is really worth the complexity. Also note
> >>>> that any buffering reduces the chance that the messages will reach
> >>>> the console.
> >>>
> >>> Seems like that settles it then. Thanks!
> >>>
> >>>> BTW: There is a work in progress on a lockless printk ring buffer.
> >>>> It will make printk() more secure regarding deadlocks. But it might
> >>>> make transparent handling of continuous lines even more tricky.
> >>>>
> >>>> I guess that local buffering, before calling printk(), will be
> >>>> even more important then. Well, it might really force us to create
> >>>> an API for it.
> >>>
> >>> Cool! Can you CC me on that discussion?
> >>
> >> Adding John Oggness into CC.
> >>
> >> John, please CC Brendan Higgins on the patchsets eventually switching
> >> printk() into the lockless buffer. The test framework is going to
> >> do its own buffering to keep the related messages together.
> >>
> >> The lockless ringbuffer might make handling of related (partial)
> >> lines worse or better. It might justify KUnit's extra buffering
> >> or it might allow to get rid of it.
> >
> > Thanks for CC'ing me on the printk ringbuffer thread. It looks like it
> > actually probably won't affect my needs for KUnit logging. The biggest
> > reason I need some sort of buffering system is to be able to compose
> > messages piece meal into a single message that will be printed out to
> > the user as a single message with no messages from other printk
> > callers printed out in the middle of mine.
> 
> printk has this same requirement for its CONT messages. You can read
> about how I propose to implement that here[0], using a separate prb
> ringbuffer for buffered storage until all the pieces are available.
> 
> It is not my goal that multiple subsystems start making use of the prb
> ringbuffer. However, its features can be attractive if you don't want to
> worry about multiple writers/readers or context (including NMI). Before

That sounds like it might be useful down the road, but not to replace
the string_stream.

> writing "yet another ringbuffer" [1] it might be worth the effort to at
> least see if one of the existing implementations can work (or be
> extended to work) for you.

In regards to the conversation here about string_stream/kunit_stream, I
think Petr already answered that question. As I said previously:
> [I]t appears that to get the
> semantics that I need, I would have to put my entire message in a
> single data block and would consequently need to know the size of my
> message a priori, which is problematic. Consequently, it seems as
> though I will probably need to compose my entire message using my own
> buffering system.

I could potentially use my own set of prbs for that buffering; however,
I think this use case is probably closer to seq_buf than your prb.
Really, I just want some kind of string builder, not a message queue.

The place where I think your prb is relevant here is once I have
composed the message and I just want to print it, having a way to print
it without worrying about context is nice, but I think that is a
separate discussion from the main topic here which was just figuring out
the right way to compose that message in the first place.

Cheers

> John Ogness
> 
> [0] https://lkml.kernel.org/r/87imt2bl0k.fsf@linutronix.de
> [1] https://lwn.net/Articles/789603/
> 
> > The prb does look interesting; however, it appears that to get the
> > semantics that I need, I would have to put my entire message in a
> > single data block and would consequently need to know the size of my
> > message a priori, which is problematic. Consequently, it seems as
> > though I will probably need to compose my entire message using my own
> > buffering system.
> >
> >>>> Note that stroring the messages into the printk log is basically
> >>>> safe in any context. It uses temporary per-CPU buffers for
> >>>> recursive messages and in NMI. The only problem is panic() when
> >>>> some CPU gets stuck with the lock taken. This will get solved by
> >>>> the lockless ringbuffer. Also the temporary buffers will not be
> >>>> necessary any longer.
> >>>
> >>> Sure, I think Stephen's concern is all the supporting code that is
> >>> involved. Not printk specifically. It just means a lot more of KUnit
> >>> has to be IRQ safe.
> >>
> >> I see.
> >>
> >> BTW: I wonder if KUnit could reuse the existing seq_buf
> >> implementation for buffering messages.
> >>
> >> I am sorry if it has already been proposed and rejected for some
> >> reason. I might have missed it. Feel free to just point me to
> >> same older mail.
> >
> > Yeah, we discussed it briefly here:
> >
> > https://lkml.org/lkml/2019/5/17/497
> >
> > Looks like I forgot to include my reasoning in the commit text, sorry
> > about that.
> >
> >>>> Much bigger problems are with consoles. There are many of them. It
> >>>> means a lot of code and more locks involved, including scheduler
> >>>> locks. Note that console lock is a semaphore.
> >>>
> >>> That shouldn't affect us though, right? As long as we continue to
> >>> use the printk interface?
> >>
> >> I guess that it should not affect KUnit.
> >>
> >> The only problem might be if the testing framework calls printk()
> >> inside scheduler or console code. And only when the tested code
> >> uses the same locks that will be used by the called printk().
> >
> > Yeah, well printk will not be our only problem in those instances.
> >
> >> To be honest I do not fully understand KUnit design. I am not
> >> completely sure how the tested code is isolated from the running
> >> system. Namely, I do not know if the tested code shares
> >> the same locks with the system running the test.
> >
> > No worries, I don't expect printk to be the hang up in those cases. It
> > sounds like KUnit has a long way to evolve before printk is going to
> > be a limitation.
> >
> > Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
