Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD99612638
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 03:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Aa/n7z0CzGVeGFw5xk5GJyXwems6Yoep+kshyAKu8bM=; b=vDjd+jlQLuTKn0JSeJUB/AqsI
	V4vNQEg5mrcJx8H3bDd9usm1+MnizHQjj7Xnw/1fT791kqOwTlMLwybj0/4KNL6OhhHUqh6hYg5qu
	adJtv5BcbKo72nRUNR0phji1uMlFe0wL75/y1rf3433coMOUF7fEO45zank6GNePaW617Lh4k+SaZ
	RNiFfP8ok4EiLgFxatpQd+Jxuz9OkyMToEbpDKmZoiU5ORY1zHkuRADWvhznoer2/8sV5U/Jw3ElX
	HD0gp9N9E1TnheMEjpwt0ZkPAS8FOwazAJcqOinuAPvxAwGWMo4jUkbWrSw8aF+RUlFDFHWehJPgN
	255UR5wfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMNLB-0004V8-Bl; Fri, 03 May 2019 01:50:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMNL8-0004Ui-0d
 for linux-um@lists.infradead.org; Fri, 03 May 2019 01:50:19 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E84C206C3;
 Fri,  3 May 2019 01:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556848217;
 bh=qaceKMSCeRC9dQeLapwfc7pBEOFW2deb4iZaTSLxXow=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=F+9ptLcE+9kv81snBWwlIRBpJnHQqZ+jaEKwoBkJugi6zfZoeiHqGbmzJoi7fFmLY
 /Z2gIlXTghYOeTaWRPeBXmt4j0bKOYOd/VQ0o0FWbsXhlpQCWKDFHgFofLU5tItp7Q
 FsOFpVjldizU0eaFVgiupp/X1ndMgJhqPUgLIml0=
Subject: Re: [PATCH v2 04/17] kunit: test: add kunit_stream a std::stream like
 logger
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-5-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <ead23600-eecd-cf74-bdd1-94a6964e29b2@kernel.org>
Date: Thu, 2 May 2019 19:50:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501230126.229218-5-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_185018_126008_579D8FC5 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/1/19 5:01 PM, Brendan Higgins wrote:
> A lot of the expectation and assertion infrastructure prints out fairly
> complicated test failure messages, so add a C++ style log library for
> for logging test results.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>   include/kunit/kunit-stream.h |  85 ++++++++++++++++++++
>   include/kunit/test.h         |   2 +
>   kunit/Makefile               |   3 +-
>   kunit/kunit-stream.c         | 149 +++++++++++++++++++++++++++++++++++
>   kunit/test.c                 |   8 ++
>   5 files changed, 246 insertions(+), 1 deletion(-)
>   create mode 100644 include/kunit/kunit-stream.h
>   create mode 100644 kunit/kunit-stream.c
> 
> diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
> new file mode 100644
> index 0000000000000..d457a54fe0100
> --- /dev/null
> +++ b/include/kunit/kunit-stream.h
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * C++ stream style string formatter and printer used in KUnit for outputting
> + * KUnit messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#ifndef _KUNIT_KUNIT_STREAM_H
> +#define _KUNIT_KUNIT_STREAM_H
> +
> +#include <linux/types.h>
> +#include <kunit/string-stream.h>
> +
> +struct kunit;
> +
> +/**
> + * struct kunit_stream - a std::stream style string builder.
> + *
> + * A std::stream style string builder. Allows messages to be built up and
> + * printed all at once.
> + */
> +struct kunit_stream {
> +	/* private: internal use only. */
> +	struct kunit *test;
> +	spinlock_t lock; /* Guards level. */
> +	const char *level;
> +	struct string_stream *internal_stream;
> +};
> +
> +/**
> + * kunit_new_stream() - constructs a new &struct kunit_stream.
> + * @test: The test context object.
> + *
> + * Constructs a new test managed &struct kunit_stream.
> + */
> +struct kunit_stream *kunit_new_stream(struct kunit *test);
> +
> +/**
> + * kunit_stream_set_level(): sets the level that string should be printed at.
> + * @this: the stream being operated on.
> + * @level: the print level the stream is set to output to.
> + *
> + * Sets the print level at which the stream outputs.
> + */
> +void kunit_stream_set_level(struct kunit_stream *this, const char *level);
> +
> +/**
> + * kunit_stream_add(): adds the formatted input to the internal buffer.
> + * @this: the stream being operated on.
> + * @fmt: printf style format string to append to stream.
> + *
> + * Appends the formatted string, @fmt, to the internal buffer.
> + */
> +void __printf(2, 3) kunit_stream_add(struct kunit_stream *this,
> +				     const char *fmt, ...);
> +
> +/**
> + * kunit_stream_append(): appends the contents of @other to @this.
> + * @this: the stream to which @other is appended.
> + * @other: the stream whose contents are appended to @this.
> + *
> + * Appends the contents of @other to @this.
> + */
> +void kunit_stream_append(struct kunit_stream *this, struct kunit_stream *other);
> +
> +/**
> + * kunit_stream_commit(): prints out the internal buffer to the user.
> + * @this: the stream being operated on.
> + *
> + * Outputs the contents of the internal buffer as a kunit_printk formatted
> + * output.
> + */
> +void kunit_stream_commit(struct kunit_stream *this);
> +
> +/**
> + * kunit_stream_clear(): clears the internal buffer.
> + * @this: the stream being operated on.
> + *
> + * Clears the contents of the internal buffer.
> + */
> +void kunit_stream_clear(struct kunit_stream *this);
> +
> +#endif /* _KUNIT_KUNIT_STREAM_H */
> diff --git a/include/kunit/test.h b/include/kunit/test.h
> index 819edd8db4e81..4668e8a635954 100644
> --- a/include/kunit/test.h
> +++ b/include/kunit/test.h
> @@ -11,6 +11,7 @@
>   
>   #include <linux/types.h>
>   #include <linux/slab.h>
> +#include <kunit/kunit-stream.h>
>   
>   struct kunit_resource;
>   
> @@ -171,6 +172,7 @@ struct kunit {
>   	void (*vprintk)(const struct kunit *test,
>   			const char *level,
>   			struct va_format *vaf);
> +	void (*fail)(struct kunit *test, struct kunit_stream *stream);
>   };
>   
>   int kunit_init_test(struct kunit *test, const char *name);
> diff --git a/kunit/Makefile b/kunit/Makefile
> index 275b565a0e81f..6ddc622ee6b1c 100644
> --- a/kunit/Makefile
> +++ b/kunit/Makefile
> @@ -1,2 +1,3 @@
>   obj-$(CONFIG_KUNIT) +=			test.o \
> -					string-stream.o
> +					string-stream.o \
> +					kunit-stream.o
> diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
> new file mode 100644
> index 0000000000000..93c14eec03844
> --- /dev/null
> +++ b/kunit/kunit-stream.c
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * C++ stream style string formatter and printer used in KUnit for outputting
> + * KUnit messages.
> + *
> + * Copyright (C) 2019, Google LLC.
> + * Author: Brendan Higgins <brendanhiggins@google.com>
> + */
> +
> +#include <kunit/test.h>
> +#include <kunit/kunit-stream.h>
> +#include <kunit/string-stream.h>
> +
> +const char *kunit_stream_get_level(struct kunit_stream *this)
> +{
> +	unsigned long flags;
> +	const char *level;
> +
> +	spin_lock_irqsave(&this->lock, flags);
> +	level = this->level;
> +	spin_unlock_irqrestore(&this->lock, flags);
> +
> +	return level;
> +}
> +
> +void kunit_stream_set_level(struct kunit_stream *this, const char *level)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&this->lock, flags);
> +	this->level = level;
> +	spin_unlock_irqrestore(&this->lock, flags);
> +}
> +
> +void kunit_stream_add(struct kunit_stream *this, const char *fmt, ...)
> +{
> +	va_list args;
> +	struct string_stream *stream = this->internal_stream;
> +
> +	va_start(args, fmt);
> +
> +	if (string_stream_vadd(stream, fmt, args) < 0)
> +		kunit_err(this->test, "Failed to allocate fragment: %s\n", fmt);
> +
> +	va_end(args);
> +}
> +
> +void kunit_stream_append(struct kunit_stream *this,
> +				struct kunit_stream *other)
> +{
> +	struct string_stream *other_stream = other->internal_stream;
> +	const char *other_content;
> +
> +	other_content = string_stream_get_string(other_stream);
> +
> +	if (!other_content) {
> +		kunit_err(this->test,
> +			  "Failed to get string from second argument for appending.\n");
> +		return;
> +	}
> +
> +	kunit_stream_add(this, other_content);
> +}
> +
> +void kunit_stream_clear(struct kunit_stream *this)
> +{
> +	string_stream_clear(this->internal_stream);
> +}
> +
> +void kunit_stream_commit(struct kunit_stream *this)
> +{
> +	struct string_stream *stream = this->internal_stream;
> +	struct string_stream_fragment *fragment;
> +	const char *level;
> +	char *buf;
> +
> +	level = kunit_stream_get_level(this);
> +	if (!level) {
> +		kunit_err(this->test,
> +			  "Stream was committed without a specified log level.\n");
> +		level = KERN_ERR;
> +		kunit_stream_set_level(this, level);
> +	}
> +
> +	buf = string_stream_get_string(stream);
> +	if (!buf) {
> +		kunit_err(this->test,
> +			 "Could not allocate buffer, dumping stream:\n");
> +		list_for_each_entry(fragment, &stream->fragments, node) {
> +			kunit_err(this->test, fragment->fragment);
> +		}
> +		kunit_err(this->test, "\n");
> +		goto cleanup;
> +	}
> +
> +	kunit_printk(level, this->test, buf);
> +	kfree(buf);
> +
> +cleanup:
> +	kunit_stream_clear(this);
> +}
> +
> +static int kunit_stream_init(struct kunit_resource *res, void *context)
> +{
> +	struct kunit *test = context;
> +	struct kunit_stream *stream;
> +
> +	stream = kzalloc(sizeof(*stream), GFP_KERNEL);
> +	if (!stream)
> +		return -ENOMEM;
> +	res->allocation = stream;
> +	stream->test = test;
> +	spin_lock_init(&stream->lock);
> +	stream->internal_stream = new_string_stream();
> +
> +	if (!stream->internal_stream)
> +		return -ENOMEM;

What happens to stream? Don't you want to free that?

> +
> +	return 0;
> +}
> +
> +static void kunit_stream_free(struct kunit_resource *res)
> +{
> +	struct kunit_stream *stream = res->allocation;
> +
> +	if (!string_stream_is_empty(stream->internal_stream)) {
> +		kunit_err(stream->test,
> +			 "End of test case reached with uncommitted stream entries.\n");
> +		kunit_stream_commit(stream);
> +	}
> +
> +	destroy_string_stream(stream->internal_stream);
> +	kfree(stream);
> +}
> +
> +struct kunit_stream *kunit_new_stream(struct kunit *test)
> +{
> +	struct kunit_resource *res;
> +
> +	res = kunit_alloc_resource(test,
> +				   kunit_stream_init,
> +				   kunit_stream_free,
> +				   test);
> +
> +	if (res)
> +		return res->allocation;
> +	else
> +		return NULL;
> +}
> diff --git a/kunit/test.c b/kunit/test.c
> index 541f9adb1608c..f7575b127e2df 100644
> --- a/kunit/test.c
> +++ b/kunit/test.c
> @@ -63,12 +63,20 @@ static void kunit_vprintk(const struct kunit *test,
>   			  "kunit %s: %pV", test->name, vaf);
>   }
>   
> +static void kunit_fail(struct kunit *test, struct kunit_stream *stream)
> +{
> +	kunit_set_success(test, false);
> +	kunit_stream_set_level(stream, KERN_ERR);
> +	kunit_stream_commit(stream);
> +}
> +
>   int kunit_init_test(struct kunit *test, const char *name)
>   {
>   	spin_lock_init(&test->lock);
>   	INIT_LIST_HEAD(&test->resources);
>   	test->name = name;
>   	test->vprintk = kunit_vprintk;
> +	test->fail = kunit_fail;
>   
>   	return 0;
>   }
> 

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
