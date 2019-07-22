Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F3270DB5
	for <lists+linux-um@lfdr.de>; Tue, 23 Jul 2019 01:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yQCUfz3DXUNvyq/h24n5kES1KGgVal7X5etU67nvx4=; b=UqHtOA7+/bxVr8
	WcV6M5wW1Jnrm35eHa5Y75FgcjZUx4i2eFnbsAD99RE4cnYmZDCJMEMk84R0fFnYmqSOcwKM2QOwD
	X+zBcoFnEiXAOzOTRcRQe+vtkH2AB2ZpMZhvgasxdqyLX+Q0tX1JIOZK2V8Am+8XASeHf4bofHxF5
	WYYqJmM5C4DagM2+mhmesIqC19jruSp/TpQOB0+upeTKVsPfgk+efpnfw2EifsBpXGlDH5jyY3N0/
	zLF6+T9CRZ2VdQegzLzAsZudl0OHKcxVr/dNZaOKTF3ebMNOhNtqE7Pz8puM5ayEj0Wnel4C6jQC3
	Lu+M5oMrznruRmBmH2XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi8G-0006tp-UY; Mon, 22 Jul 2019 23:54:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi8D-0006sv-J7
 for linux-um@lists.infradead.org; Mon, 22 Jul 2019 23:54:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06C1320840;
 Mon, 22 Jul 2019 23:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563839651;
 bh=7riE0sVQmQS5QgS4pP9ptPUvfmyCxgbuxcUzFNIX2L8=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=lMfzRRCskgjYJCyPlokQPKY6jX+VpgCrEwPkMIQvRxf8iOB5wgrS9PjXaN0wjtfWh
 RiuaqfDlvSUHC1e16Pk0GMsnB1H5f28N5075BUdTFeSOe4/ZlQbTkjJF0oMcqI6dyP
 T+b1BFHi89keU/CNeTzd05/B7YC7Rqku9pnyKVeY=
MIME-Version: 1.0
In-Reply-To: <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
 <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Brendan Higgins <brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 16:54:10 -0700
Message-Id: <20190722235411.06C1320840@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165413_659468_E5A44C82 
X-CRM114-Status: GOOD (  16.12  )
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

Quoting Brendan Higgins (2019-07-22 15:30:49)
> On Mon, Jul 22, 2019 at 1:03 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> >
> > What's the calling context of the assertions and expectations? I still
> > don't like the fact that string stream needs to allocate buffers and
> > throw them into a list somewhere because the calling context matters
> > there.
> 
> The calling context is the same as before, which is anywhere.

Ok. That's concerning then.

> 
> > I'd prefer we just wrote directly to the console/log via printk
> > instead. That way things are simple because we use the existing
> > buffering path of printk, but maybe there's some benefit to the string
> > stream that I don't see? Right now it looks like it builds a string and
> > then dumps it to printk so I'm sort of lost what the benefit is over
> > just writing directly with printk.
> 
> It's just buffering it so the whole string gets printed uninterrupted.
> If we were to print out piecemeal to printk, couldn't we have another
> call to printk come in causing it to garble the KUnit message we are
> in the middle of printing?

Yes, printing piecemeal by calling printk many times could lead to
interleaving of messages if something else comes in such as an interrupt
printing something. Printk has some support to hold "records" but I'm
not sure how that would work here because KERN_CONT talks about only
being used early on in boot code. I haven't looked at printk in detail
though so maybe I'm all wrong and KERN_CONT just works?

Can printk be called once with whatever is in the struct? Otherwise if
this is about making printk into a structured log then maybe printk
isn't the proper solution anyway. Maybe a dev interface should be used
instead that can handle starting and stopping tests (via ioctl) in
addition to reading test results, records, etc. with read() and a
clearing of the records. Then the seqfile API works naturally. All of
this is a bit premature, but it looks like you're going down the path of
making something akin to ftrace that stores binary formatted
assertion/expectation records in a lockless ring buffer that then
formats those records when the user asks for them.

I can imagine someone wanting to write unit tests that check conditions
from a simulated hardirq context via irq works (a driver mock
framework?), so this doesn't seem far off.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
