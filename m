Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421DD8AE88
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNQS2/WA6W7ugwKUCXtvcJ0wKpET0Fi/2T9dCXAGZUY=; b=mQy3ZBFrLYbSR9
	xOS0kQoAdK8t3WAadPlTFIdcEvcGKked9FjVwBfqrdpvWK5rYxyg0DHXQNt9PvCX3N2Zc/2jvXu+W
	LY54FNhcXS7uctvukOs1TEGQ/L9BaRfSOBgdcY/yFmC5vhfwOQwKIh9e5D+7k9aoRzEz3odl5X4hj
	T0kAPcdWBWhMFJWEoB6qmfEEXJn9Z9DhO1k7dYXgAC73FqcfuABvpRODy8k5D0g3pw91OtpLeZVe0
	UMRrqchTcH5/JxSfhD0WLkGkV6tuLFzccCaw/Pno5lNBS4OMdjv/c38po8z+qxR6ZO/DExIN6YlLW
	cLoTwIY7FkpBQ2+3roWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxP0n-0007IC-Ax; Tue, 13 Aug 2019 05:06:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxP0j-0007HB-9H
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:06:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so46891235pfn.6
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 22:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Abf3cK9D+gRrRGwQh2kwak/YzDDkHOqgDtvVTIo4q7A=;
 b=Y+dmDbanwPRKrcGCv4/WQS9jtPyx6cpYSiNcTCluUKOVyeyn7wl8RZe0u1cf6FlML6
 wfRe3v8dcFvKIShJjXRgh8cEGNhzCFLCfZTUSJEGO2Ea0/S9/l8EIDzT2hfdmu4vYl3/
 XIR90pnuI3K4kV1d5Bm11Pn57c+GfE4dVDOOxOsnLShgWMYlA1pJcJoF7sOPZtexCwYP
 ELhxZQwrFnEmjZhgXx2mjuE3HiLK9TadecMdLzAo0eHIWgo1V1G1uOa5P7ZTv3NrW55Q
 IwxyHJePJisriyJmWo1d+yNh53aHnfmOSYFZCbC26Ph2JuMFkmU8c4wQttP2Gfux7zEx
 HKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Abf3cK9D+gRrRGwQh2kwak/YzDDkHOqgDtvVTIo4q7A=;
 b=VaPusrZRobn3UtrS+E1xGgALjV2Q5b72sp2a+lfUZlYpfaElq/IFvM/dEcQxif8psR
 FSU7ndGJPtv5Lf1Vqu5VVJ0BkzKChgWEg8RuwraF9u3kiAIYjHQfv7M5vOYMxfVhJALV
 cc+ywXORLOJHwKzyjqRqcA/g3nQHKYEqNHR1i+pA5RdtKS6EYWNdeSmIOGlmBDDe8Ish
 Q/kdEpdZASrU81WEt54iKEm8fBx76mL+Ac8TOTodoSc1gBLJ+GVQIMhr2zSP01sTaCeL
 GZ26WwYNgDc2rh73GtYCDDnob0HWTG88Z5UshRv+Po2OusMb7jCsOJOEMFebesp1a64Q
 +Yzw==
X-Gm-Message-State: APjAAAVEjD5jqgb5Ox7glNzReK0YbiPSiGBcKT8B5rZ+G/h8+cQT5Lcn
 hfhfjifZY/9bJALZ3/NbVtU/vIsXz4eayHu8VixjAg==
X-Google-Smtp-Source: APXvYqzlm/LZa7vLxmhuF4EQXYFyYKJYlrIat9BhnUUptmEmQR49KGysQZ4JhDoNNZWx7O5yEaH2e2yfA6hMO6s/qoE=
X-Received: by 2002:a63:205f:: with SMTP id r31mr30781941pgm.159.1565672775425; 
 Mon, 12 Aug 2019 22:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-11-brendanhiggins@google.com>
 <20190813042455.4A04320644@mail.kernel.org>
In-Reply-To: <20190813042455.4A04320644@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 22:06:04 -0700
Message-ID: <CAFd5g46LHq1sQaio2Vj5jt54YN-Y2HuCT8FbALQhJoekkYJ-uQ@mail.gmail.com>
Subject: Re: [PATCH v12 10/18] kunit: test: add tests for kunit test abort
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220618_766108_8106E202 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 12, 2019 at 9:24 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 11:24:13)
> > +
> > +static int kunit_try_catch_test_init(struct kunit *test)
> > +{
> > +       struct kunit_try_catch_test_context *ctx;
> > +
> > +       ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
>
> Can this fail? Should return -ENOMEM in that case?

Yes, I should do that.

> > +       test->priv = ctx;
> > +
> > +       ctx->try_catch = kunit_kmalloc(test,
> > +                                      sizeof(*ctx->try_catch),
> > +                                      GFP_KERNEL);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
