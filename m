Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D281157F5
	for <lists+linux-um@lfdr.de>; Tue,  7 May 2019 05:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsUkHtrQnUKyoaE6kTxqP+SOI2YKBMOf55xrEbKX5aw=; b=aGGzE/yEKIP5Eh
	A8DUbys2MI4oBdHc/kmTUvEgTehRo8BRgyDhmw6y1FeH1CDT0ICx3rt1VVGGOrXhBectn3GfEfQYm
	OzKDsEkj5K9fS8N//Z9hlu9JzIjdFQZDtLP47FlyZhKY4vjXwh5LCNrESt4/4WOZCOCId47E0c6Xx
	xVEPnUhfdzvDOjJ5LScJsU2LvRpcZAH4syox+0dn9r9UbeewHQ1vXWFTj04y8hhruCba6citiSLo/
	UAvLzW8fyT504kKOK0OChewdx9yvW89eCoQFYiawPaZnOMTmS/b3awobzWgSrQZEr0gZcpPpTtApR
	h+QI3BLT9EeudI2MbWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNqYj-0000ws-KZ; Tue, 07 May 2019 03:14:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNqYf-0000vK-Kl
 for linux-um@lists.infradead.org; Tue, 07 May 2019 03:14:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so7844324pfn.7
 for <linux-um@lists.infradead.org>; Mon, 06 May 2019 20:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XPy6o0NjYz38vWpV6pc1h2A6N4smSYs4Cq49Ux9zwV8=;
 b=uTQNGYZ1XWIvXYHBEeJQovmqhK2Jtpq+d64Qro6G5OKceot5sQNTlLbfduNr0K3PGx
 CsKeB5E/nKLx2mO5rHvB5C3cSTlrSg27HAg1bLnsc6sS6Ob71hOBqLsY7CZ9Kc78pahW
 2bjV9Jxur71IdhgsqsXU4h/nzLhauMpdelIF+i15235Qca74Y0OgvP33q3BLK9LqDfFd
 Xr/fhjikEY63MLGvaPSmYU14OjokXybBFpWj/AGZsAXkXpEZkB0f6qswg2ygyAISGWpA
 7eDh4rZZ2yShjUppASxA0qxx7J3s6zLlj/zKwFDiXJf9dX+MaLJqGhuEngD27vSXcDZx
 mNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XPy6o0NjYz38vWpV6pc1h2A6N4smSYs4Cq49Ux9zwV8=;
 b=UXZkXsISl8UeCQAUePGr7Z/UOMevGbWR26Cnm+ZeiY1yAexlE1V8qG7yFTqwTBwvgV
 QrrLhRLR3Hr63zS4DNYSZhVaw23g7QhtDbnfyxYNePeuQ3Je6ntaaWVQUukfUecI9Y8L
 N7ZdIqKIyqCvuyXxHMHNKYzCIkl6nyUqzchXpDDJ4Aj+z+a8uqOtcCwG/UYK/x77i37B
 FQLznVar/zG59FYut03fuciXND9snpMz312rhncOE5QvJAw8LEV/SK+YD3tme6yPKR74
 /8VhovWIcbBLAAZzgvDUKQ8sJhYYCByJhuMkO6obRgNuqzrRHri0/mBGSHdVKZ+PdEQ5
 M/dQ==
X-Gm-Message-State: APjAAAU+SfzNG8YIgkdR9pnA5GlgzD2rI8vNtEAMOLseTeyKZpDIUB8t
 98iD8eyIjqL4IVvGYK7Fw7c=
X-Google-Smtp-Source: APXvYqwISNSy9xefPMYRgOslBbKIROeiQ4y33+rxQnv0dnHw2MR5wA3FiL1meR7p3JPjBqzEw/Pz1Q==
X-Received: by 2002:a65:4802:: with SMTP id h2mr34368073pgs.98.1557198856091; 
 Mon, 06 May 2019 20:14:16 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id m11sm17053726pgd.12.2019.05.06.20.14.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:14:15 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>, gregkh@linuxfoundation.org,
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org,
 robh@kernel.org, sboyd@kernel.org, shuah@kernel.org
References: <20190501230126.229218-1-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
Date: Mon, 6 May 2019 20:14:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_201421_684708_006A85DA 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/1/19 4:01 PM, Brendan Higgins wrote:
> ## TLDR
> 
> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> 5.2.
> 
> Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
> we would merge through your tree when the time came? Am I remembering
> correctly?
> 
> ## Background
> 
> This patch set proposes KUnit, a lightweight unit testing and mocking
> framework for the Linux kernel.
> 
> Unlike Autotest and kselftest, KUnit is a true unit testing framework;
> it does not require installing the kernel on a test machine or in a VM
> and does not require tests to be written in userspace running on a host
> kernel. Additionally, KUnit is fast: From invocation to completion KUnit
> can run several dozen tests in under a second. Currently, the entire
> KUnit test suite for KUnit runs in under a second from the initial
> invocation (build time excluded).
> 
> KUnit is heavily inspired by JUnit, Python's unittest.mock, and
> Googletest/Googlemock for C++. KUnit provides facilities for defining
> unit test cases, grouping related test cases into test suites, providing
> common infrastructure for running tests, mocking, spying, and much more.

As a result of the emails replying to this patch thread, I am now
starting to look at kselftest.  My level of understanding is based
on some slide presentations, an LWN article, https://kselftest.wiki.kernel.org/
and a _tiny_ bit of looking at kselftest code.

tl;dr; I don't really understand kselftest yet.


(1) why KUnit exists

> ## What's so special about unit testing?
> 
> A unit test is supposed to test a single unit of code in isolation,
> hence the name. There should be no dependencies outside the control of
> the test; this means no external dependencies, which makes tests orders
> of magnitudes faster. Likewise, since there are no external dependencies,
> there are no hoops to jump through to run the tests. Additionally, this
> makes unit tests deterministic: a failing unit test always indicates a
> problem. Finally, because unit tests necessarily have finer granularity,
> they are able to test all code paths easily solving the classic problem
> of difficulty in exercising error handling code.

(2) KUnit is not meant to replace kselftest

> ## Is KUnit trying to replace other testing frameworks for the kernel?
> 
> No. Most existing tests for the Linux kernel are end-to-end tests, which
> have their place. A well tested system has lots of unit tests, a
> reasonable number of integration tests, and some end-to-end tests. KUnit
> is just trying to address the unit test space which is currently not
> being addressed.

My understanding is that the intent of KUnit is to avoid booting a kernel on
real hardware or in a virtual machine.  That seems to be a matter of semantics
to me because isn't invoking a UML Linux just running the Linux kernel in
a different form of virtualization?

So I do not understand why KUnit is an improvement over kselftest.

It seems to me that KUnit is just another piece of infrastructure that I
am going to have to be familiar with as a kernel developer.  More overhead,
more information to stuff into my tiny little brain.

I would guess that some developers will focus on just one of the two test
environments (and some will focus on both), splitting the development
resources instead of pooling them on a common infrastructure.

What am I missing?

-Frank


> 
> ## More information on KUnit
> 
> There is a bunch of documentation near the end of this patch set that
> describes how to use KUnit and best practices for writing unit tests.
> For convenience I am hosting the compiled docs here:
> https://google.github.io/kunit-docs/third_party/kernel/docs/
> Additionally for convenience, I have applied these patches to a branch:
> https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1-rc7/v1
> The repo may be cloned with:
> git clone https://kunit.googlesource.com/linux
> This patchset is on the kunit/rfc/v5.1-rc7/v1 branch.
> 
> ## Changes Since Last Version
> 
> None. I just rebased the last patchset on v5.1-rc7.
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
