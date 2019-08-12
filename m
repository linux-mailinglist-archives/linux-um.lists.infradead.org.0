Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965128AB92
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 01:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbzvQs9cdqfRWlZrJUz1SyipedszDmdcZMOm1ZtreCY=; b=Kbp5MOWtU90Zv5
	t5+8KpJET3OY8zHaVP1JjuKEfwGefUlU40kae20RNyghkOzwOYgc9LzPFsSxn7jPlW5FW98ZF5WeG
	B24MUUnrrAXeyQJ40qy6D6G3Dcl7K0W0qx8TxmoDPJxDh0Qoh4GMAdXVZGH8giqcsEYhzuSPvgtud
	HDGQRRSD7Gep8bV0P6nFafQlioGc4Ttwky1nxgAZ/EsKSFGQpSVhIw1vXJdGJhJD2/EFpYms/kVIa
	DLrPf4Znw0AQ6YdEh9WgvQQFRbQClOmPrbNb4POebvZf60XmqVsmlEruQ1HlFLL3RwGe8XtQ55BAI
	zB1Z7JX0B2euTYIyK/nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKBC-0006kV-CE; Mon, 12 Aug 2019 23:56:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKB8-0006k0-SG
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 23:56:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id c81so1504398pfc.11
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 16:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gYpSAuCXXKxryh8QTeN+G2zHTLzdvz4q0W6bw5kxZF4=;
 b=kj+TnowRhwNBHJOh8ghz79tlvll8x/4UGw5bdSUzfSM675Bmppn0T+5pwwMqUi1Pj8
 SkfxC53wkTjuPEqLDzqpMT8o02usB1hT7ISXFNR37RoScwW9mBXE4G6OWWcEhGxQ4RjE
 ZULQCeKPfhmyKaUvhvxsP1ztH072L3pIFOOb1mQPoepGl9JYtada5S4xJGf8kTW6G2ed
 agtpkDcP4Se/8cfElAOE/jMH6pWLmTG0sCRAYFHxhMUFNN99If6/5pZXWUcydlo5gP79
 cH+LRfP7b/BQG+d1ym6KyAQRfa3JaLfiK6f13kXjD96rm3bbdFV/J9GFHUpWjzV//M/H
 yS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gYpSAuCXXKxryh8QTeN+G2zHTLzdvz4q0W6bw5kxZF4=;
 b=s9NKRmyRLClgN0XeLUq2xvlDPWU4lO41WBfrLisKM75Sgljln6HPzU+U7jvi9AfKNL
 43mjIL+63JQqs6tvYP1ssqCe7Tv4+pybTrqe9re0lWrTP6+i+T+zYkPgh4+2xH5OJsWB
 WfTnYayl5QiwuZZ++5Fi2rmVeCoJVQN5GkNS6P/0nXsEW2OhOw3f2dfx3p/8HD83EwJZ
 kVezX+L+iFreAreAG6shT6yU0Ls5VVHvUCD1COM7ZQGGnyj6VmGdoemxNcGpUixvNZiV
 4P39tHCTApSogiOwcxS59YcMEqs8pLTRMPpGSKrUiC12blMzxmQbCLpVgDr4g8OkBqb7
 2LYA==
X-Gm-Message-State: APjAAAULeuMPOuAsHL/QXf1qfN16bKN70ZeUO4C6RYgG59rWrUKNvWWm
 gctgRO9p9YHikgjXAO8ANRxhnrgrPIeCoqV/AXyBjg==
X-Google-Smtp-Source: APXvYqw7Md+FhMdhe7gt7ZbaYFjad4Qutk9q143YLYnyDZF1R0tUF3skBOerqPAJS3PaDxgm1xGa9mrupUlIDIlaGXw=
X-Received: by 2002:a63:b919:: with SMTP id z25mr31882885pge.201.1565654201390; 
 Mon, 12 Aug 2019 16:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-5-brendanhiggins@google.com>
 <20190812234644.E054D20679@mail.kernel.org>
In-Reply-To: <20190812234644.E054D20679@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 16:56:29 -0700
Message-ID: <CAFd5g44huOiR9B0H1C2TtiPy63BDuwi_Qpb_exF3zmT3ttV8eg@mail.gmail.com>
Subject: Re: [PATCH v12 04/18] kunit: test: add assertion printing library
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_165642_937942_6949967D 
X-CRM114-Status: GOOD (  17.44  )
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

On Mon, Aug 12, 2019 at 4:46 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 11:24:07)
> > Add `struct kunit_assert` and friends which provide a structured way to
> > capture data from an expectation or an assertion (introduced later in
> > the series) so that it may be printed out in the event of a failure.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>
> Just some minor nits below
>
> > diff --git a/include/kunit/assert.h b/include/kunit/assert.h
> > new file mode 100644
> > index 0000000000000..55f1b88b0cb4d
> > --- /dev/null
> > +++ b/include/kunit/assert.h
> > @@ -0,0 +1,183 @@
> [...]
> > +                           struct string_stream *stream);
> > +
> > +struct kunit_fail_assert {
> > +       struct kunit_assert assert;
> > +};
> > +
> > +void kunit_fail_assert_format(const struct kunit_assert *assert,
> > +                             struct string_stream *stream);
> > +
> > +#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {                           \
> > +               .assert = KUNIT_INIT_ASSERT_STRUCT(test,                       \
> > +                                                  type,                       \
> > +                                                  kunit_fail_assert_format)   \
>
> This one got indented one too many times?

Not unless I have been using the wrong formatting for multiline
macros. You can see this commit applied here:
https://kunit.googlesource.com/linux/+/870964da2990920030990dd1ffb647ef408e52df/include/kunit/assert.h#59

I have test, type, and kunit_fail_assert_format all column aligned (it
just doesn't render nicely in the patch format).

> > +}
> > +
> > +struct kunit_unary_assert {
> > +       struct kunit_assert assert;
> > +       const char *condition;
> > +       bool expected_true;
> > +};
> > +
> > +void kunit_unary_assert_format(const struct kunit_assert *assert,
> > +                              struct string_stream *stream);
> > +
> [...]
> > +#define KUNIT_INIT_BINARY_STR_ASSERT_STRUCT(test,                             \
> > +                                           type,                              \
> > +                                           op_str,                            \
> > +                                           left_str,                          \
> > +                                           left_val,                          \
> > +                                           right_str,                         \
> > +                                           right_val) {                       \
> > +       .assert = KUNIT_INIT_ASSERT_STRUCT(test,                               \
> > +                                          type,                               \
> > +                                          kunit_binary_str_assert_format),    \
> > +       .operation = op_str,                                                   \
> > +       .left_text = left_str,                                                 \
> > +       .left_value = left_val,                                                \
> > +       .right_text = right_str,                                               \
> > +       .right_value = right_val                                               \
> > +}
>
> It would be nice to have kernel doc on these macros so we know how to
> use them.

Sounds good. Will fix.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
