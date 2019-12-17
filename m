Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BF2122602
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 08:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtPPzE8gKwUwnHSR1Yy56h7tMS6Nh63pXkxmEb7syrs=; b=c8US11LBjgNdYv
	G8wG34oe/rtIre8xOPAhuzvDJ38/VNxM6BzQeasfeJmI908QXYrkz6mc85p1PgA3H58uzsY9AVFVH
	En9prdaQurcxPOr67ydHP9Tq4hb8MQvy0EEx8j4Cva5IA1oDCYyCkkwNd70LLrwA22UUfZz8YveE1
	JeMVIYw5hS+trRx0ZgP2kjJW4llpZL3RmfS6Pe6XGhgeDVPlXilP61OLadqXcnDLw2zeb5S5h57eC
	fbfuP2FEUtfq6uQz4g5G6McjoYwPbP1yjCVnviHp6FSBhRIoLYqiUbuRiLmsTldWY4sCskKMC5AGB
	BEEEtu5804KCvoEbmIbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7kf-0000xR-12; Tue, 17 Dec 2019 07:58:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7kb-0000wU-Q0
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 07:58:39 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C76942072D;
 Tue, 17 Dec 2019 07:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576569516;
 bh=PKix5UkE1pjZ91wIWtn3Cxmm/NgC7fD1N+XCGrlerOc=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=KunVHOnJ26M+HY0Zbm7xsxRl0nadBs5iWR37RatXykPyxoODmRASWVsqKSFu9WXN7
 i9gOOh9fLtJCgcZwWrT2yE0XXVs4xQB2pNGnlkSi9yQI/KkVwK+TIRGCmYE3RyC6Cn
 496v2oAjGt5DZ1isIRWinAShFPZr0iljBJBiG/Kk=
MIME-Version: 1.0
In-Reply-To: <20191216220555.245089-5-brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-5-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, jdike@addtoit.com, keescook@chromium.org, richard@nod.at,
 rppt@linux.ibm.com, skhan@linuxfoundation.org, yzaikin@google.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 4/6] init: main: add KUnit to kernel init
User-Agent: alot/0.8.1
Date: Mon, 16 Dec 2019 23:58:36 -0800
Message-Id: <20191217075836.C76942072D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_235838_308507_06CEC078 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-12-16 14:05:53)
> Remove KUnit from init calls entirely, instead call directly from
> kernel_init().

Yes, but why? Is it desired to run the unit tests earlier than opening
the console or something?

> 
> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> index 978086cfd257d..ca880224c0bab 100644
> --- a/lib/kunit/executor.c
> +++ b/lib/kunit/executor.c
> @@ -32,12 +32,10 @@ static bool kunit_run_all_tests(void)
>         return !has_test_failed;
>  }
>  
> -static int kunit_executor_init(void)
> +int kunit_executor_init(void)

Should be marked __init? Even before this patch presumably.

>  {
>         if (kunit_run_all_tests())
>                 return 0;
>         else
>                 return -EFAULT;
>  }
> -
> -late_initcall(kunit_executor_init);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
