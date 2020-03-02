Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B2F1766BF
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 23:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tS+0KB5AeUA6ml+1BbkufDqirW9PrFg8yN6Aw9ne8M=; b=WFPcJcx7vvCzTd
	6p5tL52We11CHzRnuWJljdyPmuKqCBm5yi5RUsdXYRbwdFK3QFfuAeu5P8QnaOc4md1f7OIrDynUN
	ymYWfj6K/o9ERJ2o9xeTzPenK0zmI+6joGtnhj7g1aKtBEsTEDwWpX/Eg6GzMcM8AcPh2LXT9hTP8
	iSSL5F4oTbpGeumR+Bzm2usJjQpIVw4dzVw+wrOWD5b3Cws10ur7Z8ZVMGxbFsfImd+7TQZU4NJRL
	bAcdowYC4jl7Wy4Q3QTFqF2FivZPjnjok7r3Qq1GBVLCyrbUpfNkUedEoBf2wNMYcJRLOGqM4oJlM
	Qg0/vxB+2y4syeDnRGbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tQ8-0001Z6-5d; Mon, 02 Mar 2020 22:20:16 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tQ5-0001XY-U9
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 22:20:15 +0000
Received: by mail-pj1-x1044.google.com with SMTP id f2so359273pjq.1
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 14:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eiRXpYLqa4ejnGphOY97gu7ECpDZYBemFYjwQAOSIN8=;
 b=aaGbZGjtJ97tAFGUqz1YUpCvWUuKvLCOUoq7GqERz+rB0v9aKkWW1Vu0eodTPN9RqX
 872hdjf3v+n810DIGbWsb1YA3ylC25C8v7EbWQNdSnyn6CmqUl7EYIv2FFTiNddxIOh7
 lGAwzdPNbyd6Btislx/JrjefO+I8oHSBuVzcuGPCQJBgfUM96yWecj+MmA8ndhCrt1qV
 wsqBoVrTHQprLkdeFc8bBH4cBTEiANYeLNTg2xN2rJdvvRvKUTfzQ4otrxw9aIwvUrKk
 aglUxIPKqfFRNTr5MBy60063UjLYzQNw6+c5p0GejmWLVief8dOlfKcEFSvRknw4chxX
 3HJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eiRXpYLqa4ejnGphOY97gu7ECpDZYBemFYjwQAOSIN8=;
 b=YrH5qYeEQY7CajzA8i82i1yjO4oiX/vYRWtYTNCXwZR278xGbR2epcvEUUvj3uAr5c
 tE+I2cycoUgip7NPeyx44cfpBgVZSSVpJwhOmmmyllce7t1+ojqiW+8U+ER9SEFizD5Q
 nfRciA71Trk6RcdP3Q3iIAySTRJ4ZXsXHLfhIRRPtEFCbJGuTulp74oicYMfQp6MzznE
 Zb18DrwUR8RK5hrg75iR2Hq7YSIB/gAxvK27gFwsOE9l8hWummvBKFuoVfTsX007lVbR
 s0lwL6y+qXYBZkwYQxp0WLjL/bI8cK5JoFvKErQfxwfrH883LK7n1mGWeG8E0grUOrhb
 HAbA==
X-Gm-Message-State: ANhLgQ0XsbpBIxwEyqjf/KinBOCWTRyMUT0/jZeR9pkFm1NT6WzTnchu
 7lcQTtBrQzsc/WGVBoS1kL/Lfc3nv6m/s0/hKnVU/A==
X-Google-Smtp-Source: ADFU+vuOaeld9UBVLAooUJ2zjVQ14iAl+j/4kAj7yT6yN5YktIvgDo9o5Nd/iazOvMtSLESD5sgw76KV2VeNpaXLVLU=
X-Received: by 2002:a17:90a:3a90:: with SMTP id
 b16mr120232pjc.29.1583187608902; 
 Mon, 02 Mar 2020 14:20:08 -0800 (PST)
MIME-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200302200337.GH11244@42.do-not-panic.com>
 <20200302211640.GA8364@roeck-us.net>
In-Reply-To: <20200302211640.GA8364@roeck-us.net>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 2 Mar 2020 14:19:57 -0800
Message-ID: <CAFd5g452oaKojBZfvTYw-L14wTFqsjDeX4mtYDM=kv6xhcTnig@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Guenter Roeck <linux@roeck-us.net>, Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_142013_975369_29BBE4C7 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Frank Rowand <frowand.list@gmail.com>,
 rppt@linux.ibm.com, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 1:16 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Mon, Mar 02, 2020 at 08:03:37PM +0000, Luis Chamberlain wrote:
> > Guenter,
> >
> > are you still running your cross-architecture tests? If so any chance
>
> Yes
>
> > you can try this for your build tests?
> >
>
> I didn't have KUNIT_TEST enabled to start with. I did that now, and
> started a test run on mainline a minute ago. We'll see how that goes.

FYI, kbuild already found some architectures for which this change doesn't work.

So far, I need to fix:
- arm64 (32 bit seems to work fine)
- i386 in some cases.

> Afterwards, sure, I can run the series in a test branch. It would be great
> if I can pick it up from a repository somewhere.

Cool, I will post my next revision to a branch somewhere.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
