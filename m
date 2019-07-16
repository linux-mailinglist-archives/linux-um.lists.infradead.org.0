Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C804A6A35D
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 09:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ks+gs7+pG4ItSq2KzU8yNoAMjEA19b4Yb+gsw+M6xCg=; b=uR1kBfNisuDjO1
	V25P1NDvRvdSefdw8DX0ugR6q/P/LeH7x8Dd5Fc607nF69m4b3lzOniF5kvHKynExrIA5J3PNsJ3J
	hIK+qQc9B/B4zeT9ydEZCWF43As4UwgjL1sVDCZXLp7dfDErjkfk3FegXkQGr/nu21JhrvqlePyzS
	Hwk/FwfIMXpMdA6GkWbZrWzUvcFMSM8mtpXYqiFwPOXtNWiR1oj1+f1ai2RrfzMJyknp2pqVlmMUG
	6OwSt4kGHkNP+tz+u5w521z3nvNltq35E0ChGz+OjsVML860prN3NKFcoUcVMPF00DSm0sdAYS2hF
	EsMBioHqTM4ZPD7LCnhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIKw-0004V5-9o; Tue, 16 Jul 2019 07:57:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIKs-0004Ui-WD
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 07:57:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so9023689pgj.7
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 00:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hj/eyxtCjevB1+PnZR+txqFBPeZmBpgwE/GtSSJfKak=;
 b=C4HP24IR8lBSiExf/3eblNnl51w3i/GXv6g0d/Ej5rPsntQ1UQeR7zznUPtv769PDQ
 2XbzVujWNejHQFDRm+ISE10iEvh4oahTqWvJvqDwJgUouIsH+npmqd/ytHwkc89ZlKlz
 GZ8KAQLfSaOhylWQtFw5Qk5ORxuKjnto8l6AK0EoSTMhLJSgcAUsidGBSw3tIFAL7Nlu
 Eq0EOGx4ArvrOKXmHmXkdsxURjUiyC7FqwB1cHlSJi7BonYJfZBHkWrKYRMOOX8Seysz
 GxaRriJmb72xSK0w4Ta+k66Q5WGyM5EDDsfYjuU9UMlvilAzPNioXLTXa6bDoCBKjvlx
 T3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hj/eyxtCjevB1+PnZR+txqFBPeZmBpgwE/GtSSJfKak=;
 b=o3B+p0SvF+iQS3djwuOeJwACuq/H8Yg7s4hcA+WwVPuUU/41p9/hFdRB5KQ6y1QUwV
 sPA2G0ZnrtsGk5zVgmQ05IanmyJRiK46WzcKHYEqN+CrGgjn+XZk7KvOgaXtNPFvi4LA
 Dvk1O7iZ6N+CuS9+VmrqmbQSakvfsMHCt2RJSpR9zoesCR9o5SHt9VuZ5mPPQ5PeB01O
 QWJ8K+mGdqiVJhzTeUHbeCbQGwq7wYybwuArZ774cs3faStNwzRtxeLPyQP1rZBAmoqI
 6QocxF2HWDJd/Abq/YDB5BGZ0HcT6IR5Gdue6sgGLzGd4HCw168B5tBeo9UxoS5GJk9I
 MQIw==
X-Gm-Message-State: APjAAAX/aG6Yy17CTriI364/JGsBJwJWSdvO0UTiJrk6NS1Y9dLgy1R2
 prT7WWMUbl3/pbGj5D9erOSQiznl7nodd42YlOXVNw==
X-Google-Smtp-Source: APXvYqxRN7k0ohWxf4YsbnJVRW8wqK5xEZVOZfCD9fKAsePqyFDzc1+rDjRXhAo3uNTbJkv3qcZDCMpUOUOZHkLrnvg=
X-Received: by 2002:a17:90a:ab0d:: with SMTP id
 m13mr32936932pjq.84.1563263837424; 
 Tue, 16 Jul 2019 00:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
In-Reply-To: <20190715221554.8417320665@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 16 Jul 2019 00:57:06 -0700
Message-ID: <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_005719_066487_2651A9C5 
X-CRM114-Status: GOOD (  28.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Jul 15, 2019 at 3:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-12 01:17:30)
> > diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
> > new file mode 100644
> > index 0000000000000..a7b53eabf6be4
> > --- /dev/null
> > +++ b/include/kunit/kunit-stream.h
> > @@ -0,0 +1,81 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * C++ stream style string formatter and printer used in KUnit for outputting
> > + * KUnit messages.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#ifndef _KUNIT_KUNIT_STREAM_H
> > +#define _KUNIT_KUNIT_STREAM_H
> > +
> > +#include <linux/types.h>
> > +#include <kunit/string-stream.h>
> > +
> > +struct kunit;
> > +
> > +/**
> > + * struct kunit_stream - a std::stream style string builder.
> > + *
> > + * A std::stream style string builder. Allows messages to be built up and
> > + * printed all at once.
> > + */
> > +struct kunit_stream {
> > +       /* private: internal use only. */
> > +       struct kunit *test;
> > +       const char *level;
>
> Is the level changed? See my comment below, but I wonder if this whole
> struct can go away and the wrappers can just operate on 'struct
> string_stream' instead.

I was inclined to agree with you when I first read your comment, but
then I thought about the case that someone wants to add in a debug
message (of which I currently have none). I think under most
circumstances a user of kunit_stream would likely want to pick a
default verbosity that maybe I should provide, but may still want
different verbosity levels.

The main reason I want to keep the types separate, string_stream vs.
kunit_stream, is that they are intended to be used differently.
string_stream is just a generic string builder. If you are using that,
you are expecting to see someone building the string at some point and
then doing something interesting with it. kunit_stream really tells
you specifically that KUnit is putting together a message to
communicate something to a user of KUnit. It is really used in a very
specific way, and I wouldn't want to generalize its usage beyond how
it is currently used. I think in order to preserve the author's
intention it adds clarity to keep the types separate regardless of how
similar they might be in reality.

> > +       struct string_stream *internal_stream;
> > +};
> > diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
> > new file mode 100644
> > index 0000000000000..8bea1f22eafb5
> > --- /dev/null
> > +++ b/kunit/kunit-stream.c
> > @@ -0,0 +1,123 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * C++ stream style string formatter and printer used in KUnit for outputting
> > + * KUnit messages.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <kunit/test.h>
> > +#include <kunit/kunit-stream.h>
> > +#include <kunit/string-stream.h>
> > +
> > +void kunit_stream_add(struct kunit_stream *kstream, const char *fmt, ...)
> > +{
> > +       va_list args;
> > +       struct string_stream *stream = kstream->internal_stream;
> > +
> > +       va_start(args, fmt);
> > +
> > +       if (string_stream_vadd(stream, fmt, args) < 0)
> > +               kunit_err(kstream->test,
> > +                         "Failed to allocate fragment: %s\n",
> > +                         fmt);
> > +
> > +       va_end(args);
> > +}
> > +
> > +void kunit_stream_append(struct kunit_stream *kstream,
> > +                               struct kunit_stream *other)
> > +{
> > +       struct string_stream *other_stream = other->internal_stream;
> > +       const char *other_content;
> > +
> > +       other_content = string_stream_get_string(other_stream);
> > +
> > +       if (!other_content) {
> > +               kunit_err(kstream->test,
> > +                         "Failed to get string from second argument for appending\n");
> > +               return;
> > +       }
> > +
> > +       kunit_stream_add(kstream, other_content);
> > +}
>
> Why can't this function be implemented in the string_stream API? Seems
> valid to want to append one stream to another and that isn't
> kunit_stream specific.

Fair point. Will do.

> > +
> > +void kunit_stream_clear(struct kunit_stream *kstream)
> > +{
> > +       string_stream_clear(kstream->internal_stream);
> > +}
> > +
> > +void kunit_stream_commit(struct kunit_stream *kstream)
> > +{
> > +       struct string_stream *stream = kstream->internal_stream;
> > +       struct string_stream_fragment *fragment;
> > +       struct kunit *test = kstream->test;
> > +       char *buf;
> > +
> > +       buf = string_stream_get_string(stream);
> > +       if (!buf) {
> > +               kunit_err(test,
> > +                         "Could not allocate buffer, dumping stream:\n");
> > +               list_for_each_entry(fragment, &stream->fragments, node) {
> > +                       kunit_err(test, fragment->fragment);
> > +               }
> > +               kunit_err(test, "\n");
> > +               goto cleanup;
> > +       }
> > +
> > +       kunit_printk(kstream->level, test, buf);
> > +       kfree(buf);
> > +
> > +cleanup:
>
> Drop the goto and use an 'else' please.

Will do.

> > +       kunit_stream_clear(kstream);
> > +}
> > +
> > +static int kunit_stream_init(struct kunit_resource *res, void *context)
> > +{
> > +       struct kunit *test = context;
> > +       struct kunit_stream *stream;
> > +
> > +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> > +       if (!stream)
> > +               return -ENOMEM;
> > +
> > +       res->allocation = stream;
> > +       stream->test = test;
> > +       stream->internal_stream = alloc_string_stream(test);
> > +
> > +       if (!stream->internal_stream)
> > +               return -ENOMEM;
> > +
> > +       return 0;
> > +}
> > +
> > +static void kunit_stream_free(struct kunit_resource *res)
> > +{
> > +       struct kunit_stream *stream = res->allocation;
> > +
> > +       if (!string_stream_is_empty(stream->internal_stream)) {
> > +               kunit_err(stream->test,
> > +                         "End of test case reached with uncommitted stream entries\n");
> > +               kunit_stream_commit(stream);
> > +       }
> > +}
> > +
>
> Nitpick: Drop this extra newline.

Oops, nice catch.

> > diff --git a/kunit/test.c b/kunit/test.c
> > index f165c9d8e10b0..29edf34a89a37 100644
> > --- a/kunit/test.c
> > +++ b/kunit/test.c
> > @@ -120,6 +120,12 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
> >                               test_case->name);
> >  }
> >
> > +void kunit_fail(struct kunit *test, struct kunit_stream *stream)
>
> Why doesn't 'struct kunit' have a 'struct kunit_stream' inside of it? It
> seems that the two are highly related, to the point that it might just
> make sense to have

A `struct kunit_stream` is usually associated with a message that is
being built up over time like maybe an expectation; it is meant to
capture the idea that we might want to send some information out to
the user pertaining to some thing 'X', but we aren't sure that we
actually want to send it until 'X' is complete, but do to the nature
of 'X' it is easier to start constructing the message before 'X' is
complete.

Consider a complicated expectation, there might be multiple conditions
that satisfy it and multiple conditions which could make it fail. As
we start exploring the input to the expectation we gain information
that we might want to share back with the user if the expectation were
to fail and we might get that information before we are actually sure
that the expectation does indeed fail.

When we first step into the expectation we immediately know the
function name, file name, and line number where we are called and
would want to put that information into any message we would send to
the user about this expectation. Next, we might want to check a
property of the input, it may or may not be enough information on its
own for the expectation to fail, but we want to share the result of
the property check with the user regardless, BUT only if the
expectation as a whole fails.

Hence, we can have multiple `struct kunit_stream`s associated with a
`struct kunit` active at any given time.

>         struct kunit {
>                 struct kunit_stream stream;
>                 ...
>         };
>
> > +{
> > +       kunit_set_failure(test);
> > +       kunit_stream_commit(stream);
>
> And then this function can just take a test and the stream can be
> associated with the test directly. Use container_of() to get to the test
> when the only pointer in hand is for the stream too.

Unfortunately that wouldn't work. See my above explanation.

> > +}
> > +
> >  void kunit_init_test(struct kunit *test, const char *name)
> >  {
> >         mutex_init(&test->lock);

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
