Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65711CF26
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 20:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEz3DZY+doQVsQUCxb2e2/pnxvITNFIKkrMLJoh8Z0Y=; b=HNR4y/1LbA/4is
	cy4BZBE0h9fn13OM7Th/UT5JIng3CzNHU1MZ0UxmdfJAUPSFCyIe1+XGu7U3yqVmug3tX8sXzxJad
	hv5mwevk1El8zD5CFS5hjLm3kLgVTsT+GuOZISmuupr43WRBn8I2c84TeKCEOJOBVZxK/TF0eYnxd
	yglt8c4Sclqj/VtD03Y8FAyVcLNRAJt/7FA7TlEzluuUpI+xM7i8pjlCDZZio6/9gZMs9eaKR4PCl
	j2RuJkgw40zuHbsiZjzzEgvfRXllCUVTmVzjXwO2/V0QhXVQk7zpmrFpSIwsQbGAVenUMqZwqxs9/
	3vdMhlRx5LPpEhCVg6Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcHu-0006Mw-3K; Tue, 14 May 2019 18:36:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcHr-0006MR-6J
 for linux-um@lists.infradead.org; Tue, 14 May 2019 18:36:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so9563135pfa.10
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 11:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kgrCvI66v1eNqCFIEetHipPbY2Pg16O5TtUnu8MLeKU=;
 b=gUDKqjEsr8Qv/Y/RdIi8Q0i7FwdadH/D5if9+lYhE9eNQ7LD2B70LCDjDacGxm/FVd
 7kNk5FVNgjwADCYAgcq7jDXk1GJDmyZ0Kh9Gx1ZgwB42ZvxUY0Ix0Sc6YTHp4jc2OTit
 wIpv9ZoVwEXLXTtC0OYc2rhNj0FLGzUxHwUjYJgkKxJYgKIgxENPIfowWiBpTDqrDXJR
 aV5ZOSNgafVxar7tXD+7n837g3sPSNo8qbLCnklS6BGK4TPE6mpuNgU2xapU2LGoeVW3
 VHuSjX0KcDsjpdugWjGvtUgdMmqQOHw13R3aNbCEwTZebS+H4VHnLozq+d5p3UypFj6x
 1Rrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kgrCvI66v1eNqCFIEetHipPbY2Pg16O5TtUnu8MLeKU=;
 b=tFKmGBjFDbLgLXKtdQcGL3BqisuVWNy+F2njCLJQxdyuw2iA+Fp7hKs9GJr/YFZIoR
 xa49Z38KysISyuCsZS0+PEI5+dAfbsYQmjQw165cdOeAzUKoXDq0H7IZOLiDSWXav5tD
 p6Lgn0aC//g3KXBD6R1XqEjglsVuujRgFddwDfZrIDRY4Tvy01tKGk/51+OEXTxty5VG
 hYkdUwaneYOddbNl5kWaLy+/kJoDdZkjQgjDJAn8mHDAj5hCLZzDdS+X/ScxMah3VClv
 2f0U0PRp39moRg7fjvlzO74skQZPDiZcfStDF7LpZxxH42p7BQJyxCaCHWepReNQqTnO
 2oKQ==
X-Gm-Message-State: APjAAAWHpMV6EuMMTjMyho7ftLYdEuT7oPEqX+vb/ZQTcsHWlACxXeua
 nvdbNuGykH1gOefArHRMzz9FNA==
X-Google-Smtp-Source: APXvYqxx/zB3rhnaNxCnfVL/D4G9BC9H3ZRHO1zmfqf3pl1LMALbOUIKd0jSHjCRuQTB7Pn9vuxzCg==
X-Received: by 2002:a62:e205:: with SMTP id a5mr4433129pfi.40.1557858985424;
 Tue, 14 May 2019 11:36:25 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id u6sm10940875pfa.1.2019.05.14.11.36.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 11:36:24 -0700 (PDT)
Date: Tue, 14 May 2019 11:36:18 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190514183618.GC109557@google.com>
References: <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
 <20190513144451.GQ17751@phenom.ffwll.local>
 <20190514060433.GA181462@google.com>
 <CAKMK7uHqtSF_sazJTbFL+xmQJRk4iwukCKZHoDHhsKkLXk=ECQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHqtSF_sazJTbFL+xmQJRk4iwukCKZHoDHhsKkLXk=ECQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_113627_256893_0193EA09 
X-CRM114-Status: GOOD (  31.28  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Petr Mladek <pmladek@suse.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm@lists.01.org, Frank Rowand <frowand.list@gmail.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org,
 Tim.Bird@sony.com, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 sboyd@kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 02:05:05PM +0200, Daniel Vetter wrote:
> On Tue, May 14, 2019 at 8:04 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > On Mon, May 13, 2019 at 04:44:51PM +0200, Daniel Vetter wrote:
> > > On Sat, May 11, 2019 at 01:33:44PM -0400, Theodore Ts'o wrote:
> > > > On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
> > > > > However, the reply is incorrect.  Kselftest in-kernel tests (which
> > > > > is the context here) can be configured as built in instead of as
> > > > > a module, and built in a UML kernel.  The UML kernel can boot,
> > > > > running the in-kernel tests before UML attempts to invoke the
> > > > > init process.
> > > >
> > > > Um, Citation needed?
> > > >
> > > > I don't see any evidence for this in the kselftest documentation, nor
> > > > do I see any evidence of this in the kselftest Makefiles.
> > > >
> > > > There exists test modules in the kernel that run before the init
> > > > scripts run --- but that's not strictly speaking part of kselftests,
> > > > and do not have any kind of infrastructure.  As noted, the
> > > > kselftests_harness header file fundamentally assumes that you are
> > > > running test code in userspace.
> > >
> > > Yeah I really like the "no userspace required at all" design of kunit,
> > > while still collecting results in a well-defined way (unless the current
> > > self-test that just run when you load the module, with maybe some
> > > kselftest ad-hoc wrapper around to collect the results).
> > >
> > > What I want to do long-term is to run these kernel unit tests as part of
> > > the build-testing, most likely in gitlab (sooner or later, for drm.git
> >
> > Totally! This is part of the reason I have been insisting on a minimum
> > of UML compatibility for all unit tests. If you can suffiently constrain
> > the environment that is required for tests to run in, it makes it much
> > easier not only for a human to run your tests, but it also makes it a
> > lot easier for an automated service to be able to run your tests.
> >
> > I actually have a prototype presubmit already working on my
> > "stable/non-upstream" branch. You can checkout what presubmit results
> > look like here[1][2].
> 
> ug gerrit :-)

Yeah, yeah, I know, but it is a lot easier for me to get a project set
up here using Gerrit, when we already use that for a lot of other
projects.

Also, Gerrit has gotten a lot better over the last two years or so. Two
years ago, I wouldn't touch it with a ten foot pole. It's not so bad
anymore, at least if you are used to using a web UI to review code.

> > > only ofc). So that people get their pull requests (and patch series, we
> > > have some ideas to tie this into patchwork) automatically tested for this
> >
> > Might that be Snowpatch[3]? I talked to Russell, the creator of Snowpatch,
> > and he seemed pretty open to collaboration.
> >
> > Before I heard about Snowpatch, I had an intern write a translation
> > layer that made Prow (the presubmit service that I used in the prototype
> > above) work with LKML[4].
> 
> There's about 3-4 forks/clones of patchwork. snowpatch is one, we have
> a different one on freedesktop.org. It's a bit a mess :-/

Oh, I didn't realize that. I found your patchwork instance here[5], but
do you have a place where I can see the changes you have added to
support presubmit?

> > I am not married to either approach, but I think between the two of
> > them, most of the initial legwork has been done to make presubmit on
> > LKML a reality.
> 
> We do have presubmit CI working already with our freedesktop.org
> patchwork. The missing glue is just tying that into gitlab CI somehow
> (since we want to unify build testing more and make it easier for
> contributors to adjust things).

I checked out a couple of your projects on your patchwork instance: AMD
X.Org drivers, DRI devel, and Wayland. I saw the tab you added for
tests, but none of them actually had any test results. Can you point me
at one that does?

Cheers!

[5] https://patchwork.freedesktop.org/

> > > super basic stuff.
> >
> > I am really excited to hear back on what you think!
> >
> > Cheers!
> >
> > [1] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-7bfa40efb132e15c8388755c273837559911425c
> > [2] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-a6784496eafff442ac98fb068bf1a0f36ee73509
> > [3] https://developer.ibm.com/open/projects/snowpatch/
> > [4] https://kunit.googlesource.com/prow-lkml/
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
