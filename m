Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC19A6ABD9
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 17:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+jvgh2BR//nsGcFsvheEjopBGKoXX9wC88llaUmQVY=; b=b88J0Wis+IK/RT
	e4fYmQPkw+aqSKOw/lXKyjUHhXZ45DpJgx3a6IBFSjWUUvETdfT+X6GIiIIKBaKZEnB6Q4qTZoebZ
	1yG2JF7F+rq9rjdQ3UnJOoQ4Ig7zQvl4ld67hF2ps6JJhLFSDKU2K7dLvS7KF2XgXTRJo7DYE5YNe
	K1wIJw4tO+SxJ1sxjj1iJ7GV0xedrP2kyUooivANJfa4AsmEB67BfCV/C7pK62SDnQy/c7NdMbnzj
	uTvpd3r1M4zDUZtIU4SQJfpq1Q7oGPd/Z7fyJwzS9raBsN/fvbpdlUoGudDbzg2yvd1Uq13+AC+ri
	MRj+yx2v5SruT+UNiUBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPSu-0003cN-Sx; Tue, 16 Jul 2019 15:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPSq-0003bs-Vy
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 15:34:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CB182054F;
 Tue, 16 Jul 2019 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563291240;
 bh=V4ev/UU39RHvFkNjkPsY3SOAdIqI9PBECtJV0Q6gb5E=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=OI5X53OX1byrP6tlrUCjRpeJ1oQOTnBd5OqI0zkPlySCP8J7YdSPWzyzurB0yXcW5
 tojB8NLHwRsWz19d2LLzm7R0Y/GV+eoAx6B2iENKbOicQFlEaTQrErT0xo7BH5fqoh
 gpLKApR/IyGssgFicaQIy6L8qsIKeBP/gh0ZNKpo=
MIME-Version: 1.0
In-Reply-To: <CAFd5g47y4vDB2P=EsGN8305LGeQPCTveNs-Jd5-=6K-XKY==CA@mail.gmail.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-4-brendanhiggins@google.com>
 <20190715204356.4E3F92145D@mail.kernel.org>
 <CAFd5g47481sRaez=yEJN4_ghiXZbxayk1Y04tAZpuzPLsmnhKg@mail.gmail.com>
 <20190715220407.0030420665@mail.kernel.org>
 <CAFd5g44bE0F=wq_fOAnxFTtoOyx1dUshhDAkKWr5hX9ipJ4Sxw@mail.gmail.com>
 <CAFd5g47y4vDB2P=EsGN8305LGeQPCTveNs-Jd5-=6K-XKY==CA@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v9 03/18] kunit: test: add string_stream a std::stream
 like string builder
User-Agent: alot/0.8.1
Date: Tue, 16 Jul 2019 08:33:59 -0700
Message-Id: <20190716153400.5CB182054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_083401_072843_B4A39418 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

Quoting Brendan Higgins (2019-07-15 15:43:20)
> On Mon, Jul 15, 2019 at 3:11 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > On Mon, Jul 15, 2019 at 3:04 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-07-15 14:11:50)
> > > > On Mon, Jul 15, 2019 at 1:43 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > > >
> > > > > I also wonder if it would be better to just have a big slop buffer of a
> > > > > 4K page or something so that we almost never have to allocate anything
> > > > > with a string_stream and we can just rely on a reader consuming data
> > > > > while writers are writing. That might work out better, but I don't quite
> > > > > understand the use case for the string stream.
> > > >
> > > > That makes sense, but might that also waste memory since we will
> > > > almost never need that much memory?
> > >
> > > Why do we care? These are unit tests.
> >
> > Agreed.
> >
> > > Having allocations in here makes
> > > things more complicated, whereas it would be simpler to have a pointer
> > > and a spinlock operating on a chunk of memory that gets flushed out
> > > periodically.
> >
> > I am not so sure. I have to have the logic to allocate memory in some
> > case no matter what (what if I need more memory that my preallocated
> > chuck?). I think it is simpler to always request an allocation than to
> > only sometimes request an allocation.
> 
> Another even simpler alternative might be to just allocate memory
> using kunit_kmalloc as we need it and just let the kunit_resource code
> handle cleaning it all up when the test case finishes.

Sure, sounds like a nice way to avoid duplicating similar logic to
maintain a list of things to free later.

> 
> What do you think?

If you go the allocation route then you'll need to have the flags to
know what context you're in to allocate appropriately. Does that mean
all the string operations will now take GFP flags?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
