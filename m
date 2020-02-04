Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF931521D5
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 22:18:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwaxRY8mgsiL0OzVygEHDb2E8HcTOE3l0WMXQV/dngM=; b=hSVk4+ndDwY/Oz
	LoYvyaPqzgbODyY34FGZNRN85soW2AaU01+REKwQN6QSbUhCIx+w8zeLXMYOvK5KqdLhqdN83rvPN
	t5vBoMOBVhrK2vl6Q6wy1Lb2fd0tFm6d1t4wjsRb3oqij+NRBN+UHVDwlLShn/I/sYxpaWCXUzGNl
	buqMe/Z8ogW8yHksFLPK8eMvNCFJJSrPLR3JLvXBsb25KGTz9W3VRhd/xYEFReGNq9pqIStl7CFyM
	AKD/tEArsh5Slwsy91oZmwJ74BfurpmLgftlZWSUMsxBd6HV+iQTtzkuFXmiS5YxJKkkX8Ajp6NPT
	ZpKk8gLZWum8foNA1ITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz5aq-0004HK-At; Tue, 04 Feb 2020 21:18:48 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz5an-0004GF-0e
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 21:18:46 +0000
Received: by mail-yw1-xc44.google.com with SMTP id b81so146595ywe.9
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 13:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rJdNxill8piqvMTWCgF4RO24y2zuf2qXqfrV3PzwGbQ=;
 b=QJongeyYsMcOyLwpvXAwz6WVMVDNeXOfV03/lDzb1w++4+APc5JpfERT6/M36Me943
 0TE46okBUMZcgFUSz7/U0eAzS0hX5mwTJET3bF5woubK5iqfFoND5279RcPU1/z5zlPb
 rsEGY4G7wLyc0riOmp5xb5uXALgBpgcoa7r0MZ0AoFidRnrLmIAqWFi9qvO0lbHPW2Uu
 wCzGdGPlQdjgMgk0GRG4oK0LMzL3bqviHeBPaBLVtzc+9OygZQtLKwTj8K8xmed/2Ooe
 3PfWrIz+lloiFGRDybGnlxqoqiIFvInklnmnDLKSJlbd+VeqUAtiDU/qDYlVJDXmD6lJ
 vVyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rJdNxill8piqvMTWCgF4RO24y2zuf2qXqfrV3PzwGbQ=;
 b=sHPFzntxR05XEa9irBuX5NgPKRubD6r6RDqEFH+e77EbqKjGAEqrLya2a0vnkr6dDz
 KArVxWmkUOk94L6DpBIVRAPwUKrRXTXdER13qfE9qxY2D/YFKdeBc39H0MEBjGJSeHvK
 Wj1mDw+3l2EejZv765RNPaTm6MWpvm1Syyxy2lhF0xysUHM5Qr8+g857CFbnHGgXHh2X
 veoUtvM5w1DlzQiyv0T6BH+DpxAMxZ/NLLxyh4DrIaE7/8N3EkpeQ6Z1/fH0HrhbrJel
 F66kp/2nclIuAKVRBGRobjJSSq52QhGKfT+d0KASuulnkd/BaVzby3GwoZjls8Wkt2XI
 ktPA==
X-Gm-Message-State: APjAAAUup05/ENG+a6M4GhxJisELQnP0zUJc6qb7EbR8In/3SMvAjQjP
 xzhi4R6kEjwGrNqIAUtHRt4=
X-Google-Smtp-Source: APXvYqx/4pLiWvDN2SSeNNE0WCYREq9BMw/a3Cyz3ZlWWFHi2jbhi1ruHmyqFPzoGZ1eBHqH741jjQ==
X-Received: by 2002:a81:a00f:: with SMTP id x15mr7413542ywg.327.1580851123678; 
 Tue, 04 Feb 2020 13:18:43 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id 124sm10363570ywm.25.2020.02.04.13.18.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 13:18:43 -0800 (PST)
Subject: Re: [PATCH v2 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <9e203718-dcca-3145-bc28-28979d41c278@gmail.com>
Date: Tue, 4 Feb 2020 15:18:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_131845_059647_57488CFD 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/30/20 5:08 PM, Brendan Higgins wrote:
> ## TL;DR
> 
> This patchset adds a centralized executor to dispatch tests rather than
> relying on late_initcall to schedule each test suite separately along
> with a couple of new features that depend on it.

And the "couple of new features" are .... ?

> 
> ## What am I trying to do?
> 
> Conceptually, I am trying to provide a mechanism by which test suites
> can be grouped together so that they can be reasoned about collectively.
> The last two of three patches in this series add features which depend
> on this:
> 
> PATCH 5/7 Prints out a test plan right before KUnit tests are run[1];
>           this is valuable because it makes it possible for a test
>           harness to detect whether the number of tests run matches the
>           number of tests expected to be run, ensuring that no tests
>           silently failed.
> 
> PATCH 6/7 Add a new kernel command-line option which allows the user to
>           specify that the kernel poweroff, halt, or reboot after
>           completing all KUnit tests; this is very handy for running
>           KUnit tests on UML or a VM so that the UML/VM process exits
>           cleanly immediately after running all tests without needing a
>           special initramfs.
> 

> In addition, by dispatching tests from a single location, we can
> guarantee that all KUnit tests run after late_init is complete, which

That the tests will run after late init (and are guaranteed to do such)
needs to be added to the documentation.

-Frank

> was a concern during the initial KUnit patchset review (this has not
> been a problem in practice, but resolving with certainty is nevertheless
> desirable).
> 
> Other use cases for this exist, but the above features should provide an
> idea of the value that this could provide.
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
>  .../admin-guide/kernel-parameters.txt         |  7 ++
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
>  13 files changed, 217 insertions(+), 54 deletions(-)
>  create mode 100644 lib/kunit/executor.c
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
