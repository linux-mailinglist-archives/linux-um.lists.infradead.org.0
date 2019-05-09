Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F1D182FF
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 02:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6wRcFBWtfllw5iYyjsRH5nP+Sy+UEEuOJDMqZCnPxS8=; b=ETGMAbgr+ldCHLWsTpIUvT5goV
	j0Ax5NXy6p0C9rGIKqko8Yx24Z3J+RTO8r7ifSC3oxVivrjZ96EZ1+LLeiZx2wNSh6ugMsafDxa+F
	o3qhuILDCnjv3AfQI8HQQ3e9049FLbglaz2nB5twky75o2YrLIy5k8mN37TH3+HWbE6PiTgzC17zE
	9y6S2Lk7NFP/4HOzkgIWU/5N2TBQOe1AHFFIy+qwD9AvwJBoHjRYpQC+IH5BdyWH81kw3JX5QFZAH
	rkyn71zIwbWumQmGkMcHW6051ZhOpGPrfGY49jSbh3iQMMl7okWIMZN/pFXloU9GiPSnLR3Vfb1Xf
	AfKSAcmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOXOk-0001dh-BN; Thu, 09 May 2019 00:58:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOXOg-0001bo-QJ
 for linux-um@lists.infradead.org; Thu, 09 May 2019 00:58:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id 145so259409pgg.9
 for <linux-um@lists.infradead.org>; Wed, 08 May 2019 17:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=SH3HsOoWJR+OCOhemieiCoZ6CHyWMYUAOCLHyc40+vc=;
 b=KoxsYzbFaaUaOQjaljVGc9Uvnl+1o+uH1bzvk4CD9BMsUbasD1W2Gmbx7tWTnxKHH4
 u634l8ZosSCRMmDuBQK6Kkb7RWeC9djHFBwlwlK9wYdM0BwiTtmEzQFxvzEO404LhJZh
 yjG9t6NQXbI+XgXKPziG+mYB4hdQL8zzH9ljcA3nRci0kE5ZMxEnVghb+5in9DJDGDYI
 NA95NgPUri/aq0ICnAtLEH2ih3NaB/uZT/M0Jrzwe7023KufGprTUgP1SjTHPHcUvueb
 m28SVg13HA9J/O888+l4Turm5lrtMIsgF61WZJsboBv/7q1uOZJxeH5lIiQKYKVgxYdt
 mvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SH3HsOoWJR+OCOhemieiCoZ6CHyWMYUAOCLHyc40+vc=;
 b=J4MILxDiCrYqr2EzQqJ4AiFlZ95Vi59MZEm6fHZlcb3t91AbWWGc59mlDZLtsDeXMb
 hQhMTuCUOxZIEWSTXfI671pLO2w5NdpO5mleFTbgTAmagNB5LP1MOPsWdT+xzZybisuP
 yFa6CNny+q7/yIiP5LRJW1VzLblOgDUDe+pvLxkzjbJaYEGaA75n7jXZpipEoquEeY+L
 XCu1p8T5EgQb+6lhY/I97F3p5/AIjl6gvdueAwFqkdGXsz1A0mr7gpdZRUFigzbb+w/g
 05NfAmeofOTWRyZ5xGduiOa6fh2N6oqJ/b8GbC6Fl+NUzECQeNFH6RhK/V+Qsdn5Elrd
 NvLw==
X-Gm-Message-State: APjAAAXVAC1V84MgsSxLrL0iXKaslvqGMf3xOknpfP3hEVkEtI0uj29g
 l4ASN5A8KJ/bei35PDq/PHk=
X-Google-Smtp-Source: APXvYqxFI0JsFHIXt506Tc8JH2y7ula2YcusDeM8wCWD+SXyHwcuk+lQ+0s6+tcRCl4GJdhYDed/mA==
X-Received: by 2002:a63:117:: with SMTP id 23mr1664986pgb.34.1557363533604;
 Wed, 08 May 2019 17:58:53 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id s79sm593695pfa.31.2019.05.08.17.58.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 17:58:53 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Theodore Ts'o <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>,
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
 pmladek@suse.com, richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com> <20190507172256.GB5900@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <4d963cdc-1cbb-35a3-292c-552f865ed1f7@gmail.com>
Date: Wed, 8 May 2019 17:58:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507172256.GB5900@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_175854_947317_7EFBD542 
X-CRM114-Status: GOOD (  32.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Ted,

On 5/7/19 10:22 AM, Theodore Ts'o wrote:
> On Tue, May 07, 2019 at 10:01:19AM +0200, Greg KH wrote:
Not very helpful to cut the text here, plus not explicitly indicating that
text was cut (yes, I know the ">>>" will be a clue for the careful reader),
losing the set up for my question.


>>> My understanding is that the intent of KUnit is to avoid booting a kernel on
>>> real hardware or in a virtual machine.  That seems to be a matter of semantics
>>> to me because isn't invoking a UML Linux just running the Linux kernel in
>>> a different form of virtualization?
>>>
>>> So I do not understand why KUnit is an improvement over kselftest.
>>>
>>> It seems to me that KUnit is just another piece of infrastructure that I
>>> am going to have to be familiar with as a kernel developer.  More overhead,
>>> more information to stuff into my tiny little brain.
>>>
>>> I would guess that some developers will focus on just one of the two test
>>> environments (and some will focus on both), splitting the development
>>> resources instead of pooling them on a common infrastructure.
>>>
>>> What am I missing?
>>
>> kselftest provides no in-kernel framework for testing kernel code
>> specifically.  That should be what kunit provides, an "easy" way to
>> write in-kernel tests for things.
>>
>> Brendan, did I get it right?
> 
> Yes, that's basically right.  You don't *have* to use KUnit.  It's

If KUnit is added to the kernel, and a subsystem that I am submitting
code for has chosen to use KUnit instead of kselftest, then yes, I do
*have* to use KUnit if my submission needs to contain a test for the
code unless I want to convince the maintainer that somehow my case
is special and I prefer to use kselftest instead of KUnittest.


> supposed to be a simple way to run a large number of small tests that
> for specific small components in a system.

kselftest also supports running a subset of tests.  That subset of tests
can also be a large number of small tests.  There is nothing inherent
in KUnit vs kselftest in this regard, as far as I am aware.


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

The same is true of kselftest.  You can create lightweight tests in
kselftest.


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

This would be a difference, but mock functions do not exist in KUnit.
The KUnit test will call the real kernel function in the UML kernel.

I think Brendan has indicated a desire to have mock functions in the
future.

Brendan, do I understand that correctly?

-Frank

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
> 					- Ted>
> P.S.  Many thanks to Brendan for finding such a volunteer for me; the
> person in question is a SRE from Switzerland who is interested in
> getting involved with kernel testing, and this is going to be their
> 20% project.  :-)
> 
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
