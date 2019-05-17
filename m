Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9742115F
	for <lists+linux-um@lfdr.de>; Fri, 17 May 2019 02:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifZtx8AWbtjhH0cq6jy+aEW44jO6FvxsCisNXr2+3Sc=; b=K8TqBVjdHNq26E
	JCigSUkZHVo02i6lPERk4jdKw3jpQVvNPIvgGQ2LfOy9Shz6MFv+tvpuU7degedU7Y2ZtKiSKhJv1
	q1nI+PTQnKK2B1OrHOGSZYHGsrhnwcf7/cl24z8jUWbXeXqiTfTPgqeKqn2yVZ1VXEAf7Wb51VKaj
	nLigIJib/McPBMCdeFeJNagQisK8e7GUk2xMGqqoiaeXefsfnj1NEidX2pYA5y00AlmwXJ74POK+0
	vgO/AnaGmGv6ZM9PzN8ADvmcOoPl60eroWx/aSO8LMvpGGwcfofL53G8HHmuNcnHaE0FWmvNwOcBl
	M16E/uhOWFto4C3Z9TvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQte-0003wV-Bj; Fri, 17 May 2019 00:38:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRQtb-0003vy-Ln
 for linux-um@lists.infradead.org; Fri, 17 May 2019 00:38:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0962F2082E;
 Fri, 17 May 2019 00:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558053527;
 bh=h7x4s8lT+SFQAKT2oROUOwG99nmbA/iuhNAdlGK/1zk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=pwJefM32rVyc17BV4NKTMNz9bAtRXF3fs8QXDQmfCoQ8dGWwvrJtKIhWefJVALK8E
 uExHbjAOgbiFZVFaM8n4hSxNXniqu1kMlprj5ffN87QHOgHX7iyfmP5RLT5V0AIfD4
 Pob5g1PWM6wWtC9518tZ1d/0IihjJAgMh1BsvFf4=
MIME-Version: 1.0
In-Reply-To: <20190514221711.248228-3-brendanhiggins@google.com>
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-3-brendanhiggins@google.com>
Subject: Re: [PATCH v4 02/18] kunit: test: add test resource management API
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Thu, 16 May 2019 17:38:46 -0700
Message-Id: <20190517003847.0962F2082E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_173847_732252_A9802CD6 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Quoting Brendan Higgins (2019-05-14 15:16:55)
> diff --git a/kunit/test.c b/kunit/test.c
> index 86f65ba2bcf92..a15e6f8c41582 100644
> --- a/kunit/test.c
> +++ b/kunit/test.c
[..]
> +
> +void *kunit_kmalloc(struct kunit *test, size_t size, gfp_t gfp)
> +{
> +       struct kunit_kmalloc_params params;
> +       struct kunit_resource *res;
> +
> +       params.size = size;
> +       params.gfp = gfp;
> +
> +       res = kunit_alloc_resource(test,
> +                                  kunit_kmalloc_init,
> +                                  kunit_kmalloc_free,
> +                                  &params);
> +
> +       if (res)
> +               return res->allocation;
> +       else
> +               return NULL;

Can be written as

	if (res)
		return ....
	return 

and some static analysis tools prefer this.

> +}
> +
> +void kunit_cleanup(struct kunit *test)
> +{
> +       struct kunit_resource *resource, *resource_safe;
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&test->lock, flags);

Ah ok, test->lock is protecting everything now? Does it need to be a
spinlock, or can it be a mutex?

> +       list_for_each_entry_safe(resource,
> +                                resource_safe,
> +                                &test->resources,
> +                                node) {
> +               kunit_free_resource(test, resource);
> +       }
> +       spin_unlock_irqrestore(&test->lock, flags);
> +}
> +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
