Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDD3195BE
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 01:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o9faBxLHQ77OVsfd+Z88QJ6i2LCueUlvxxGAZ9vrrxM=; b=aAJHzStaOU6doxYx3IeblkRHO
	7QMiYdeJANWbdcdO9vYECIxDBqvPycASv/fL0KBRQoMI1sS4kF+taK/aYef8liVwagasmo458o+Yh
	pK+OlcptTjH9VHg2hlg1q5cr/luhBbkNJBMMCzHTP1aJRlPBlU5rFWiTCeDlAd5r3PFwDcKM9MDYQ
	xxnEGmKkpTmp6ZODA8dA1qzJ2q+Y4W03LexrET0fXfIuNM70gHafqyNQYSJFnmVHfm6V6SReKj0hB
	YcMEiRFxYsvFCc9gcr7ycXXpfMi0qKlavHpFasGv1l3oi90TPD9DTSyg3mLbrh3+kQ8pTnEEdIsvF
	8d1yiOJUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOsfB-00080N-Ce; Thu, 09 May 2019 23:41:21 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOsf8-0007zx-AQ
 for linux-um@lists.infradead.org; Thu, 09 May 2019 23:41:19 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.141])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hOseo-0006HM-DN; Thu, 09 May 2019 17:40:59 -0600
To: Theodore Ts'o <tytso@mit.edu>, Frank Rowand <frowand.list@gmail.com>,
 Tim.Bird@sony.com, knut.omang@oracle.com, gregkh@linuxfoundation.org,
 brendanhiggins@google.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 amir73il@gmail.com, dan.carpenter@oracle.com, dan.j.williams@intel.com,
 daniel@ffwll.ch, jdike@addtoit.com, joel@jms.id.au, julia.lawall@lip6.fr,
 khilman@baylibre.com, mpe@ellerman.id.au, pmladek@suse.com, richard@nod.at,
 rientjes@google.com, rostedt@goodmis.org, wfg@linux.intel.com
References: <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <b09ba170-229b-fde4-3e9a-e50d6ab4c1b5@deltatee.com>
 <20190509233043.GC20877@mit.edu>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <8914afef-1e66-e6e3-f891-5855768d3018@deltatee.com>
Date: Thu, 9 May 2019 17:40:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509233043.GC20877@mit.edu>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: wfg@linux.intel.com, rostedt@goodmis.org,
 rientjes@google.com, richard@nod.at, pmladek@suse.com, mpe@ellerman.id.au,
 khilman@baylibre.com, julia.lawall@lip6.fr, joel@jms.id.au, jdike@addtoit.com,
 daniel@ffwll.ch, dan.j.williams@intel.com, dan.carpenter@oracle.com,
 amir73il@gmail.com, Alexander.Levin@microsoft.com,
 linux-um@lists.infradead.org, linux-nvdimm@lists.01.org,
 linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-doc@vger.kernel.org, kunit-dev@googlegroups.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, shuah@kernel.org,
 sboyd@kernel.org, robh@kernel.org, mcgrof@kernel.org,
 kieran.bingham@ideasonboard.com, keescook@google.com,
 brendanhiggins@google.com, gregkh@linuxfoundation.org, knut.omang@oracle.com,
 Tim.Bird@sony.com, frowand.list@gmail.com, tytso@mit.edu
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_164118_413523_0E12E5CF 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 2019-05-09 5:30 p.m., Theodore Ts'o wrote:
> On Thu, May 09, 2019 at 04:20:05PM -0600, Logan Gunthorpe wrote:
>>
>> The second item, arguably, does have significant overlap with kselftest.
>> Whether you are running short tests in a light weight UML environment or
>> higher level tests in an heavier VM the two could be using the same
>> framework for writing or defining in-kernel tests. It *may* also be valuable
>> for some people to be able to run all the UML tests in the heavy VM
>> environment along side other higher level tests.
>>
>> Looking at the selftests tree in the repo, we already have similar items to
>> what Kunit is adding as I described in point (2) above. kselftest_harness.h
>> contains macros like EXPECT_* and ASSERT_* with very similar intentions to
>> the new KUNIT_EXECPT_* and KUNIT_ASSERT_* macros.
>>
>> However, the number of users of this harness appears to be quite small. Most
>> of the code in the selftests tree seems to be a random mismash of scripts
>> and userspace code so it's not hard to see it as something completely
>> different from the new Kunit:
>>
>> $ git grep --files-with-matches kselftest_harness.h *
> 
> To the extent that we can unify how tests are written, I agree that
> this would be a good thing.  However, you should note that
> kselftest_harness.h is currently assums that it will be included in
> userspace programs.  This is most obviously seen if you look closely
> at the functions defined in the header files which makes calls to
> fork(), abort() and fprintf().

Ah, yes. I obviously did not dig deep enough. Using kunit for in-kernel 
tests and kselftest_harness for userspace tests seems like a sensible 
line to draw to me. Trying to unify kernel and userspace here sounds 
like it could be difficult so it's probably not worth forcing the issue 
unless someone wants to do some really fancy work to get it done.

Based on some of the other commenters, I was under the impression that 
kselftests had in-kernel tests but I'm not sure where or if they exist. 
If they do exists, it seems like it would make sense to convert those to 
kunit and have Kunit tests run-able in a VM or baremetal instance.

Logan


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
