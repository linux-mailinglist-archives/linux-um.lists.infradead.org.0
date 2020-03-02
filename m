Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A875A1767A1
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 23:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hHR8F3KtghLetVTp3gMRbKxcVrhfp9vaCavja4vBfzw=; b=KPholEect2jz7r
	uQSxL1TI6AbvEhbX47Rc053T60s88qARn4hbeRFpTQ5CxYPhDeFQ8pKd222lKwKBSqlOqSUNOIoYG
	gFqFXVqhtxz/oziOQg1O1SniO//9kRlaHZAJb9+BP26My8u0oBkotwhTGOgrNxlCRjSzJqIt/Q/Un
	bYU+TStw6+k46q6/qtqzFjQPQlR0vTXVrCbBMyyu1vYBKtZl74Trb0GWHtEqFIZ4p/ZrvfNF8I7tn
	Atq94llfRJWVANmhkbBxpQtUHAi9Dme6eQ+3JIa4zxpQovxgHm4aPYVXEJkPm5IXmA8T0j6GCGUpp
	PJfUKRqTKC6SbQdvzsKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8toe-0002B9-DB; Mon, 02 Mar 2020 22:45:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8toc-0002Aj-3H
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 22:45:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id t24so526600pgj.7
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 14:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :in-reply-to; bh=GFD8ViXColObn8FM0PtoZqKUGLmCPza4UuJiavcTlUk=;
 b=WOFD+1Nf4ROrRkdcS2D5Dsei0yXLkev6qnAqaLDLHleCetNWzzamUGvlzp/253O8jh
 3r03SkffB+wUd+5cZAcVQv7IP2C7/s6hLTVHBBxDMhIH9Zl/ntMVEcd/f6KslWykbsLn
 tCMHnOUaFbey1oPEdx6KV21wnn0J36dc3JzMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:in-reply-to;
 bh=GFD8ViXColObn8FM0PtoZqKUGLmCPza4UuJiavcTlUk=;
 b=gMPVOw8Xnbiq4m491ukGjlB3M6ei0UcQs7raJXQCpwH0sgqzXbfHsBNGgYQu4GrQbC
 ONt+cY5zijjt21G9NUMtC/S97H4Rpi1QIITJG13geOzDTeLFmXJ7voNHUkzfSvl8HjSY
 tzPc4j6WyPiTW+KC0E+5VGxP3y9cSOD3TySEykipC7Ke6FjmSezy4OHKirk8FaedJWvW
 RwRfQ9zULACvSEvnlAthtEKyS1nqqGowFFnlveMBYiFxLZOcX5C8CtNftOPNhn4Jo+RQ
 H/fm/o3fKtRgXYVWxL7XOLgrdGZ2SeLf8mrdqEQ7GqLS/aQaP35deJB0Zp5FU2kQ2v1X
 eDWg==
X-Gm-Message-State: ANhLgQ3zcwdPzOOoFdMfPqyTHvzFKt7lRAutmeyC3tfHzimOxCMPcWzr
 OOnR5rp8nnvNomOBxGMU7DsJfg==
X-Google-Smtp-Source: ADFU+vu7n6pQF0dWmSqvn0KXxGvBVGm4fqd9FgIsTrDfyQROBoSJtdUzEcRBWZnkK1aK2uDhIh2uwA==
X-Received: by 2002:a63:4555:: with SMTP id u21mr1106380pgk.66.1583189132864; 
 Mon, 02 Mar 2020 14:45:32 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a10sm21559754pgk.71.2020.03.02.14.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:45:31 -0800 (PST)
Date: Mon, 2 Mar 2020 14:45:30 -0800
From: Kees Cook <keescook@chromium.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v3 4/7] init: main: add KUnit to kernel init
Message-ID: <202003021439.A6B6FD8@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228012036.15682-5-brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_144534_163492_4057083D 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, alan.maguire@oracle.com,
 linux-kselftest@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 sboyd@kernel.org, richard@nod.at, jdike@addtoit.com, linux-doc@vger.kernel.org,
 linux-um@lists.infradead.org, mcgrof@kernel.org, rppt@linux.ibm.com,
 logang@deltatee.com, kunit-dev@googlegroups.com, davidgow@google.com,
 skhan@linuxfoundation.org, akpm@linux-foundation.org, yzaikin@google.com,
 Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2/27/20 7:20 PM, Brendan Higgins wrote:
> Remove KUnit from init calls entirely, instead call directly from
> kernel_init().
> 
> Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> [...]
> diff --git a/init/main.c b/init/main.c
> index ee4947af823f3..7875a5c486dc4 100644
> --- a/init/main.c
> +++ b/init/main.c
> @@ -104,6 +104,8 @@
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/initcall.h>
>  
> +#include <kunit/test.h>
> +
>  static int kernel_init(void *);
>  
>  extern void init_IRQ(void);
> @@ -1444,6 +1446,8 @@ static noinline void __init kernel_init_freeable(void)
>  
>  	do_basic_setup();
>  
> +	kunit_run_all_tests();
> +
>  	console_on_rootfs();
>  
>  	/*

I'm nervous about this happening before two key pieces of the kernel
setup, which might lead to weird timing-sensitive bugs or false
positives:
	async_synchronize_full()
	mark_readonly()

Now, I realize kunit tests _should_ be self-contained, but this seems
like a possible robustness problem. Is there any reason this can't be
moved after rcu_end_inkernel_boot() in kernel_init() instead?

-- 
Kees Cook

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
