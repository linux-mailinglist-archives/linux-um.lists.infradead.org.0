Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159421270C
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 07:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGwoDQpQEW7HH5vNrD7OElMARKEsLJYV/UKyX1YLlv4=; b=em0htS9dS7WsST
	vUJFgB2kxTCgmjO9oeiO4Gez5EUDTC9nkGXFLEQxoLrJar4nNjqi9sJScZmm3enSPZnDm5GhFxm4d
	Lb3VU1zN+NA32eHNagLiAqJ6qRqBa7EzAStAKGK8ilP0fUS0gLD1YkO1rOMvHKaCtZz4mTlIrMz4Q
	spquc5iwm3Wkvut49XxMs5mwfvJqoMHc9ozfFle3W/63mZnvQrpCAszk0J7Od1fdHGMw1p6/+uB3t
	brVoVyFoWBFBiLl+Nj374WBiq1mp6cqw5fifsAE88kLrl5n4jqFsd1Gua5n0z6fx6ySuPhoUD+R9s
	2tqaZRSWGrk+dzEjXVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMQak-0005k7-LI; Fri, 03 May 2019 05:18:38 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMQah-0005jR-QY
 for linux-um@lists.infradead.org; Fri, 03 May 2019 05:18:37 +0000
Received: by mail-ot1-x342.google.com with SMTP id e108so4244427ote.10
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 22:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TcYMhvle0qn3Vbr1jw5wZlfwobq39YCNyqpLb7cb7Ao=;
 b=vMgoD4BZW5GJfaQp5wHB4n5Uh0dHYfDvtMT6no12+p0edzsKljaBNtH2QSDc0E6VzT
 LcuVJrv7cdGqX7U8FfKi5bagOC/nhHdsiKYsGPft1mReUq108TVFisXe9TJrijP3ncN9
 v39q83CXeT5lkt4WLd/fwqU8g5riscYutv4Dl0z3LH4QLnkrqcMdMPzrzbEAqplHU0Uu
 m3PA8EGRjwXV1jBeELzeCCKDGehqdroKwQf1lX98y7iQ89oh7pPsirzbD3JpTdCcD6Pl
 9jznQM6AV2RqS1bTQE7nMwTk67da6P41iEI1afzG3TYud6oBdVc8/EIcpi2ctCF9A2Zz
 QXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TcYMhvle0qn3Vbr1jw5wZlfwobq39YCNyqpLb7cb7Ao=;
 b=ctno4f2bKlCBNTe7YIbmzqDDmTOIR9Zuc646DlCBKIVALAx3pAJsRHVuzcI22gIBYW
 zW3hrZ6HfuSCe+A92+VvYn5boeTOeLmHRXESuyNcZct6jZWtkSJq95PeuUpD1o30A8V6
 lrh2mdwzVwxlb9mdT7+BGppvg+vh9fnSI+idDZ51jZVzY8COM8qb7Q1haMJleNzFVi6w
 3LOvYe/vHRXKA5RiZ8FzfLYQ9VxuWvyX7iJRj0HSXbUQcOyYwzJos2BxPlXtx1nzX/va
 XTVJ/mfqbbSiSTUVlL0jZO3FrVQ2TSawbFAthd3I6buu0+gD70OE9o4CZw1ioAdYOm1x
 sMwQ==
X-Gm-Message-State: APjAAAWimDgpjqGmygqWK0ZkwT83Rs74oZhLq5r8vRWTPVDRCl7iYKe0
 6bWoRbgpvBusfEgSIsznFQbIQcpAiB6CfBQ8Q3ppZQ==
X-Google-Smtp-Source: APXvYqyA2rSR/zhocpuvfAEjnR+/hEY11wb5Z34WyJg2tb2IGWD/sjsI629/w4anWfW9OX32ft4Cf8TKrI7DL3H8Uik=
X-Received: by 2002:a05:6830:204a:: with SMTP id
 f10mr4960513otp.83.1556860714114; 
 Thu, 02 May 2019 22:18:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-8-brendanhiggins@google.com>
 <d4934565-9b41-880e-3bbe-984224b50fac@kernel.org>
In-Reply-To: <d4934565-9b41-880e-3bbe-984224b50fac@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 22:18:22 -0700
Message-ID: <CAFd5g44ex8B71K78V7-kRqcRw18Jou_c0KFtTR7wBpArw+P+MQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/17] kunit: test: add initial tests
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_221835_883576_43A815C6 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Thu, May 2, 2019 at 6:27 PM shuah <shuah@kernel.org> wrote:
>
> On 5/1/19 5:01 PM, Brendan Higgins wrote:
> > Add a test for string stream along with a simpler example.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> >   kunit/Kconfig              | 12 ++++++
> >   kunit/Makefile             |  4 ++
> >   kunit/example-test.c       | 88 ++++++++++++++++++++++++++++++++++++++
> >   kunit/string-stream-test.c | 61 ++++++++++++++++++++++++++
> >   4 files changed, 165 insertions(+)
> >   create mode 100644 kunit/example-test.c
> >   create mode 100644 kunit/string-stream-test.c
> >
> > diff --git a/kunit/Kconfig b/kunit/Kconfig
> > index 64480092b2c24..5cb500355c873 100644
> > --- a/kunit/Kconfig
> > +++ b/kunit/Kconfig
> > @@ -13,4 +13,16 @@ config KUNIT
> >         special hardware. For more information, please see
> >         Documentation/kunit/
> >
> > +config KUNIT_TEST
> > +     bool "KUnit test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables KUnit test to test KUnit.
> > +
>
> Please add a bit more information on what this config option
> does. Why should user care to enable it?
>
> > +config KUNIT_EXAMPLE_TEST
> > +     bool "Example test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables example KUnit test to demo features of KUnit.
> > +
>
> Same here.

Sounds reasonable. Will fix in the next revision.

< snip >

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
