Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C994C4DE
	for <lists+linux-um@lfdr.de>; Thu, 20 Jun 2019 03:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgXwoevwmyxSOvNmsRoc2BQ2UWERlGocTizw/ABaRBc=; b=RS10ubONGFfCOz
	JJ2HglqLRRorEot3fJW5oJCuCEC9qTukOyimbmWGA1HqIwVe6+i5MRd2iOeyO4vCm5JqpRi0shUhH
	50f+8chyAt6OmZlKaw8C2pkcqHJvQ4v1fhxrohTE5JV4W8S7OO4mxeoGXdSIN6BBQwLd86XLsOmB0
	hjt3lZrojTvgkII3eayDo4tpBbUq6nbeoTr8hCMxdEuTml+ZCmhrgMUg/5vqWLGvhH6bej9sKSs3L
	HBhWWFuvX5pvAdy8vj1Bz12qw8+7I+ukLcmxiTDrNUfNnRwfM+R/nQ6JLbC+Td7kvamDp+/lvCDgL
	ImccJimdP4wXVnYIaa6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdliC-00068J-KU; Thu, 20 Jun 2019 01:18:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdli8-00067A-DP
 for linux-um@lists.infradead.org; Thu, 20 Jun 2019 01:17:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so613598pgp.11
 for <linux-um@lists.infradead.org>; Wed, 19 Jun 2019 18:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sQXeyT1HOJUOTqXAfF30wa5tl07vfC8Ho8QPiu+AUmU=;
 b=dz6cdwV/r75OnNKrL4gx8ZRnk9eJQrLc/XBVO5bKEiireDO4wNHpYHyldvXT0EiuWu
 ppu0kJyuD01pJK/yY9Sc0cQhFYNiWllaL1gpz4dsQcDPbgsuvQg1xo52piKPAn76gKBC
 08KBlwLQD/7WXZP9lcR2CJZtKaIFgJp0o4DAqo0v7DD0wD/oC8Z+0svZ/DpC5eB0IaQR
 532N8xHNVBADse1U1xTBdS0Hj/MtV1ZUgC2nk9tHgitGiz/gXQTMK9tavkBvV+CTU0q2
 k2Jn4dRSzsT8pQkXYEQbifzzrrxW+LHoOuvERF7zWX2TOhYnTCG3Sx2neEgKQvOSr3rn
 D3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sQXeyT1HOJUOTqXAfF30wa5tl07vfC8Ho8QPiu+AUmU=;
 b=iJtodVZZBADz7mnxx4Y9KGf6ZAe7HowOzAOspmq+N1BSpFsjE93chHUyfEnNq+CKVC
 IYZ8hzOfISk9Siq5xF0k9ST2xB7Rt3Y8Xnwf1hCiOaQxCjeXSPN/hb4JvG7dzyt7FFJf
 w/r4GNiWIGvRBxvzdR34smmGgP0G6QVyy7K9Kzd+ta4O02Li80cDMGKFTYv5Z4Dk77+r
 1n0QbBEA6kyvSn/veWCo1PMaV+lLnkYJo4GindIBSoZ5OBkmO1lJt9q1AyBiX5VEsjSM
 q6mYvKJbFNzstm2BAaebjY+v7+rWaIbhCcc/suf11Kvkh3T0pJh8OyKhUwwMlG+VEN3b
 SdNQ==
X-Gm-Message-State: APjAAAUosuyHy0Kr1qbZExXlRYubQmAeH8JEktCqPjaw++oMEfvq3BNZ
 UKt40jEvPjxWHJQLD/Bw1BE=
X-Google-Smtp-Source: APXvYqzdMj4/FazAQbDL48xqo25QTSXAVT2QkZe8UL8Q+0fAHJYZrYbIiEtG6+Jk3rLvO3Ba2D4w/A==
X-Received: by 2002:a63:5a1f:: with SMTP id o31mr10331504pgb.254.1560993475116; 
 Wed, 19 Jun 2019 18:17:55 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id l68sm3115863pjb.8.2019.06.19.18.17.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 18:17:54 -0700 (PDT)
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>, gregkh@linuxfoundation.org,
 jpoimboe@redhat.com, keescook@google.com, kieran.bingham@ideasonboard.com,
 mcgrof@kernel.org, peterz@infradead.org, robh@kernel.org, sboyd@kernel.org,
 shuah@kernel.org, tytso@mit.edu, yamada.masahiro@socionext.com
References: <20190617082613.109131-1-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
Date: Wed, 19 Jun 2019 18:17:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_181756_479425_C5601034 
X-CRM114-Status: GOOD (  40.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Brendan,

I am only responding to this because you asked me to in the v4 thread.

Thank you for evaluating my comments in the v4 thread and asking me to
comment on v5

On 6/17/19 1:25 AM, Brendan Higgins wrote:
> ## TL;DR
> 
> A not so quick follow-up to Stephen's suggestions on PATCH v4. Nothing
> that really changes any functionality or usage with the minor exception
> of a couple public functions that Stephen asked me to rename.
> Nevertheless, a good deal of clean up and fixes. See changes below.
> 
> As for our current status, right now we got Reviewed-bys on all patches
> except:
> 
> - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
>   list
> 
> However, it would probably be good to get reviews/acks from the
> subsystem maintainers on:
> 
> - [PATCH v5 06/18] kbuild: enable building KUnit
> - [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
>   list
> - [PATCH v5 15/18] Documentation: kunit: add documentation for KUnit
> - [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
>   sysctl.c:proc_dointvec()
> - [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
>   SYSCTL section
> 
> Other than that, I think we should be good to go.
> 
> One last thing, I updated the background to include my thoughts on KUnit
> vs. in kernel testing with kselftest in the background sections as
> suggested by Frank in the discussion on PATCH v2.
> 
> ## Background
> 
> This patch set proposes KUnit, a lightweight unit testing and mocking
> framework for the Linux kernel.
> 
> Unlike Autotest and kselftest, KUnit is a true unit testing framework;
> it does not require installing the kernel on a test machine or in a VM
> (however, KUnit still allows you to run tests on test machines or in VMs
> if you want[1]) and does not require tests to be written in userspace
> running on a host kernel. Additionally, KUnit is fast: From invocation
> to completion KUnit can run several dozen tests in under a second.
> Currently, the entire KUnit test suite for KUnit runs in under a second
> from the initial invocation (build time excluded).
> 
> KUnit is heavily inspired by JUnit, Python's unittest.mock, and
> Googletest/Googlemock for C++. KUnit provides facilities for defining
> unit test cases, grouping related test cases into test suites, providing
> common infrastructure for running tests, mocking, spying, and much more.
> 

I looked only at this section, as was specifically requested:

> ### But wait! Doesn't kselftest support in kernel testing?!
> 
> In a previous version of this patchset Frank pointed out that kselftest
> already supports writing a test that resides in the kernel using the
> test module feature[2]. LWN did a really great summary on this
> discussion here[3].
> 
> Kselftest has a feature that allows a test module to be loaded into a
> kernel using the kselftest framework; this does allow someone to write
> tests against kernel code not directly exposed to userland; however, it
> does not provide much of a framework around how to structure the tests.
> The kselftest test module feature just provides a header which has a
> standardized way of reporting test failures, 


> and then provides
> infrastructure to load and run the tests using the kselftest test
> harness.

The in-kernel tests can also be invoked at boot time if they are
configured (Kconfig) as in-kernel instead of as modules.  I did not
check how many of the tests have tri-state configuration to allow
this, but the few that I looked at did.

> 
> The kselftest test module does not seem to be opinionated at all in
> regards to how tests are structured, how they check for failures, how
> tests are organized. Even in the method it provides for reporting
> failures is pretty simple; it doesn't have any more advanced failure
> reporting or logging features. Given what's there, I think it is fair to
> say that it is not actually a framework, but a feature that makes it
> possible for someone to do some checks in kernel space.

I would call that description a little dismissive.  The set of in-kernel
tests that I looked like followed a common pattern and reported results
in a uniform manner.

> 
> Furthermore, kselftest test module has very few users. I checked for all
> the tests that use it using the following grep command:
> 
> grep -Hrn -e 'kselftest_module\.h'
> 
> and only got three results: lib/test_strscpy.c, lib/test_printf.c, and
> lib/test_bitmap.c.

You missed many tests.  I listed much more than that in the v4 thread, and
someone else also listed more in the v4 thread.


> 
> So despite kselftest test module's existence, there really is no feature
> overlap between kselftest and KUnit, save one: that you can use either
> to write an in-kernel test, but this is a very small feature in
> comparison to everything that KUnit allows you to do. KUnit is a full
> x-unit style unit testing framework, whereas kselftest looks a lot more
> like an end-to-end/functional testing framework, with a feature that
> makes it possible to write in-kernel tests.

The description does not give enough credit to what is in kselftest.

It does not matter whether KUnit provides additional things, relative
to kselftest.  The point I was making is that there appears to be
_some_ overlap between kselftest and KUnit, and if there is overlap
then it is worth considering whether the overlap can be unified instead
of duplicated.

I don't have a dog in this fight and the discussion in the v4 thread
went way off track.  Thus I am not going to get sucked back into a
pointless debate in this thread.

Thanks for adding this section to address the issue.

-Frank


> 
> ### What's so special about unit testing?
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
> 
> ### Is KUnit trying to replace other testing frameworks for the kernel?
> 
> No. Most existing tests for the Linux kernel are end-to-end tests, which
> have their place. A well tested system has lots of unit tests, a
> reasonable number of integration tests, and some end-to-end tests. KUnit
> is just trying to address the unit test space which is currently not
> being addressed.
> 
> ### More information on KUnit
> 
> There is a bunch of documentation near the end of this patch set that
> describes how to use KUnit and best practices for writing unit tests.
> For convenience I am hosting the compiled docs here[4].
> 
> Additionally for convenience, I have applied these patches to a
> branch[5]. The repo may be cloned with:
> git clone https://kunit.googlesource.com/linux
> This patchset is on the kunit/rfc/v5.2-rc4/v5 branch.
> 
> ## Changes Since Last Version
> 
> Aside from a couple public function renames, there isn't really anything
> in here that changes any functionality.
> 
> - Went through and fixed a couple of anti-patterns suggested by Stephen
>   Boyd. Things like:
>   - Dropping an else clause at the end of a function.
>   - Dropping the comma on the closing sentinel, `{}`, of a list.
> - Inlines a bunch of functions in the test case running logic in patch
>   01/18 to make it more readable as suggested by Stephen Boyd
> - Found and fixed bug in resource deallocation logic in patch 02/18. Bug
>   was discovered as a result of making a change suggested by Stephen
>   Boyd. This does not substantially change how any of the code works
>   conceptually.
> - Renamed new_string_stream() to alloc_string_stream() as suggested by
>   Stephen Boyd.
> - Made string-stream a KUnit managed object - based on a suggestion made
>   by Stephen Boyd.
> - Renamed kunit_new_stream() to alloc_kunit_stream() as suggested by
>   Stephen Boyd.
> - Removed the ability to set log level after allocating a kunit_stream,
>   as suggested by Stephen Boyd.
> 
> [1] https://google.github.io/kunit-docs/third_party/kernel/docs/usage.html#kunit-on-non-uml-architectures
> [2] https://www.kernel.org/doc/html/latest/dev-tools/kselftest.html#test-module
> [3] https://lwn.net/Articles/790235/
> [4] https://google.github.io/kunit-docs/third_party/kernel/docs/
> [5] https://kunit.googlesource.com/linux/+/kunit/rfc/v5.2-rc4/v5
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
