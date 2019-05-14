Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EC81C82A
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 14:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsVPblrN/haSOaYq3H/2gEqoclxYXybu7ksjJngHmC0=; b=WNwE1wYXCXJf9s
	H0r/Z7ATnox35dceXPflBefEoXkQEMnNg5AMkJ8aqrj6dsIL35vmAfmX1AZWy6fvzUDdli4Ajtdgf
	41SWrs6TCC5GGAnjg1FV5oDf2jsX6UsF63tGT1q4s6WTNU/WebdJP9zE6PfhcaPsE1CQsD/GU4Vwb
	qg99Rr8/XK2ic/LNnpPg8FOIajQz13MzuHAPXFWI9Y9IOR7eYDP8kPUQfXeyd7fKAMChnfjCxD9dj
	6VkmhOxKCQeqM6pfa4CA1H7aPJt0nsbRqg2XjDbQOi25DyB9f0uql9njNgf/LA/S7dLVBG7TiaxOC
	uPKYabWMEw8DwWaMPn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQWBS-0000zL-18; Tue, 14 May 2019 12:05:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQWBP-0000yU-4Z
 for linux-um@lists.infradead.org; Tue, 14 May 2019 12:05:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id v7so12780405iob.10
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 05:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3cCt7Fv9PrSN+POfdDA9BhvmV9/m6Z9B8cT0V9l7bcU=;
 b=a7BcpiAa3cXS6NukeVFgCH7xf3ARmd8J6e/ULZ0a8xqTBwTNaq+N8QguChZh3uzW7f
 kWHSY7qQUZbeMlUwXYdXunYt1ZQd2SKBDUTXd3jKW+KmrJ1DqqIRVtLYOVb1f+tEQL2N
 W7DqiSEqrT+k9VDAEFt9iTN+c6I6bW1EG18JM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3cCt7Fv9PrSN+POfdDA9BhvmV9/m6Z9B8cT0V9l7bcU=;
 b=jEVCa4ccnXrDr+jIZUU8yxpDdCL+2TyxpyQsPkXECEhCiBKCH3kSqagJPRB3QWB8Jz
 YdNLrw5fR+yGNOLMg7fp+XCnvaHnI3b8Z79xWhH0Ae7/Xj6o4Jz2ZLr6xpgj9i3KAp3Z
 li9mGi2PyMlb+K6xvvE3wyhectpAUpKd7/xep+Rb1PA+1idWpvAE7iJJrr7uKGmVPRLo
 ST23V9pV65mBKmA2ngvLQWA8tQKT6MiDZm6SBSQC9PUz75SX0SenDnyjFc8DtvJ6h5lC
 bBWjz/QlAK/ZL09Bi0iWQ41oG1MWn5X3I/vyCyoLEAGcQc7UHLSyJRUjEm4fJcKarioT
 SV6A==
X-Gm-Message-State: APjAAAUbYbrn1l9CmGLohCJl5j8vKMh7WmFa+V4VVc/xMZU2HEhBEmRE
 LpbRS6JwTNnKkjhOwlx7BNu1A+3Grbx3VzrDKQn9oGvh
X-Google-Smtp-Source: APXvYqyhBqCsjjVPPpuo20Er/14b4Noh22uMAdPO6o3WUMvHLuILgjBTMJK3Dh0BqwvOEYcjDaa/KDS4xlT8iYcmIUQ=
X-Received: by 2002:a6b:b654:: with SMTP id g81mr3614153iof.34.1557835518050; 
 Tue, 14 May 2019 05:05:18 -0700 (PDT)
MIME-Version: 1.0
References: <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
 <20190513144451.GQ17751@phenom.ffwll.local>
 <20190514060433.GA181462@google.com>
In-Reply-To: <20190514060433.GA181462@google.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 14 May 2019 14:05:05 +0200
Message-ID: <CAKMK7uHqtSF_sazJTbFL+xmQJRk4iwukCKZHoDHhsKkLXk=ECQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_050523_189193_699E88C6 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, May 14, 2019 at 8:04 AM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Mon, May 13, 2019 at 04:44:51PM +0200, Daniel Vetter wrote:
> > On Sat, May 11, 2019 at 01:33:44PM -0400, Theodore Ts'o wrote:
> > > On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
> > > > However, the reply is incorrect.  Kselftest in-kernel tests (which
> > > > is the context here) can be configured as built in instead of as
> > > > a module, and built in a UML kernel.  The UML kernel can boot,
> > > > running the in-kernel tests before UML attempts to invoke the
> > > > init process.
> > >
> > > Um, Citation needed?
> > >
> > > I don't see any evidence for this in the kselftest documentation, nor
> > > do I see any evidence of this in the kselftest Makefiles.
> > >
> > > There exists test modules in the kernel that run before the init
> > > scripts run --- but that's not strictly speaking part of kselftests,
> > > and do not have any kind of infrastructure.  As noted, the
> > > kselftests_harness header file fundamentally assumes that you are
> > > running test code in userspace.
> >
> > Yeah I really like the "no userspace required at all" design of kunit,
> > while still collecting results in a well-defined way (unless the current
> > self-test that just run when you load the module, with maybe some
> > kselftest ad-hoc wrapper around to collect the results).
> >
> > What I want to do long-term is to run these kernel unit tests as part of
> > the build-testing, most likely in gitlab (sooner or later, for drm.git
>
> Totally! This is part of the reason I have been insisting on a minimum
> of UML compatibility for all unit tests. If you can suffiently constrain
> the environment that is required for tests to run in, it makes it much
> easier not only for a human to run your tests, but it also makes it a
> lot easier for an automated service to be able to run your tests.
>
> I actually have a prototype presubmit already working on my
> "stable/non-upstream" branch. You can checkout what presubmit results
> look like here[1][2].

ug gerrit :-)

> > only ofc). So that people get their pull requests (and patch series, we
> > have some ideas to tie this into patchwork) automatically tested for this
>
> Might that be Snowpatch[3]? I talked to Russell, the creator of Snowpatch,
> and he seemed pretty open to collaboration.
>
> Before I heard about Snowpatch, I had an intern write a translation
> layer that made Prow (the presubmit service that I used in the prototype
> above) work with LKML[4].

There's about 3-4 forks/clones of patchwork. snowpatch is one, we have
a different one on freedesktop.org. It's a bit a mess :-/

> I am not married to either approach, but I think between the two of
> them, most of the initial legwork has been done to make presubmit on
> LKML a reality.

We do have presubmit CI working already with our freedesktop.org
patchwork. The missing glue is just tying that into gitlab CI somehow
(since we want to unify build testing more and make it easier for
contributors to adjust things).
-Daniel

> > super basic stuff.
>
> I am really excited to hear back on what you think!
>
> Cheers!
>
> [1] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-7bfa40efb132e15c8388755c273837559911425c
> [2] https://kunit-review.googlesource.com/c/linux/+/1509/10#message-a6784496eafff442ac98fb068bf1a0f36ee73509
> [3] https://developer.ibm.com/open/projects/snowpatch/
> [4] https://kunit.googlesource.com/prow-lkml/
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
