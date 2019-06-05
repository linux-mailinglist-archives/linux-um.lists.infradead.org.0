Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E459354CE
	for <lists+linux-um@lfdr.de>; Wed,  5 Jun 2019 02:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfIOmwAxGjiR2rCiByLVSENzr/7Z2/94gEJBqWCJRFo=; b=Dyd6rzjHYoRurK
	UzcoImehmx/E886B+hMsMw+hDJC9XC9uSqKX3Pn8A+8qRqGQZ8IzjrXsuhzhKbwR505rP+MvzvN0A
	sMz7r+wADHk5h5jomNNvfucqf3T5vikhhc6UDNqa52HqWy+8dCGdm1Oov5Zia+chq3Gkdy29k4tiS
	twOo+KWD94Z8dzwGbnXC+mdB5zX6U2htDU165PwEnEma2ywwS+ZcwOo7J9D/RnJiZI6q6lWOm8EpO
	rkNgTodPnizayDU8/JmfrFMljG7zBTyZkJSamWIeCccGZ3iNa2P4Sb/7uT4MXiLdSpd/Zam08L0l+
	cIh2Mg5bpCNzw7euqR1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYK65-0004si-WE; Wed, 05 Jun 2019 00:48:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYK62-0004rT-JD
 for linux-um@lists.infradead.org; Wed, 05 Jun 2019 00:48:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id m15so13230132ljg.13
 for <linux-um@lists.infradead.org>; Tue, 04 Jun 2019 17:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pv23Ci9XYYXbAvdmjUDu6QVKJnotvin7bH7iuxivMig=;
 b=bCfiN04tgowJLuApBvXwZWyNMtGb9FgYGJp5LkSEcg4PdHWnZmIBeM/cM9k5AbYodp
 rettTdhr1CO5CzRe80O5GNP151HRdnuXMuXParmN+k4ysLrvJ8T4FJPz5UBNGPIWWhDv
 jLzSs2o7zt6OpGXykmBbYrEGKSLH0DyvmhFwA2O4C1gJAlb4gCQQYVi8jqNR76aV2CAE
 B26xYkubYvYF6WWvFMWbUtKHUYW3SWHpux/uSw6Ty7qvZxcnWDlOTriysJ/qSBj39HJL
 iN8/XK32e67VWiHpnny1O7oiB03Lzd4/CGvnWXT8rNKGMQku64Dn87Rnbdfu/kl1KQN3
 xajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pv23Ci9XYYXbAvdmjUDu6QVKJnotvin7bH7iuxivMig=;
 b=tt8yL5Dia8Myqk7q1/BHgjYjcTnS+V3yhklQLtlyRzfdyfP8DIlpVlifa3Qs5lpvRz
 iJLZSC2spcsdGElPyee6bzE/gqjFcw//dDgsb3sidWiL35/JmDT6H1VD0ZbJmE1Wdz4J
 o7XvIWCFMvEUSIgZErCYrYFrFQZhWhhRAdSomU+ALZxEPU3QInxTSsEwCXBC9qzkT9RI
 0V2iWuf2zDi1z6+5xylKmpKqu6mWdSrHJ4v3zTtvXa8XkoDy+iZ1QLu2tmRR9T3GgmrT
 28KgZoWh7XflJDYsgboQ2c/TLxlBMCaLlAB+3NmuS66TAwQbIn0RSDjk2YEAwm8NTbI4
 8GrQ==
X-Gm-Message-State: APjAAAWaNTAnGUrhyUC0cb2CUAaUFtM99dLRIhW+L5dNaaFd41afTSh7
 dB9Tom5ELoitF4M56AZOXgPUO1Y97ndi+uQkirFrWw==
X-Google-Smtp-Source: APXvYqxvjJ99N3aai52FzW/2dSKhKjlCCwgFuNgdJiXvkROkaHK9M4UqMQad+SFwjoWlFMwgkqQd/uzHdaUnjHCnq4g=
X-Received: by 2002:a2e:a318:: with SMTP id l24mr6685023lje.36.1559695679940; 
 Tue, 04 Jun 2019 17:47:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-5-brendanhiggins@google.com>
 <20190517175841.F3396216FD@mail.kernel.org>
In-Reply-To: <20190517175841.F3396216FD@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Jun 2019 17:47:48 -0700
Message-ID: <CAFd5g456V4aQUSxxTAizun8ak4zogcAt4-YGgebX2L55Kb-xEg@mail.gmail.com>
Subject: Re: [PATCH v4 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_174806_640475_565B3DA2 
X-CRM114-Status: GOOD (  28.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Fri, May 17, 2019 at 10:58 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-05-14 15:16:57)
> > diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
> > new file mode 100644
> > index 0000000000000..1884f1b550888
> > --- /dev/null
> > +++ b/kunit/kunit-stream.c
> > @@ -0,0 +1,152 @@
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
> > +static const char *kunit_stream_get_level(struct kunit_stream *this)
> > +{
> > +       unsigned long flags;
> > +       const char *level;
> > +
> > +       spin_lock_irqsave(&this->lock, flags);
> > +       level = this->level;
> > +       spin_unlock_irqrestore(&this->lock, flags);
> > +
> > +       return level;
>
> Please remove this whole function and inline it to the one call-site.
>
> > +}
> > +
> > +void kunit_stream_set_level(struct kunit_stream *this, const char *level)
> > +{
> > +       unsigned long flags;
> > +
> > +       spin_lock_irqsave(&this->lock, flags);
> > +       this->level = level;
> > +       spin_unlock_irqrestore(&this->lock, flags);
>
> I don't get the locking here. What are we protecting against? Are tests
> running in parallel using the same kunit_stream? If so, why is the level
> changeable in one call and then adding strings is done in a different
> function call? It would make sense to combine the level setting and
> string adding so that it's one atomic operation if it's truly a parallel
> operation, or remove the locking entirely.

I think you are right. I am not sure it makes sense for two separate
threads to share a kunit_stream; even if locked properly, it would end
up printing out corrupted text.

In anycase, I think it makes sense to decide the level when the stream
is allocated which would sidestep this issue entirely.

> > +}
> > +
> > +void kunit_stream_add(struct kunit_stream *this, const char *fmt, ...)
> > +{
> > +       va_list args;
> > +       struct string_stream *stream = this->internal_stream;
> > +
> > +       va_start(args, fmt);
> > +
> > +       if (string_stream_vadd(stream, fmt, args) < 0)
> > +               kunit_err(this->test, "Failed to allocate fragment: %s\n", fmt);
> > +
> > +       va_end(args);
> > +}
> > +
> > +void kunit_stream_append(struct kunit_stream *this,
> > +                               struct kunit_stream *other)
> > +{
> > +       struct string_stream *other_stream = other->internal_stream;
> > +       const char *other_content;
> > +
> > +       other_content = string_stream_get_string(other_stream);
> > +
> > +       if (!other_content) {
> > +               kunit_err(this->test,
> > +                         "Failed to get string from second argument for appending.\n");
> > +               return;
> > +       }
> > +
> > +       kunit_stream_add(this, other_content);
> > +}
> > +
> > +void kunit_stream_clear(struct kunit_stream *this)
> > +{
> > +       string_stream_clear(this->internal_stream);
> > +}
> > +
> > +void kunit_stream_commit(struct kunit_stream *this)
>
> Should this be rather called kunit_stream_flush()?

So the intention is that the string in the buffer will not get printed
out until commit is called. In this way, you can build up a message
and then decide not to print it. This is useful when you are parsing
through a lot of data that would be useful in debugging a failing or
broken test, but are not yet sure if it is going to pass or not.

I think flush has the connotation, that you are just forcing the
buffer to get written out now, but that it will happen regardless
eventually, where commit has the correct connotation that you *must*
call it in order to write out the data stored in the buffer.

Seems as though I should probably add this distinction to the
kernel-doc comment.

> > +{
> > +       struct string_stream *stream = this->internal_stream;
> > +       struct string_stream_fragment *fragment;
> > +       const char *level;
> > +       char *buf;
> > +
> > +       level = kunit_stream_get_level(this);
> > +       if (!level) {
> > +               kunit_err(this->test,
> > +                         "Stream was committed without a specified log level.\n");
>
> Drop the full-stop?

Whoops, nice catch. Will fix in next revision.

> > +               level = KERN_ERR;
> > +               kunit_stream_set_level(this, level);
> > +       }
> > +
> > +       buf = string_stream_get_string(stream);
> > +       if (!buf) {
> > +               kunit_err(this->test,
>
> Can you grow a local variable for 'this->test'? It's used many times.

Sure, will fix in next revision.

> Also, 'this' is not very kernel idiomatic. We usually name variables by
> their type instead of 'this' which is a keyword in other languages.
> Perhaps it could be named 'kstream'?

Seems reasonable. Will fix in next revision.

> > +                        "Could not allocate buffer, dumping stream:\n");
> > +               list_for_each_entry(fragment, &stream->fragments, node) {
> > +                       kunit_err(this->test, fragment->fragment);
> > +               }
> > +               kunit_err(this->test, "\n");
> > +               goto cleanup;
> > +       }
> > +
> > +       kunit_printk(level, this->test, buf);
> > +       kfree(buf);
> > +
> > +cleanup:
> > +       kunit_stream_clear(this);
> > +}
> > +
> > +static int kunit_stream_init(struct kunit_resource *res, void *context)
> > +{
> > +       struct kunit *test = context;
> > +       struct kunit_stream *stream;
> > +
> > +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
>
> Of course, here it's called 'stream', so maybe it should be 'kstream'
> here too.

Will do.

>
> > +       if (!stream)
> > +               return -ENOMEM;
> > +
> > +       res->allocation = stream;
> > +       stream->test = test;
> > +       spin_lock_init(&stream->lock);
> > +       stream->internal_stream = new_string_stream();
>
> Can new_string_stream() be renamed to alloc_string_stream()? Sorry, I
> just see so much C++ isms in here it's hard to read from the kernel
> developer perspective.

No problem. WIll fix in next revision.

> > +
> > +       if (!stream->internal_stream) {
>
> Nitpick: Please join this to the "allocation" event above instead of
> keeping it separated.

Yeah, that's a lot cleaner. Will do.

> > +               kfree(stream);
> > +               return -ENOMEM;
> > +       }
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
> > +                        "End of test case reached with uncommitted stream entries.\n");
> > +               kunit_stream_commit(stream);
> > +       }
> > +
> > +       destroy_string_stream(stream->internal_stream);
> > +       kfree(stream);
> > +}
> > +
> > +struct kunit_stream *kunit_new_stream(struct kunit *test)
> > +{
> > +       struct kunit_resource *res;
> > +
> > +       res = kunit_alloc_resource(test,
> > +                                  kunit_stream_init,
> > +                                  kunit_stream_free,
> > +                                  test);
> > +
> > +       if (res)
> > +               return res->allocation;
> > +       else
> > +               return NULL;
>
> Don't have if (...) return ...; else return ..., just return instead of
> else.

Sorry. Will fix.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
