Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA3E18F79
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 19:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpqLxLppVmZH5TtNaJaMKYjXSjXgvucIUZb0cYc3WsI=; b=rPwAsO3F6TteAP
	0no9xUGuRt0p8x6xrcvLzsXeTgvGsDDjD0BX+G1OtSSyCKQuJYxgAykSwASqd1YdGf3HCF3FhR+C9
	7+pElvdCg0sm5DvFripI0z2YZ5ttTI0TlR9dQXQzyMtEq6NJ7IrQ9YtNDOH4iBMOJG/IDyHZbRr53
	T8c5TsZCDBB8r5rbogMLBKBrcWvqZugEySVqY4rC65uH42NuuZ4DaeJVGR3+BPHVnGq68bGKHLO6R
	f0F0Cccq1CpBW6YA7pFKwwoWyU1g9LzF01qWhQ9a8XGWl/h4XD1nyQj5TmdUk+75jpNv4Ni03dHwc
	piak0E8pMg0tnX5xRSLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOn4c-0006lj-4u; Thu, 09 May 2019 17:43:14 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOn4Y-0006lC-EH
 for linux-um@lists.infradead.org; Thu, 09 May 2019 17:43:12 +0000
Received: by mail-it1-x143.google.com with SMTP id i63so4108397ita.3
 for <linux-um@lists.infradead.org>; Thu, 09 May 2019 10:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FC2rVRp+KvVlVpOd4Y7tQxF5qWg3rep+JWKzypDSYq8=;
 b=LbcJgGle/rhNYz98yotvkpEnwql392ytSXEkHgJR3WVHNiFk0zbLta6vt6IRyzyLpp
 950Fjqs62WqoNt1qtodnxEoU3/OPR9dDe9YJvU5YVSz3hzqSiXeaxhK0t5HUoWgDWxZG
 HT6WAb9G+yzAzQfyc7s+3V4khiykcDJvfcm9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FC2rVRp+KvVlVpOd4Y7tQxF5qWg3rep+JWKzypDSYq8=;
 b=DcgBRK8RPpchTufC8fNei1Mt2xqu4AZItnxwMr8vnQsoxWTvhvsj8hwCr2sv/o+BiZ
 TesB2AJqCfJH+Mac+w9sJgigSB47/iQPNivlowtB2qdzDJQrlkw0ku5iQ1fF/oEaGS2P
 csmrWdbtuHUd6alupyyQsZkVB1cmLSTi3hIGzMmh2TmJizmb0r6T9GO10JPDA8dMLPm/
 cJNM9aNVgbK1ixZsCgt3YMiXec086Hzwu4NQD/XX8THFw7x0wO8WOv3KTJAJx/9FnZ/A
 sBEZQGI77wKSs7mM/3voSGcCTtfwh9BTkT6yeR4SesG+mTKxiogIwsfg6MsxB9Ke2d2J
 SPOA==
X-Gm-Message-State: APjAAAWLywqKJkMWLXcvB5+gOvrNQqoylgkK+H6CVhyxSf/KqLZLZN64
 jdZ2+nc3kua1vx3BN4n3PvonuoYdPMnZl9BaTQI0yQ==
X-Google-Smtp-Source: APXvYqypZncp40GnumoOHkLA1kNmLjAfWPEq0cInNiRdF0xrV+UuIt8Lmj8Y2my6/5rmuFEGlBGw2sdQWFlUn3jtftA=
X-Received: by 2002:a02:ca4a:: with SMTP id i10mr4326425jal.70.1557423788780; 
 Thu, 09 May 2019 10:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 May 2019 19:42:57 +0200
Message-ID: <CAKMK7uHfbvj+us9PdN2H0aQUyNYW1Xa_vhNLyHtnEpU8m6pLpw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Tim.Bird@sony.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_104310_485962_7C9F3392 
X-CRM114-Status: GOOD (  46.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Brendan Higgins <brendanhiggins@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm@lists.01.org, Frank Rowand <frowand.list@gmail.com>,
 knut.omang@oracle.com, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 wfg@linux.intel.com, Joel Stanley <joel@jms.id.au>,
 David Rientjes <rientjes@google.com>, Kevin Hilman <khilman@baylibre.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org,
 jdike@addtoit.com, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 sboyd@kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 7:00 PM <Tim.Bird@sony.com> wrote:
> > -----Original Message-----
> > From: Theodore Ts'o
> >
> > On Thu, May 09, 2019 at 01:52:15PM +0200, Knut Omang wrote:
> > > 1) Tests that exercises typically algorithmic or intricate, complex
> > >    code with relatively few outside dependencies, or where the
> > dependencies
> > >    are considered worth mocking, such as the basics of container data
> > >    structures or page table code. If I get you right, Ted, the tests
> > >    you refer to in this thread are such tests. I believe covering this space
> > >    is the goal Brendan has in mind for KUnit.
> >
> > Yes, that's correct.  I'd also add that one of the key differences is
> > that it sounds like Frank and you are coming from the perspective of
> > testing *device drivers* where in general there aren't a lot of
> > complex code which is hardware independent.
>
> Ummm.  Not to speak for Frank, but he's representing the device tree
> layer, which I'd argue sits exactly at the intersection of testing device drivers
> AND lots of complex code which is hardware independent.  So maybe his
> case is special.

Jumping in with a pure device driver hat: We already have add-hoc unit
tests in drivers/gpu, which somewhat shoddily integrate into
kselftests and our own gpu test suite from userspace. We'd like to do
a lot more in this area (there's enormous amounts of code in a gpu
driver that's worth testing on its own, or against a mocked model of a
part of the real hw), and I think a unit test framework for the entire
kernel would be great. Plus gpu/drm isn't the only subsystem by far
that already has a home-grown solution. So it's actually worse than
what Ted said: We don't just have a multitude of test frameworks
already, we have a multitude of ad-hoc unit test frameworks, each with
their own way to run tests, write tests and mock parts of the system.
Kunit hopefully helps us to standardize more in this area. I do plan
to look into converting all the drm selftest we have already as soon
as this lands (and as soon as I find some time ...).

Cheers, Daniel

>
> > After all, the vast
> > majority of device drivers are primarily interface code to hardware,
> > with as much as possible abstracted away to common code.  (Take, for
> > example, the model of the SCSI layer; or all of the kobject code.)
> >
> > > 2) Tests that exercises interaction between a module under test and other
> > >    parts of the kernel, such as testing intricacies of the interaction of
> > >    a driver or file system with the rest of the kernel, and with hardware,
> > >    whether that is real hardware or a model/emulation.
> > >    Using your testing needs as example again, Ted, from my shallow
> > understanding,
> > >    you have such needs within the context of xfstests
> > (https://github.com/tytso/xfstests)
> >
> > Well, upstream is for xfstests is git://git.kernel.org/pub/scm/fs/xfs/xfstests-
> > dev.git
> >
> > The test framework where I can run 20 hours worth of xfstests
> > (multiple file system features enabled, multiple mount options, etc.)
> > in 3 hours of wall clock time using multiple cloud VM is something
> > called gce-xfstests.
> >
> > I also have kvm-xfstests, which optimizes low test latency, where I
> > want to run a one or a small number of tests with a minimum of
> > overhead --- gce startup and shutdown is around 2 minutes, where as
> > kvm startup and shutdown is about 7 seconds.  As far as I'm concerned,
> > 7 seconds is still too slow, but that's the best I've been able to do
> > given all of the other things I want a test framework to do, including
> > archiving test results, parsing the test results so it's easy to
> > interpret, etc.  Both kvm-xfstests and gce-xfstests are located at:
> >
> >       git://git.kernel.org/pub/scm/fs/xfs/xfstests-dev.git
> >
> > So if Frank's primary argument is "too many frameworks", it's already
> > too late.  The block layer has blktests has a seprate framework,
> > called blktests --- and yeah, it's a bit painful to launch or learn
> > how to set things up.
> >
> > That's why I added support to run blktests using gce-xfstests and
> > kvm-xfstests, so that "gce-xfstests --blktests" or "kvm-xfstests
> > --xfstests" will pluck a kernel from your build tree, and launch at
> > test appliance VM using that kernel and run the block layer tests.
> >
> > The point is we *already* have multiple test frameworks, which are
> > optimized for testing different parts of the kernel.  And if you plan
> > to do a lot of work in these parts of the kernel, you're going to have
> > to learn how to use some other test framework other than kselftest.
> > Sorry, that's just the way it goes.
> >
> > Of course, I'll accept trivial patches that haven't been tested using
> > xfstests --- but that's because I can trivially run the smoke test for
> > you.  Of course, if I get a lot of patches from a contributor which
> > cause test regressions, I'll treat them much like someone who
> > contribute patches which fail to build.  I'll apply pressure to the
> > contributor to actually build test, or run a ten minute kvm-xfstests
> > smoke test.  Part of the reason why I feel comfortable to do this is
> > it's really easy to run the smoke test.  There are pre-compiled test
> > appliances, and a lot of documentation:
> >
> > https://github.com/tytso/xfstests-bld/blob/master/Documentation/kvm-
> > quickstart.md
> >
> > This is why I have close to zero sympathy to Frank's complaint that
> > extra test frameworks are a bad thing.  To me, that's whining.  I've
> > done a huge amount of work to meet contributors more than half-way.
> > The insistence that "There Must Be One", ala the Highlander movie, is
> > IMHO so wrong that it's not even close.  Is it really that hard to do
> > a "git pull", download a test appliance, set up a config file to tell
> > kvm-xfstests where to find your build tree, and then run "kvm-xfstests
> > --smoke" or "gce-xfstests --smoke"?  Cry me a river.
>
> Handling these types of things that are not "really that hard to do" is
> exactly what meta-frameworks like KCI, Fuego, and LKFT are for.
> For a core developer in a sub-system, having them learn a particular
> specialized framework is OK.  However, for someone doing integration
> testing of the kernel (not a core developer
> in a particular subsystem), having lots of different frameworks turns
> into death by a thousand cuts.  But we're working to fix that.
> (Which reminds me that I have an outstanding action item to add an xfstest
> test definition to Fuego. :-) )
>
> >
> > There are already multiple test frameworks, and if you expect to do a
> > lot of work in a particular subsystem, you'll be expected to use the
> > Maintainer's choice of tests.  Deal with it.  We do this so we can
> > scale to the number of contributors we have in our subsystem.
>
> This seems to me to be exactly backwards.  You scale your contributors
> by making it easier for them, which means adopting something already
> well-know or established - not by being different.
>
> I understand your vise grip metaphor, and agree with you.  In my opinion
> kselftest and kunit are optimized for different things, and are different tools
> in the Linux kernel testing toolbox.  But if you start having too many tools, or
> the tools are too specialized, there are less people familiar with them and
> ready to use them to help contribute.
>
> >
> > > To 1) I agree with Frank in that the problem with using UML is that you still
> > have to
> > > relate to the complexity of a kernel run time system, while what you really
> > want for these
> > > types of tests is just to compile a couple of kernel source files in a normal
> > user land
> > > context, to allow the use of Valgrind and other user space tools on the
> > code.
> >
> > "Just compiling a couple of kernel source files in a normal user land"
> > is much harder than you think.  It requires writing vast numbers of
> > mocking functions --- for a file system I would have to simulate the
> > block device layer, large portions of the VFS layer, the scheduler and
> > the locking layer if I want to test locking bugs, etc., etc.  In
> > practice, UML itself is serving as mocking layer, by its mere
> > existence.  So when Frank says that KUnit doesn't provide any mocking
> > functions, I don't at all agree.  Using KUnit and UML makes testing
> > internal interfaces *far* simpler, especially if the comparison is
> > "just compile some kernel source files as part of a userspace test
> > program".
>
> I had one thing I wanted to ask about here.  You said previously that
> you plan to use KUnit to test a complicated but hardware independent
> part of the filesystem code.  If you test only via UML, will that give you
> coverage for non-x86 platforms? More specifically, will you get coverage
> for 32-bit, for big-endian as well as little-endian, for weird architectures?
> It seems like the software for these complicated sections of code is
> subject to regressions due to toolchain issues as much as from coding errors.
> That's why I was initially turned off when I  heard that KUnit only planned
> to support UML and not cross-compilation.
>
> I'm not sure what the status is of UML for all the weird embedded processors
> that get only cross-compiled and not natively-compiled, but there are multiple
> reasons why UML is less commonly used in the embedded space.
>
> > Perhaps your and Frank's experience is different --- perhaps that can
> > be explained by your past experience and interest in testing device
> > drivers as opposed to file systems.
> >
> > The other thing I'd add is that at least for me, a really important
> > consideration is how quickly we can run tests.  I consider
> > minimization of developer friction (e.g., all you need to do is
> > running "make ; kvm-xfstests --smoke" to run tests), and maximizing
> > developer velocity to be high priority goals.  Developer velocity is
> > how quickly can you run the tests; ideally, less than 5-10 seconds.
> >
> > And that's the other reason why I consider unit tests to be a
> > complement to integration tests.  "gce-xfstests --smoke" takes 10-15
> > minutes.  If I can have unit tests which takes 5-15 seconds for a
> > smoke test of the specific part of ext4 that I am modifying (and often
> > with much better coverage than integration tests from userspace),
> > that's at really big deal.  I can do this for e2fsprogs; but if I have
> > to launch a VM, the VM overhead pretty much eats all or most of that
> > time budget right there.
> >
> > From looking at your documentation of KTF, you are targetting the use
> > case of continuous testing.  That's a different testing scenario than
> > what I'm describing; with continuous testing, overhead measured in
> > minutes or even tens of minutes is not a big deal.  But if you are
> > trying to do real-time testing as part of your development process ---
> > *real* Test Driven Development, then test latency is a really big
> > deal.
> >
> > I'll grant that for people who are working on device drivers where
> > architecture dependencies are a big deal, building for an architecture
> > where you can run in a virtual environment or using test hardware is
> > going to be a better way to go.  And Brendan has said he's willing to
> > look at adapting KUnit so it can be built for use in a virtual
> > environment to accomodate your requirements.
>
> This might solve my cross-compile needs, so that's good.
>
> >
> > As far as I'm concerned, however, I would *not* be interested in KTF
> > unless you could demonstrate to me that launching at test VM, somehow
> > getting the kernel modules copied into the VM, and running the tests
> > as kernel modules, has zero overhead compared to using UML.
> >
> > Ultimately, I'm a pragmatist.  If KTF serves your needs best, good for
> > you.  If other approaches are better for other parts of the kernel,
> > let's not try to impose a strict "There Must Be Only One" religion.
> > That's already not true today, and for good reason.  There are many
> > different kinds of kernel code, and many different types of test
> > philosophies.  Trying to force all kernel testing into a single
> > Procrustean Bed is simply not productive.
>
> Had to look up "Procrustean Bed" - great phrase.  :-)
>
> I'm not of the opinion that there must only be one test framework
> in the kernel. But we should avoid unnecessary multiplication. Every
> person is going to have a different idea for where the line of necessity
> is drawn.  My own opinion is that what KUnit is adding is different enough
> from kselftest, that it's a valuable addition.
>
>  -- Tim
>
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
