Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2869D24
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 22:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emB+/M+oKFIBdt5UaoYfNpKT3sPLzdnhOXHoe5T7PWY=; b=qTOcbcBz5zOk6F
	zE/0KAbR2J0sGfq6uWt4tFHPFsIkkEgclCpiHgrHViSHBN1AvjT/RngehBfonNrEMMkCQhgDyGaUJ
	S8p+c1Hk4rrmAr5/DkOicH4M7GnFr3F929/rXq0CZgh58PfpBvKMt5H4lWdEOk+amkNJt4iWqqCcy
	Gr309nnF+ZAXfYB4AiddBNp53CKbcL9/own9ErCwJcWi8QdJ0vcvciZt6UMJ5PNCA2J5UUoegR1jd
	hfVdQhZSv9wzKs9ykM8GNls8UklbzkDdO5vd8KbqdWBylS6PNxATT2zyPHlI7REQT6QN/2RQ4TT6p
	e0GrYHR5N3N7YSLLC0eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn7w8-0002lV-U0; Mon, 15 Jul 2019 20:51:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn7w6-0002kp-2X
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 20:51:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB55B2145D;
 Mon, 15 Jul 2019 20:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563223861;
 bh=6m3JRkZe4W2eR9x3TEB42iTGm06AKnl0iKV7troXRVI=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=EwqhqpJU1AH9O3azv7tLQPtK6CGIx5+N25Vfxpts0j2Zu9LzI8K3EVF6FF7FMlJqe
 HqZdyATMk1hx4CfnLLeNhVn8jZBCw/KN0Ip/RXuDu+/ZJV8+T7LRYZFf0rRh6wit2r
 FZCr9nMrPp9Qn2lqNejmYhOwnPlNfDt+4lLfsG/0=
MIME-Version: 1.0
In-Reply-To: <CAFd5g45iHnMLOGQbXwzX6F74pkQGKBCSufkpYPOcw_iNSeiQKg@mail.gmail.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-3-brendanhiggins@google.com>
 <20190715202425.CE64C20665@mail.kernel.org>
 <CAFd5g45iHnMLOGQbXwzX6F74pkQGKBCSufkpYPOcw_iNSeiQKg@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v9 02/18] kunit: test: add test resource management API
User-Agent: alot/0.8.1
Date: Mon, 15 Jul 2019 13:51:00 -0700
Message-Id: <20190715205101.AB55B2145D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_135102_138493_E8367ABA 
X-CRM114-Status: GOOD (  11.90  )
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

Quoting Brendan Higgins (2019-07-15 13:30:22)
> On Mon, Jul 15, 2019 at 1:24 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-07-12 01:17:28)
> > > diff --git a/kunit/test.c b/kunit/test.c
> > > index 571e4c65deb5c..f165c9d8e10b0 100644
> 
> > One solution would be to piggyback on all the existing devres allocation
> > logic we already have and make each struct kunit a device that we pass
> > into the devres functions. A far simpler solution would be to just
> > copy/paste what devres does and use a spinlock and an allocation
> > function that takes GFP flags.
> 
> Yeah, that's what I did originally, but I thought from the discussion
> on patch 01 that you thought a spinlock was overkill for struct kunit.
> I take it you only meant in that initial patch?

Correct. I was only talking about the success bit in there.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
