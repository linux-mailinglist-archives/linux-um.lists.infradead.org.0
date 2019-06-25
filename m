Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E88E55B4E
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 00:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ofii17O80JEaLZa9dXUyFY6gh1kIL5hg/qsjOZnXuOU=; b=KjeIhIAgCvEgHY
	7Tup5ywSte1WUZloUYzWCNxx9NoeDk9znINj0LasWEx8wBzgA4nDjQ4YhJhHvQ0NOSUTnwL50yCna
	5UuobnoQJ3x+cvhvOxm4VZl8/Ta3aV9PLTHZDePVYdLrDa4PZA13sXk3KqTdv0DMV0Z8JjJ2+Tt9h
	odXbz8xuOJHl0qDSKGRpYc93aQVoNf83U8n9RiJfefUdz+YqZAyE5JnQLN8s0pkKTvJllcgN97bbw
	5D1HYHFunyRbFc3GE7uYxATv9jx7N/QvShbMVTCbWxa8vu7rU+dSYUKngOTNQBARddRQaeLTHF7lS
	z4R5knnhhai9m52lC2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu1g-0002Rz-SC; Tue, 25 Jun 2019 22:34:57 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfu04-0001Mp-Gy
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 22:33:18 +0000
Received: by mail-pg1-f194.google.com with SMTP id n2so130210pgp.11
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 15:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TnzcHfb/rGR5D/vErJu8w17aFeeUcfwDXLuZxpFdgZc=;
 b=lBawOV8qv+1k/LkljKkTv6/tfpFdRn5oh37TBpigDVmQbcVqXiu/+12iatYj9mLMx7
 pLYF+g5mLEvmW0eaV3o59ZUNhrLZoQ2dwOWGwXNSVmA+i0GyDK7/BHiSpcujDTuRtYqZ
 xx56rrNy3F1dLNKtMtmLmRscBtW9f7T/FyEIaV0ddd6bIOQhcqhhZ3/qSZg1JRrc+a4K
 KkDrIvBUDkupp450jpgZzlqEmQZ1qFuPwzPbU5UeOmMUGFTOQkHjuCcRemauIrK5pNTX
 1KfyfXooaP+TwoJoT8pxZvZDRvfpPhRfhwDZg07Qper5Cwwm/bhoNH6r4QiO5LAUNdxN
 RFIA==
X-Gm-Message-State: APjAAAXDeZX4JgxWu9sI6K4oeIglfoyqn+V53AC+IWazl83CnKdDSYIO
 yua30qi0DwdMTsI2bxRPsG4=
X-Google-Smtp-Source: APXvYqz8tePzVjq6qydlXc6fHsQtBqVBfz39DV20JLDT6sqkzfdOgtSxbEsBu2vrr4nNjRf5f7IpUg==
X-Received: by 2002:a17:90a:e397:: with SMTP id
 b23mr267009pjz.140.1561501994728; 
 Tue, 25 Jun 2019 15:33:14 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id p67sm23643298pfg.124.2019.06.25.15.33.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 15:33:13 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id CD044401EB; Tue, 25 Jun 2019 22:33:12 +0000 (UTC)
Date: Tue, 25 Jun 2019 22:33:12 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190625223312.GP19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082613.109131-2-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153316_696246_F8A19611 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:25:56AM -0700, Brendan Higgins wrote:
> +/**
> + * module_test() - used to register a &struct kunit_module with KUnit.
> + * @module: a statically allocated &struct kunit_module.
> + *
> + * Registers @module with the test framework. See &struct kunit_module for more
> + * information.
> + */
> +#define module_test(module) \
> +		static int module_kunit_init##module(void) \
> +		{ \
> +			return kunit_run_tests(&module); \
> +		} \
> +		late_initcall(module_kunit_init##module)

Becuase late_initcall() is used, if these modules are built-in, this
would preclude the ability to test things prior to this part of the
kernel under UML or whatever architecture runs the tests. So, this
limits the scope of testing. Small detail but the scope whould be
documented.

> +static void kunit_print_tap_version(void)
> +{
> +	if (!kunit_has_printed_tap_version) {
> +		kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");

What is this TAP thing? Why should we care what version it is on?
Why are we printing this?

> +		kunit_has_printed_tap_version = true;
> +	}
> +}
> +
> +static size_t kunit_test_cases_len(struct kunit_case *test_cases)
> +{
> +	struct kunit_case *test_case;
> +	size_t len = 0;
> +
> +	for (test_case = test_cases; test_case->run_case; test_case++)

If we make the last test case NULL, we'd just check for test_case here,
and save ourselves an extra few bytes per test module. Any reason why
the last test case cannot be NULL?

> +void kunit_init_test(struct kunit *test, const char *name)
> +{
> +	spin_lock_init(&test->lock);
> +	test->name = name;
> +	test->success = true;
> +}
> +
> +/*
> + * Performs all logic to run a test case.
> + */
> +static void kunit_run_case(struct kunit_module *module,
> +			   struct kunit_case *test_case)
> +{
> +	struct kunit test;
> +	int ret = 0;
> +
> +	kunit_init_test(&test, test_case->name);
> +
> +	if (module->init) {
> +		ret = module->init(&test);

I believe if we used struct kunit_module *kmodule it would be much
clearer who's init this is.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
