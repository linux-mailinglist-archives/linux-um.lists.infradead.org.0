Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6068E8AB9C
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 01:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5GDSFOcvGaJgCeSX8tUHiHW3Ylyg4Ca4Be3zj4SfRc=; b=bgkvGt1Cqm1VzG
	AawpJaJCITsnAa2PDe+D9VkLWf3EqBXFRhUcNUrx5yMIdAV3nxfWl25uJtbDmS/38QMBj3vAzcXrm
	41KsOhdGLj2QponAjwH0trk9GUiOli8E6qq85AC30ZCGk7+8OOLaDwaAJ4WcbP35Z0ZsYoqpOYHzu
	NQbpjHMmysVV0K/G0Sb9gT4eEDpYtj/JMKN/JMiD7UjW4QM/LuB7cZpikHc0iKQRYSTHfM+SzMAOq
	EwXZTPVpSHeQIBFjMiPt3fFAaDa61iimQi+fR2fNfeZ2pKIF5ZUwik8nE8aebdkjeL6TaAa1BYwpb
	HqzzZjCQJVCOTaHcFIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKBV-0006mz-N6; Mon, 12 Aug 2019 23:57:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKBS-0006mN-1J
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 23:57:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 533E82063F;
 Mon, 12 Aug 2019 23:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565654221;
 bh=Bqdkmnp6mwn7+uGtiuDRkW/S4L7BPoXk0yV/X+vBL54=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=xH5Jr1y+zA4g2T4Lqz5yO5pV+3YI+m+g1R3ck6bSJoBiMnDkJSdrB5821koEnOM1x
 ozemBUqGL2ni/PA36r1U7ZN9xHwvK3C4GSABt23yhMwa/Dx7vomqnds0asZ6RIkXYl
 YOqHX4j25oAAbX9XJcyROx5ez17nbuRYexkCgIEQ=
MIME-Version: 1.0
In-Reply-To: <20190812182421.141150-6-brendanhiggins@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-6-brendanhiggins@google.com>
Subject: Re: [PATCH v12 05/18] kunit: test: add the concept of expectations
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 16:57:00 -0700
Message-Id: <20190812235701.533E82063F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_165702_115742_5B2CD035 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Quoting Brendan Higgins (2019-08-12 11:24:08)
> Add support for expectations, which allow properties to be specified and
> then verified in tests.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Just some minor nits again.

> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index d0bf112910caf..2625bcfeb19ac 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h
> @@ -9,8 +9,10 @@
>  #ifndef _KUNIT_TEST_H
>  #define _KUNIT_TEST_H
>  
> +#include <linux/kernel.h>
>  #include <linux/types.h>
>  #include <linux/slab.h>
> +#include <kunit/assert.h>

Can you alphabet sort these?

>  
>  struct kunit_resource;
>  
> @@ -319,4 +321,845 @@ void __printf(3, 4) kunit_printk(const char *level,
>  #define kunit_err(test, fmt, ...) \
>                 kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
>  
> +/*
> + * Generates a compile-time warning in case of comparing incompatible types.
> + */
> +#define __kunit_typecheck(lhs, rhs) \
> +       ((void) __typecheck(lhs, rhs))

Is there a reason why this can't be inlined and the __kunit_typecheck()
macro can't be removed?

> +
> +/**
> + * KUNIT_SUCCEED() - A no-op expectation. Only exists for code clarity.
> + * @test: The test context object.
[...]
> + * @condition: an arbitrary boolean expression. The test fails when this does
> + * not evaluate to true.
> + *
> + * This and expectations of the form `KUNIT_EXPECT_*` will cause the test case
> + * to fail when the specified condition is not met; however, it will not prevent
> + * the test case from continuing to run; this is otherwise known as an
> + * *expectation failure*.
> + */
> +#define KUNIT_EXPECT_TRUE(test, condition) \
> +               KUNIT_TRUE_ASSERTION(test, KUNIT_EXPECTATION, condition)

A lot of these macros seem double indented.

> +
> +#define KUNIT_EXPECT_TRUE_MSG(test, condition, fmt, ...)                      \
> +               KUNIT_TRUE_MSG_ASSERTION(test,                                 \
> +                                        KUNIT_EXPECTATION,                    \
> +                                        condition,                            \
> +                                        fmt,                                  \
> +                                        ##__VA_ARGS__)
> +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
