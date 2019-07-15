Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A369D69
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 23:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FNdWQeEfqxBKV33+DEXZouGtuJbX/5RZnqw9lf9mDw=; b=gCCB6giIqMLlkF
	cPjv1FMFliLsvSyCMb7i1JtEBchcTdRTblu5WP79Ztufa++JviY9H2A9zwwSgA5Ot9sWXU1CLa4qJ
	o9k1SmUqOJzRfbHG4p/lxce9OstqrPnt5U9GaGX4WgFQGhGospzXcbPsH6jZqeF5D1vCyHACk3GfU
	WLTuvQlqSuiYUFfMRvqLM/G+RKH5PhaUWLP7hVjIrjBVmSgQOZEGt02U6Jm0Bn8xAto8rgEluUmES
	Ga7vvN28Hw0C45dfV7ZRMwQtvhxk3YzfsXxy9TKTqJcTxOWJRnf7hPfGS1qCOBl8M7RTZ/i9REjho
	yL46zCVYG+fuS8HeAOMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8GW-0000jB-HF; Mon, 15 Jul 2019 21:12:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8GT-0000i0-7A
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 21:12:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so7991797pff.9
 for <linux-um@lists.infradead.org>; Mon, 15 Jul 2019 14:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4CDzG2nmXC81q5V7RsyjpQsyLHi2FCKjkCzPjAyP/Nk=;
 b=WRG0F23qChjAaAEgVWxfTCyWoETWRuvlXf0OUFLJDpPNc+E2kBPo6Rnc2kO3CcSo8G
 U0ec28X2fqdXQFKacK77IxmmqWYW8YqJUqkgi+P1l8mi6KsZMO7OvwKgi6/xkszbduVQ
 hD/v9MTtep6h8K64P61TxJ9ZG8IgZhIuQrmmmz2ypp8V+U7ePGiNcVJ/X3TQ+VlGj4UD
 qlfFx5qTBL83iRJxgnoJ4zXz0vPxyqaLzf50gf9DQI2eLnJOCh4BAdDg80wO+2d9wdwF
 fLa8cxyJAimCEmw8TlDUBnkv1EHLEb2gwvdV+aaipr2FEQ6Dx/zbHufCUCF7kruKS4w7
 b2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4CDzG2nmXC81q5V7RsyjpQsyLHi2FCKjkCzPjAyP/Nk=;
 b=P6X8lILBMjM2xmNgZfQNn/YGxFA6bZXCGMyZact4CVKwAa8UEU8f5ZnetWKBQvAmnj
 9be/hOY3pl3LqoYmQ06KwPrJ9WXiL1eyDNQxIbAQxH0ie/0wCjeGEeHEhgR1Hk5ztBtR
 5O+KXVdwXru+VxnmorCheuKDDW1kUsGGXAwp4qw34tf1VniX+sggyiDi+RetZVgOgbOa
 uzBYeDrdWlr0mlg3KptK4o1ZrfW84smmF7woNIFOACYRLdSH5D+rxCQalBfI2CH7SQl+
 tCPkfo37lfJwRCfSWJn94z/h5A2E7YQ4fYVsn7nhzO9tpaEuERqFeIoORvwSfKwrWdti
 1kiQ==
X-Gm-Message-State: APjAAAWemHvByzXAQrhRsGwTPxBfN9gQ0utun5QCEDWz65csYmd18tIS
 vyqXRRznJAEiyOfqfRjq5aKkD1FMslFwRhKGqvCtEA==
X-Google-Smtp-Source: APXvYqy2GD/ajXWafuN0ZtZDTDo+qnQ+zqnj+QLNdPkc/o2HQFKV7mN3zMJfjMYCcft5I0utJpW+dyc42Dwa4FsbkTA=
X-Received: by 2002:a17:90b:f0e:: with SMTP id
 br14mr31423391pjb.117.1563225121828; 
 Mon, 15 Jul 2019 14:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-4-brendanhiggins@google.com>
 <20190715204356.4E3F92145D@mail.kernel.org>
In-Reply-To: <20190715204356.4E3F92145D@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 15 Jul 2019 14:11:50 -0700
Message-ID: <CAFd5g47481sRaez=yEJN4_ghiXZbxayk1Y04tAZpuzPLsmnhKg@mail.gmail.com>
Subject: Re: [PATCH v9 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_141205_290522_F2EDB7E6 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Jul 15, 2019 at 1:43 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-12 01:17:29)
> > diff --git a/include/kunit/string-stream.h b/include/kunit/string-stream.h
> > new file mode 100644
> > index 0000000000000..0552a05781afe
> > --- /dev/null
> > +++ b/include/kunit/string-stream.h
> > @@ -0,0 +1,49 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * C++ stream style string builder used in KUnit for building messages.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#ifndef _KUNIT_STRING_STREAM_H
> > +#define _KUNIT_STRING_STREAM_H
> > +
> > +#include <linux/types.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/kref.h>
>
> What is this include for? I'd expect to see linux/list.h instead.

Sorry about that. I used to reference count this before I made it a
kunit managed resource.

> > +#include <stdarg.h>
> > +
> > +struct string_stream_fragment {
> > +       struct list_head node;
> > +       char *fragment;
> > +};
> > +
> > +struct string_stream {
> > +       size_t length;
> > +       struct list_head fragments;
> > +       /* length and fragments are protected by this lock */
> > +       spinlock_t lock;
> > +};
> > +
> > diff --git a/kunit/string-stream.c b/kunit/string-stream.c
> > new file mode 100644
> > index 0000000000000..0463a92dad74b
> > --- /dev/null
> > +++ b/kunit/string-stream.c
> > @@ -0,0 +1,147 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * C++ stream style string builder used in KUnit for building messages.
> > + *
> > + * Copyright (C) 2019, Google LLC.
> > + * Author: Brendan Higgins <brendanhiggins@google.com>
> > + */
> > +
> > +#include <linux/list.h>
> > +#include <linux/slab.h>
> > +#include <kunit/string-stream.h>
> > +#include <kunit/test.h>
> > +
> > +int string_stream_vadd(struct string_stream *stream,
> > +                      const char *fmt,
> > +                      va_list args)
> > +{
> > +       struct string_stream_fragment *frag_container;
> > +       int len;
> > +       va_list args_for_counting;
> > +       unsigned long flags;
> > +
> > +       /* Make a copy because `vsnprintf` could change it */
> > +       va_copy(args_for_counting, args);
> > +
> > +       /* Need space for null byte. */
> > +       len = vsnprintf(NULL, 0, fmt, args_for_counting) + 1;
> > +
> > +       va_end(args_for_counting);
> > +
> > +       frag_container = kmalloc(sizeof(*frag_container), GFP_KERNEL);
>
> This is confusing in that it allocates with GFP_KERNEL but then grabs a
> spinlock to add and remove from the fragment list. Is it ever going to
> be called from a place where it can't sleep? If so, the GFP_KERNEL needs
> to be changed. Otherwise, maybe a mutex would work better to protect
> access to the fragment list.

Right, using a mutex here would be fine. Sorry, I meant to filter for
my usage of them after you asked me to remove them in 01, but
evidently I forgot to do so. Sorry, will fix.

> I also wonder if it would be better to just have a big slop buffer of a
> 4K page or something so that we almost never have to allocate anything
> with a string_stream and we can just rely on a reader consuming data
> while writers are writing. That might work out better, but I don't quite
> understand the use case for the string stream.

That makes sense, but might that also waste memory since we will
almost never need that much memory?

> > +       if (!frag_container)
> > +               return -ENOMEM;
> > +
> > +       frag_container->fragment = kmalloc(len, GFP_KERNEL);
> > +       if (!frag_container->fragment) {
> > +               kfree(frag_container);
> > +               return -ENOMEM;
> > +       }
> > +
> > +       len = vsnprintf(frag_container->fragment, len, fmt, args);
> > +       spin_lock_irqsave(&stream->lock, flags);
> > +       stream->length += len;
> > +       list_add_tail(&frag_container->node, &stream->fragments);
> > +       spin_unlock_irqrestore(&stream->lock, flags);
> > +
> > +       return 0;
> > +}
> > +
> [...]
> > +
> > +bool string_stream_is_empty(struct string_stream *stream)
> > +{
> > +       bool is_empty;
> > +       unsigned long flags;
> > +
> > +       spin_lock_irqsave(&stream->lock, flags);
>
> I'm not sure what benefit grabbing the lock is having here. If the list
> isn't empty after this is called then the race isn't resolved by
> grabbing and releasing the lock. The function is returning stale data in
> that case.

Good point, I didn't realize list_empty was protected by READ_ONCE. Will fix.

> > +       is_empty = list_empty(&stream->fragments);
> > +       spin_unlock_irqrestore(&stream->lock, flags);
> > +
> > +       return is_empty;
> > +}
> > +
> > +static int string_stream_init(struct kunit_resource *res, void *context)
> > +{
> > +       struct string_stream *stream;
> > +
> > +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> > +       if (!stream)
> > +               return -ENOMEM;
> > +
> > +       res->allocation = stream;
> > +       INIT_LIST_HEAD(&stream->fragments);
> > +       spin_lock_init(&stream->lock);
> > +
> > +       return 0;
> > +}
> > +
> > +static void string_stream_free(struct kunit_resource *res)
> > +{
> > +       struct string_stream *stream = res->allocation;
> > +
> > +       string_stream_clear(stream);
> > +       kfree(stream);
> > +}
> > +
> > +struct string_stream *alloc_string_stream(struct kunit *test)
> > +{
> > +       struct kunit_resource *res;
> > +
> > +       res = kunit_alloc_resource(test,
> > +                                  string_stream_init,
> > +                                  string_stream_free,
> > +                                  NULL);
> > +
> > +       if (!res)
> > +               return NULL;
> > +
> > +       return res->allocation;
>
> Maybe kunit_alloc_resource() should just return res->allocation, or
> NULL, so that these functions can be simplified to 'return
> kunit_alloc_resource()'? Does the caller ever care to do anything with
> struct kunit_resource anyway?

Another good point. I think originally I thought it might, but now
with the mandatory init function, the user has to provide a function
where they can do the init work. They might as well do it there. Will
fix.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
