Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22586A3F9
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 10:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/OmvXRkefA3nNDQ6OHMHXdnodgzFp3dnCFQ65t/B8A=; b=S/8Mj2Kbg/ATEW
	rTQFogitErm4D3CiNVW9aZFro7LyNauKffMQ4nwQ1u734S/umBl2tkOddImr6yhu9s4t/6VgbVpCC
	qMVobGIz6n2fVm9jwTSvk7wk16giiOc4ClrDWgXYinHw/1G7Hq97bzQvf7u1qD7qK3iJLI1jkvWTh
	dipUr8ISpwLLyrW6W9hLqfOy/YZE6wCIYijJfHMOgdPw//iYCLcjx954WL/j6tzCv7+lmtj6p65EC
	cIofCX/aOsrcKTCbTFVTD/JORBdLNhSG8ywVnAgOa//Lqe+zOVuWjL4bFz037Q+SwxtXo1LsIqu6/
	xlyo1taiNWVA6UOFcGrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIy6-00050V-MC; Tue, 16 Jul 2019 08:37:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIy3-0004zm-1E
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 08:37:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so8759865pfa.4
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 01:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d5YQlIKKkuDS08glaQtz+2CmlaQCbXhxEEG92fwEkgc=;
 b=CsxR848oXNv0SGx7lrrmlW/EFOw9d/A77U3g3HqLdnzQXz9W+0cxfMoa8bEYGoXURh
 m8GxLMkoHCYswLdtdnUJ+iBrvvcKKjZbcU1qvZqr2o95nWV31wYJsJz5Dh6UhD3jgfTf
 5nivHOcKZtu6NiXtTp/wAzu9i/RSZAOEHLHz80kaXnhboxxZghbC+4Zr/y70MEqCyABV
 qn0BYsyJyIthL8JHY+XcetgGY+N2MuOwdMCbhswDZ+jUF5W/jWzTTHxbcIVuDRWHC7id
 KxQb7HGZt+O2zUduFDS/VkICES4vWtb0wGS9znIb2yrTGO5QGHPknE6OPaDWHe8cPkNv
 JSeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d5YQlIKKkuDS08glaQtz+2CmlaQCbXhxEEG92fwEkgc=;
 b=TyerolHZIB4FmlXVqmXiT+IbpUVBD74P+LKNQjpTG4tkvm55jZ41NgeQrn8No1dcQx
 Yxh4ZvNk5cPqrrDXvkBJAZqb3YZyzBavQ1fvslgCI0nfKW2JrXtGpiHhp3FF6+fcBwKW
 r+t9kWtMUWqp9nBn787s855SKXkfXqky2JrKdGoCf1HdbIX2NoG7BAB/b/abhbwr9iGU
 j8LUBUAzE5x+/7xmNMJ33jclml4ov23B+V1daHHY7uuEWJCe4AD1fwK3cItVqu5XNj3M
 fiTPK6z/fswuhMzMK4HySnDHhRAE9PoKxKVIHTuMcyjwqxEwFReYOrX4oNyujNAiBdKz
 Fugg==
X-Gm-Message-State: APjAAAXhgv/kTYEALgRu+O8QY8tJ5X4GplAq0sEYtxOvk2yc5xND5w58
 xYKx1D6QU0CWXobNhU3yInTYS1HQmLyt1W7VeFtRfw==
X-Google-Smtp-Source: APXvYqw/pjkOVZaApgOgNLX2yiZ2DSfhsd3LaKVyfBf+7gS0zPt8gXh/9iP62Z9w8bWZyNakENvfhgJaHPTPzm3RyWM=
X-Received: by 2002:a63:eb51:: with SMTP id b17mr31131916pgk.384.1563266265401; 
 Tue, 16 Jul 2019 01:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
In-Reply-To: <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 16 Jul 2019 01:37:34 -0700
Message-ID: <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_013747_104877_4600F078 
X-CRM114-Status: GOOD (  34.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Tue, Jul 16, 2019 at 12:57 AM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Mon, Jul 15, 2019 at 3:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-07-12 01:17:30)
> > > diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
> > > new file mode 100644
> > > index 0000000000000..a7b53eabf6be4
> > > --- /dev/null
> > > +++ b/include/kunit/kunit-stream.h
> > > @@ -0,0 +1,81 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * C++ stream style string formatter and printer used in KUnit for outputting
> > > + * KUnit messages.
> > > + *
> > > + * Copyright (C) 2019, Google LLC.
> > > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > > + */
> > > +
> > > +#ifndef _KUNIT_KUNIT_STREAM_H
> > > +#define _KUNIT_KUNIT_STREAM_H
> > > +
> > > +#include <linux/types.h>
> > > +#include <kunit/string-stream.h>
> > > +
> > > +struct kunit;
> > > +
> > > +/**
> > > + * struct kunit_stream - a std::stream style string builder.
> > > + *
> > > + * A std::stream style string builder. Allows messages to be built up and
> > > + * printed all at once.
> > > + */
> > > +struct kunit_stream {
> > > +       /* private: internal use only. */
> > > +       struct kunit *test;
> > > +       const char *level;
> >
> > Is the level changed? See my comment below, but I wonder if this whole
> > struct can go away and the wrappers can just operate on 'struct
> > string_stream' instead.
>
> I was inclined to agree with you when I first read your comment, but
> then I thought about the case that someone wants to add in a debug
> message (of which I currently have none). I think under most
> circumstances a user of kunit_stream would likely want to pick a
> default verbosity that maybe I should provide, but may still want
> different verbosity levels.
>
> The main reason I want to keep the types separate, string_stream vs.
> kunit_stream, is that they are intended to be used differently.
> string_stream is just a generic string builder. If you are using that,
> you are expecting to see someone building the string at some point and
> then doing something interesting with it. kunit_stream really tells
> you specifically that KUnit is putting together a message to
> communicate something to a user of KUnit. It is really used in a very
> specific way, and I wouldn't want to generalize its usage beyond how
> it is currently used. I think in order to preserve the author's
> intention it adds clarity to keep the types separate regardless of how
> similar they might be in reality.
>
> > > +       struct string_stream *internal_stream;
> > > +};
> > > diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
> > > new file mode 100644
> > > index 0000000000000..8bea1f22eafb5
> > > --- /dev/null
> > > +++ b/kunit/kunit-stream.c
> > > @@ -0,0 +1,123 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * C++ stream style string formatter and printer used in KUnit for outputting
> > > + * KUnit messages.
> > > + *
> > > + * Copyright (C) 2019, Google LLC.
> > > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > > + */
> > > +
> > > +#include <kunit/test.h>
> > > +#include <kunit/kunit-stream.h>
> > > +#include <kunit/string-stream.h>
> > > +
> > > +void kunit_stream_add(struct kunit_stream *kstream, const char *fmt, ...)
> > > +{
> > > +       va_list args;
> > > +       struct string_stream *stream = kstream->internal_stream;
> > > +
> > > +       va_start(args, fmt);
> > > +
> > > +       if (string_stream_vadd(stream, fmt, args) < 0)
> > > +               kunit_err(kstream->test,
> > > +                         "Failed to allocate fragment: %s\n",
> > > +                         fmt);
> > > +
> > > +       va_end(args);
> > > +}
> > > +
> > > +void kunit_stream_append(struct kunit_stream *kstream,
> > > +                               struct kunit_stream *other)
> > > +{
> > > +       struct string_stream *other_stream = other->internal_stream;
> > > +       const char *other_content;
> > > +
> > > +       other_content = string_stream_get_string(other_stream);
> > > +
> > > +       if (!other_content) {
> > > +               kunit_err(kstream->test,
> > > +                         "Failed to get string from second argument for appending\n");
> > > +               return;
> > > +       }
> > > +
> > > +       kunit_stream_add(kstream, other_content);
> > > +}
> >
> > Why can't this function be implemented in the string_stream API? Seems
> > valid to want to append one stream to another and that isn't
> > kunit_stream specific.
>
> Fair point. Will do.
>
> > > +
> > > +void kunit_stream_clear(struct kunit_stream *kstream)
> > > +{
> > > +       string_stream_clear(kstream->internal_stream);
> > > +}
> > > +
> > > +void kunit_stream_commit(struct kunit_stream *kstream)
> > > +{
> > > +       struct string_stream *stream = kstream->internal_stream;
> > > +       struct string_stream_fragment *fragment;
> > > +       struct kunit *test = kstream->test;
> > > +       char *buf;
> > > +
> > > +       buf = string_stream_get_string(stream);
> > > +       if (!buf) {
> > > +               kunit_err(test,
> > > +                         "Could not allocate buffer, dumping stream:\n");
> > > +               list_for_each_entry(fragment, &stream->fragments, node) {
> > > +                       kunit_err(test, fragment->fragment);
> > > +               }
> > > +               kunit_err(test, "\n");
> > > +               goto cleanup;
> > > +       }
> > > +
> > > +       kunit_printk(kstream->level, test, buf);
> > > +       kfree(buf);
> > > +
> > > +cleanup:
> >
> > Drop the goto and use an 'else' please.
>
> Will do.
>
> > > +       kunit_stream_clear(kstream);
> > > +}
> > > +
> > > +static int kunit_stream_init(struct kunit_resource *res, void *context)
> > > +{
> > > +       struct kunit *test = context;
> > > +       struct kunit_stream *stream;
> > > +
> > > +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> > > +       if (!stream)
> > > +               return -ENOMEM;
> > > +
> > > +       res->allocation = stream;
> > > +       stream->test = test;
> > > +       stream->internal_stream = alloc_string_stream(test);
> > > +
> > > +       if (!stream->internal_stream)
> > > +               return -ENOMEM;
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static void kunit_stream_free(struct kunit_resource *res)
> > > +{
> > > +       struct kunit_stream *stream = res->allocation;
> > > +
> > > +       if (!string_stream_is_empty(stream->internal_stream)) {
> > > +               kunit_err(stream->test,
> > > +                         "End of test case reached with uncommitted stream entries\n");
> > > +               kunit_stream_commit(stream);
> > > +       }
> > > +}
> > > +
> >
> > Nitpick: Drop this extra newline.
>
> Oops, nice catch.

Not super important, but I don't want you to think that I am ignoring
you. I think you must have unintentionally deleted the last function
in this file, or maybe you are referring to something that I am just
not seeing, but I don't see the extra newline here.

> > > diff --git a/kunit/test.c b/kunit/test.c
> > > index f165c9d8e10b0..29edf34a89a37 100644
> > > --- a/kunit/test.c
> > > +++ b/kunit/test.c
> > > @@ -120,6 +120,12 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
> > >                               test_case->name);
> > >  }
> > >
> > > +void kunit_fail(struct kunit *test, struct kunit_stream *stream)
> >
> > Why doesn't 'struct kunit' have a 'struct kunit_stream' inside of it? It
> > seems that the two are highly related, to the point that it might just
> > make sense to have
>
> A `struct kunit_stream` is usually associated with a message that is
> being built up over time like maybe an expectation; it is meant to
> capture the idea that we might want to send some information out to
> the user pertaining to some thing 'X', but we aren't sure that we
> actually want to send it until 'X' is complete, but do to the nature
> of 'X' it is easier to start constructing the message before 'X' is
> complete.
>
> Consider a complicated expectation, there might be multiple conditions
> that satisfy it and multiple conditions which could make it fail. As
> we start exploring the input to the expectation we gain information
> that we might want to share back with the user if the expectation were
> to fail and we might get that information before we are actually sure
> that the expectation does indeed fail.
>
> When we first step into the expectation we immediately know the
> function name, file name, and line number where we are called and
> would want to put that information into any message we would send to
> the user about this expectation. Next, we might want to check a
> property of the input, it may or may not be enough information on its
> own for the expectation to fail, but we want to share the result of
> the property check with the user regardless, BUT only if the
> expectation as a whole fails.
>
> Hence, we can have multiple `struct kunit_stream`s associated with a
> `struct kunit` active at any given time.
>
> >         struct kunit {
> >                 struct kunit_stream stream;
> >                 ...
> >         };
> >
> > > +{
> > > +       kunit_set_failure(test);
> > > +       kunit_stream_commit(stream);
> >
> > And then this function can just take a test and the stream can be
> > associated with the test directly. Use container_of() to get to the test
> > when the only pointer in hand is for the stream too.
>
> Unfortunately that wouldn't work. See my above explanation.
>
> > > +}
> > > +
> > >  void kunit_init_test(struct kunit *test, const char *name)
> > >  {
> > >         mutex_init(&test->lock);
>
> Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
