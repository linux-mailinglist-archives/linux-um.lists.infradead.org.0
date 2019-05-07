Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E8216913
	for <lists+linux-um@lfdr.de>; Tue,  7 May 2019 19:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap3fi0CBpoSWggxZiQZtrLQ8L3KCzztq5krkkJH4ISA=; b=d9jGRE5FDpuapK
	GNeOJf8HSIU+kwi61WwNOOUI6P1mPraBfABLPoFPRqr5K4MDIvI2Scn6rXzAW9F5ys+Z0N/6hHDbA
	AUJHuR7ynXG36mhAmp9f6cpPLpzH/OBhvBCX8xYpSFt+ODaVJ4WKJ9NEQjENSiWR4I7VbuwxseGOf
	Gdl30Sa1/njX5pDToACfuOZFXafRbBCHZfIMsMjToP2E45HYtDDoFIgpp7n7JZqY3HRtRzHN6SFzk
	Zv/P6Mdpj4F1855/1hCQas9uEz0vG7x3EVagAf2yhVA88lOTSij1qUlqAMdnU7fLZJdXEnNfPQEs7
	kXPvmz1FEM8rBLn3dpoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3pG-00019J-G4; Tue, 07 May 2019 17:24:22 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3pD-00018l-65
 for linux-um@lists.infradead.org; Tue, 07 May 2019 17:24:21 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-109.corp.google.com
 [104.133.0.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x47HMurS031460
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 7 May 2019 13:22:59 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 7D6D5420024; Tue,  7 May 2019 13:22:56 -0400 (EDT)
Date: Tue, 7 May 2019 13:22:56 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190507172256.GB5900@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Greg KH <gregkh@linuxfoundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 Tim.Bird@sony.com, amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 knut.omang@oracle.com, logang@deltatee.com, mpe@ellerman.id.au,
 pmladek@suse.com, richard@nod.at, rientjes@google.com,
 rostedt@goodmis.org, wfg@linux.intel.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507080119.GB28121@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102419_397274_854495C0 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, Frank Rowand <frowand.list@gmail.com>,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 10:01:19AM +0200, Greg KH wrote:
> > My understanding is that the intent of KUnit is to avoid booting a kernel on
> > real hardware or in a virtual machine.  That seems to be a matter of semantics
> > to me because isn't invoking a UML Linux just running the Linux kernel in
> > a different form of virtualization?
> > 
> > So I do not understand why KUnit is an improvement over kselftest.
> > 
> > It seems to me that KUnit is just another piece of infrastructure that I
> > am going to have to be familiar with as a kernel developer.  More overhead,
> > more information to stuff into my tiny little brain.
> > 
> > I would guess that some developers will focus on just one of the two test
> > environments (and some will focus on both), splitting the development
> > resources instead of pooling them on a common infrastructure.
> > 
> > What am I missing?
> 
> kselftest provides no in-kernel framework for testing kernel code
> specifically.  That should be what kunit provides, an "easy" way to
> write in-kernel tests for things.
> 
> Brendan, did I get it right?

Yes, that's basically right.  You don't *have* to use KUnit.  It's
supposed to be a simple way to run a large number of small tests that
for specific small components in a system.

For example, I currently use xfstests using KVM and GCE to test all of
ext4.  These tests require using multiple 5 GB and 20GB virtual disks,
and it works by mounting ext4 file systems and exercising ext4 through
the system call interfaces, using userspace tools such as fsstress,
fsx, fio, etc.  It requires time overhead to start the VM, create and
allocate virtual disks, etc.  For example, to run a single 3 seconds
xfstest (generic/001), it requires full 10 seconds to run it via
kvm-xfstests.

KUnit is something else; it's specifically intended to allow you to
create lightweight tests quickly and easily, and by reducing the
effort needed to write and run unit tests, hopefully we'll have a lot
more of them and thus improve kernel quality.

As an example, I have a volunteer working on developing KUinit tests
for ext4.  We're going to start by testing the ext4 extent status
tree.  The source code is at fs/ext4/extent_status.c; it's
approximately 1800 LOC.  The Kunit tests for the extent status tree
will exercise all of the corner cases for the various extent status
tree functions --- e.g., ext4_es_insert_delayed_block(),
ext4_es_remove_extent(), ext4_es_cache_extent(), etc.  And it will do
this in isolation without our needing to create a test file system or
using a test block device.

Next we'll test the ext4 block allocator, again in isolation.  To test
the block allocator we will have to write "mock functions" which
simulate reading allocation bitmaps from disk.  Again, this will allow
the test writer to explicitly construct corner cases and validate that
the block allocator works as expected without having to reverese
engineer file system data structures which will force a particular
code path to be executed.

So this is why it's largely irrelevant to me that KUinit uses UML.  In
fact, it's a feature.  We're not testing device drivers, or the
scheduler, or anything else architecture-specific.  UML is not about
virtualization.  What it's about in this context is allowing us to
start running test code as quickly as possible.  Booting KVM takes
about 3-4 seconds, and this includes initializing virtio_scsi and
other device drivers.  If by using UML we can hold the amount of
unnecessary kernel subsystem initialization down to the absolute
minimum, and if it means that we can communicating to the test
framework via a userspace "printf" from UML/KUnit code, as opposed to
via a virtual serial port to KVM's virtual console, it all makes for
lighter weight testing.

Why did I go looking for a volunteer to write KUnit tests for ext4?
Well, I have a plan to make some changes in restructing how ext4's
write path works, in order to support things like copy-on-write, a
more efficient delayed allocation system, etc.  This will require
making changes to the extent status tree, and by having unit tests for
the extent status tree, we'll be able to detect any bugs that we might
accidentally introduce in the es tree far more quickly than if we
didn't have those tests available.  Google has long found that having
these sorts of unit tests is a real win for developer velocity for any
non-trivial code module (or C++ class), even when you take into
account the time it takes to create the unit tests.

					- Ted

P.S.  Many thanks to Brendan for finding such a volunteer for me; the
person in question is a SRE from Switzerland who is interested in
getting involved with kernel testing, and this is going to be their
20% project.  :-)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
