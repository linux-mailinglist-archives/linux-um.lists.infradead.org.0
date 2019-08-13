Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDA98ABFF
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 02:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwqEdOYuS3UwMveBVaa7iDaVJfspfHNPO5VThX7rX5k=; b=krnnxNk4ksQUfD
	/dhc1pfSeQkQz5joswXtszazAdOVmXaRY6yTWKKedF17h9TdoVS5o63P8rU4YBKssMGH7pi7I/+AR
	75d6fGIhV2lPanHk9xvmfB6haJ9pn6z+f8WjsE+ALTO8s7tMxwRg59srL4xIVnnpSX7Dp+OUAdA6v
	K/kCgbcOEdtIQrQmqSU1S2IcUobAkUsD+MUvJiZQBcb0vHNmb3J+3h42DLf13obgXi8JnJGc78WfZ
	+Egk7RPMc/hXUweibIlz1gn+duSmmOXULb+TmzHmwRWIcm6CKfbC2LyDkGH1PfhOn6zFX4Sytqsgn
	Mg9LeBL+SQm2nuou42+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKlH-0002jk-Li; Tue, 13 Aug 2019 00:34:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKlD-0002ir-DP
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 00:34:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so46561834pfn.6
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 17:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Zq6yHL2C60RwcDmlpshxa1wOQkUxi3yYyWuvX6Jr4HM=;
 b=namSPmDWPujc9+lfquW9m9ZpboLlU1GpXC90hrm7My2wALTeQGovCGeuZeoLPKDSjJ
 DPnzh7Y+F6ZapREAMTLVxQZrviv1eRlvHMlffAnktNPvtsaYfgv/HuEgBsY2QrOo0MZs
 nE5JrVUKP9CgWZePaSr61slKkLrb+gpW5RLUbSyHEZcmQpKomsq1IAcpf8aQcFR1ZzcC
 pbhJzddvNnULPjOfPycV2nj/vsXw3HM0ePAOrnoYPxMcKCNqqjXJyNERbNaXrHH4I6Qe
 8XEuxJNNe0v8zBXjNRU7Pd1TCUbPC3LGaWGg1bvuBHstTQGPVL0WQxCYeaoFZfNh0X+l
 HFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zq6yHL2C60RwcDmlpshxa1wOQkUxi3yYyWuvX6Jr4HM=;
 b=VPVi9co9aUeL3AtVOL3r+5/NOhCdhCEL1uHWvA2yheWSvVbNQLYSzwxnN7q2K+V4mQ
 gJwveQhOQDh+9qmz95/9bTHSZTCusQuq7HgxhafzqwCCKWooIOHRiPwM+DTio1VgjPng
 tgkZv5oQOF8OejnAZwKf3ePQ/UKyf/ycYYxlQb3NXwNC0HxBHY9EZ6sgjkKmk8V03Mnx
 L68rC8asSABkfnYD8N1Q9fDNCFkzMbYwpachoIES0zXYB2ufRamJXFLyXtUsqnsKjUAL
 amRBva51VSDo9IH+HpLusk/xO9LHf3A/zi1Ao8RCo+rqs+oLnCCAUMerVCTC0Dzo1RT/
 QChA==
X-Gm-Message-State: APjAAAVmhzHjFwvMTT/a7rXclYKEjAfUMwfzjbE2GZMI4ltuSrlazHJo
 N36StlV/O/eNDC5ztpVIXXRlPw==
X-Google-Smtp-Source: APXvYqzfHrFqfVRu0MgZ/V5gvwVgMJn7qSDV7sNF8V3DEvMYQp7KqAKffNLgf1l1YpJPVE1awdWI2Q==
X-Received: by 2002:a63:5402:: with SMTP id i2mr32378986pgb.414.1565656437536; 
 Mon, 12 Aug 2019 17:33:57 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id 97sm661739pjz.12.2019.08.12.17.33.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 17:33:56 -0700 (PDT)
Date: Mon, 12 Aug 2019 17:33:52 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v12 05/18] kunit: test: add the concept of expectations
Message-ID: <20190813003352.GA235915@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-6-brendanhiggins@google.com>
 <20190812235701.533E82063F@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812235701.533E82063F@mail.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_173359_482613_B08FA45E 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -12.4 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 3.3 FSL_HELO_FAKE          No description available.
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:57:00PM -0700, Stephen Boyd wrote:
> Quoting Brendan Higgins (2019-08-12 11:24:08)
> > Add support for expectations, which allow properties to be specified and
> > then verified in tests.
> > 
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> 
> Just some minor nits again.
> 
> > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > index d0bf112910caf..2625bcfeb19ac 100644
> > --- a/include/kunit/test.h
> > +++ b/include/kunit/test.h
> > @@ -9,8 +9,10 @@
> >  #ifndef _KUNIT_TEST_H
> >  #define _KUNIT_TEST_H
> >  
> > +#include <linux/kernel.h>
> >  #include <linux/types.h>
> >  #include <linux/slab.h>
> > +#include <kunit/assert.h>
> 
> Can you alphabet sort these?

Sure. Will fix.

> >  
> >  struct kunit_resource;
> >  
> > @@ -319,4 +321,845 @@ void __printf(3, 4) kunit_printk(const char *level,
> >  #define kunit_err(test, fmt, ...) \
> >                 kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
> >  
> > +/*
> > + * Generates a compile-time warning in case of comparing incompatible types.
> > + */
> > +#define __kunit_typecheck(lhs, rhs) \
> > +       ((void) __typecheck(lhs, rhs))
> 
> Is there a reason why this can't be inlined and the __kunit_typecheck()
> macro can't be removed?

No real reason anymore. I used it in multiple places before and we
weren't sure if we wanted to stick with the warnings that __typecheck
produces long term, but now that it is only used in one place, I guess
that doesn't make sense anymore. Will fix.

> > +
> > +/**
> > + * KUNIT_SUCCEED() - A no-op expectation. Only exists for code clarity.
> > + * @test: The test context object.
> [...]
> > + * @condition: an arbitrary boolean expression. The test fails when this does
> > + * not evaluate to true.
> > + *
> > + * This and expectations of the form `KUNIT_EXPECT_*` will cause the test case
> > + * to fail when the specified condition is not met; however, it will not prevent
> > + * the test case from continuing to run; this is otherwise known as an
> > + * *expectation failure*.
> > + */
> > +#define KUNIT_EXPECT_TRUE(test, condition) \
> > +               KUNIT_TRUE_ASSERTION(test, KUNIT_EXPECTATION, condition)
> 
> A lot of these macros seem double indented.

In a case you pointed out in the preceding patch, I was just keeping the
arguments column aligned.

In this case I am just indenting two tabs for a line continuation. I
thought I found other instances in the kernel that did this early on
(and that's also what the Linux kernel vim plugin wanted me to do).
After a couple of spot checks, it seems like one tab for this kind of
line continuation seems more common. I personally don't feel strongly
about any particular version. I just want to know now what the correct
indentation is for macros before I go through and change them all.

I think there are three cases:

#define macro0(param0, param1) \
		a_really_long_macro(...)

In this first case, I use two tabs for the first indent, I think you are
telling me this should be one tab.

#define macro1(param0, param1) {					       \
	statement_in_a_block0;						       \
	statement_in_a_block1;						       \
	...								       \
}

In this case, every line is in a block and is indented as it would be in
a function body. I think you are okay with this, and now that I am
thinking about it, what I think you are proposing for macro0 will make
these two cases more consistent.

#define macro2(param0,							       \
	       param1,							       \
	       param2,							       \
	       param3,							       \
	       ...,							       \
	       paramn) ...						       \

In this last case, the body would be indented as in macro0, or macro1,
but the parameters passed into the macro are column aligned, consistent
with one of the acceptable ways of formatting function parameters that
don't fit on a single line.

In all cases, I put 1 space in between the closing parameter paren and
the line continuation `\`, if only one `\` is needed. Otherwise, I align
all the `\s` to the 80th column. Is this okay, or would you prefer that
I align them all to the 80th column, or something else?

> > +
> > +#define KUNIT_EXPECT_TRUE_MSG(test, condition, fmt, ...)                      \
> > +               KUNIT_TRUE_MSG_ASSERTION(test,                                 \
> > +                                        KUNIT_EXPECTATION,                    \
> > +                                        condition,                            \
> > +                                        fmt,                                  \
> > +                                        ##__VA_ARGS__)
> > +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
