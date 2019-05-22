Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C830271C9
	for <lists+linux-um@lfdr.de>; Wed, 22 May 2019 23:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qn851BRTSOFvJJ976kZ97UZM3RkeiODqrQpreIUE9Ow=; b=KZBYj5j7RqdLb5
	YGmcQaOCmvJHerCkFNWCUaWxa6Y+/HX7i8/PXcMUD86mA+ApGv77nyUCXxAr+rhNRbvwB4pjJsoe9
	LTJhbH5u+02761C11Dp/9u+S5USMEZ5uQGa7ZPwViBBDXQkdnteuuf5JXmeaY9W+MUueoXhMRXrCz
	l3W1SylMvRbrgtnScHB8bZyN7JsB+XBS1Uo8fU6cLgt3K4UHfxHg3oT5Mozd/IiURuLxTDInNfvqy
	ZAKXiemgrq6kSRKDJKAsFyJK+4U+2wIbH4IPZVLNSbNj7ehJLG9sRjjJUJXxfpsvrFAue+JkGd4HR
	YtQHsN+3fhtJZEsvBlFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYx3-0003bV-8j; Wed, 22 May 2019 21:39:09 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYwz-0003a1-40
 for linux-um@lists.infradead.org; Wed, 22 May 2019 21:39:06 +0000
Received: by mail-oi1-x244.google.com with SMTP id w144so2785702oie.12
 for <linux-um@lists.infradead.org>; Wed, 22 May 2019 14:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X8iUa3mR7n1QUqI0vPloid9MGvfKcIGgUfFxnULZ5+U=;
 b=GDelsoqQolX8vZ500TJnYRTrvx7UvzJ51bjddO3LDssDGEV/KLjn45OPSK1LoHb+pt
 vMc4fO10d8rFO9cUXhUOasQS1z00mtA/aaww0itHgEjxtv6/EtX/A5C4yrS8r08gyITU
 TA04J0efipr8o8Xl0BPEGjp/KEY0bIEgjzBYUxRrb7zqAvNHGycq9491MnB/928cEorF
 vcRKUxoGSumKvZMwAn4LVEhN0I/8thaBrCFiTKXFw9vQen81eDnsqy70p43bZYFnR6bP
 AEdEBccKUY3heoXvT17IcKdkpcaihfJ0EloODJeeR+bHCXp13wWqqLlXuKmTMbFs7kR8
 kJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X8iUa3mR7n1QUqI0vPloid9MGvfKcIGgUfFxnULZ5+U=;
 b=Y5RmMaFoDFcn3fYRf1qKvFlo3zSCRuZ9wAHyL8drJT5QjyWJbGCQZeCg/GyXupBbqb
 HdwAlZXzs6IX7ma6zZBSZ39ZTOFvq4jbOd0ZontQtIl44mTQIk8B1RK4cvrQTP9oHc5y
 WEBxT9oQxcasQNw0MYRDidaNNjEGzjRRux8t2dsNAZ76G3xo8wJ1ARRYmuDMw/yKARKH
 2QSw9mDQBNqNGJRrgBWIFEZEL6S+6qx70IMILWaGcIqaEUndp/CU16X2/YJRklRJ0Hc6
 HANK68s/8t44JOKy+JMwDfsytW6NfhlnAUhOI6/Ei/3fwHviFt0F1MKcBwtZ05/N7IE5
 hWiw==
X-Gm-Message-State: APjAAAV93NzdfxbXEXVj3wKVpqTp2E3q6UWf9BVhPH14GJmYVfwpjZwt
 yyzuYo3CFX5iMUqCizTcVFgOeiwrQVWmYMXhPTBvKw==
X-Google-Smtp-Source: APXvYqwhyT9IyVUG9lkFu5kWtgvlKVPb/Q03tyBe4vbXVaiSv8N9Jry7yPQvyfivwOs/aXwiHN39BhvkHSSieLsYpPE=
X-Received: by 2002:aca:55d6:: with SMTP id j205mr565451oib.137.1558561141083; 
 Wed, 22 May 2019 14:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
 <20190513144451.GQ17751@phenom.ffwll.local>
 <20190514060433.GA181462@google.com>
 <CAKMK7uHqtSF_sazJTbFL+xmQJRk4iwukCKZHoDHhsKkLXk=ECQ@mail.gmail.com>
 <20190514183618.GC109557@google.com>
 <20190515074141.GY17751@phenom.ffwll.local>
In-Reply-To: <20190515074141.GY17751@phenom.ffwll.local>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 22 May 2019 14:38:48 -0700
Message-ID: <CAFd5g476Hc+6jL5sV=VJamXCbqGebwHqqN9N9RppQYMCoo052Q@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>,
 "Theodore Ts'o" <tytso@mit.edu>, 
 Frank Rowand <frowand.list@gmail.com>, "Bird, Timothy" <Tim.Bird@sony.com>, 
 Knut Omang <knut.omang@oracle.com>, Greg KH <gregkh@linuxfoundation.org>, 
 Kees Cook <keescook@google.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, 
 Shuah Khan <shuah@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, kunit-dev@googlegroups.com, 
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-fsdevel@vger.kernel.org, 
 linux-kbuild <linux-kbuild@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, 
 linux-um@lists.infradead.org, Sasha Levin <Alexander.Levin@microsoft.com>, 
 Amir Goldstein <amir73il@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>, 
 Dan Williams <dan.j.williams@intel.com>, Jeff Dike <jdike@addtoit.com>, 
 Joel Stanley <joel@jms.id.au>, Julia Lawall <julia.lawall@lip6.fr>, 
 Kevin Hilman <khilman@baylibre.com>, Logan Gunthorpe <logang@deltatee.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Petr Mladek <pmladek@suse.com>, 
 Richard Weinberger <richard@nod.at>, David Rientjes <rientjes@google.com>, 
 Steven Rostedt <rostedt@goodmis.org>, wfg@linux.intel.com, 
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_143905_160166_97FD3824 
X-CRM114-Status: GOOD (  38.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

+Bjorn Helgaas

On Wed, May 15, 2019 at 12:41 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Tue, May 14, 2019 at 11:36:18AM -0700, Brendan Higgins wrote:
> > On Tue, May 14, 2019 at 02:05:05PM +0200, Daniel Vetter wrote:
> > > On Tue, May 14, 2019 at 8:04 AM Brendan Higgins
> > > <brendanhiggins@google.com> wrote:
> > > >
> > > > On Mon, May 13, 2019 at 04:44:51PM +0200, Daniel Vetter wrote:
> > > > > On Sat, May 11, 2019 at 01:33:44PM -0400, Theodore Ts'o wrote:
> > > > > > On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
> > > > > > > However, the reply is incorrect.  Kselftest in-kernel tests (which
> > > > > > > is the context here) can be configured as built in instead of as
> > > > > > > a module, and built in a UML kernel.  The UML kernel can boot,
> > > > > > > running the in-kernel tests before UML attempts to invoke the
> > > > > > > init process.
> > > > > >
> > > > > > Um, Citation needed?
> > > > > >
> > > > > > I don't see any evidence for this in the kselftest documentation, nor
> > > > > > do I see any evidence of this in the kselftest Makefiles.
> > > > > >
> > > > > > There exists test modules in the kernel that run before the init
> > > > > > scripts run --- but that's not strictly speaking part of kselftests,
> > > > > > and do not have any kind of infrastructure.  As noted, the
> > > > > > kselftests_harness header file fundamentally assumes that you are
> > > > > > running test code in userspace.
> > > > >
> > > > > Yeah I really like the "no userspace required at all" design of kunit,
> > > > > while still collecting results in a well-defined way (unless the current
> > > > > self-test that just run when you load the module, with maybe some
> > > > > kselftest ad-hoc wrapper around to collect the results).
> > > > >
> > > > > What I want to do long-term is to run these kernel unit tests as part of
> > > > > the build-testing, most likely in gitlab (sooner or later, for drm.git
> > > >
> > > > Totally! This is part of the reason I have been insisting on a minimum
> > > > of UML compatibility for all unit tests. If you can suffiently constrain
> > > > the environment that is required for tests to run in, it makes it much
> > > > easier not only for a human to run your tests, but it also makes it a
> > > > lot easier for an automated service to be able to run your tests.
> > > >
> > > > I actually have a prototype presubmit already working on my
> > > > "stable/non-upstream" branch. You can checkout what presubmit results
> > > > look like here[1][2].
> > >
> > > ug gerrit :-)
> >
> > Yeah, yeah, I know, but it is a lot easier for me to get a project set
> > up here using Gerrit, when we already use that for a lot of other
> > projects.
> >
> > Also, Gerrit has gotten a lot better over the last two years or so. Two
> > years ago, I wouldn't touch it with a ten foot pole. It's not so bad
> > anymore, at least if you are used to using a web UI to review code.
>
> I was somewhat joking, I'm just not used to gerrit ... And seems to indeed
> be a lot more polished than last time I looked at it seriously.

I mean, it is still not perfect, but I think it has finally gotten to
the point where I prefer it over reviewing by email for high context
patches where you don't expect a lot of deep discussion.

Still not great for patches where you want to have a lot of discussion.

> > > > > only ofc). So that people get their pull requests (and patch series, we
> > > > > have some ideas to tie this into patchwork) automatically tested for this
> > > >
> > > > Might that be Snowpatch[3]? I talked to Russell, the creator of Snowpatch,
> > > > and he seemed pretty open to collaboration.
> > > >
> > > > Before I heard about Snowpatch, I had an intern write a translation
> > > > layer that made Prow (the presubmit service that I used in the prototype
> > > > above) work with LKML[4].
> > >
> > > There's about 3-4 forks/clones of patchwork. snowpatch is one, we have
> > > a different one on freedesktop.org. It's a bit a mess :-/

I think Snowpatch is an ozlabs project; at least the maintainer works at IBM.

Patchwork originally was a ozlabs project, right?

Has any discussion taken place trying to consolidate some of the forks?

Presubmit clearly seems like a feature that a number of people want.

> > Oh, I didn't realize that. I found your patchwork instance here[5], but
> > do you have a place where I can see the changes you have added to
> > support presubmit?
>
> Ok here's a few links. Aside from the usual patch view we've also added a
> series view:
>
> https://patchwork.freedesktop.org/project/intel-gfx/series/?ordering=-last_updated
>
> This ties the patches + cover letter together, and it even (tries to at
> least) track revisions. Here's an example which is currently at revision
> 9:
>
> https://patchwork.freedesktop.org/series/57232/

Oooh, nice! That looks awesome! Looks like you have a number of presubmits too.

> Below the patch list for each revision we also have the test result list.
> If you click on the grey bar it'll expand with the summary from CI, the
> "See full logs" is link to the full results from our CI. This is driven
> with some REST api from our jenkins.
>
> Patchwork also sends out mails for these results.

Nice! There are obviously a lot of other bots on various kernel
mailing lists. Do you think people would object to sending presubmit
results to the mailing lists by default?

> Source is on gitlab: https://gitlab.freedesktop.org/patchwork-fdo

Err, looks like you forked from the ozlab's repo a good while ago.

Still, this all looks great!

> > > > I am not married to either approach, but I think between the two of
> > > > them, most of the initial legwork has been done to make presubmit on
> > > > LKML a reality.
> > >
> > > We do have presubmit CI working already with our freedesktop.org
> > > patchwork. The missing glue is just tying that into gitlab CI somehow
> > > (since we want to unify build testing more and make it easier for
> > > contributors to adjust things).
> >
> > I checked out a couple of your projects on your patchwork instance: AMD
> > X.Org drivers, DRI devel, and Wayland. I saw the tab you added for
> > tests, but none of them actually had any test results. Can you point me
> > at one that does?
>
> Atm we use the CI stuff only on intel-gfx, with the our gpu CI farm, see
> links above.
>
> Cheers, Daniel
>
> >
> > Cheers!
> >
> > [5] https://patchwork.freedesktop.org/
> >
> > > > > super basic stuff.
> > > >
> > > > I am really excited to hear back on what you think!
> > > >
> > > > Cheers!
> > > >
> > > > [1] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-7bfa40efb132e15c8388755c273837559911425c
> > > > [2] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-a6784496eafff442ac98fb068bf1a0f36ee73509
> > > > [3] https://developer.ibm.com/open/projects/snowpatch/
> > > > [4] https://kunit.googlesource.com/prow-lkml/
> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
