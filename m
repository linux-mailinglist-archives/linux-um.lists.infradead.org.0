Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DF1126ED
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 06:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52S7buu6B+FK8th5LrEq68MRg+AlUMWu952nOKF+RBQ=; b=e3D18oMvbw5+E6
	lKWGd7tJqCy45htKGkk1puVCch28XdwjwMolJfm8PQbnp1D9sQsRdfyYnCMIcqd1gdq19kiA4VXIp
	jlqrMAiq68O7m0WzaR20SWgkOwOwhlfvFX0MxEpsV9SJ/FmcxNLlFePhhPc4pYTBkGWejxLSTMFkX
	qHPGRm1PcNlkWoww3o+g4qyBmPczn7GgmEKCQHtZ//KLkd+3lyGIaHOHvFMIqY8r6sw7tt2IDksYm
	q1EPIa/IBv3d/r113oicgFHu6oMXPgedIRtzd0BYN2kgp3IsTwTqjm7L1KnT+his8ihhEA2y4YlWW
	kQE9h1tQFEElyggpA/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMPx8-0002wL-GI; Fri, 03 May 2019 04:37:42 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMPx5-0002vb-82
 for linux-um@lists.infradead.org; Fri, 03 May 2019 04:37:40 +0000
Received: by mail-ot1-x343.google.com with SMTP id a5so624573otb.11
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 21:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MP+BYohbe5InwRfSzvg57aXOQ3N16hg/j/194MGpAY0=;
 b=nX2mqnQH8G7lAq/7boHjf6fgeLW4OhXc8dycc5+By6G9miBNlXzrVPV09oM01sBY2z
 1PY2T/XYJRHqtEONNgq9PADGf03W5G4sziQ4uRTMnqAEoh6iNM5a9Ezoiyo1ndCy7ojW
 tk5gH9WgN5g9NpRotxrQseR6tWEmch2vzDn0sL0k1iRMx7bM8e8KuZGIwI0PZSgcFr3+
 TlFU9bnfKzaF/HkPoJxOnNiQ3CLrmM6khM79ImW9xBb83Molxw1NMYQ6x9BlXbS1s9zs
 S9Wn0BBJ13BpxlnQuKJTgsk8nHAZ3z9hw5P/B+YZkt20RKzyQ4WKZ9zq8VVw1rVYepe+
 8Lqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MP+BYohbe5InwRfSzvg57aXOQ3N16hg/j/194MGpAY0=;
 b=OQvBLDuCg/Xabx5gd8eDMc+WPu+m0AMj6VEwz+7/U1LXv3NcHE3sK4B32yx8bGq0Ol
 O9jNSEvtj8wTH3lRQsazDW4TU2wAB5yUTSOumjLM+JM1g3i5mABBcvIeDXxGwyuRM3dv
 3rPSfQfx9SmFT1skSQF0lTNlplxEdGT8sexUM4/g9TUfAm3ATqXg+mlv0WJqedBjLDeq
 BVLDaC64uXjLbPixsk2D15tuU1cvE3RUfZgBolwI2av7GtDGBmkXzd4jP0Ec2oyHWZbv
 5SZOtTYZO+PLZs2bxw2UmjyA8Eef0Em2ScFv2x998qMN7zYQWJ7FatkP8JMS17jpVyQe
 L0IA==
X-Gm-Message-State: APjAAAUbfVasQ74Qevlf1ewiRplDQe2P9ZcM2Ygz5IvyitUbRyj3gj1f
 ppIMASmf3ofTVJ1KryYyMTlddUoAL2coCL5fT7sdtw==
X-Google-Smtp-Source: APXvYqzr00vtpNCRa2QqJZ42KJSToZ1wauw/4VV+vzP4c9tKhQXBp7ukXjW5JZyxz7qF7iSRxd8GRh/4dSu03CZLLfk=
X-Received: by 2002:a9d:7f19:: with SMTP id j25mr5018212otq.25.1556858257579; 
 Thu, 02 May 2019 21:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-4-brendanhiggins@google.com>
 <1befe456-d981-d726-44f9-ebe3702ee51d@kernel.org>
In-Reply-To: <1befe456-d981-d726-44f9-ebe3702ee51d@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 21:37:26 -0700
Message-ID: <CAFd5g46Ok5rtXUyeHdyoujsdYPq4qwaZwdu3CxY50Gq_iq7B6A@mail.gmail.com>
Subject: Re: [PATCH v2 03/17] kunit: test: add string_stream a std::stream
 like string builder
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_213739_314039_8606B434 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 skhan@linuxfoundation.org, Dan Williams <dan.j.williams@intel.com>,
 kunit-dev@googlegroups.com, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 6:26 PM shuah <shuah@kernel.org> wrote:
>
> On 5/1/19 5:01 PM, Brendan Higgins wrote:
< snip >
> > diff --git a/kunit/Makefile b/kunit/Makefile
> > index 5efdc4dea2c08..275b565a0e81f 100644
> > --- a/kunit/Makefile
> > +++ b/kunit/Makefile
> > @@ -1 +1,2 @@
> > -obj-$(CONFIG_KUNIT) +=                       test.o
> > +obj-$(CONFIG_KUNIT) +=                       test.o \
> > +                                     string-stream.o
> > diff --git a/kunit/string-stream.c b/kunit/string-stream.c
> > new file mode 100644
> > index 0000000000000..7018194ecf2fa
> > --- /dev/null
> > +++ b/kunit/string-stream.c
> > @@ -0,0 +1,144 @@
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
> > +
> > +int string_stream_vadd(struct string_stream *this,
> > +                    const char *fmt,
> > +                    va_list args)
> > +{
> > +     struct string_stream_fragment *fragment;
>
> Since there is field with the same name, please use a different
> name. Using the same name for the struct which contains a field
> of the same name get very confusing and will hard to maintain
> the code.
>
> > +     int len;
> > +     va_list args_for_counting;
> > +     unsigned long flags;
> > +
> > +     /* Make a copy because `vsnprintf` could change it */
> > +     va_copy(args_for_counting, args);
> > +
> > +     /* Need space for null byte. */
> > +     len = vsnprintf(NULL, 0, fmt, args_for_counting) + 1;
> > +
> > +     va_end(args_for_counting);
> > +
> > +     fragment = kmalloc(sizeof(*fragment), GFP_KERNEL);
> > +     if (!fragment)
> > +             return -ENOMEM;
> > +
> > +     fragment->fragment = kmalloc(len, GFP_KERNEL);
>
> This is confusing. See above comment.

Good point. Will fix in the next revision.

< snip >

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
