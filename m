Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9D617638F
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 20:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTKeQ/BJTDI2M7O+QoSuFJfRPULeCsY4XFKLsyarrVk=; b=MLiP56UZ7B5oC8
	drjTM89bjKg2IG+Z2tV8Fb3ilRoEiGBrsXhvuGvGCb6r5w5Dofk0UyYuTF4kEYbUXC9n1DGOUphpu
	fnavbRy6FbADj2V8XhbHW3E3ocpfYur5URvyif+BmmKJY57iCtmgUHjAGD9HWkb2JKd3bdKGghcyO
	hfi0TtRXBdQO9SKzZKEGqAcraKIeRMUOrWAarQ1id9Wj9CoKOR56gweLutSiB4hAMC4/opepv6l4/
	iWYXwx/oUMIoaLaB2DlT/jyfcc0RsJy18GpyYOxfOMjU46LVN4pKnJwgg9CMQiK1pOC95B7bhJW2u
	TZmD71gFbhdgnoe6x0WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qV3-0006Cm-H2; Mon, 02 Mar 2020 19:13:09 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qV0-0006BQ-8j
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 19:13:07 +0000
Received: by mail-yw1-xc42.google.com with SMTP id j186so922331ywe.0
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 11:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mIFlxE/JySt19RIWYxwHNwb3HC9osfe3tBJbDkn0JmQ=;
 b=iOcmh9U2SpCQZTN3rtimC117PPPAOrXM93cKejEN8uXy9++sWzJTn66xD3JhKYqCdL
 Qh5RGSXLicg8ujZyzI/3arjaj5Cq8vz8r2f0b/0qzFwK3nlisCFK+c8wrSVTuykHsE+l
 geQE1XDETtuaUQoGNS5GENhfJ9b2iD1GVOZIK8xk1yojUFIErPsOzdCrxSdzFVbPJrfl
 T4HSToRmor4sVqhplq61hYLufUW3in21aiI7uah3GXruyUM9JrdRzeuRuLxcNLZIP2Fc
 njWPsZ241en0w+zf1sXdp2pbhAYq+wRp7GstKaeDTVBUY1nOBMbLAx4gA34rzuJcKBTx
 FeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mIFlxE/JySt19RIWYxwHNwb3HC9osfe3tBJbDkn0JmQ=;
 b=J7d3MsIgsKa45R+wHP1XUvCyeM2zVoZcWUuWddfYxN5fugKEt4F3ox26vEExe3IN/2
 nLRfAckONlF0D5qYSMmB5ByZzwQxC3Gvm7nEmQBwDytY7qUFj3oPmbuLc3B2L2/OP5dz
 9+vutma185yPw6lN9LaYJQ1bAB6ndPw+a/sQAfRHhWjQJC7W8hocn5ATnjYOmX/26Owm
 jkObrQVUxM/D/LIUk2q5rs+DE/47sLfg1Zg9Z4YxOhSCpb1N4cGqt7fIRoP+kYVGaVcq
 6jp3LBmI8Omvqi1ckcFPas3PXpPtlD/yo2jVdEgafyP+eCKMUk/TVX8xdBAE/ztLemA3
 ybPA==
X-Gm-Message-State: ANhLgQ3HEFmMxKf/X5F6B8xkL1Z4RmOxyAJ7Mb6Zp3v1L5a73WYW2nlt
 hOg467rEywDSdqO7ssiBpeI=
X-Google-Smtp-Source: ADFU+vv5ReJzTi86aVhORww9FNCyaLWa8W8pTYbFIN0neS6k+QGXEeT7prIhRLQJEg/UaEjl1ytVTQ==
X-Received: by 2002:a5b:7ce:: with SMTP id t14mr517562ybq.492.1583176385179;
 Mon, 02 Mar 2020 11:13:05 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id a77sm1791541ywe.5.2020.03.02.11.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 11:13:04 -0800 (PST)
Subject: Re: [PATCH v3 4/7] init: main: add KUnit to kernel init
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200228012036.15682-5-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <e5de96ed-fb76-d322-fa40-c6e870e76c36@gmail.com>
Date: Mon, 2 Mar 2020 13:13:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228012036.15682-5-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_111306_312998_42A97B3F 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
> Remove KUnit from init calls entirely, instead call directly from
> kernel_init().
> 
> Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  include/kunit/test.h | 9 +++++++++
>  init/main.c          | 4 ++++
>  lib/kunit/executor.c | 4 +---
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index 8a02f93a6b505..8689dd1459844 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h
> @@ -197,6 +197,15 @@ void kunit_init_test(struct kunit *test, const char *name);
>  
>  int kunit_run_tests(struct kunit_suite *suite);
>  
> +#if IS_BUILTIN(CONFIG_KUNIT)

I suspected this would not work if a unittest was builtin but CONFIG_KUNIT
was set to module.

So I decided to experiment a bit to verify my assumptions (before applying
this patch series).  I tried to set CONFIG_KUNIT to module, then set
CONFIG_KUNIT_EXAMPLE_TEST to built in.  Kconfig does not let me do this
because KUNIT_EXAMPLE_TEST is inside a 'if KUNIT' in lib/kunit/Kconfig,
but instead switches KUNIT_EXAMPLE_TEST to a module, and warns that it
has done so.  This was a bit of a surprise, but seems reasonable.

So my next assumption is that the architecture of KUnit expects
each individual unit test config option to depend upon CONFIG_KUNIT.
If this is the case, please clearly document that requirement in
the KUnit documentation.


> +int kunit_run_all_tests(void);
> +#else
> +static inline int kunit_run_all_tests(void)
> +{
> +	return 0;
> +}
> +#endif /* IS_BUILTIN(CONFIG_KUNIT) */
> +
>  /*
>   * If a test suite is built-in, module_init() gets translated into
>   * an initcall which we don't want as the idea is that for builtins
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
> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> index 6429927d598a5..b75a46c560847 100644
> --- a/lib/kunit/executor.c
> +++ b/lib/kunit/executor.c
> @@ -11,7 +11,7 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
>  
>  #if IS_BUILTIN(CONFIG_KUNIT)
>  
> -static int kunit_run_all_tests(void)
> +int kunit_run_all_tests(void)
>  {
>  	struct kunit_suite * const * const *suites, * const *subsuite;
>  	bool has_test_failed = false;
> @@ -31,6 +31,4 @@ static int kunit_run_all_tests(void)
>  	return 0;
>  }
>  
> -late_initcall(kunit_run_all_tests);
> -
>  #endif /* IS_BUILTIN(CONFIG_KUNIT) */
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
