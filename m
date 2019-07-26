Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0139760C9
	for <lists+linux-um@lfdr.de>; Fri, 26 Jul 2019 10:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg8FdYMQWK6aGAaR++BastVhaIXb3M+3NapCmuSRYsw=; b=BenijX3spdcMRg
	JXyHgO+3yQcPCxMo0YZHFgNm13iJmyhHfslpXLICmkzcM85Kr5oVYCE0n+fZZVUkH1HE8RCF05Z43
	zdWE6x4pdPfhW/cjpbTvph9RNXjyI9/Yo4zjGaYCpE7CZ21d82ODOFsYyat24styM7v6WaUJ9z2nz
	PFbC+ZUg7JWKCA43hEJpCRiSXxBTusgV6iW4L6FyfB2bIlQ7rMNidk1eV1Ny5BMTeQWBtry5rPzLx
	akJgeQBi3zedIuu99/rF4eZccWn0Y8SBNqG5K0C9U8KdOAH7pgxSzWk0bUTG2WKo75Xd5xaGCqweu
	YIVq8QBMkq5FpOwVXDvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvdz-0000b7-Bn; Fri, 26 Jul 2019 08:32:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvdv-0000Zm-Bt
 for linux-um@lists.infradead.org; Fri, 26 Jul 2019 08:32:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C45C9B606;
 Fri, 26 Jul 2019 08:31:52 +0000 (UTC)
Date: Fri, 26 Jul 2019 10:31:48 +0200
From: Petr Mladek <pmladek@suse.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream
 like logger
Message-ID: <20190726083148.d4gf57w2nt5k7t6n@pathway.suse.cz>
References: <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
 <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
 <20190724073125.xyzfywctrcvg6fmh@pathway.suse.cz>
 <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_013159_700866_DE389D02 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
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
 Kevin Hilman <khilman@baylibre.com>, David Rientjes <rientjes@google.com>,
 Timothy Bird <Tim.Bird@sony.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Joel Stanley <joel@jms.id.au>, devicetree <devicetree@vger.kernel.org>,
 John Ogness <john.ogness@linutronix.de>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu 2019-07-25 13:21:12, Brendan Higgins wrote:
> On Wed, Jul 24, 2019 at 12:31 AM Petr Mladek <pmladek@suse.com> wrote:
> >
> > On Mon 2019-07-22 16:54:10, Stephen Boyd wrote:
> > > Quoting Brendan Higgins (2019-07-22 15:30:49)
> > > > On Mon, Jul 22, 2019 at 1:03 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > > >
> > > > >
> > > > > What's the calling context of the assertions and expectations? I still
> > > > > don't like the fact that string stream needs to allocate buffers and
> > > > > throw them into a list somewhere because the calling context matters
> > > > > there.
> > > >
> > > > The calling context is the same as before, which is anywhere.
> > >
> > > Ok. That's concerning then.
> > >
> > > >
> > > > > I'd prefer we just wrote directly to the console/log via printk
> > > > > instead. That way things are simple because we use the existing
> > > > > buffering path of printk, but maybe there's some benefit to the string
> > > > > stream that I don't see? Right now it looks like it builds a string and
> > > > > then dumps it to printk so I'm sort of lost what the benefit is over
> > > > > just writing directly with printk.
> > > >
> > > > It's just buffering it so the whole string gets printed uninterrupted.
> > > > If we were to print out piecemeal to printk, couldn't we have another
> > > > call to printk come in causing it to garble the KUnit message we are
> > > > in the middle of printing?
> > >
> > > Yes, printing piecemeal by calling printk many times could lead to
> > > interleaving of messages if something else comes in such as an interrupt
> > > printing something. Printk has some support to hold "records" but I'm
> > > not sure how that would work here because KERN_CONT talks about only
> > > being used early on in boot code. I haven't looked at printk in detail
> > > though so maybe I'm all wrong and KERN_CONT just works?
> >
> > KERN_CONT does not guarantee that the message will get printed
> > together. The pieces get interleaved with messages printed in
> > parallel.
> >
> > Note that KERN_CONT was originally really meant to be used only during
> > boot. It was later used more widely and ended in the best effort category.
> >
> > There were several attempts to make it more reliable. But it was
> > always either too complicated or error prone or both.
> >
> > You need to use your own buffering if you rely want perfect output.
> > The question is if it is really worth the complexity. Also note that
> > any buffering reduces the chance that the messages will reach
> > the console.
> 
> Seems like that settles it then. Thanks!
> 
> > BTW: There is a work in progress on a lockless printk ring buffer.
> > It will make printk() more secure regarding deadlocks. But it might
> > make transparent handling of continuous lines even more tricky.
> >
> > I guess that local buffering, before calling printk(), will be
> > even more important then. Well, it might really force us to create
> > an API for it.
> 
> Cool! Can you CC me on that discussion?

Adding John Oggness into CC.

John, please CC Brendan Higgins on the patchsets eventually switching
printk() into the lockless buffer. The test framework is going to
do its own buffering to keep the related messages together.

The lockless ringbuffer might make handling of related (partial)
lines worse or better. It might justify KUnit's extra buffering
or it might allow to get rid of it.

> > Note that stroring the messages into the printk log is basically safe in any
> > context. It uses temporary per-CPU buffers for recursive messages and
> > in NMI. The only problem is panic() when some CPU gets stuck with the
> > lock taken. This will get solved by the lockless ringbuffer. Also
> > the temporary buffers will not be necessary any longer.
> 
> Sure, I think Stephen's concern is all the supporting code that is
> involved. Not printk specifically. It just means a lot more of KUnit
> has to be IRQ safe.

I see.

BTW: I wonder if KUnit could reuse the existing seq_buf implementation
for buffering messages.

I am sorry if it has already been proposed and rejected for some
reason. I might have missed it. Feel free to just point me to
same older mail.

> > Much bigger problems are with consoles. There are many of them. It
> > means a lot of code and more locks involved, including scheduler
> > locks. Note that console lock is a semaphore.
> 
> That shouldn't affect us though, right? As long as we continue to use
> the printk interface?

I guess that it should not affect KUnit.

The only problem might be if the testing framework calls printk()
inside scheduler or console code. And only when the tested code
uses the same locks that will be used by the called printk().

To be honest I do not fully understand KUnit design. I am not
completely sure how the tested code is isolated from the running
system. Namely, I do not know if the tested code shares
the same locks with the system running the test.

Best Regards,
Petr

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
