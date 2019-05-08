Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302891805F
	for <lists+linux-um@lfdr.de>; Wed,  8 May 2019 21:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PPqsHroRdBmHJtjX5DOvDZ2TJvVbzw8yXIQp5GbttGI=; b=fc9KWouVv1ixnXWOEaVcMywNg4
	BmogeqJVPq2MvUdayqxivTQtc+EjJ/nvIJo/aAapjx1C/yA/bB0JLAu0d8ODYUYV6AzRvThgYTv10
	Nh9+1q5fq7ANoz09jcYaUuzIrUyQEyFEpt+eMbjynCnX445qgS0v0xZGoSaictRLvO+IYkFiM+zRq
	ghGBwF5ryLabSipgBRZD6bpyRC4icv1kGXWCBE/QAp7Cs/Q1qwlqWJah4y7+LNBAV4CPVTCuUyp+C
	Kbp4PVJephMgSUsJDthUCo5JN13zYgRk+vPvD4oGcbpaTi8cBs3/0jUzAQZ8SA1fnkAnj4DQfnnO6
	SkaNgp7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOS56-0002y4-HA; Wed, 08 May 2019 19:18:20 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOS54-0002wV-5H
 for linux-um@lists.infradead.org; Wed, 08 May 2019 19:18:19 +0000
Received: by mail-ot1-x343.google.com with SMTP id c3so6048otr.3
 for <linux-um@lists.infradead.org>; Wed, 08 May 2019 12:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=x37pcn3M6vPyg8cwbr5kr7DA8TIGTpCINTXyPVgD+Ik=;
 b=Tx5sqWDXdN8o4nGLji4/tassr/7PVDxGlOko7CN/z8i4N9ZMaHczzcrn/j+3bWaIHg
 iOhpr/qiQfk83FIrSpg8oOQ/3ZDOOWZK1iGRN1Ddaj0rjVUqqAdg+akK6Az9iUT/HWCE
 +RbgLGBoM1KXmGzzFIdkSL/IP4jH5qxrIacDRusA9GI4pmte2X+oIf0E5qiPUr2cjsje
 HB/zl/SGOwDMcNb4wUEnNJNezPu8EGRGEAmGb2cN0dQFAqmAPXLAujkKEFLsuw97W54q
 q1Z4px77M6zMr0w7jrHy+UAPGRirtQr8A0ngAaBrMdPG2Wp4nQeveIDR0gQr0RiXfH01
 tN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=x37pcn3M6vPyg8cwbr5kr7DA8TIGTpCINTXyPVgD+Ik=;
 b=uZ8feyo+JEOr66cXtDjTmxQTD1DP0hFwpVBpU0Xoa8XMakY91K/xwQZmAPeX3wg9M7
 yE60WRM3vfn5kaEsIMA7hzws2cNbagHrH0TPo+e2CSyd1bFyAHx5vprqwXp096CDFejM
 Im7sFw/gkJhnyxIPjhLg45n09XR6WoYV19vFo6K1I0T8uLhZblbe7EzuITLceHQ3nCg6
 u7ib1X1Bk3fCRhedbhEbeVqFAyTvGAjbCjv62VWzkijIvQw1oQ6AEViHSDaDQLJbYmQs
 0lXZuynOiPOVXwfWHsZm+xQWwlD1M/oJUjYM7IJPCdBciQvDDZ1TYlkQ/RDKq2/gW4uW
 ixfw==
X-Gm-Message-State: APjAAAU+gb7Qa21lLX8+VW5qx0ddZMftIyrw9qBc1jh3slzJj7Vi45BQ
 WWlOXaSyius6MOIBx9dMApq0x4Z3IRkxbPx9OvWHJg==
X-Google-Smtp-Source: APXvYqyfzxRBSCRa6LOxqn0s3VTe/9YM4zBiRl29i9QcDTSnE2MBNKYlv+HY3jgBfbTk6mq4eJX0kIjTTskxL5HlLJ0=
X-Received: by 2002:a05:6830:14cd:: with SMTP id
 t13mr11912335otq.25.1557343091371; 
 Wed, 08 May 2019 12:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com> <20190507172256.GB5900@mit.edu>
In-Reply-To: <20190507172256.GB5900@mit.edu>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 8 May 2019 12:17:59 -0700
Message-ID: <CAFd5g47vQQeSHLX_cvWSVzva9YgsXz9DNqPv8Z=nw=-kAcmr3Q@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: "Theodore Ts'o" <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>, 
 Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>, 
 Kees Cook <keescook@google.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Luis Chamberlain <mcgrof@kernel.org>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, 
 shuah <shuah@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, kunit-dev@googlegroups.com, 
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-fsdevel@vger.kernel.org, 
 linux-kbuild <linux-kbuild@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, 
 linux-um@lists.infradead.org, Sasha Levin <Alexander.Levin@microsoft.com>, 
 "Bird, Timothy" <Tim.Bird@sony.com>, Amir Goldstein <amir73il@gmail.com>, 
 Dan Carpenter <dan.carpenter@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jeff Dike <jdike@addtoit.com>,
 Joel Stanley <joel@jms.id.au>, 
 Julia Lawall <julia.lawall@lip6.fr>, Kevin Hilman <khilman@baylibre.com>, 
 Knut Omang <knut.omang@oracle.com>, Logan Gunthorpe <logang@deltatee.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Petr Mladek <pmladek@suse.com>, 
 Richard Weinberger <richard@nod.at>, David Rientjes <rientjes@google.com>, 
 Steven Rostedt <rostedt@goodmis.org>, wfg@linux.intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_121818_205179_C6A03F9B 
X-CRM114-Status: GOOD (  32.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> On Tue, May 07, 2019 at 10:01:19AM +0200, Greg KH wrote:
> > > My understanding is that the intent of KUnit is to avoid booting a kernel on
> > > real hardware or in a virtual machine.  That seems to be a matter of semantics
> > > to me because isn't invoking a UML Linux just running the Linux kernel in
> > > a different form of virtualization?
> > >
> > > So I do not understand why KUnit is an improvement over kselftest.
> > >
> > > It seems to me that KUnit is just another piece of infrastructure that I
> > > am going to have to be familiar with as a kernel developer.  More overhead,
> > > more information to stuff into my tiny little brain.
> > >
> > > I would guess that some developers will focus on just one of the two test
> > > environments (and some will focus on both), splitting the development
> > > resources instead of pooling them on a common infrastructure.
> > >
> > > What am I missing?
> >
> > kselftest provides no in-kernel framework for testing kernel code
> > specifically.  That should be what kunit provides, an "easy" way to
> > write in-kernel tests for things.
> >
> > Brendan, did I get it right?
>
> Yes, that's basically right.  You don't *have* to use KUnit.  It's
> supposed to be a simple way to run a large number of small tests that
> for specific small components in a system.
>
> For example, I currently use xfstests using KVM and GCE to test all of
> ext4.  These tests require using multiple 5 GB and 20GB virtual disks,
> and it works by mounting ext4 file systems and exercising ext4 through
> the system call interfaces, using userspace tools such as fsstress,
> fsx, fio, etc.  It requires time overhead to start the VM, create and
> allocate virtual disks, etc.  For example, to run a single 3 seconds
> xfstest (generic/001), it requires full 10 seconds to run it via
> kvm-xfstests.
>
> KUnit is something else; it's specifically intended to allow you to
> create lightweight tests quickly and easily, and by reducing the
> effort needed to write and run unit tests, hopefully we'll have a lot
> more of them and thus improve kernel quality.
>
> As an example, I have a volunteer working on developing KUinit tests
> for ext4.  We're going to start by testing the ext4 extent status
> tree.  The source code is at fs/ext4/extent_status.c; it's
> approximately 1800 LOC.  The Kunit tests for the extent status tree
> will exercise all of the corner cases for the various extent status
> tree functions --- e.g., ext4_es_insert_delayed_block(),
> ext4_es_remove_extent(), ext4_es_cache_extent(), etc.  And it will do
> this in isolation without our needing to create a test file system or
> using a test block device.
>
> Next we'll test the ext4 block allocator, again in isolation.  To test
> the block allocator we will have to write "mock functions" which
> simulate reading allocation bitmaps from disk.  Again, this will allow
> the test writer to explicitly construct corner cases and validate that
> the block allocator works as expected without having to reverese
> engineer file system data structures which will force a particular
> code path to be executed.
>
> So this is why it's largely irrelevant to me that KUinit uses UML.  In
> fact, it's a feature.  We're not testing device drivers, or the
> scheduler, or anything else architecture-specific.  UML is not about
> virtualization.  What it's about in this context is allowing us to
> start running test code as quickly as possible.  Booting KVM takes
> about 3-4 seconds, and this includes initializing virtio_scsi and
> other device drivers.  If by using UML we can hold the amount of
> unnecessary kernel subsystem initialization down to the absolute
> minimum, and if it means that we can communicating to the test
> framework via a userspace "printf" from UML/KUnit code, as opposed to
> via a virtual serial port to KVM's virtual console, it all makes for
> lighter weight testing.
>
> Why did I go looking for a volunteer to write KUnit tests for ext4?
> Well, I have a plan to make some changes in restructing how ext4's
> write path works, in order to support things like copy-on-write, a
> more efficient delayed allocation system, etc.  This will require
> making changes to the extent status tree, and by having unit tests for
> the extent status tree, we'll be able to detect any bugs that we might
> accidentally introduce in the es tree far more quickly than if we
> didn't have those tests available.  Google has long found that having
> these sorts of unit tests is a real win for developer velocity for any
> non-trivial code module (or C++ class), even when you take into
> account the time it takes to create the unit tests.
>
>                                         - Ted
>
> P.S.  Many thanks to Brendan for finding such a volunteer for me; the
> person in question is a SRE from Switzerland who is interested in
> getting involved with kernel testing, and this is going to be their
> 20% project.  :-)

Thanks Ted, I really appreciate it!

Since Ted provided such an awesome detailed response, I don't think I
really need to go into any detail; nevertheless, I think that Greg and
Shuah have the right idea; in particular, Shuah provides a good
summary.

Thanks everyone!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
