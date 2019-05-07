Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC44016699
	for <lists+linux-um@lfdr.de>; Tue,  7 May 2019 17:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=398gDJU+nq+5OjjMCycx0KFEhNezT7A8vRyciTYzuCM=; b=slCMrXGuzpLUWcY5AHXKf7fxk
	1Jkqe9InSSHJKRkSMuK9JAYGCEmzkB46aEwLWqKOWRG7b+oSlG22RNKX1LcknLIGcwlk1EfVilTCF
	Tl1+sEi7xtkWtycazclsSvhPfAy7AkYzDtipfRlC0ChWCNtJvgt+qbEgNxqjEHQk7KDQs5W8KCy8t
	RrMctdD27wLu2qnN38HhF2DsyckOoJnCoPpDaJjnD1c14DHRPeguGQrRdu2a24QQVN+rJeA8lgxvX
	Sn9bgI+XgtkxLzMPXHHgAZRPIUe1X+NxzVDqWuXo1PR6BQ9n3UV3CeVyE8TME71RpLV6x+eNOpleM
	U1c3juK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1wf-0003mB-KP; Tue, 07 May 2019 15:23:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1wc-0003lW-DL
 for linux-um@lists.infradead.org; Tue, 07 May 2019 15:23:52 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9366B20578;
 Tue,  7 May 2019 15:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557242629;
 bh=dO7mTUjByDGN6GSIO12AxymBvd4d1sYv7pzpp4gCkcM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=MEOLkab/mys2OmCbNNrFaBBWxiQRA8p5Xph5cSbOaf3dtJp0Y4pIinBOFJY6toD3q
 Xo53veFn5xhtU7g2rJIDmKlEu5ktY0s3dHVC5R9PfmEaTd9qpMcYTb86rWSIA4KjmQ
 Lkl8ZsqhAXEsvVdCvCDrQUPyfL0mNUaOmsLdkMlk=
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Greg KH <gregkh@linuxfoundation.org>, Frank Rowand <frowand.list@gmail.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
From: shuah <shuah@kernel.org>
Message-ID: <1b1efa91-0523-21a9-e541-fdc3612bd117@kernel.org>
Date: Tue, 7 May 2019 09:23:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507080119.GB28121@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_082350_487885_022FD94A 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 linux-kselftest@vger.kernel.org, shuah <shuah@kernel.org>, robh@kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 dan.j.williams@intel.com, kunit-dev@googlegroups.com, richard@nod.at,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 daniel@ffwll.ch, keescook@google.com, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/7/19 2:01 AM, Greg KH wrote:
> On Mon, May 06, 2019 at 08:14:12PM -0700, Frank Rowand wrote:
>> On 5/1/19 4:01 PM, Brendan Higgins wrote:
>>> ## TLDR
>>>
>>> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
>>> 5.2.
>>>
>>> Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
>>> we would merge through your tree when the time came? Am I remembering
>>> correctly?
>>>
>>> ## Background
>>>
>>> This patch set proposes KUnit, a lightweight unit testing and mocking
>>> framework for the Linux kernel.
>>>
>>> Unlike Autotest and kselftest, KUnit is a true unit testing framework;
>>> it does not require installing the kernel on a test machine or in a VM
>>> and does not require tests to be written in userspace running on a host
>>> kernel. Additionally, KUnit is fast: From invocation to completion KUnit
>>> can run several dozen tests in under a second. Currently, the entire
>>> KUnit test suite for KUnit runs in under a second from the initial
>>> invocation (build time excluded).
>>>
>>> KUnit is heavily inspired by JUnit, Python's unittest.mock, and
>>> Googletest/Googlemock for C++. KUnit provides facilities for defining
>>> unit test cases, grouping related test cases into test suites, providing
>>> common infrastructure for running tests, mocking, spying, and much more.
>>
>> As a result of the emails replying to this patch thread, I am now
>> starting to look at kselftest.  My level of understanding is based
>> on some slide presentations, an LWN article, https://kselftest.wiki.kernel.org/
>> and a _tiny_ bit of looking at kselftest code.
>>
>> tl;dr; I don't really understand kselftest yet.
>>
>>
>> (1) why KUnit exists
>>
>>> ## What's so special about unit testing?
>>>
>>> A unit test is supposed to test a single unit of code in isolation,
>>> hence the name. There should be no dependencies outside the control of
>>> the test; this means no external dependencies, which makes tests orders
>>> of magnitudes faster. Likewise, since there are no external dependencies,
>>> there are no hoops to jump through to run the tests. Additionally, this
>>> makes unit tests deterministic: a failing unit test always indicates a
>>> problem. Finally, because unit tests necessarily have finer granularity,
>>> they are able to test all code paths easily solving the classic problem
>>> of difficulty in exercising error handling code.
>>
>> (2) KUnit is not meant to replace kselftest
>>
>>> ## Is KUnit trying to replace other testing frameworks for the kernel?
>>>
>>> No. Most existing tests for the Linux kernel are end-to-end tests, which
>>> have their place. A well tested system has lots of unit tests, a
>>> reasonable number of integration tests, and some end-to-end tests. KUnit
>>> is just trying to address the unit test space which is currently not
>>> being addressed.
>>
>> My understanding is that the intent of KUnit is to avoid booting a kernel on
>> real hardware or in a virtual machine.  That seems to be a matter of semantics
>> to me because isn't invoking a UML Linux just running the Linux kernel in
>> a different form of virtualization?
>>
>> So I do not understand why KUnit is an improvement over kselftest.

They are in two different categories. Kselftest falls into black box
regression test suite which is a collection of user-space tests with a
few kernel test modules back-ending the tests in some cases.

Kselftest can be used by both kernel developers and users and provides
a good way to regression test releases in test rings.

KUnit is a white box category and is a better fit as unit test framework
for development and provides a in-kernel testing. I wouldn't view them
one replacing the other. They just provide coverage for different areas
of testing.

I wouldn't view KUnit as something that would be easily run in test 
rings for example.

Brendan, does that sound about right?

>>
>> It seems to me that KUnit is just another piece of infrastructure that I
>> am going to have to be familiar with as a kernel developer.  More overhead,
>> more information to stuff into my tiny little brain.
>>
>> I would guess that some developers will focus on just one of the two test
>> environments (and some will focus on both), splitting the development
>> resources instead of pooling them on a common infrastructure.

>> What am I missing?
> 
> kselftest provides no in-kernel framework for testing kernel code
> specifically.  That should be what kunit provides, an "easy" way to
> write in-kernel tests for things.
> 
> Brendan, did I get it right?
thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
