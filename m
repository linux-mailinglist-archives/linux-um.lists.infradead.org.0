Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B83E17614B
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 18:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4edyZ4c0ANHlIK+X84iAFHb0ydNDAH7SzIr+umayDa4=; b=X5rqM4LvBLbNF5
	Cx4BzmozT17LIevuWRRkupGXhXicDkmp2WUshxqlmF2PlDhzdHZ34+ZC8X+xe0ucK8JqIWcBcyV60
	EwAIMrupdjeUrcP7BteZRTfQygQpR4OaGdQV9T81sVvFSJ5UV2Yp+hcu4/W88uEXfl2ZcT+udnPNC
	yJ5R6gzwDEzzfX5jJOYakpaxCMYdOj8cHB3NMUfGAjJbpcEP6f9T7eJKIxkzqBb7uR2Xg4kyfbJEg
	lPqPz3T3HjujjWu927fAsMvu/cDSaKmY+toxfYRynlYmr0s8ZGb9gzsGx4PLJXwAK+btVf6kQmT5I
	+Y3RWfbIrbgOdd7WOc5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p4k-0000EW-So; Mon, 02 Mar 2020 17:41:54 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p4X-0008VD-Vs
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 17:41:50 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a132so609092ywb.2
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 09:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dYlMCFEFqOMadOO8IzsSF9BCCu0uVYKw4ttVJjvihz0=;
 b=nb2CEkZXcfXtjfKHIGZMNZJPzPN2c5kHU5Fg9XdUWimVElcJtdjh2A7+zv60C/i9pJ
 8yRcMh815pLGqOJdx5dYFY2fsPmz7qvqLxwKMQ5UL7X0q+JP95rOvRxcEmNy6q4CNf/m
 C5QnVoh80VVruTlj/BuU/fq6EGnu63P41zlYsFxv6eh+S7wXKhwlW0Op0w+9mk2RQNuU
 cFsVRUahJMQK3Dib27Xm5BxyPVybJQeH++kSH79o12bY3j1PTkSCyhwEEi0XRNqDNHy1
 dryssjqF7zUhKHLCMvv14dzqbRnWZUOkyR5l3pdbraJ/L8G0lnyjk+mQbe50Lg6q4m6S
 xkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dYlMCFEFqOMadOO8IzsSF9BCCu0uVYKw4ttVJjvihz0=;
 b=FxpEGqnW5aD2UCkUaxQ7dV8JyhhStPx1hIxqNbbxJoMQsnikVoQl3rsut6uLUjt1EJ
 yJYUiqejOyxCBLU/KhnD1+qAvvqEhNOmk9P0mXSotrWsxkTjJI7E2smJmx9zItnHgtSo
 YulgcDEgP4mm1XxZiqGxrvzkueE61WOHB8ngrpCfD3fM4XwI/x2BAiElNP24HxnPCXIm
 vHr6oHlcfczXHZXHc0xEOiS6Nal2U4jvlHu227baQqTsePVwYkY92kXRExmfuS9j0jIb
 O/rjSXU+gWI90EZGThxG44FjbLMQ6HS6kVfUjcR73tOMcn+4Pz2UIUzh2vNbUdjfhyXS
 0vWw==
X-Gm-Message-State: ANhLgQ1IXJL97ZykOf+hICmCseb8AdZE6ZATigIqieMiqPPWkjp6R545
 URV5tP+Ik5HxWtlGzZVPnQU=
X-Google-Smtp-Source: ADFU+vvaOwr52RxWLXDEfPTsHqlNlLjGEZWIP4dr8yNuQgd02OjLw5GbYYNFr0RxFTnS8szXqb3D8A==
X-Received: by 2002:a81:4417:: with SMTP id r23mr488559ywa.240.1583170900590; 
 Mon, 02 Mar 2020 09:41:40 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id q63sm4834263ywg.106.2020.03.02.09.41.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 09:41:40 -0800 (PST)
Subject: Re: [PATCH v3 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200228012036.15682-1-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <da91797a-8640-12c7-8265-94586aacfa4c@gmail.com>
Date: Mon, 2 Mar 2020 11:41:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094142_050830_EBAE8D8F 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2/27/20 7:20 PM, Brendan Higgins wrote:
> ## TL;DR
> 
> This patchset adds a centralized executor to dispatch tests rather than
> relying on late_initcall to schedule each test suite separately along
> with a couple of new features that depend on it.
> 
> Also, sorry for the delay in getting this new revision out. I have been
> really busy for the past couple weeks.
> 
> ## What am I trying to do?
> 
> Conceptually, I am trying to provide a mechanism by which test suites
> can be grouped together so that they can be reasoned about collectively.
> The last two of three patches in this series add features which depend
> on this:
> 
> PATCH 5/7 Prints out a test plan[1] right before KUnit tests are run;
>           this is valuable because it makes it possible for a test
>           harness to detect whether the number of tests run matches the
>           number of tests expected to be run, ensuring that no tests
>           silently failed. The test plan includes a count of tests that
>           will run. With the centralized executor, the tests are located
>           in a single data structure and thus can be counted.
> 
> PATCH 6/7 Add a new kernel command-line option which allows the user to
>           specify that the kernel poweroff, halt, or reboot after
>           completing all KUnit tests; this is very handy for running
>           KUnit tests on UML or a VM so that the UML/VM process exits
>           cleanly immediately after running all tests without needing a
>           special initramfs. The centralized executor provides a
>           definitive point when all tests have completed and the
>           poweroff, halt, or reboot could occur.
> 
> In addition, by dispatching tests from a single location, we can
> guarantee that all KUnit tests run after late_init is complete, which
> was a concern during the initial KUnit patchset review (this has not
> been a problem in practice, but resolving with certainty is nevertheless
> desirable).
> 
> Other use cases for this exist, but the above features should provide an
> idea of the value that this could provide.
> 
> ## Changes since last revision:
> - On patch 7/7, I added some additional wording around the
>   kunit_shutdown command line option explaining that it runs after
>   built-in tests as suggested by Frank.
> - On the coverletter, I improved some wording and added a missing link.
>   I also specified the base-commit for the series.

> - Frank asked for some changes to the documentation; however, David is
>   taking care of that in a separate patch[2], so I did not make those
>   changes here. There will be some additional changes necessary
>   after David's patch is applied.

Making the documentation changes after David's patches sounds like
a good plan to me.

-Frank

> 
> Alan Maguire (1):
>   kunit: test: create a single centralized executor for all tests
> 
> Brendan Higgins (5):
>   vmlinux.lds.h: add linker section for KUnit test suites
>   arch: um: add linker section for KUnit test suites
>   init: main: add KUnit to kernel init
>   kunit: test: add test plan to KUnit TAP format
>   Documentation: Add kunit_shutdown to kernel-parameters.txt
> 
> David Gow (1):
>   kunit: Add 'kunit_shutdown' option
> 
>  .../admin-guide/kernel-parameters.txt         |  8 ++
>  arch/um/include/asm/common.lds.S              |  4 +
>  include/asm-generic/vmlinux.lds.h             |  8 ++
>  include/kunit/test.h                          | 82 ++++++++++++-------
>  init/main.c                                   |  4 +
>  lib/kunit/Makefile                            |  3 +-
>  lib/kunit/executor.c                          | 71 ++++++++++++++++
>  lib/kunit/test.c                              | 11 ---
>  tools/testing/kunit/kunit_kernel.py           |  2 +-
>  tools/testing/kunit/kunit_parser.py           | 76 ++++++++++++++---
>  .../test_is_test_passed-all_passed.log        |  1 +
>  .../test_data/test_is_test_passed-crash.log   |  1 +
>  .../test_data/test_is_test_passed-failure.log |  1 +
>  13 files changed, 218 insertions(+), 54 deletions(-)
>  create mode 100644 lib/kunit/executor.c
> 
> 
> base-commit: a2f0b878c3ca531a1706cb2a8b079cea3b17bafc
> 
> [1] https://github.com/isaacs/testanything.github.io/blob/tap14/tap-version-14-specification.md#the-plan
> [2] https://patchwork.kernel.org/patch/11383635/
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
