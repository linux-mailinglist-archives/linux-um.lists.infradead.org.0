Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E85F7E4B0
	for <lists+linux-um@lfdr.de>; Thu,  1 Aug 2019 23:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfoHzVgPXI6xx4opxrzJIMxKCQgCa3xqYcdwGk08NDY=; b=rkPFJzXQNeK97+
	Y0Punw8AxmLlVZOOMwtal1ILy3FPmdh/I9V4CjL0BVfkcO2RwzQiFeEZtUvr4qGSuAYdudO5eiBg6
	/3CspN3L+bFoTsaAvg6ce9ZMU/4mFWeTKhWN6irwmKO8WemzLrzKaVfmYPIVLj4SQunhaLpHTlOSa
	Cs1P8Fk1LP4Iy0RjOf6I4lqukWqJuy3L/m2Gcvsl/MyJiFdDDTupgrtAsl3rhutIkocw+HkUfEZ4W
	tLLUByaSDiTy2idt9pQByx8OW18y3jY/GHJsmkRxVWk6/ecgvIxHewRxeiKs5gR6ZwgvBUEvBBWPI
	fdJj901sO+8xzohyabsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htIPS-0002xp-QM; Thu, 01 Aug 2019 21:14:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htIPQ-0002xQ-Kc
 for linux-um@lists.infradead.org; Thu, 01 Aug 2019 21:14:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D3D7206A2;
 Thu,  1 Aug 2019 21:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564694087;
 bh=n0IdgFG7Kos2nGnJ4DnkR9p1y4CCyIbJ6ZBAUiBNpN4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=mCeQAbdwzIbwLPOijpChQVFo4UiYoSWfSZsIgfoIrNYNDT1t+cF6inHSpvwbpaWEE
 h3a75ihCGxnVfKz0yO5MH+8Z55L0rleQ67pJQ89uiV1jYfk7eCIm+wLogdHeiGG1J2
 0oPUv74xqN1E4K+r3Bcp5gj1D6bBbIkaOl5oR1Jc=
MIME-Version: 1.0
In-Reply-To: <CAFd5g473iFfvBnJs2pcwuJYgY+DpgD6RLzyDFL1otUuScgKUag@mail.gmail.com>
References: <20190716175021.9CA412173C@mail.kernel.org>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
 <20190724073125.xyzfywctrcvg6fmh@pathway.suse.cz>
 <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
 <20190726083148.d4gf57w2nt5k7t6n@pathway.suse.cz>
 <CAFd5g46iAhDZ5C_chi7oYLVOkwcoj6+0nw+kPWuXhqWwWKd9jA@mail.gmail.com>
 <CAFd5g473iFfvBnJs2pcwuJYgY+DpgD6RLzyDFL1otUuScgKUag@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Thu, 01 Aug 2019 14:14:46 -0700
Message-Id: <20190801211447.6D3D7206A2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_141448_722144_5D8F624E 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-08-01 11:59:57)
> On Thu, Aug 1, 2019 at 11:55 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > On Fri, Jul 26, 2019 at 1:31 AM Petr Mladek <pmladek@suse.com> wrote:
> >
> > > To be honest I do not fully understand KUnit design. I am not
> > > completely sure how the tested code is isolated from the running
> > > system. Namely, I do not know if the tested code shares
> > > the same locks with the system running the test.
> >
> > No worries, I don't expect printk to be the hang up in those cases. It
> > sounds like KUnit has a long way to evolve before printk is going to
> > be a limitation.
> 
> So Stephen, what do you think?
> 
> Do you want me to go forward with the new kunit_assert API wrapping
> the string_stream as I have it now? Would you prefer to punt this to a
> later patch? Or would you prefer something else?
> 

I like the struct based approach. If anything, it can be adjusted to
make the code throw some records into a spinlock later on and delay the
formatting of the assertion if need be. Can you resend with that
approach? I don't think I'll have any more comments after that.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
