Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475D6127ED
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 08:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQy3ghLC1dX4maGlwtkODqYZds0cNpPveK0CLMcPfEs=; b=tCgv4tgSsowX4c
	lw5u0+lCnUl+Ls+eUDTrb/jeGDvY1BEbNrFJOxSgxMK1WZNA4L+2Z5o5I2Gy/besf+/0fsW/w1jt4
	LCjP9nkgAbuHp1QTmQra8CehKdO/zZWxWOVYsDrLEUGo6AofGA7B52fsec8TY6hpsALHf6PjCKn8g
	hCwlzVFtuYPKogcpk+tW6JZOExyMrSsFcV3NhfRZEZX8/W4b1gLeJQob35J+COjDQWM8pXnJ1aTea
	XPQBZ2PhLEqsFFpdhefbBBEhWFX+ym4IlvGc6xdY0PaQVvtdHyS8uvBfdKRblzXC+siJO50F5B7Nv
	1OiT1mMPmBdoEHOnxtEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMRuA-0007Sb-4I; Fri, 03 May 2019 06:42:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMRu7-0007SF-Ju
 for linux-um@lists.infradead.org; Fri, 03 May 2019 06:42:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8DA92075E;
 Fri,  3 May 2019 06:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556865763;
 bh=eSwQ5MQqLLW9fJpp5z5L5wdOX/D46QfRbdkcz2wVbPw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a8bRpPlYbJzGxvGVmp2uL9uXUULFTshM8QSJGuUzKTk19JZNQGVZMB/Y6WWZUO0Xk
 +Bv6ggtukUnBovktNVzoNapiH66e7QwUF2ou6Nv/zJgv58EYkE7vJAmpFpEvKEp4BX
 kligVpalV/krymcpGsId8WYpq006/flMnMSyr3rA=
Date: Fri, 3 May 2019 08:42:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190503064241.GC20723@kroah.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-17-brendanhiggins@google.com>
 <20190502110347.GE12416@kroah.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770A3A0@USCULXMSG01.am.sony.com>
 <CAFd5g471Wawu6g14p0AO3aY8VPBKLA0mjHSdfR1qStFGzp3iGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g471Wawu6g14p0AO3aY8VPBKLA0mjHSdfR1qStFGzp3iGQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_234243_696556_06FE03FE 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Iurii Zaikin <yzaikin@google.com>, Jeff Dike <jdike@addtoit.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 11:45:43AM -0700, Brendan Higgins wrote:
> On Thu, May 2, 2019 at 11:15 AM <Tim.Bird@sony.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: Greg KH
> > >
> > > On Wed, May 01, 2019 at 04:01:25PM -0700, Brendan Higgins wrote:
> > > > From: Iurii Zaikin <yzaikin@google.com>
> > > >
> > > > KUnit tests for initialized data behavior of proc_dointvec that is
> > > > explicitly checked in the code. Includes basic parsing tests including
> > > > int min/max overflow.
> > > >
> > > > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > > ---
> > > >  kernel/Makefile      |   2 +
> > > >  kernel/sysctl-test.c | 292
> > > +++++++++++++++++++++++++++++++++++++++++++
> > > >  lib/Kconfig.debug    |   6 +
> > > >  3 files changed, 300 insertions(+)
> > > >  create mode 100644 kernel/sysctl-test.c
> > > >
> > > > diff --git a/kernel/Makefile b/kernel/Makefile
> > > > index 6c57e78817dad..c81a8976b6a4b 100644
> > > > --- a/kernel/Makefile
> > > > +++ b/kernel/Makefile
> > > > @@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
> > > >  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
> > > >  obj-$(CONFIG_RSEQ) += rseq.o
> > > >
> > > > +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
> > >
> > > You are going to have to have a "standard" naming scheme for test
> > > modules, are you going to recommend "foo-test" over "test-foo"?  If so,
> > > that's fine, we should just be consistant and document it somewhere.
> > >
> > > Personally, I'd prefer "test-foo", but that's just me, naming is hard...
> >
> > My preference would be "test-foo" as well.  Just my 2 cents.
> 
> I definitely agree we should be consistent. My personal bias
> (unsurprisingly) is "foo-test," but this is just because that is the
> convention I am used to in other projects I have worked on.
> 
> On an unbiased note, we are currently almost evenly split between the
> two conventions with *slight* preference for "foo-test": I ran the two
> following grep commands on v5.1-rc7:
> 
> grep -Hrn --exclude-dir="build" -e "config [a-zA-Z_0-9]\+_TEST$" | wc -l
> grep -Hrn --exclude-dir="build" -e "config TEST_[a-zA-Z_0-9]\+" | wc -l
> 
> "foo-test" has 36 occurrences.
> "test-foo" has 33 occurrences.
> 
> The things I am more concerned about is how this would affect file
> naming. If we have a unit test for foo.c, I think foo_test.c is more
> consistent with our namespacing conventions. The other thing, is if we
> already have a Kconfig symbol called FOO_TEST (or TEST_FOO) what
> should we name the KUnit test in this case? FOO_UNIT_TEST?
> FOO_KUNIT_TEST, like I did above?

Ok, I can live with "foo-test", as you are right, in a directory listing
and config option, it makes more sense to add it as a suffix.

thanks,

greg k-h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
