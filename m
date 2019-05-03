Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97DA13648
	for <lists+linux-um@lfdr.de>; Sat,  4 May 2019 01:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpFbDUyseiRPSvf5/SOYL2B4WIVPp8vU0rAbeiB8Uxo=; b=lmp/kL4DJTUsB2
	eEzvbD8M+5FpRgmoZxqlHT3v/DKtPWMRf8jBtJL9UQlR7YkjF1khCplYg0YqkgLNKKRimCWURdoXB
	lia4DmGSqJsECwUvRbt4MWZ24os/Lhrb8AyzgkqWf21R7JN4a11TZFghbb5cZk9jfQ7Dmg9bqacLB
	7qV5loLUFuDrqizYj87wow6M6b1fpNlsRt5FbwqOvpGj19pdeSruIX4XmFkT5Npcw+L0TGqDjweSk
	wRXSeWkWNXtPYcNWyHuv4oPuSwtHxrDJOufw8XmXZHvN2JNC+/mKeS9Memzh2wtJ9qfqXUXN3/q8w
	PcOR+rQ9tpES2csL1BBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhny-0003ln-Au; Fri, 03 May 2019 23:41:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhnv-0003lG-Kc
 for linux-um@lists.infradead.org; Fri, 03 May 2019 23:41:25 +0000
Received: by mail-ot1-x343.google.com with SMTP id n15so6829778ota.1
 for <linux-um@lists.infradead.org>; Fri, 03 May 2019 16:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mKALN1OkcwtQhcysb+FWH3t2vFKNjrdMKVQt2ijO0Po=;
 b=uHwVMflHMaQY3whJ1EE4nVizGRxOy/tr5WOjeZAzMUNneEi1VOxLR7ILboGXaDspKX
 EZdcTnWDLsjH5Xuv6Dpbla+mLd+ZOej6UTDsdicbg1f2NGRfNWvT53QLlViJ91MtO47Y
 +NMNZSv0/KOCCjGp/8Z6JcV8oAgctk1uHe5BjikYU+meECnNZzF0Xtb+m6Lql1RyQZ+f
 6pOCAlUul4FDKtOsuwcFiCf6Z4SU4Q97jpl1Ljx2pJqKs6Ok7cLSU5UcjCBf989disYo
 L1k/caWEqmSpv8hm8mIrQVDY6SOrZ43BcimXmBjT67ScyO4HOEunsbiGdbsaE+Lu0zj7
 pGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mKALN1OkcwtQhcysb+FWH3t2vFKNjrdMKVQt2ijO0Po=;
 b=o68sPUvU2nYDWNtEkwkX3dLRR7ySQtBFmCe2KijiC4S/IUjGYDQtMLRKu+UBupa2Y2
 imOfi2ez5WWxaza7Kw018P6i8qOHlKLU3VrZB0/g/L+wXzKW/9gSzLdPIEkblNR9JIoH
 ZBxmUgisGZY2p1ti5T2MvZ1IbYzA1c6Oj1eXA+7aPIkADf1twV5H0O66YmKoh7wCQjOu
 dGniHQ5W4ejfp7xyFwDKa63Ygir8jAg0oGn9W7TnoslQLPi6bNAeDhVqUVfxwp8OdI2g
 fcgLS7wKYv37WfzeoAKwd4IMhrEYsuVDxr36WlkbqQwT4oAw5nM5m2JnlQgYv63Ku53q
 C4Mg==
X-Gm-Message-State: APjAAAVVZFzAGxoT6O2+/Au1ITXzk8HOuANz7mb+kzXFz4nuPdqAGdgU
 pD2n7Ev/rcUCcfh6vhxy7cfqawib1CzIUyzQ3UOQvQ==
X-Google-Smtp-Source: APXvYqzBloPRnX50VrJGlf0zwqZMx4kE8jlcjkF1A4MmAb/1CmwV6C22Krcs7y2A5uFCH7cqu5h7HYnPPCqLvVBMptw=
X-Received: by 2002:a9d:5cc3:: with SMTP id r3mr8335667oti.338.1556926881968; 
 Fri, 03 May 2019 16:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-17-brendanhiggins@google.com>
 <20190502110347.GE12416@kroah.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770A3A0@USCULXMSG01.am.sony.com>
 <CAFd5g471Wawu6g14p0AO3aY8VPBKLA0mjHSdfR1qStFGzp3iGQ@mail.gmail.com>
 <20190503064241.GC20723@kroah.com>
In-Reply-To: <20190503064241.GC20723@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 3 May 2019 16:41:10 -0700
Message-ID: <CAFd5g44NrKM9WQCF1xW-BWpFNsC05UAS9jt1-S+vNRuBDZVsHQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164123_814640_07149922 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
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

> On Thu, May 02, 2019 at 11:45:43AM -0700, Brendan Higgins wrote:
> > On Thu, May 2, 2019 at 11:15 AM <Tim.Bird@sony.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Greg KH
> > > >
> > > > On Wed, May 01, 2019 at 04:01:25PM -0700, Brendan Higgins wrote:
> > > > > From: Iurii Zaikin <yzaikin@google.com>
> > > > >
> > > > > KUnit tests for initialized data behavior of proc_dointvec that is
> > > > > explicitly checked in the code. Includes basic parsing tests including
> > > > > int min/max overflow.
> > > > >
> > > > > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > > > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > > > ---
> > > > >  kernel/Makefile      |   2 +
> > > > >  kernel/sysctl-test.c | 292
> > > > +++++++++++++++++++++++++++++++++++++++++++
> > > > >  lib/Kconfig.debug    |   6 +
> > > > >  3 files changed, 300 insertions(+)
> > > > >  create mode 100644 kernel/sysctl-test.c
> > > > >
> > > > > diff --git a/kernel/Makefile b/kernel/Makefile
> > > > > index 6c57e78817dad..c81a8976b6a4b 100644
> > > > > --- a/kernel/Makefile
> > > > > +++ b/kernel/Makefile
> > > > > @@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
> > > > >  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
> > > > >  obj-$(CONFIG_RSEQ) += rseq.o
> > > > >
> > > > > +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
> > > >
> > > > You are going to have to have a "standard" naming scheme for test
> > > > modules, are you going to recommend "foo-test" over "test-foo"?  If so,
> > > > that's fine, we should just be consistant and document it somewhere.
> > > >
> > > > Personally, I'd prefer "test-foo", but that's just me, naming is hard...
> > >
> > > My preference would be "test-foo" as well.  Just my 2 cents.
> >
> > I definitely agree we should be consistent. My personal bias
> > (unsurprisingly) is "foo-test," but this is just because that is the
> > convention I am used to in other projects I have worked on.
> >
> > On an unbiased note, we are currently almost evenly split between the
> > two conventions with *slight* preference for "foo-test": I ran the two
> > following grep commands on v5.1-rc7:
> >
> > grep -Hrn --exclude-dir="build" -e "config [a-zA-Z_0-9]\+_TEST$" | wc -l
> > grep -Hrn --exclude-dir="build" -e "config TEST_[a-zA-Z_0-9]\+" | wc -l
> >
> > "foo-test" has 36 occurrences.
> > "test-foo" has 33 occurrences.
> >
> > The things I am more concerned about is how this would affect file
> > naming. If we have a unit test for foo.c, I think foo_test.c is more
> > consistent with our namespacing conventions. The other thing, is if we
> > already have a Kconfig symbol called FOO_TEST (or TEST_FOO) what
> > should we name the KUnit test in this case? FOO_UNIT_TEST?
> > FOO_KUNIT_TEST, like I did above?
>
> Ok, I can live with "foo-test", as you are right, in a directory listing
> and config option, it makes more sense to add it as a suffix.

Cool, so just for future reference, if we already have a Kconfig
symbol called FOO_TEST (or TEST_FOO) what should we name the KUnit
test in this case? FOO_UNIT_TEST? FOO_KUNIT_TEST, like I did above?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
