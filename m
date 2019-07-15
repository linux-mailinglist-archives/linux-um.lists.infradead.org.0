Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A1669CFB
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 22:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjP0IyMtxop3OWe5Qf9t/hyKWx2wAJZtAIC36ZO5tho=; b=cyJ7AjsOM/Jbuw
	6tqUk3itoLHOsyOKJ7P67WO0pfIpvA80nXJXWvG3+erYp+7gDZaWZQY6TljL2sbsPt3aCA13X06oX
	HA/Hda/nH5FtdLfzq0M2gYecvMfd7jfnzzvAHMDw7iyHcnJGIOkxqSUyzarWQrq2OeN3KknP4bdxm
	6MKJ6En619duyiudpY1BInj6evg3JIID9mJUDOsa+39WisuL7jFNlXa2J0kW0xHsjYOQiObF91squ
	NUBFOCf33+BY3PHKxKQYPVETfu8opIfjspyXnLaabSLhnmZbS2zeD8MKMfco1UjzY8gNjdgE7JSv4
	tXb5hR1h/ZAOjglLqbOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn7pI-0007lK-0z; Mon, 15 Jul 2019 20:44:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn7pE-0007kg-Uv
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 20:43:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E3F92145D;
 Mon, 15 Jul 2019 20:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563223436;
 bh=+IIfFnKIOjWTmwaRJEChc9l3CevcKSbzmFOtE/evOAU=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=2D/DWnjPJfNBG7NYPEoSnof8ifxB1rawCM7/CUbrnZIPW3Zi2YWorHQGF6/z75/6L
 RKAXw2zM/5nEvZ1RkvkBKTg0FcUf6B9HpAvuQUUd25YVNCdUqRP/ramxo68k4WPlMp
 cJg+sqLS8pPS0/aDekjj4QIsITQLRDIGfdmOTsao=
MIME-Version: 1.0
In-Reply-To: <20190712081744.87097-4-brendanhiggins@google.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-4-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
Subject: Re: [PATCH v9 03/18] kunit: test: add string_stream a std::stream
 like string builder
User-Agent: alot/0.8.1
Date: Mon, 15 Jul 2019 13:43:55 -0700
Message-Id: <20190715204356.4E3F92145D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_134357_035940_E474EF7B 
X-CRM114-Status: GOOD (  15.74  )
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

Quoting Brendan Higgins (2019-07-12 01:17:29)
> diff --git a/include/kunit/string-stream.h b/include/kunit/string-stream.h
> new file mode 100644
> index 0000000000000..0552a05781afe
> --- /dev/null
> +++ b/include/kunit/string-stream.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * C++ stream style string builder used in KUnit for building messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_STRING_STREAM_H
> +#define _KUNIT_STRING_STREAM_H
> +
> +#include <linux/types.h>
> +#include <linux/spinlock.h>
> +#include <linux/kref.h>

What is this include for? I'd expect to see linux/list.h instead.

> +#include <stdarg.h>
> +
> +struct string_stream_fragment {
> +       struct list_head node;
> +       char *fragment;
> +};
> +
> +struct string_stream {
> +       size_t length;
> +       struct list_head fragments;
> +       /* length and fragments are protected by this lock */
> +       spinlock_t lock;
> +};
> +
> diff --git a/kunit/string-stream.c b/kunit/string-stream.c
> new file mode 100644
> index 0000000000000..0463a92dad74b
> --- /dev/null
> +++ b/kunit/string-stream.c
> @@ -0,0 +1,147 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * C++ stream style string builder used in KUnit for building messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <linux/list.h>
> +#include <linux/slab.h>
> +#include <kunit/string-stream.h>
> +#include <kunit/test.h>
> +
> +int string_stream_vadd(struct string_stream *stream,
> +                      const char *fmt,
> +                      va_list args)
> +{
> +       struct string_stream_fragment *frag_container;
> +       int len;
> +       va_list args_for_counting;
> +       unsigned long flags;
> +
> +       /* Make a copy because `vsnprintf` could change it */
> +       va_copy(args_for_counting, args);
> +
> +       /* Need space for null byte. */
> +       len = vsnprintf(NULL, 0, fmt, args_for_counting) + 1;
> +
> +       va_end(args_for_counting);
> +
> +       frag_container = kmalloc(sizeof(*frag_container), GFP_KERNEL);

This is confusing in that it allocates with GFP_KERNEL but then grabs a
spinlock to add and remove from the fragment list. Is it ever going to
be called from a place where it can't sleep? If so, the GFP_KERNEL needs
to be changed. Otherwise, maybe a mutex would work better to protect
access to the fragment list.

I also wonder if it would be better to just have a big slop buffer of a
4K page or something so that we almost never have to allocate anything
with a string_stream and we can just rely on a reader consuming data
while writers are writing. That might work out better, but I don't quite
understand the use case for the string stream.

> +       if (!frag_container)
> +               return -ENOMEM;
> +
> +       frag_container->fragment = kmalloc(len, GFP_KERNEL);
> +       if (!frag_container->fragment) {
> +               kfree(frag_container);
> +               return -ENOMEM;
> +       }
> +
> +       len = vsnprintf(frag_container->fragment, len, fmt, args);
> +       spin_lock_irqsave(&stream->lock, flags);
> +       stream->length += len;
> +       list_add_tail(&frag_container->node, &stream->fragments);
> +       spin_unlock_irqrestore(&stream->lock, flags);
> +
> +       return 0;
> +}
> +
[...]
> +
> +bool string_stream_is_empty(struct string_stream *stream)
> +{
> +       bool is_empty;
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&stream->lock, flags);

I'm not sure what benefit grabbing the lock is having here. If the list
isn't empty after this is called then the race isn't resolved by
grabbing and releasing the lock. The function is returning stale data in
that case.

> +       is_empty = list_empty(&stream->fragments);
> +       spin_unlock_irqrestore(&stream->lock, flags);
> +
> +       return is_empty;
> +}
> +
> +static int string_stream_init(struct kunit_resource *res, void *context)
> +{
> +       struct string_stream *stream;
> +
> +       stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> +       if (!stream)
> +               return -ENOMEM;
> +
> +       res->allocation = stream;
> +       INIT_LIST_HEAD(&stream->fragments);
> +       spin_lock_init(&stream->lock);
> +
> +       return 0;
> +}
> +
> +static void string_stream_free(struct kunit_resource *res)
> +{
> +       struct string_stream *stream = res->allocation;
> +
> +       string_stream_clear(stream);
> +       kfree(stream);
> +}
> +
> +struct string_stream *alloc_string_stream(struct kunit *test)
> +{
> +       struct kunit_resource *res;
> +
> +       res = kunit_alloc_resource(test,
> +                                  string_stream_init,
> +                                  string_stream_free,
> +                                  NULL);
> +
> +       if (!res)
> +               return NULL;
> +
> +       return res->allocation;

Maybe kunit_alloc_resource() should just return res->allocation, or
NULL, so that these functions can be simplified to 'return
kunit_alloc_resource()'? Does the caller ever care to do anything with
struct kunit_resource anyway?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
