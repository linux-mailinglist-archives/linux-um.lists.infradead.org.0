Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF18AB65
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 01:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZc6TxZeuJiWGoaIg6bs9+2jgo5ym4uqa3/vhiaJrJU=; b=IR9V0M5gl7aV6N
	mdfhZahdu+1JJ1Ewpwps+AN1uHEbFgt6SBi7x/SEYhRPskbZSj9m2eu2JzjF+nSHVF7WYeVanMwTJ
	LjM3IB+8LrGh34hYvySL6IEh31a3CnwUYZMYlTquaxRMv0/wJk+zsMrnxPIAcbcacnyYu5sT16w4P
	Y51+6Cg5S5jtmvIiGcRLj5MrxxHj/UiWXAxaXpr9s9PESPRjbhcu5oQirUKIr3j+i+M2lWQbz9ooQ
	wJ4Pqv92LNpse3KOLidI9obByCN0W+3Ydc2iobUywNcUxai0PEcKONrtoBCwaBX0Vf3weXxfN5DMi
	/yvzrGwqQdpg2u8CDvcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxK1Y-0002cy-L0; Mon, 12 Aug 2019 23:46:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxK1V-0002cU-QT
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 23:46:47 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E054D20679;
 Mon, 12 Aug 2019 23:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565653605;
 bh=B5M35uPs7D5CLgV2WuA3jEwtQw8IijPFRqyXw/4bWMU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=AGOwiTgbdj+2ifl0a7Xbp5/lsMWfdJc7+aAllnZ0hjKfSs/gNRN2411MBEaSKQzNW
 jmCAe62dNE3Eo33h9i7ShysYfWASja+7gi/ROqRCoY/PPSVzU5+gcDFa0QwS9wu2/G
 09nGYZB8GjciLbmMfntmYaBwKJxcaqwUc60bVJjM=
MIME-Version: 1.0
In-Reply-To: <20190812182421.141150-5-brendanhiggins@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-5-brendanhiggins@google.com>
Subject: Re: [PATCH v12 04/18] kunit: test: add assertion printing library
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 16:46:44 -0700
Message-Id: <20190812234644.E054D20679@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_164645_907922_C054F3B0 
X-CRM114-Status: GOOD (  11.41  )
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

Quoting Brendan Higgins (2019-08-12 11:24:07)
> Add `struct kunit_assert` and friends which provide a structured way to
> capture data from an expectation or an assertion (introduced later in
> the series) so that it may be printed out in the event of a failure.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Just some minor nits below

> diff --git a/include/kunit/assert.h b/include/kunit/assert.h
> new file mode 100644
> index 0000000000000..55f1b88b0cb4d
> --- /dev/null
> +++ b/include/kunit/assert.h
> @@ -0,0 +1,183 @@
[...]
> +                           struct string_stream *stream);
> +
> +struct kunit_fail_assert {
> +       struct kunit_assert assert;
> +};
> +
> +void kunit_fail_assert_format(const struct kunit_assert *assert,
> +                             struct string_stream *stream);
> +
> +#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {                           \
> +               .assert = KUNIT_INIT_ASSERT_STRUCT(test,                       \
> +                                                  type,                       \
> +                                                  kunit_fail_assert_format)   \

This one got indented one too many times?

> +}
> +
> +struct kunit_unary_assert {
> +       struct kunit_assert assert;
> +       const char *condition;
> +       bool expected_true;
> +};
> +
> +void kunit_unary_assert_format(const struct kunit_assert *assert,
> +                              struct string_stream *stream);
> +
[...]
> +#define KUNIT_INIT_BINARY_STR_ASSERT_STRUCT(test,                             \
> +                                           type,                              \
> +                                           op_str,                            \
> +                                           left_str,                          \
> +                                           left_val,                          \
> +                                           right_str,                         \
> +                                           right_val) {                       \
> +       .assert = KUNIT_INIT_ASSERT_STRUCT(test,                               \
> +                                          type,                               \
> +                                          kunit_binary_str_assert_format),    \
> +       .operation = op_str,                                                   \
> +       .left_text = left_str,                                                 \
> +       .left_value = left_val,                                                \
> +       .right_text = right_str,                                               \
> +       .right_value = right_val                                               \
> +}

It would be nice to have kernel doc on these macros so we know how to
use them.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
