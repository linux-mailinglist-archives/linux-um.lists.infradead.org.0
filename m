Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798CA70A4D
	for <lists+linux-um@lfdr.de>; Mon, 22 Jul 2019 22:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpdVCPVCA5eiSc7q9OANlRcVc1mJmaZORAhex73O+Qc=; b=f49DJzbx4f4pgI
	o4y8uBeVKVF8fhridT2sJLKfvTI5NmeebP/LtWVPKvOWnMbf9RHpe1YtZOXxfxDYZe541TAVayrV6
	0KGIUZUs0J4tbPjk3GYNChd5/6yuMcmgDrVaE8sAs6ZXVR69a49wgAzBMkG+6LYEPATKSStRCCgmy
	S9V/YDMRmwB8bUWTQPymV6qKAryrvLmzNL8xveTosJ4O9PQt8YaVcmrRCDi7wR/fe7rKshoMAsayZ
	fXT8DNp0axWWPnCV/JYneBgG2yxrP5eLMRzSK+dZFWsu1d/Fte3pa80vaAK3u4O/l5nP84FL0SKUS
	jLI4XcxTg71w1yon1nVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeXH-0001PC-9u; Mon, 22 Jul 2019 20:03:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeXE-0001Oh-Cm
 for linux-um@lists.infradead.org; Mon, 22 Jul 2019 20:03:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 261D3218C9;
 Mon, 22 Jul 2019 20:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563825827;
 bh=Wsa0RdtVEyOuADI16LfYypjcqEqgHKE0qCpoH+nyomM=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=iN2qJyphkqjtk5dxm7+fFAGNWCxb6gIkH3cXPJpWi5Jmp3HSj39EYhV46o7/9rmGv
 iWnRc0lUEISi2tmn4zfbyW0cIWtqWT2YGXGPIR7IxaSPAGqBl30dx57TR2E3V6YE0I
 CsYfxBQoaUdmaXFN0U0JdJFG/96pL0/7LL4INSNU=
MIME-Version: 1.0
In-Reply-To: <20190719000834.GA3228@google.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
 <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Brendan Higgins <brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 13:03:46 -0700
Message-Id: <20190722200347.261D3218C9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_130348_470043_8B067D90 
X-CRM114-Status: GOOD (  35.84  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-07-18 17:08:34)
> On Thu, Jul 18, 2019 at 12:22:33PM -0700, Brendan Higgins wrote:
>
> I started poking around with your suggestion while we are waiting. A
> couple early observations:
> 
> 1) It is actually easier to do than I previously thought and will probably
>    help with getting more of the planned TAP output stuff working.
> 
>    That being said, this is still a pretty substantial undertaking and
>    will likely take *at least* a week to implement and properly review.
>    Assuming everything goes extremely well (no unexpected issues on my
>    end, very responsive reviewers, etc).
> 
> 2) It *will* eliminate the need for kunit_stream.
> 
> 3) ...but, it *will not* eliminate the need for string_stream.
> 
> Based on my early observations, I do think it is worth doing, but I
> don't think it is worth trying to make it in this patchset (unless I
> have already missed the window, or it is going to be open for a while):

The merge window is over. Typically code needs to be settled a few weeks
before it opens (i.e. around -rc4 or -rc5) for most maintainers to pick
up patches for the next merge window.

> I do think it will make things much cleaner, but I don't think it will
> achieve your desired goal of getting rid of an unstructured
> {kunit|string}_stream style interface; it just adds a layer on top of it
> that makes it harder to misuse.

Ok.

> 
> I attached a patch of what I have so far at the end of this email so you
> can see what I am talking about. And of course, if you agree with my
> assessment, so we can start working on it as a future patch.
> 
> A couple things in regard to the patch I attached:
> 
> 1) I wrote it pretty quickly so there are almost definitely mistakes.
>    You should consider it RFC. I did verify it compiles though.
> 
> 2) Also, I did use kunit_stream in writing it: all occurences should be
>    pretty easy to replace with string_stream; nevertheless, the reason
>    for this is just to make it easier to play with the current APIs. I
>    wanted to have something working before I went through a big tedious
>    refactoring. So sorry if it causes any confusion.
> 
> 3) I also based the patch on all the KUnit patches I have queued up
>    (includes things like mocking and such) since I want to see how this
>    serialization thing will work with mocks and matchers and things like
>    that.

Great!

> 
> From 53d475d3d56afcf92b452c6d347dbedfa1a17d34 Mon Sep 17 00:00:00 2001
> From: Brendan Higgins <brendanhiggins@google.com>
> Date: Thu, 18 Jul 2019 16:08:52 -0700
> Subject: [PATCH v1] DO NOT MERGE: started playing around with the
>  serialization api
> 
> ---
>  include/kunit/assert.h | 130 ++++++++++++++++++++++++++++++
>  include/kunit/mock.h   |   4 +
>  kunit/Makefile         |   3 +-
>  kunit/assert.c         | 179 +++++++++++++++++++++++++++++++++++++++++
>  kunit/mock.c           |   6 +-
>  5 files changed, 318 insertions(+), 4 deletions(-)
>  create mode 100644 include/kunit/assert.h
>  create mode 100644 kunit/assert.c
> 
> diff --git a/include/kunit/assert.h b/include/kunit/assert.h
> new file mode 100644
> index 0000000000000..e054fdff4642f
> --- /dev/null
> +++ b/include/kunit/assert.h
> @@ -0,0 +1,130 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Assertion and expectation serialization API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_ASSERT_H
> +#define _KUNIT_ASSERT_H
> +
> +#include <kunit/test.h>
> +#include <kunit/mock.h>
> +
> +enum kunit_assert_type {
> +       KUNIT_ASSERTION,
> +       KUNIT_EXPECTATION,
> +};
> +
> +struct kunit_assert {
> +       enum kunit_assert_type type;
> +       const char *line;
> +       const char *file;
> +       struct va_format message;
> +       void (*format)(struct kunit_assert *assert,
> +                      struct kunit_stream *stream);

Would passing in the test help too?

> +};
> +
> +void kunit_base_assert_format(struct kunit_assert *assert,
> +                             struct kunit_stream *stream);
> +
> +void kunit_assert_print_msg(struct kunit_assert *assert,
> +                           struct kunit_stream *stream);
> +
> +struct kunit_unary_assert {
> +       struct kunit_assert assert;
> +       const char *condition;
> +       bool expected_true;
> +};
> +
> +void kunit_unary_assert_format(struct kunit_assert *assert,
> +                              struct kunit_stream *stream);
> +
> +struct kunit_ptr_not_err_assert {
> +       struct kunit_assert assert;
> +       const char *text;
> +       void *value;
> +};
> +
> +void kunit_ptr_not_err_assert_format(struct kunit_assert *assert,
> +                                    struct kunit_stream *stream);
> +
> +struct kunit_binary_assert {
> +       struct kunit_assert assert;
> +       const char *operation;
> +       const char *left_text;
> +       long long left_value;
> +       const char *right_text;
> +       long long right_value;
> +};
> +
> +void kunit_binary_assert_format(struct kunit_assert *assert,
> +                               struct kunit_stream *stream);
> +
> +struct kunit_binary_ptr_assert {
> +       struct kunit_assert assert;
> +       const char *operation;
> +       const char *left_text;
> +       void *left_value;
> +       const char *right_text;
> +       void *right_value;
> +};
> +
> +void kunit_binary_ptr_assert_format(struct kunit_assert *assert,
> +                                   struct kunit_stream *stream);
> +
> +struct kunit_binary_str_assert {
> +       struct kunit_assert assert;
> +       const char *operation;
> +       const char *left_text;
> +       const char *left_value;
> +       const char *right_text;
> +       const char *right_value;
> +};
> +
> +void kunit_binary_str_assert_format(struct kunit_assert *assert,
> +                                   struct kunit_stream *stream);
> +
> +struct kunit_mock_assert {
> +       struct kunit_assert assert;
> +};
> +
> +struct kunit_mock_no_expectations {
> +       struct kunit_mock_assert assert;
> +};

What's the purpose of making a wrapper struct with no other members?
Just to make a different struct for some sort of type checking? I guess
it's OK but I don't think it will be very useful in practice.

> +
> +struct kunit_mock_declaration {
> +       const char *function_name;
> +       const char **type_names;
> +       const void **params;
> +       int len;
> +};
> +
> +void kunit_mock_declaration_format(struct kunit_mock_declaration *declaration,
> +                                  struct kunit_stream *stream);
> +
> +struct kunit_matcher_result {
> +       struct kunit_assert assert;
> +};
> +
> +struct kunit_mock_failed_match {
> +       struct list_head node;
> +       const char *expectation_text;
> +       struct kunit_matcher_result *matcher_list;

Minor nitpick: this code could use some const sprinkling.

> +       size_t matcher_list_len;
> +};
> +
> +void kunit_mock_failed_match_format(struct kunit_mock_failed_match *match,
> +                                   struct kunit_stream *stream);
> +
> +struct kunit_mock_no_match {
> +       struct kunit_mock_assert assert;
> +       struct kunit_mock_declaration declaration;
> +       struct list_head failed_match_list;
> +};
> +
> +void kunit_mock_no_match_format(struct kunit_assert *assert,
> +                               struct kunit_stream *stream);
> +
> +#endif /*  _KUNIT_ASSERT_H */
> diff --git a/kunit/assert.c b/kunit/assert.c
> new file mode 100644
> index 0000000000000..75bb6922a994e
> --- /dev/null
> +++ b/kunit/assert.c
> @@ -0,0 +1,179 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Assertion and expectation serialization API.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +#include <kunit/assert.h>
> +
> +void kunit_base_assert_format(struct kunit_assert *assert,
> +                             struct kunit_stream *stream)
> +{
> +       const char *expect_or_assert;
> +
> +       if (assert->type == KUNIT_EXPECTATION)
> +               expect_or_assert = "EXPECTATION";
> +       else
> +               expect_or_assert = "ASSERTION";

Make this is a switch statement so we can have the compiler complain if
an enum is missing.

> +
> +       kunit_stream_add(stream, "%s FAILED at %s:%s\n",
> +                        expect_or_assert, assert->file, assert->line);
> +}
> +
> +void kunit_assert_print_msg(struct kunit_assert *assert,
> +                           struct kunit_stream *stream)
> +{
> +       if (assert->message.fmt)
> +               kunit_stream_add(stream, "\n%pV", &assert->message);
> +}
> +
[...]
> +
> +void kunit_mock_failed_match_format(struct kunit_mock_failed_match *match,
> +                                   struct kunit_stream *stream)
> +{
> +       struct kunit_matcher_result *result;
> +       size_t i;
> +
> +       kunit_stream_add(stream,
> +                        "Tried expectation: %s, but\n",
> +                        match->expectation_text);
> +       for (i = 0; i < match->matcher_list_len; i++) {
> +               result = &match->matcher_list[i];
> +               kunit_stream_add(stream, "\t");
> +               result->assert.format(&result->assert, stream);
> +               kunit_stream_add(stream, "\n");
> +       }

What's the calling context of the assertions and expectations? I still
don't like the fact that string stream needs to allocate buffers and
throw them into a list somewhere because the calling context matters
there. I'd prefer we just wrote directly to the console/log via printk
instead. That way things are simple because we use the existing
buffering path of printk, but maybe there's some benefit to the string
stream that I don't see? Right now it looks like it builds a string and
then dumps it to printk so I'm sort of lost what the benefit is over
just writing directly with printk.

Maybe it's this part that you wrote up above?

> > Nevertheless, I think the debate over the usefulness of the
> > string_stream and kunit_stream are separate topics. Even if we made
> > kunit_stream more structured, I am pretty sure I would want to use
> > string_stream or some variation for constructing the message.

Why do we need string_stream to construct the message? Can't we just
print it as we process it?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
