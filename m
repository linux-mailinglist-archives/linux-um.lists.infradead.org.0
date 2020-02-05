Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9687815246D
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 02:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oK1hfSU3mge70HOzexu/FdarrPKrePPhH2oLSfXXMo8=; b=gnZz19DVFhy/Vs
	QGqPozdT7Pb8W3kgDA2tUrNw5PAsT80NF0EMdgO3yzIgfdyVt7ofvH+FaucJBsEh96n2DagtQW6pN
	JRgrHb76w/KJE7JDAwX7FqpeWYhH/RiFHOdrgEmwJWp+ZdF0zhZ/AYYkFF4WfEusV8j0d8od3+DZj
	+dk+DyVbG7GEInrBWtgbat8AbW1RsT1Z0XSTKWfsdIvh+I09uUVVuSKs+cEdw+gxclCDjgi3dzt2c
	BKIMDnYbD3cXtEovIjH3BHlU0XTFFY8XS1YDGOwxE6KDwic6z2q5IxLrLp9BpSBUvuDkM2Vv5oSwd
	hD2+GA2eHEMS9gFzF40w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz9Jr-0004pT-Om; Wed, 05 Feb 2020 01:17:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz9Jo-0004oI-I8
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 01:17:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id j4so109776pgi.1
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 17:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ehUZDKkbTDStuHx/pS6DuaspA135Mfd5By/OONirJ34=;
 b=aEb2zaRNdrPfZXojfMR1qDxiSMQH7kF6i3jce+ifoVVxnFMNKmisV+hk1sz++QoJKa
 L5UzKB7KJuV96SSbHGx+5SNdd2HWC9ad+MVsOfAINXYqjnM5ypQYBmwlXtH/H2XSzAlJ
 U2uGA/3bAraovLBvIgxih9u02lM9cXP3Tqcqi2kluLyXyYZpt68kLMH5mZnoY1GdxD4D
 7IeaLunIGZKPf6F4RzgL0DCN/BPTeHCSPtlsa75CkOf+PY6+oFXZp82GAl2nlushrGx7
 P6wX1T5HSrusG/TUo0/eMswoN2VU2Q5XLghEbYdh+K6NVgYwiYRMe8jc0/W5oi3PfkKE
 x1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ehUZDKkbTDStuHx/pS6DuaspA135Mfd5By/OONirJ34=;
 b=XQTfpRBPyZM377xtjq5EiCO0fP6LCqJzkkK5FbM3B1UPPasMYcMHAjtrg7D8Sm9HtK
 ymxZMjk3+/xjDfQXg+t4ifv7SXf8RKmZN5pa7RlAzhDcQA6B5e/omN4QEyfxY8aZCbuU
 /+mHtflAx/ih6Ztv4saXcC47mr/28mZO8SG7ldzsJtJ6D50p4439ZhwsQg4aJciBr+KU
 Z30mKjWai9XRneYaiH90FHNNjqLe5MuhKQBo9BJ5eH6Qq13IRY+dXEJBPtYhyNlcHDfU
 /LoE79oys4H1+zLOu4M7MRnfC4O/5dZgqsKg7na9v/pYf67ao7V7rPdrhoXbDuzP672k
 PhZQ==
X-Gm-Message-State: APjAAAWJInzJty8pFuU03YVTnC9GZhPJbvj3o+SJ6Deg+YHu59sUviGX
 lmRE3U8vkwXioymEpKLsyJfRcizADpdh7hDw5CiDhg==
X-Google-Smtp-Source: APXvYqzWPWbhmPlUq6xrTvgK8Vlg/kG9jG609SLnGNNW/4fPUY+RmVKzl+2/MeVgiCT4fpy3B7gKQ1Ve7/WdQecdozw=
X-Received: by 2002:a63:480f:: with SMTP id v15mr33530785pga.201.1580865445849; 
 Tue, 04 Feb 2020 17:17:25 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-3-brendanhiggins@google.com>
 <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
 <CAFd5g46irbQ7j_DOY+bQPoo1TWjwvu6n9iyQ7abe9pfqydeMYg@mail.gmail.com>
 <1da1538d-2e4c-0ed0-5fae-6f9033230c46@gmail.com>
In-Reply-To: <1da1538d-2e4c-0ed0-5fae-6f9033230c46@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Feb 2020 17:17:14 -0800
Message-ID: <CAFd5g45=m9Rvqf__5FW6HXjSytHJwX=mue-BO+TZMg0JP-BGmw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
To: Frank Rowand <frowand.list@gmail.com>, David Gow <davidgow@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_171728_624993_6831352E 
X-CRM114-Status: GOOD (  38.40  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Knut Omang <knut.omang@oracle.com>, Luis Chamberlain <mcgrof@kernel.org>,
 rppt@linux.ibm.com, linux-um <linux-um@lists.infradead.org>,
 Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 2/4/20 4:30 PM, Brendan Higgins wrote:
> > On Tue, Feb 4, 2020 at 1:59 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 1/30/20 5:08 PM, Brendan Higgins wrote:
> >>> Add a linker section to UML where KUnit can put references to its test
> >>> suites. This patch is an early step in transitioning to dispatching all
> >>> KUnit tests from a centralized executor rather than having each as its
> >>> own separate late_initcall.
> >>
> >> All architectures please.
> >
> > I *am* supporting all architectures with this patchset.
> >
> > The first patch in this series adds support to all architectures
> > except UML (admittedly I only tried x86 and ARM, 32 bit and 64 bit for
>
> Right you are.  My mind did not span from patch 1 to patch 2. Apologies for
> the noise.
>
>
> > both, but I am pretty sure someone tried it for POWER and something
> > else, so maybe I should try it with others before submission). A patch
> > specific for UML, this patch, was needed because UML is a special
> > snowflake and has a bunch of special linker scripts that don't make
> > the change in vmlinux.lds.h (the previous patch) sufficient.
> >
> >> The early versions of Kunit documented reliance on UML.  Discussion lead to
> >> the conclusion that real architectures and real hardware would be supported.
> >
> > I am *very* aware.
> >
> > I would never intentionally break support for other architectures. I
> > know it is very important to you, Alan, and others.
> >
> >> This like this are what make me reluctant to move devicetree unittests to
> >> KUnit.
> >
> > Hopefully I can reassure you then:
> >
> > With Alan as a regular contributor who cares very much about non-UML
> > architectures, it would be very unlikely for me to accidentally break
> > support for other architectures without us finding out before a
> > release.
> >
> > I also periodically test KUnit on linux-next on x86-64. I have gotten
> > bugs for other architectures from Arnd Bergmann and one of the m86k
> > maintainers who seems to play around with it as well.
> >
> > So yeah, other people care about this too, and I would really not want
> > to make any of them unhappy.
>
> Thanks for the extra reassurance.

No worries. This actually makes me think that we should probably have
some kind of automated test that at least makes sure that popular
KUnit architectures are not broken. Someone is currently adding KUnit
support to KernelCI; maybe we can have KernelCI run multiple
architecture tests after the initial support is complete.

> >> Can you please add a section to the KUnit documentation that lists things
> >> like the expectations, requirements, limitations, etc for a test case that
> >> is run by KUnit?  Some examples that pop to mind from recent discussions
> >> and my own experiences:
> >>
> >>   - Each test case is invoked after late_init is complete.
> >>       + Exception: the possible value of being able to run a unit test
> >>         at a specific runlevel has been expressed.  If an actual unit
> >>         test can be shown to require running earlier, this restriction
> >>         will be re-visited.
> >>
> >>   - Each test case must be idempotent.  Each test case may be called
> >>     multiple times, and must generate the same result each time it
> >>     is called.
> >>       + Exception 1: a test case can be declared to not be idempotent
> >>         [[ mechanism TBD ]], in which case KUnit will not call the
> >>         test case a second time without the kernel rebooting.
> >>       + Exception 2: hardware may not be deterministic, so a test that
> >>         always passes or fails when run under UML may not always to
> >>         so on real hardware.  <--- sentence copied from
> >>         Documentation/dev-tools/kunit/usage.rst
> >>           [[ This item and 1st exception do not exist yet, but will exist
> >>           in some form if the proposed proc filesystem interface is
> >>           added. ]]
> >>
> >>   - KUnit provides a helpful wrapper to simplify building a UML kernel
> >>     containing the KUnit test cases, booting the UML kernel, and
> >>     formatting the output from the test cases.  This wrapper MUST NOT
> >>     be required to run the test cases or to determine a test result.
> >>     The formatting may provide additional analysis and improve
> >>     readability of a test result.
> >>
> >>   - .... There is more that belongs here, but I'm getting side tracked
> >>     here, when I'm trying to instead convert devicetree unittests to
> >>     KUnit and want to get back to that.
> >
> > Sure, I think that's a great start! Thanks for that. I hope you don't
> > mind if I copy and paste some of it.
>
> Please do.  And no need to credit me.
>
>
> > It kind of sounds like you are talking about more of a requirements
> > doc than the design doc I was imagining in my reply to you on the
> > cover letter, which is fine. The documentation is primarily for people
> > other than me, so whatever you and others think is useful, I will do.
> >
>
> I wasn't really sure what to label it as.  My inspiration was based
> a little bit on reading through the Linux 5.5 KUnit source and
> documentation, and trying to understand the expectations of the
> KUnit framework and what the test cases have to either obey or
> can expect.
>
> I think there is a lot of history that you know, but is only visible
> to test implementors if they read through the past couple of years
> email threads.

Yeah, that's no good. We need to provide a better experience than
that. David has gotten deeply involved relatively recently: I suspect
that he might have some good insight on this.

David, you mentioned offline that there are some philosophical changes
in how we think about KUnit that has happened that you feel have never
quite been captured in the docs. Do you think this is part of what
Frank has pointed out here? If not, do you have any thoughts about
what we should call this documentation section?

Shuah's first KUnit PR seemed to imply that KUnit was primarily for
UML, or only fully supported under UML. So I think I might be the odd
one out thinking that that has changed and the documentation properly
conveys that.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
