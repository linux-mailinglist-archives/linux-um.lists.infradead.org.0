Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DE71266E
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 05:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6elx7SZrp+HfVVzUM/i1NroBOrIc5ULi32vmzDtmaf8=; b=c+xyxg8lRhdjII
	vrwXkGerDFFZxAlrIgzKK5eYaiOhTpafXGLSwhsMOTEJ7y+amgUI20bxAMCTx+aXbi6KZGixooMJI
	0up9wrwBj6F7U6NgyRk5vowFnpINWdHcZYBfDMqMqYpFtrZc9g25Q49vpB1g0BOkGA//ZQmDhUljE
	EgzAqo74NGsdQWx3vIj4aWeTOqo8GG/rg0g+oFpQgt7Rpo2JxS4CwJx7zqX10Nawt19yIk3VAnMrh
	Wl9cf6b7lGufIZfyaRaKI8IterM866eE709H/D7s2GfGeXhy4167GC9pcqeKLiJQoewJ83nlr5SD4
	zF24pNcLQ2sZQe8ijoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMOfR-0005fH-T2; Fri, 03 May 2019 03:15:21 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMOfO-0005ep-U0
 for linux-um@lists.infradead.org; Fri, 03 May 2019 03:15:20 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=[172.20.29.49])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hMOef-0006md-Tg; Thu, 02 May 2019 21:14:35 -0600
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-9-brendanhiggins@google.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0a605543-477a-1854-eb35-6e586606889b@deltatee.com>
Date: Thu, 2 May 2019 21:14:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501230126.229218-9-brendanhiggins@google.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 173.228.226.134
X-SA-Exim-Rcpt-To: wfg@linux.intel.com, rostedt@goodmis.org,
 rientjes@google.com, richard@nod.at, pmladek@suse.com, mpe@ellerman.id.au,
 knut.omang@oracle.com, khilman@baylibre.com, julia.lawall@lip6.fr,
 joel@jms.id.au, jdike@addtoit.com, daniel@ffwll.ch, dan.j.williams@intel.com,
 dan.carpenter@oracle.com, amir73il@gmail.com, Tim.Bird@sony.com,
 Alexander.Levin@microsoft.com, linux-um@lists.infradead.org,
 linux-nvdimm@lists.01.org, linux-kselftest@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org,
 kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, shuah@kernel.org, sboyd@kernel.org,
 robh@kernel.org, mcgrof@kernel.org, kieran.bingham@ideasonboard.com,
 keescook@google.com, gregkh@linuxfoundation.org, frowand.list@gmail.com,
 brendanhiggins@google.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/17] kunit: test: add support for test abort
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_201519_023883_3E64810F 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 2019-05-01 5:01 p.m., Brendan Higgins wrote:
> +/*
> + * struct kunit_try_catch - provides a generic way to run code which might fail.
> + * @context: used to pass user data to the try and catch functions.
> + *
> + * kunit_try_catch provides a generic, architecture independent way to execute
> + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
> + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
> + * is stopped at the site of invocation and @catch is catch is called.

I found some of the C++ comparisons in this series a bit distasteful but
wasn't going to say anything until I saw the try catch.... But looking
into the implementation it's just a thread that can exit early which
seems fine to me. Just a poor choice of name I guess...

[snip]

> +static void __noreturn kunit_abort(struct kunit *test)
> +{
> +	kunit_set_death_test(test, true);
> +
> +	kunit_try_catch_throw(&test->try_catch);
> +
> +	/*
> +	 * Throw could not abort from test.
> +	 *
> +	 * XXX: we should never reach this line! As kunit_try_catch_throw is
> +	 * marked __noreturn.
> +	 */
> +	WARN_ONCE(true, "Throw could not abort from test!\n");
> +}
> +
>  int kunit_init_test(struct kunit *test, const char *name)
>  {
>  	spin_lock_init(&test->lock);
> @@ -77,6 +103,7 @@ int kunit_init_test(struct kunit *test, const char *name)
>  	test->name = name;
>  	test->vprintk = kunit_vprintk;
>  	test->fail = kunit_fail;
> +	test->abort = kunit_abort;

There are a number of these function pointers which seem to be pointless
to me as you only ever set them to one function. Just call the function
directly. As it is, it is an unnecessary indirection for someone reading
the code. If and when you have multiple implementations of the function
then add the pointer. Don't assume you're going to need it later on and
add all this maintenance burden if you never use it..

[snip]

> +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch)
> +{
> +	try_catch->run = kunit_generic_run_try_catch;
> +	try_catch->throw = kunit_generic_throw;
> +}

Same here. There's only one implementation of try_catch and I can't
really see any sensible justification for another implementation. Even
if there is, add the indirection when the second implementation is
added. This isn't C++ and we don't need to make everything a "method".

Thanks,

Logan

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
