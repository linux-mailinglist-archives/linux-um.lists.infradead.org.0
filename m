Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ECB1C49A
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 10:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQGVSOeiuQTw/joRBRlR42yJ1dIE5DQh/ZOGYaw4kko=; b=GN6VpR0VBSipJD
	GwRG3k1Y9DI8lNwhSWekgHpmVb2/v7/Dc0uxBz5yi+wEgO/x7YgmXczTIhrs2TJCT+tTwZFk8pkeE
	d5az0gHbmLknWe+hdOKEK9+emHm0EgYRC6GI1dC4p9T5ay7Ti8YdLJEoCge2QZozyy1LlCS9y5gFj
	fFLccDH8aSQ/rmcOwS1+NYHT/f6kRd3tW1WLetw664wQs4D3voLjxDsVIUQ9OTyHVhdxtYhxEUvjr
	SevWPLpVMOaAjN3WJWp8WZ9r1ypNrnZXh+MgMjPUO/9354Z+a9Hh3VVkFfoQqRd4WDi/1YQZHSYKO
	JS3DL1Zjtd7IgAC7t03A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQShd-0002qL-R4; Tue, 14 May 2019 08:22:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSha-0002pg-5X
 for linux-um@lists.infradead.org; Tue, 14 May 2019 08:22:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so7876010pll.4
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 01:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pQNyZmnkLUqdbsnux8K39fvyz0qGerh/7Car1s/R2uk=;
 b=tWPxjZovh3MyjrxN+cixrW9Jv9/RHjc+lJ7GXmNoQ/Ef7+uMw/qQbTw5B9oFRJByIG
 pu9cyVG7MEJ6Vrt9UDR/0OiBNk3XC3mIME5PnMdl1pxZjgK/yYxMK2jT2bktFIZCLj/9
 rAq5RImK1TNYHhzh3BwnBdJnTscEEXpdoCXCZrYFiBJt6MVyxh9eyaIR+hsmrppBY4Er
 Bq/52n3SPw77fLYMMjIJQxNzhUURTmdWpHo3b3rdN6ULdHR6om48a59eyBuoLr8W0DtP
 VybSOjpmoyAKFiH9TuBHDkyK9+loWcz1WQPsILkxRVCB7AQgy3rXyfsfxyR+sEcpOSQW
 MevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pQNyZmnkLUqdbsnux8K39fvyz0qGerh/7Car1s/R2uk=;
 b=Wbc3UISRmkaWSWrI3A0jRigaRsilXhbb/Kxl0PQy25vz5/9GoWJRRskU1a7MvCwWSG
 Pm8ULV5vZYJK5oesDDU3e12yAZqSTUt+pA+mThHf8c8xhQjFfyw7wVzgmtaIvWTxCbyL
 f0lq7BIg75SE+bR6XNl0H4tJ3xjGYlN6EhcTjvUt8YKTRgfPQ7H/wa2dzQoGBZ8a3734
 gaqqaWMGlhPawGGx5larhKKPBVjqj4c7xwO1qAz0x8iE831qU7KrOLBz+mMjZpBzCyQ4
 15qqrJItKf/Fiqd8UlMnGBGpcbNO20wUWMuYPazxxFjL6bFf6bYD5p5MaqYNJht3d+iA
 QzIw==
X-Gm-Message-State: APjAAAW4a1ieKznstbCc+iJlq17jIKt7SkF/2GHMWQ/mr8Bktqr8dDOr
 mxZWM/k2gs03NfsOlp2H3vMUuA==
X-Google-Smtp-Source: APXvYqxXP9cCuNSrb6ZlkbjUS9VfrgYUq3KTkMgAUQmqTxOMmXPmYuZ0Q7WN0Be8aLpg1XdbhvZmmA==
X-Received: by 2002:a17:902:28ab:: with SMTP id
 f40mr8616928plb.295.1557822140758; 
 Tue, 14 May 2019 01:22:20 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id d67sm23500676pfa.35.2019.05.14.01.22.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 01:22:19 -0700 (PDT)
Date: Tue, 14 May 2019 01:22:14 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190514082214.GB230665@google.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com> <20190507172256.GB5900@mit.edu>
 <4d963cdc-1cbb-35a3-292c-552f865ed1f7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d963cdc-1cbb-35a3-292c-552f865ed1f7@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_012222_235227_29E1625E 
X-CRM114-Status: GOOD (  38.94  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>, richard@nod.at,
 sboyd@kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 05:58:49PM -0700, Frank Rowand wrote:
> Hi Ted,
> 
> On 5/7/19 10:22 AM, Theodore Ts'o wrote:
> > On Tue, May 07, 2019 at 10:01:19AM +0200, Greg KH wrote:
> Not very helpful to cut the text here, plus not explicitly indicating that
> text was cut (yes, I know the ">>>" will be a clue for the careful reader),
> losing the set up for my question.
> 
> 
> >>> My understanding is that the intent of KUnit is to avoid booting a kernel on
> >>> real hardware or in a virtual machine.  That seems to be a matter of semantics
> >>> to me because isn't invoking a UML Linux just running the Linux kernel in
> >>> a different form of virtualization?
> >>>
> >>> So I do not understand why KUnit is an improvement over kselftest.
> >>>
> >>> It seems to me that KUnit is just another piece of infrastructure that I
> >>> am going to have to be familiar with as a kernel developer.  More overhead,
> >>> more information to stuff into my tiny little brain.
> >>>
> >>> I would guess that some developers will focus on just one of the two test
> >>> environments (and some will focus on both), splitting the development
> >>> resources instead of pooling them on a common infrastructure.
> >>>
> >>> What am I missing?
> >>
> >> kselftest provides no in-kernel framework for testing kernel code
> >> specifically.  That should be what kunit provides, an "easy" way to
> >> write in-kernel tests for things.
> >>
> >> Brendan, did I get it right?
> > 
> > Yes, that's basically right.  You don't *have* to use KUnit.  It's
> 
> If KUnit is added to the kernel, and a subsystem that I am submitting
> code for has chosen to use KUnit instead of kselftest, then yes, I do
> *have* to use KUnit if my submission needs to contain a test for the
> code unless I want to convince the maintainer that somehow my case
> is special and I prefer to use kselftest instead of KUnittest.
> 
> 
> > supposed to be a simple way to run a large number of small tests that
> > for specific small components in a system.
> 
> kselftest also supports running a subset of tests.  That subset of tests
> can also be a large number of small tests.  There is nothing inherent
> in KUnit vs kselftest in this regard, as far as I am aware.
> 
> 
> > For example, I currently use xfstests using KVM and GCE to test all of
> > ext4.  These tests require using multiple 5 GB and 20GB virtual disks,
> > and it works by mounting ext4 file systems and exercising ext4 through
> > the system call interfaces, using userspace tools such as fsstress,
> > fsx, fio, etc.  It requires time overhead to start the VM, create and
> > allocate virtual disks, etc.  For example, to run a single 3 seconds
> > xfstest (generic/001), it requires full 10 seconds to run it via
> > kvm-xfstests.
> > 
> 
> 
> > KUnit is something else; it's specifically intended to allow you to
> > create lightweight tests quickly and easily, and by reducing the
> > effort needed to write and run unit tests, hopefully we'll have a lot
> > more of them and thus improve kernel quality.
> 
> The same is true of kselftest.  You can create lightweight tests in
> kselftest.
> 
> 
> > As an example, I have a volunteer working on developing KUinit tests
> > for ext4.  We're going to start by testing the ext4 extent status
> > tree.  The source code is at fs/ext4/extent_status.c; it's
> > approximately 1800 LOC.  The Kunit tests for the extent status tree
> > will exercise all of the corner cases for the various extent status
> > tree functions --- e.g., ext4_es_insert_delayed_block(),
> > ext4_es_remove_extent(), ext4_es_cache_extent(), etc.  And it will do
> > this in isolation without our needing to create a test file system or
> > using a test block device.
> > 
> 
> > Next we'll test the ext4 block allocator, again in isolation.  To test
> > the block allocator we will have to write "mock functions" which
> > simulate reading allocation bitmaps from disk.  Again, this will allow
> > the test writer to explicitly construct corner cases and validate that
> > the block allocator works as expected without having to reverese
> > engineer file system data structures which will force a particular
> > code path to be executed.
> 
> This would be a difference, but mock functions do not exist in KUnit.
> The KUnit test will call the real kernel function in the UML kernel.
> 
> I think Brendan has indicated a desire to have mock functions in the
> future.
> 
> Brendan, do I understand that correctly?

Oh, sorry, I missed this comment from earlier.

Yes, you are correct. Function mocking is a feature I will be
introducing in a follow up patchset (assuming this one gets merged of
course ;-) ).

Cheers!

> -Frank
> 
> > So this is why it's largely irrelevant to me that KUinit uses UML.  In
> > fact, it's a feature.  We're not testing device drivers, or the
> > scheduler, or anything else architecture-specific.  UML is not about
> > virtualization.  What it's about in this context is allowing us to
> > start running test code as quickly as possible.  Booting KVM takes
> > about 3-4 seconds, and this includes initializing virtio_scsi and
> > other device drivers.  If by using UML we can hold the amount of
> > unnecessary kernel subsystem initialization down to the absolute
> > minimum, and if it means that we can communicating to the test
> > framework via a userspace "printf" from UML/KUnit code, as opposed to
> > via a virtual serial port to KVM's virtual console, it all makes for
> > lighter weight testing.
> > 
> > Why did I go looking for a volunteer to write KUnit tests for ext4?
> > Well, I have a plan to make some changes in restructing how ext4's
> > write path works, in order to support things like copy-on-write, a
> > more efficient delayed allocation system, etc.  This will require
> > making changes to the extent status tree, and by having unit tests for
> > the extent status tree, we'll be able to detect any bugs that we might
> > accidentally introduce in the es tree far more quickly than if we
> > didn't have those tests available.  Google has long found that having
> > these sorts of unit tests is a real win for developer velocity for any
> > non-trivial code module (or C++ class), even when you take into
> > account the time it takes to create the unit tests.
> > 
> > 					- Ted>
> > P.S.  Many thanks to Brendan for finding such a volunteer for me; the
> > person in question is a SRE from Switzerland who is interested in
> > getting involved with kernel testing, and this is going to be their
> > 20% project.  :-)
> > 
> > 

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
