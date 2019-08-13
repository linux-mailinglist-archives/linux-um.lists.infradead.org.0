Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51188AE7C
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC2RqoR1bblTuXxyfAb/EQf/MXLAgdSut/4HKO0abkQ=; b=ld/XQWE3nBU/nG
	y+QaNho75Vt763sMrCenIG9kSYtYBCFUAmvnksRZjMkEgw6soQK1xlpTfC9sSPldtKYpyn3LVUnAE
	bfimomf1ESQ6zSY57UA9nqT+PCE59Icoxoz5nbKg36qSqNQqZ6Pk2V2LdyXB8Oa2vpiN5yyDUGClZ
	ZdCWYECs2Gec/VfzOroOZFRSrVzbfFvfbYqBlkNuUb7tBes3AHRTMKGxoQ9eLLlJ1XnJATTKG0w15
	Z4QN+9t3kTzpKKX5x9YG77+ffWCVaAzAMftZqCrKnbEaVdL3po9yL+O6H7jbD6DiIA7yWZErQDj7D
	MTc3rWY9R5CXf3OGNTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOzG-000627-0p; Tue, 13 Aug 2019 05:04:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOzC-00061T-Qh
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:04:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id 196so3713221pfz.8
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 22:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yw2VPeqxmsRoQHPYiMspo9WSTIZItOOYPkJzlzz97sQ=;
 b=R+xjVFNBTOKx66Ip6R2LUuGGTv9eRVrdSycmzhhLqv6ShkSGz9R0iiaQlwquO7BkEU
 x0+Ib4JO36b96tMczjZmXSHPyXXgXTGAWZTVVhOp2T/QIbWWY9V/IwNi6o7K3rnqxKD6
 ziqRin5+uEzkBO92V/m+9MKxmbzCf0EpwYeh574LKHHRRabDjwTHNTwZWhEFkvfuCrXM
 uElR/9bIqUIPxCl1QveNg860hXAYpRf6f2BJRo4B5oKRtiCThZ4ssb+YGhqyKYj3MwTn
 75s7SvppXdJK7apvtGoXkIluns/j2aGIDRd+g49iLbsgOZ5chYru9qT65dM05aT4eQAY
 d3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yw2VPeqxmsRoQHPYiMspo9WSTIZItOOYPkJzlzz97sQ=;
 b=q+tJFXls5I+20zD8/SiqFhQWdra8wHKlxoZKcDk2fhjiQDOU1Eh1uJ7BUfQjhn53rJ
 14DloR1nAKnvIHvgeG411BZSbB8WqqT/svdqqhhQu9IF9H02HPk7x7+ER3iMqXtVC8nn
 auAhc1z05xsOd0CDzOanYyOHLzy9DeIRouI2+SZuvuOnPVScTPxKGHZH3slTaJrgDOqC
 Mjd+jg4V1w7w5wNdtoygm0nPjmiArU+0aiMXjHSQpMyM7mwnBc5yDGKFOE36K76SifP+
 cCMX1IBroUuSyrLAnJkvZi1h9/Z9Lmee0FUQIRHtZvsah/sAGSX/kWZ7V5s9shqN90ie
 gwLA==
X-Gm-Message-State: APjAAAXSPZ+D/k8Ou/L3fCH3CQdGrAx0VLDCqnQHrJJhTzswboAxlOr/
 7bQVXCeFdmKBdSSG1LvsnqjtW9X93KOnvakkc0uEWQ==
X-Google-Smtp-Source: APXvYqzY7+RzhfN0PwrRrz6X4tFGzeJErvdkB+WMoL53BHH2m/gFw2SJjgYuiLuK2/VE++6KBxdxNTyzwKrq+P1ZkEU=
X-Received: by 2002:a63:eb51:: with SMTP id b17mr32062966pgk.384.1565672681626; 
 Mon, 12 Aug 2019 22:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-6-brendanhiggins@google.com>
 <20190812235701.533E82063F@mail.kernel.org>
 <20190813003352.GA235915@google.com>
 <20190813050206.2A49C206C2@mail.kernel.org>
In-Reply-To: <20190813050206.2A49C206C2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 22:04:30 -0700
Message-ID: <CAFd5g44VBzDSjxHGUZ=8A9hempQ0_3Ym_8qzj0ETEJ8AzM6poA@mail.gmail.com>
Subject: Re: [PATCH v12 05/18] kunit: test: add the concept of expectations
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220442_892757_25BB8A0F 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Mon, Aug 12, 2019 at 10:02 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 17:33:52)
> > On Mon, Aug 12, 2019 at 04:57:00PM -0700, Stephen Boyd wrote:
> > > Quoting Brendan Higgins (2019-08-12 11:24:08)
> > > > + */
> > > > +#define KUNIT_EXPECT_TRUE(test, condition) \
> > > > +               KUNIT_TRUE_ASSERTION(test, KUNIT_EXPECTATION, condition)
> > >
> > > A lot of these macros seem double indented.
> >
> > In a case you pointed out in the preceding patch, I was just keeping the
> > arguments column aligned.
> >
> > In this case I am just indenting two tabs for a line continuation. I
> > thought I found other instances in the kernel that did this early on
> > (and that's also what the Linux kernel vim plugin wanted me to do).
> > After a couple of spot checks, it seems like one tab for this kind of
> > line continuation seems more common. I personally don't feel strongly
> > about any particular version. I just want to know now what the correct
> > indentation is for macros before I go through and change them all.
> >
> > I think there are three cases:
> >
> > #define macro0(param0, param1) \
> >                 a_really_long_macro(...)
> >
> > In this first case, I use two tabs for the first indent, I think you are
> > telling me this should be one tab.
>
> Yes. Should be one.
>
> >
> > #define macro1(param0, param1) {                                               \
> >         statement_in_a_block0;                                                 \
> >         statement_in_a_block1;                                                 \
> >         ...                                                                    \
> > }
> >
> > In this case, every line is in a block and is indented as it would be in
> > a function body. I think you are okay with this, and now that I am
> > thinking about it, what I think you are proposing for macro0 will make
> > these two cases more consistent.
> >
> > #define macro2(param0,                                                         \
> >                param1,                                                         \
> >                param2,                                                         \
> >                param3,                                                         \
> >                ...,                                                            \
> >                paramn) ...                                                     \
> >
> > In this last case, the body would be indented as in macro0, or macro1,
> > but the parameters passed into the macro are column aligned, consistent
> > with one of the acceptable ways of formatting function parameters that
> > don't fit on a single line.
> >
> > In all cases, I put 1 space in between the closing parameter paren and
> > the line continuation `\`, if only one `\` is needed. Otherwise, I align
> > all the `\s` to the 80th column. Is this okay, or would you prefer that
> > I align them all to the 80th column, or something else?
> >
>
> This all sounds fine and I'm not nitpicking this style. Just the double
> tabs making lines longer than required.

Sounds good. Will do.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
