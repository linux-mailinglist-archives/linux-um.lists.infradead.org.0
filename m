Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0638AE24
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 06:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTQxhL+gas6DgvXCX7qjMtBTWZquYFLD7EJYcbj8M8s=; b=qbYioohiFGWxU6
	mk3SHpGDsGIImE9amkCUw032txilgvHHll36QpJzcjBemJD4ByTvBBY7Q0jGDWoXSnnxh6BKDfiJa
	nBlwuD3HrFtyliHmO5h8Q/3JADGGAQojt0FAAGTYnezNZOUge69cFRTXTMpT+VQbria35my0KO8T1
	dwlSqngMCNE2jBZDxdnm/AEb3of4WcTAtJCwUkLwXDuCcl/sGBwdoA4iyN7BrKuf8cSoA/BntPyDX
	Ol/HNLgylicE7PyaT6599jU7DZpasg9+J/4hRXndFrceRF/hfP/0/+5eqRD5DuHXJNSdWA/CP9PQ2
	j0xXQOo+V2ICbV7KP6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOq1-0004KV-Mp; Tue, 13 Aug 2019 04:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOpz-0004K7-Ko
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 04:55:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1D6E206C2;
 Tue, 13 Aug 2019 04:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565672110;
 bh=sNs8Jd2xkQEsuQp9rhkHGchWAQJXpnxX1ZLCePCDf18=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=r6BR1VpnUPJtcLpxSN6MzduXH/yQRPwo8roQ2PhzFBwrjyUmuDeet29A/zAYIKzoB
 rXSL+H7vMbDJlLtVTxK+pxHOYx2XBv7vlL5PTxOzCH7sywF+WyBUoRmzmArBuhPF9v
 rnjMiiYeiR/EOunpx0iR0Cc/RMwL2jKukJ0nIsg4=
MIME-Version: 1.0
In-Reply-To: <20190812182421.141150-12-brendanhiggins@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-12-brendanhiggins@google.com>
Subject: Re: [PATCH v12 11/18] kunit: test: add the concept of assertions
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 21:55:09 -0700
Message-Id: <20190813045510.C1D6E206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_215511_729895_66E9B394 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
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

Quoting Brendan Higgins (2019-08-12 11:24:14)
> Add support for assertions which are like expectations except the test
> terminates if the assertion is not satisfied.
> 
> The idea with assertions is that you use them to state all the
> preconditions for your test. Logically speaking, these are the premises
> of the test case, so if a premise isn't true, there is no point in
> continuing the test case because there are no conclusions that can be
> drawn without the premises. Whereas, the expectation is the thing you
> are trying to prove. It is not used universally in x-unit style test
> frameworks, but I really like it as a convention.  You could still
> express the idea of a premise using the above idiom, but I think
> KUNIT_ASSERT_* states the intended idea perfectly.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

> + * Sets an expectation that the values that @left and @right evaluate to are
> + * not equal. This is semantically equivalent to
> + * KUNIT_ASSERT_TRUE(@test, strcmp((@left), (@right))). See KUNIT_ASSERT_TRUE()
> + * for more information.
> + */
> +#define KUNIT_ASSERT_STRNEQ(test, left, right)                                \
> +               KUNIT_BINARY_STR_NE_ASSERTION(test,                            \
> +                                             KUNIT_ASSERTION,                 \
> +                                             left,                            \
> +                                             right)
> +
> +#define KUNIT_ASSERT_STRNEQ_MSG(test, left, right, fmt, ...)                  \
> +               KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,                        \
> +                                                 KUNIT_ASSERTION,             \
> +                                                 left,                        \
> +                                                 right,                       \
> +                                                 fmt,                         \

Same question about tabbing too.

> diff --git a/kunit/test-test.c b/kunit/test-test.c
> index 88f4cdf03db2a..058f3fb37458a 100644
> --- a/kunit/test-test.c
> +++ b/kunit/test-test.c
> @@ -78,11 +78,13 @@ static int kunit_try_catch_test_init(struct kunit *test)
>         struct kunit_try_catch_test_context *ctx;
>  
>         ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);

Ah ok. Question still stands if kunit_kzalloc() should just have the
assertion on failure.

>         test->priv = ctx;
>  
>         ctx->try_catch = kunit_kmalloc(test,
>                                        sizeof(*ctx->try_catch),
>                                        GFP_KERNEL);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->try_catch);
>  

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
