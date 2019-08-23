Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9EF9B363
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 17:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C8C5pOsogQfDlMkSA4Q32iuPqZkB+3aH8+PkqjVai6o=; b=obRuTgkB+dISD4W6lgQaS22TE
	fwZRw5QcP2ghwCsozLrlv9Pz9jBoeHLl7CkHyZfN8ZanIP4gyuK9wN9ddwBvDWyr0JNffARdPiN9R
	8qoFMdiN3ZLyVxJhN5sS6uw8znIm35Qbsrz4W1kYCFE6L+Dmk4BXzeXSc62MSJsc8aJf7bOqlD63/
	wXPurq6lpwty4OMiUNeg5LGp09zZTqYbnyK3P6OJNlzhgWiBiJC9qRLBWht+3vB09InICI9Qfa4GN
	ohdFTSdX4HQ5rwFKZoPIVTKzqRIWqmTFXgPk8sAaJH2vIMen3avJGE1M/rRnJdwg+KwxIb+wVVlC7
	H1LK0POtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1BZN-0001rW-6x; Fri, 23 Aug 2019 15:33:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1BZJ-0001qu-Qe
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 15:33:39 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F8AD2133F;
 Fri, 23 Aug 2019 15:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566574416;
 bh=yCT4ObOgsNt0bYY8blJS3y9Aifbq9ZOtPmFappz9gKg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=o79+bNgvN/+G52KjHl2k7P+/9FYtVoFa6klyl9gzDLuUZmv2FLD2H6/h6kgCvvnGO
 RFvuceeQSSSVqLj+co0KPaqw2Cjpu4rkBzl2xsJBk8SmTfznnZR1skMABiBGgQCWnW
 h17J/lCDhV60JedIGFyevZgryI2eRxj+0jNWq+Gg=
Subject: Re: [PATCH v14 01/18] kunit: test: add KUnit test runner core
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, sboyd@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
References: <20190820232046.50175-1-brendanhiggins@google.com>
 <20190820232046.50175-2-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <7f2c8908-75f6-b793-7113-ad57c51777ce@kernel.org>
Date: Fri, 23 Aug 2019 09:33:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820232046.50175-2-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_083337_908112_117D8067 
X-CRM114-Status: GOOD (  20.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 richard@nod.at, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Brendan,

On 8/20/19 5:20 PM, Brendan Higgins wrote:
> Add core facilities for defining unit tests; this provides a common way
> to define test cases, functions that execute code which is under test
> and determine whether the code under test behaves as expected; this also
> provides a way to group together related test cases in test suites (here
> we call them test_modules).
> 
> Just define test cases and how to execute them for now; setting
> expectations on code will be defined later.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>   include/kunit/test.h | 179 ++++++++++++++++++++++++++++++++++++++++
>   kunit/Kconfig        |  17 ++++
>   kunit/Makefile       |   1 +
>   kunit/test.c         | 191 +++++++++++++++++++++++++++++++++++++++++++
>   4 files changed, 388 insertions(+)
>   create mode 100644 include/kunit/test.h
>   create mode 100644 kunit/Kconfig
>   create mode 100644 kunit/Makefile
>   create mode 100644 kunit/test.c
> 
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> new file mode 100644
> index 0000000000000..e0b34acb9ee4e
> --- /dev/null
> +++ b/include/kunit/test.h
> @@ -0,0 +1,179 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Base unit test (KUnit) API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_TEST_H
> +#define _KUNIT_TEST_H
> +
> +#include <linux/types.h>
> +
> +struct kunit;
> +
> +/**
> + * struct kunit_case - represents an individual test case.
> + * @run_case: the function representing the actual test case.
> + * @name: the name of the test case.
> + *
> + * A test case is a function with the signature, ``void (*)(struct kunit *)``
> + * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
> + * test case is associated with a &struct kunit_suite and will be run after the
> + * suite's init function and followed by the suite's exit function.
> + *
> + * A test case should be static and should only be created with the KUNIT_CASE()
> + * macro; additionally, every array of test cases should be terminated with an
> + * empty test case.
> + *
> + * Example:

Can you fix these line continuations. It makes it very hard to read.
Sorry for this late comment. These comments lines are longer than 80
and wrap.

There are several comment lines in the file that are way too long.

thanks,
-- Shuah


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
