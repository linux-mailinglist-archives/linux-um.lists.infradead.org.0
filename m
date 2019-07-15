Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B069ECB
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 00:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyDFXjvwPdIWIIKRKPD2+64F1vTRpJiuPzse0FSR2sY=; b=oOmUhmvwbOK7YJ
	Oz1CusvtBFivKb5s2nMkf2EpAweoOXnizqogUwmv+WEX+e4M3h7JAcTBhyoHZ8whDOpXPCdHzCCQd
	TJ2OKmIeCZxYyYgF1lCDxp9fFBEL2UXH/4v/N7qyDY9reO7B7wOupAzft7DC1xvRCO/PDKo9iE3+3
	tNFFUZ8m3q7z5+aspMjmFhIZTaqwFXhc4ZHmF7e2VUL45FVH4vootlEQkoqrNDpl4Ij03IC1+anVU
	gMijqRzriAtnuiiS1zYFHYNBi4ggN8QGmbmZUlXt8Gu4n0TXPT7vMp32w4kCT9AmoB0QMAivh9A7t
	SoaCHkjqCe+2uKkd/nPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn9GJ-00017x-Kn; Mon, 15 Jul 2019 22:15:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn9GG-00017F-IH
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 22:15:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8417320665;
 Mon, 15 Jul 2019 22:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563228954;
 bh=i+e+XmewuTOKZMYujCCinWE6HQCvbqktbBhowFdAdPg=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=nit3wmf2HR893QM2K8DruIfSbcU7b/R5ef7zr8W96bJJyHcozB5YCZpfps75qxqEO
 oicHCnXQygK86xyEFQeyuPLu1I0HibYMiVLkrgmRaDPIEiL9kInXH2fdL5MKbiGjz1
 8gYmu0T+bLrbzSn3Rx2ZadHnq+yjFPagC4HFhmqk=
MIME-Version: 1.0
In-Reply-To: <20190712081744.87097-5-brendanhiggins@google.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
User-Agent: alot/0.8.1
Date: Mon, 15 Jul 2019 15:15:53 -0700
Message-Id: <20190715221554.8417320665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_151556_639839_7A8F803F 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Quoting Brendan Higgins (2019-07-12 01:17:30)
> diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
> new file mode 100644
> index 0000000000000..a7b53eabf6be4
> --- /dev/null
> +++ b/include/kunit/kunit-stream.h
> @@ -0,0 +1,81 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * C++ stream style string formatter and printer used in KUnit for outputting
> + * KUnit messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_KUNIT_STREAM_H
> +#define _KUNIT_KUNIT_STREAM_H
> +
> +#include <linux/types.h>
> +#include <kunit/string-stream.h>
> +
> +struct kunit;
> +
> +/**
> + * struct kunit_stream - a std::stream style string builder.
> + *
> + * A std::stream style string builder. Allows messages to be built up and
> + * printed all at once.
> + */
> +struct kunit_stream {
> +       /* private: internal use only. */
> +       struct kunit *test;
> +       const char *level;

Is the level changed? See my comment below, but I wonder if this whole
struct can go away and the wrappers can just operate on 'struct
string_stream' instead.

> +       struct string_stream *internal_stream;
> +};
> diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
> new file mode 100644
> index 0000000000000..8bea1f22eafb5
> --- /dev/null
> +++ b/kunit/kunit-stream.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * C++ stream style string formatter and printer used in KUnit for outputting
> + * KUnit messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <kunit/test.h>
> +#include <kunit/kunit-stream.h>
> +#include <kunit/string-stream.h>
> +
> +void kunit_stream_add(struct kunit_stream *kstream, const char *fmt, ...)
> +{
> +       va_list args;
> +       struct string_stream *stream = kstream->internal_stream;
> +
> +       va_start(args, fmt);
> +
> +       if (string_stream_vadd(stream, fmt, args) < 0)
> +               kunit_err(kstream->test,
> +                         "Failed to allocate fragment: %s\n",
> +                         fmt);
> +
> +       va_end(args);
> +}
> +
> +void kunit_stream_append(struct kunit_stream *kstream,
> +                               struct kunit_stream *other)
> +{
> +       struct string_stream *other_stream = other->internal_stream;
> +       const char *other_content;
> +
> +       other_content = string_stream_get_string(other_stream);
> +
> +       if (!other_content) {
> +               kunit_err(kstream->test,
> +                         "Failed to get string from second argument for appending\n");
> +               return;
> +       }
> +
> +       kunit_stream_add(kstream, other_content);
> +}

Why can't this function be implemented in the string_stream API? Seems
valid to want to append one stream to another and that isn't
kunit_stream specific.

> +
> +void kunit_stream_clear(struct kunit_stream *kstream)
> +{
> +       string_stream_clear(kstream->internal_stream);
> +}
> +
> +void kunit_stream_commit(struct kunit_stream *kstream)
> +{
> +       struct string_stream *stream = kstream->internal_stream;
> +       struct string_stream_fragment *fragment;
> +       struct kunit *test = kstream->test;
> +       char *buf;
> +
> +       buf = string_stream_get_string(stream);
> +       if (!buf) {
> +               kunit_err(test,
> +                         "Could not allocate buffer, dumping stream:\n");
> +               list_for_each_entry(fragment, &stream->fragments, node) {
> +                       kunit_err(test, fragment->fragment);
> +               }
> +               kunit_err(test, "\n");
> +               goto cleanup;
> +       }
> +
> +       kunit_printk(kstream->level, test, buf);
> +       kfree(buf);
> +
> +cleanup:

Drop the goto and use an 'else' please.

> +       kunit_stream_clear(kstream);
> +}
> +
> +static int kunit_stream_init(struct kunit_resource *res, void *context)
> +{
> +       struct kunit *test = context;
> +       struct kunit_stream *stream;
> +
> +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> +       if (!stream)
> +               return -ENOMEM;
> +
> +       res->allocation = stream;
> +       stream->test = test;
> +       stream->internal_stream = alloc_string_stream(test);
> +
> +       if (!stream->internal_stream)
> +               return -ENOMEM;
> +
> +       return 0;
> +}
> +
> +static void kunit_stream_free(struct kunit_resource *res)
> +{
> +       struct kunit_stream *stream = res->allocation;
> +
> +       if (!string_stream_is_empty(stream->internal_stream)) {
> +               kunit_err(stream->test,
> +                         "End of test case reached with uncommitted stream entries\n");
> +               kunit_stream_commit(stream);
> +       }
> +}
> +

Nitpick: Drop this extra newline.

> diff --git a/kunit/test.c b/kunit/test.c
> index f165c9d8e10b0..29edf34a89a37 100644
> --- a/kunit/test.c
> +++ b/kunit/test.c
> @@ -120,6 +120,12 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
>                               test_case->name);
>  }
>  
> +void kunit_fail(struct kunit *test, struct kunit_stream *stream)

Why doesn't 'struct kunit' have a 'struct kunit_stream' inside of it? It
seems that the two are highly related, to the point that it might just
make sense to have

	struct kunit {
		struct kunit_stream stream;
		...
	};

> +{
> +       kunit_set_failure(test);
> +       kunit_stream_commit(stream);

And then this function can just take a test and the stream can be
associated with the test directly. Use container_of() to get to the test
when the only pointer in hand is for the stream too.

> +}
> +
>  void kunit_init_test(struct kunit *test, const char *name)
>  {
>         mutex_init(&test->lock);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
