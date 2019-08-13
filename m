Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EA38AE97
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRicAYL30XXgOc0Spk9wXN8AqeFqoQnwHKDRMU9C13I=; b=DBe3y/XW84CS/X
	RT5CGNf8F4U3ha917uAGr+nE4ZX4TXtGBS+6kRidRjzCH9GA0+lsoRWRZj+CQNf45LGd+2TeyXaQB
	bYCuRSiJyyqCY7DrOVPdA+C75asVVNObxJ9hFU3cEhpCoTcqfgsiKPPYlBHR19yIl6Kh/uHznk05S
	1IgZfJXV+td+g5/KEyMUnhKROUgE2PiK9Wgx4JyGpbGP+LoNJxsOoCIBbLoMABUl/3BrkWubr/QKt
	J0UAecJc1pqGnpi3cS6NKgwS7KiClnv6jiRoc+bcoON5fKBAVvnuGzvHZLQhrmYXFR51l5k7wjhGb
	xpTtHxJRecBf2oorNXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxP42-0007bH-66; Tue, 13 Aug 2019 05:09:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxP3z-0007as-DY
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:09:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so9806474pgn.0
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 22:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uLkfmiy/QyxG+42Kpd1Hh2gG09JBSRi1kuJ0irEOT+Q=;
 b=blOJdc2kt55ZqQDvPUZbAMrG0e9V6Lpz+glDC3wqeZ0WFkpdzH+BHVuWLKpOnhb42G
 g/4gIqAUYUWwrSZVnoWlA0+3BTuFFHTn4QIkPhZ/yY/qHdFseTm5A1T8f5E1IwOIGPkQ
 NjL2X3JkoAgV9wX66vJ01slCy0p6rnZ7bkyjxanoLsFcwNNC9ezGHFtGPQthuBsXEPdD
 Vzi/25vZpUBOV4gIKVVTs3IY9Dq9AiSUtfWFy0iWSPQYG787ViekPjFY+1C9grp4yxiQ
 WMAj2QOcebo3fC3yliGOOPA8v9/MAYuJN9q8LYDdlO8ROvEqJbK4dyCfU63RlOwjE9t3
 XXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uLkfmiy/QyxG+42Kpd1Hh2gG09JBSRi1kuJ0irEOT+Q=;
 b=L4adLBW/FhXrQTcmIdvG5G+r2Msri+UThvfSaCoAFQPpeojeGUdSqBSFLCvdPVyXSp
 SPPwkT8IzhaQF7ng8nwwW+3AXHvkeadzo4yMHN6Evc7OGYw/SD/h4txSqPThBKz5pncT
 AMeHL6CLBBuqYhwcBubZGBNJM3YOKfJ4qndckuthcPrkRfoaWwkw2UN8QeC2xAFe6bRn
 qwtUnMiPNQF4brfPvBLxENdOTfYs5GL/9EgAz0yuUIIuh+sp3e9Ml074r+jJ9k0LNa0w
 3y7C0tumzFIbl/SedKRrASsIyeKd5fmrmLf2OwMaFZRNDvI1Kmr49lh16apk7mQoiviK
 RRnQ==
X-Gm-Message-State: APjAAAUQ1Mt7LGFNLN/QRPby4HROvQ6PmG/bsO35RJoD8Iv5HMgPs/bF
 ZE81LFnqwBTq3JPtz4DC9zZ4nGkUAyZxCz2ugIBpqw==
X-Google-Smtp-Source: APXvYqwuRvdkQRBufOH1je8RsECuoe8PsScuGBBjY118Ufh882DHOjHaTVKhOCRIYEV6VNsZUpt68lWBTKVfNRYZXa8=
X-Received: by 2002:a17:90a:c391:: with SMTP id
 h17mr524990pjt.131.1565672978100; 
 Mon, 12 Aug 2019 22:09:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-12-brendanhiggins@google.com>
 <20190813045510.C1D6E206C2@mail.kernel.org>
In-Reply-To: <20190813045510.C1D6E206C2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 22:09:26 -0700
Message-ID: <CAFd5g47jrUd+ES4AaWsLDRCfsGiKDB-rOP6TR-NdymCeVAK3Kg@mail.gmail.com>
Subject: Re: [PATCH v12 11/18] kunit: test: add the concept of assertions
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220939_548040_89D8BA3A 
X-CRM114-Status: GOOD (  21.86  )
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

On Mon, Aug 12, 2019 at 9:55 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 11:24:14)
> > Add support for assertions which are like expectations except the test
> > terminates if the assertion is not satisfied.
> >
> > The idea with assertions is that you use them to state all the
> > preconditions for your test. Logically speaking, these are the premises
> > of the test case, so if a premise isn't true, there is no point in
> > continuing the test case because there are no conclusions that can be
> > drawn without the premises. Whereas, the expectation is the thing you
> > are trying to prove. It is not used universally in x-unit style test
> > frameworks, but I really like it as a convention.  You could still
> > express the idea of a premise using the above idiom, but I think
> > KUNIT_ASSERT_* states the intended idea perfectly.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>
> > + * Sets an expectation that the values that @left and @right evaluate to are
> > + * not equal. This is semantically equivalent to
> > + * KUNIT_ASSERT_TRUE(@test, strcmp((@left), (@right))). See KUNIT_ASSERT_TRUE()
> > + * for more information.
> > + */
> > +#define KUNIT_ASSERT_STRNEQ(test, left, right)                                \
> > +               KUNIT_BINARY_STR_NE_ASSERTION(test,                            \
> > +                                             KUNIT_ASSERTION,                 \
> > +                                             left,                            \
> > +                                             right)
> > +
> > +#define KUNIT_ASSERT_STRNEQ_MSG(test, left, right, fmt, ...)                  \
> > +               KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,                        \
> > +                                                 KUNIT_ASSERTION,             \
> > +                                                 left,                        \
> > +                                                 right,                       \
> > +                                                 fmt,                         \
>
> Same question about tabbing too.

Yep. WIll fix.

> > diff --git a/kunit/test-test.c b/kunit/test-test.c
> > index 88f4cdf03db2a..058f3fb37458a 100644
> > --- a/kunit/test-test.c
> > +++ b/kunit/test-test.c
> > @@ -78,11 +78,13 @@ static int kunit_try_catch_test_init(struct kunit *test)
> >         struct kunit_try_catch_test_context *ctx;
> >
> >         ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> > +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
>
> Ah ok. Question still stands if kunit_kzalloc() should just have the
> assertion on failure.

Right. In the previous patch KUNIT_ASSERT_* doesn't exist yet, so I
can't use it. And rather than fall back to return -ENOMEM like I
should have, I evidently forgot to do that.

> >         test->priv = ctx;
> >
> >         ctx->try_catch = kunit_kmalloc(test,
> >                                        sizeof(*ctx->try_catch),
> >                                        GFP_KERNEL);
> > +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->try_catch);
> >

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
