Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62114EB5F
	for <lists+linux-um@lfdr.de>; Fri, 21 Jun 2019 17:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NEvdzjUfmHBeDk4HDKBcQzlLPzuh77NMWMGDHM9EjRU=; b=ZoV+2kPdl+xmRhkz5qKozG9d7
	cRRK6QmciwWUqUYKhaW+nSpihjFuGaqVYD5bElV3kflX8tg11j0+WUEVfmH16D2BmD/xmagS0woH7
	mqQlOHsqf5PGeGKh7GFtjoPa/Ntzqcxx1JL4lu1UhUIXOJ02+C7ZULUtq6z3ymrMjuQp2VqQPuVTt
	75AohJOEeg3ilk316GKmckhTOoFnkVWYwCcKJSM8m9J/0tM8Hi5rd11F3S2IYF52KNr5zutqaAZC3
	/kvCwxDlpyQbVIe5klQ9wVBxvgxm80Cy/9zJSOK+vqGkK8kWYelF59W0NTYO/8x1fl9C+qEaA6v2k
	PraaZ8JOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL1A-0002V2-5V; Fri, 21 Jun 2019 14:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL16-0002UO-Ag
 for linux-um@lists.infradead.org; Fri, 21 Jun 2019 14:59:53 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FA3F2070B;
 Fri, 21 Jun 2019 14:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561129191;
 bh=jQOqVXNcfZkUcGV1wjafezc/ZNY8PMgE5h6rHbcBqkg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fVF0cWJ0mpMA6KTd3g5GTFKTqGb07hlbAKRaXsHiU5gZicbhsP8nzhP5lBm7wdR3Q
 86P67oj3InItTJvZZf4vHPGbEwHeuhFRn7muUTOHYoK/hhOwBhjYJrlR4tOL/ZkWh0
 lyQWIOYhLwZoPcg3Yd91RlXYf2pF/02sm7Qm2pBI=
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>, gregkh@linuxfoundation.org,
 jpoimboe@redhat.com, keescook@google.com, kieran.bingham@ideasonboard.com,
 mcgrof@kernel.org, peterz@infradead.org, robh@kernel.org, sboyd@kernel.org,
 tytso@mit.edu, yamada.masahiro@socionext.com
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <69809117-dcda-160a-ee0a-d1d3b4c5cd8a@kernel.org>
Date: Fri, 21 Jun 2019 08:59:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_075952_401332_3A873AD4 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, shuah <shuah@kernel.org>,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Brendan,

On 6/19/19 7:17 PM, Frank Rowand wrote:
> Hi Brendan,
> 
> I am only responding to this because you asked me to in the v4 thread.
> 
> Thank you for evaluating my comments in the v4 thread and asking me to
> comment on v5
> 
> On 6/17/19 1:25 AM, Brendan Higgins wrote:
>> ## TL;DR
>>
>> A not so quick follow-up to Stephen's suggestions on PATCH v4. Nothing
>> that really changes any functionality or usage with the minor exception
>> of a couple public functions that Stephen asked me to rename.
>> Nevertheless, a good deal of clean up and fixes. See changes below.
>>
>> As for our current status, right now we got Reviewed-bys on all patches
>> except:
>>
>> - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
>>    list
>>
>> However, it would probably be good to get reviews/acks from the
>> subsystem maintainers on:
>>
>> - [PATCH v5 06/18] kbuild: enable building KUnit
>> - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
>>    list
>> - [PATCH v5 15/18] Documentation: kunit: add documentation for KUnit
>> - [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
>>    sysctl.c:proc_dointvec()
>> - [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
>>    SYSCTL section
>>
>> Other than that, I think we should be good to go.
>>
>> One last thing, I updated the background to include my thoughts on KUnit
>> vs. in kernel testing with kselftest in the background sections as
>> suggested by Frank in the discussion on PATCH v2.
>>
>> ## Background
>>
>> This patch set proposes KUnit, a lightweight unit testing and mocking
>> framework for the Linux kernel.
>>
>> Unlike Autotest and kselftest, KUnit is a true unit testing framework;
>> it does not require installing the kernel on a test machine or in a VM
>> (however, KUnit still allows you to run tests on test machines or in VMs
>> if you want[1]) and does not require tests to be written in userspace
>> running on a host kernel. Additionally, KUnit is fast: From invocation
>> to completion KUnit can run several dozen tests in under a second.
>> Currently, the entire KUnit test suite for KUnit runs in under a second
>> from the initial invocation (build time excluded).
>>
>> KUnit is heavily inspired by JUnit, Python's unittest.mock, and
>> Googletest/Googlemock for C++. KUnit provides facilities for defining
>> unit test cases, grouping related test cases into test suites, providing
>> common infrastructure for running tests, mocking, spying, and much more.
>>
> 
> I looked only at this section, as was specifically requested:
> 
>> ### But wait! Doesn't kselftest support in kernel testing?!
>>
>> In a previous version of this patchset Frank pointed out that kselftest
>> already supports writing a test that resides in the kernel using the
>> test module feature[2]. LWN did a really great summary on this
>> discussion here[3].
>>
>> Kselftest has a feature that allows a test module to be loaded into a
>> kernel using the kselftest framework; this does allow someone to write
>> tests against kernel code not directly exposed to userland; however, it
>> does not provide much of a framework around how to structure the tests.
>> The kselftest test module feature just provides a header which has a
>> standardized way of reporting test failures,
> 
> 
>> and then provides
>> infrastructure to load and run the tests using the kselftest test
>> harness.
> 
> The in-kernel tests can also be invoked at boot time if they are
> configured (Kconfig) as in-kernel instead of as modules.  I did not
> check how many of the tests have tri-state configuration to allow
> this, but the few that I looked at did.
> 
>>
>> The kselftest test module does not seem to be opinionated at all in
>> regards to how tests are structured, how they check for failures, how
>> tests are organized. Even in the method it provides for reporting
>> failures is pretty simple; it doesn't have any more advanced failure
>> reporting or logging features. Given what's there, I think it is fair to
>> say that it is not actually a framework, but a feature that makes it
>> possible for someone to do some checks in kernel space.
> 
> I would call that description a little dismissive.  The set of in-kernel
> tests that I looked like followed a common pattern and reported results
> in a uniform manner.
> 
>>

I think I commented on this before. I agree with the statement that
there is no overlap between Kselftest and KUnit. I would like see this
removed. Kselftest module support supports use-cases KUnit won't be able
to. I can build an kernel with Kselftest test modules and use it in the
filed to load and run tests if I need to debug a problem and get data
from a system. I can't do that with KUnit.

In my mind, I am not viewing this as which is better. Kselftest and
KUnit both have their place in the kernel development process. It isn't
productive and/or necessary to comparing Kselftest and KUnit without a
good understanding of the problem spaces for each of these.

I would strongly recommend not making reference to Kselftest and talk
about what KUnit offers.

>> Furthermore, kselftest test module has very few users. I checked for all
>> the tests that use it using the following grep command:
>>
>> grep -Hrn -e 'kselftest_module\.h'
>>
>> and only got three results: lib/test_strscpy.c, lib/test_printf.c, and
>> lib/test_bitmap.c.
> 

Again, unnecessary. KUnit can't replace Kselftest module in the way
Kselftest module support can be used for debugging and gathering
information on system that might be in active use and not dedicated
to test and development alone. I wouldn't hesitate loading a Kselftest
test module on my laptop and running tests, but I wouldn't use KUnit
the same way.

Again, this is not a competition between which is better. Kselftest
and KUnit serve different needs and problem spaces.

Please redo this documentation to reflect that.

thanks,
-- Shuah



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
