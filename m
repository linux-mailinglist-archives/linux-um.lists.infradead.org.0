Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D314C68A
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 07:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFrDDU78FEw7ZXHgzGKn4XmrPb+11bT9uvWkIR+iEak=; b=MCEW748IEGhY8F
	yR0E52sZnXOSP+BXusZGrSqcLZIgqQYlpC7/CLu4DNXTGEXa7nK69pvhRZMz85q/1e+HUUo5sjmR/
	pLovARVczlJWTDjjfWVeHu3L1hL+BRUcB1EycelPfv9z5tcSmP0PfzMH//teN6E5DY0NrKj0u1vyj
	y1dYZeoVdmchiIsOBlYeS81Y9LL/vP65nVwLGstef9GMId4sG6npnkSQVvgId9y6j8/3U8YAF0IFv
	5ZMbeC1qBf/iehrkV5SVQs2VN1ou3469ecAUhff5f+JKlO4XgVej0T2E+S4nuRceCn0yI1i3G4U6b
	UEDjB2SVbtnu+J1lyv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwguU-0004ap-37; Wed, 29 Jan 2020 06:33:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwguR-0004aH-J0
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 06:33:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19CB4206F0;
 Wed, 29 Jan 2020 06:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580279587;
 bh=28tEdmx9LwLU3uCpRLofPRp2G5hnsl0hstln6/EfErI=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=hpswgamHW1zjyT7O2a0FPMr/N6O6c98hZVj9cwxMj0wb0TseNdIUbahMdqnjEt2MI
 xVOcrIYzJkoZJx5HLe2VlxdXmzVlbPisafSWULSODIosWLIfeqnBYwPRfPIzFL/yNt
 4UYFNxSqh81kJeAcn3CiA9aSzpockL2inznJnyWU=
MIME-Version: 1.0
In-Reply-To: <20200128072002.79250-7-brendanhiggins@google.com>
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-7-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1 6/7] kunit: Add 'kunit_shutdown' option
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, frowand.list@gmail.com, jdike@addtoit.com,
 keescook@chromium.org, richard@nod.at, rppt@linux.ibm.com,
 skhan@linuxfoundation.org, yzaikin@google.com
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 22:33:06 -0800
Message-Id: <20200129063307.19CB4206F0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_223307_657658_64A647B9 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 linux-doc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2020-01-27 23:20:01)
> From: David Gow <davidgow@google.com>
> 
> Add a new kernel command-line option, 'kunit_shutdown', which allows the
> user to specify that the kernel poweroff, halt, or reboot after
> completing all KUnit tests; this is very handy for running KUnit tests
> on UML or a VM so that the UML/VM process exits cleanly immediately
> after running all tests without needing a special initramfs.
> 
> Signed-off-by: David Gow <davidgow@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Two nitpicks below

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> index 7fd16feff157e..d3ec1265a72fd 100644
> --- a/lib/kunit/executor.c
> +++ b/lib/kunit/executor.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  
>  #include <kunit/test.h>
> +#include <linux/reboot.h>

Should this include come before kunit/test.h? I imagine the order of
includes would be linux, kunit, local?

>  
>  /*
>   * These symbols point to the .kunit_test_suites section and are defined in
> @@ -11,6 +12,23 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
>  
>  #if IS_BUILTIN(CONFIG_KUNIT)
>  
> +static char *kunit_shutdown;
> +core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
> +
> +static void kunit_handle_shutdown(void)
> +{
> +       if (!kunit_shutdown)
> +               return;
> +
> +       if (!strcmp(kunit_shutdown, "poweroff")) {
> +               kernel_power_off();
> +       } else if (!strcmp(kunit_shutdown, "halt")) {
> +               kernel_halt();
> +       } else if (!strcmp(kunit_shutdown, "reboot")) {
> +               kernel_restart(NULL);
> +       }

Kernel style would be to not have braces on single line if statements.

> +}
> +
>  static void kunit_print_tap_header(void)
>  {
>         struct kunit_suite * const * const *suites, * const *subsuite;

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
