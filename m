Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5BD8BF4A
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 19:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyNZdJEJ5mKtTupTBE8hLAFeuYFSuiA0fiaXdoypvhM=; b=WxoaDMVItDl2FV
	fWd2XbIj9a69Jw881nuFsvReWq2oDcBWsK1fXofkGD31we9W0ThZTXKnL/rM9dmpaV2GJH19kEuPb
	AxC04EvwVwfpba4FTcdP9Okw7bm+NwSC4hjek4YrcsG8qdGSleUBsUSgoT7FJg1F3ij5oxlnCRonO
	zNXSNwrmx+IqX8Y/C0boZ6pMdgiDTIgmcmAmsMaCC/RImaMJ/FHcdcm2uW8AcHWDNcG5IfpzNYAHg
	GYf+mUMGdAVQGlSGdhf5w9lgzOve9s5w7NpDEpGcjoagtgoAYpAPFlLupno/3x2uLI2bj7+eZXZP4
	xBkEabfHrIN08hp5v6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaGK-0005FE-0c; Tue, 13 Aug 2019 17:07:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaFh-0004cx-FN
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 17:06:32 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B0912067D;
 Tue, 13 Aug 2019 17:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565715988;
 bh=mXleQo1BfGDF4Gvt8gwvemAiKY2B7AKwDPdsZQzGEig=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=2YP/hufKMPeHV9Iqtm97Hg+EE9Q7yk3dpGfTYo+YIFuTd+znybtuf6QsdhYKGv2OL
 bffgiZjbx8+MzDPbg9zNDOCLOmmjE13s1gxUgB6nndEdwsA+9gYRAddFBIlqnsF3wh
 t+HdplopKKhd7nK05G6fCJXNmNCfRN1TXzWpMoO0=
MIME-Version: 1.0
In-Reply-To: <CAFd5g4415URtJBKPhsEw98GxiExJr-fstW6SQ6nmV9ts9ggK-g@mail.gmail.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-10-brendanhiggins@google.com>
 <20190813042159.46814206C2@mail.kernel.org>
 <CAFd5g44XyQi-oprPcdgx-EPboQYaHY6Ocz8Te6NX2SxV=mVhQA@mail.gmail.com>
 <20190813055615.CA787206C2@mail.kernel.org>
 <CAFd5g4415URtJBKPhsEw98GxiExJr-fstW6SQ6nmV9ts9ggK-g@mail.gmail.com>
Subject: Re: [PATCH v12 09/18] kunit: test: add support for test abort
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Tue, 13 Aug 2019 10:06:27 -0700
Message-Id: <20190813170628.9B0912067D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100629_572422_97BC87AC 
X-CRM114-Status: GOOD (  24.14  )
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

Quoting Brendan Higgins (2019-08-13 00:52:03)
> On Mon, Aug 12, 2019 at 10:56 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-08-12 21:57:55)
> > > On Mon, Aug 12, 2019 at 9:22 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Brendan Higgins (2019-08-12 11:24:12)
> > > > > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > > > > index 2625bcfeb19ac..93381f841e09f 100644
> > > > > --- a/include/kunit/test.h
> > > > > +++ b/include/kunit/test.h
> > > > > @@ -184,6 +191,13 @@ struct kunit {
> > > > >         struct list_head resources; /* Protected by lock. */
> > > > >  };
> > > > >
> > > > > +static inline void kunit_set_death_test(struct kunit *test, bool death_test)
> > > > > +{
> > > > > +       spin_lock(&test->lock);
> > > > > +       test->death_test = death_test;
> > > > > +       spin_unlock(&test->lock);
> > > > > +}
> > > >
> > > > These getters and setters are using spinlocks again. It doesn't make any
> > > > sense. It probably needs a rework like was done for the other bool
> > > > member, success.
> > >
> > > No, this is intentional. death_test can transition from false to true
> > > and then back to false within the same test. Maybe that deserves a
> > > comment?
> >
> > Yes. How does it transition from true to false again?
> 
> The purpose is to tell try_catch that it was expected for the test to
> bail out. Given the default implementation there is no way for this to
> happen aside from abort() being called, but in some implementations it
> is possible to implement a fault catcher which allows a test suite to
> recover from an unexpected failure.
> 
> Maybe it would be best to drop this until I add one of those
> alternative implementations.

Ok.

> 
> > Either way, having a spinlock around a read/write API doesn't make sense
> > because it just makes sure that two writes don't overlap, but otherwise
> > does nothing to keep things synchronized. For example a set to true
> > after a set to false when the two calls to set true or false aren't
> > synchronized means they can happen in any order. So I don't see how it
> > needs a spinlock. The lock needs to be one level higher.
> 
> There shouldn't be any cases where one thread is trying to set it
> while another is trying to unset it. The thing I am worried about here
> is making sure all the cores see the write, and making sure no reads
> or writes get reordered before it. So I guess I just want a fence. So
> I take it I should probably have is a WRITE_ONCE here and READ_ONCE in
> the getter?
> 

Are the gets and sets in program order? If so, WRITE_ONCE and READ_ONCE
aren't required. Otherwise, if it's possible for one thread to write it
and another to read it but the threads are ordered with some other
barrier like a completion or lock, then again the macros aren't needed.
It would be good to read memory-barriers.txt to understand when to use
the read/write macros.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
