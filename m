Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4CAB9A0F
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfXTopwETARj2r8cjrkIdIwTXPCWKKCnFJuvFt/4ch0=; b=cCczSeWfpkvZh/
	aZAVI/BVNMyNpDR+WnSjis5D3mYeyvfzIRNUfyu7P8QNHPJ4rUXWKqwyC9b+ZfeDO6Ue/D2pevIH7
	7IeWlOlRCHdIve8+w+n56jKPlsPs2Kv9bLoL/qlXED0UTV5JhhHr736ZVGkV2z+M5256/hQV+KDFe
	m34K/wtnJshAGzsmtNJubmFvQbu15ikMaaNMBUQvVOSesEfurHiQyPicLatqabEWl4uujzlXvvceH
	RMvPc5foy5tfaFqnxOejWyXLNDoGlElYd3hUwIQ1VRQUI2eVS5YumwSjOH27HVzwIOXHBOVbs0pwJ
	hifrFwmaQSSPBhIK3ULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBSBs-0003Fn-Bi; Fri, 20 Sep 2019 23:19:52 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBSBo-0003Da-Uz
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:19:50 +0000
Received: by mail-pf1-x449.google.com with SMTP id i187so5752158pfc.10
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 16:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ElRDx1qJcaCd9VphSUpnYDbASsESTUgM/w0RFDoqEmU=;
 b=GsWGBhOHFwqzmYbnIwAYtO57z8py3WOmCJPdLFYuw6RFrKLNNB9f+XUdSZKJPEfvfD
 +NPUejzdLRFYtwKn24zsQIDdlhUH4qeWO7CUg3F5Oh6T8iCFpluNFZJfsTVxA48xUjI7
 0cRQMZT+GVzHvmIQHfg0vMnqkRF6nw3Z+dYyNWlIrFCThTwglM+W0GIoNNAeRxE1KVXg
 bJYFBMD1KgiimcmXehIcJauhLSg0Qaa7OBoFzVXFWXGm2ACk92z4rmMdBpmyo2tkZso4
 vGNbfyLO6jfHLBPB64QxZYZEhxxuOi2rvoSWYu2nV1Krj/0uC0+xeyeUj9svgmSWetAY
 DrPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ElRDx1qJcaCd9VphSUpnYDbASsESTUgM/w0RFDoqEmU=;
 b=gNyEtQc+SkvSDzV3Oh5XJ0VMWAx7K+GLeE4XfLOEEEhUC4u18X8X0WPc0U1ZxCwfcG
 3282FmuYa+gdFGkYkupK9uSwF0f1eYu1u95c3yGe2+JbzbcofrzUrzAqTJGV34JgIL9/
 FsbWy5VnuAifyklSuE/EOnRYcmChRC03UJ11tytmkTneneyIbvCPzbj1PwmxA4YvB8fp
 9nD9whruJHOrbxzMB+HnuxXZZZZIQ08JZliI3MOcXzkPg+083+psXQTNlc1rK76ZoVJz
 EE2kuo+CjlnBuPhQ0xIB6PmJwecke+HC9DlPElXV3ChRYba2lhRLC5G11sVaB1EqQzWh
 /HFg==
X-Gm-Message-State: APjAAAUS6IM1gUqfxh0/Xv6vszGdIxhf401Og9liIT1zxhNoZ2VCYpa7
 eurJNujm+kuBDDDUiydItUU6Y8SZkcZNLoUpzqDTdA==
X-Google-Smtp-Source: APXvYqwzprpUv3Sy57r3sQtteXWHKXfGpdgcIHLQjNVIB2eFN+Njs56UhVpiXHuIqV01MQkxK/5GcVapBZZ9KRKCqd8mXw==
X-Received: by 2002:a63:5807:: with SMTP id m7mr17564787pgb.371.1569021587112; 
 Fri, 20 Sep 2019 16:19:47 -0700 (PDT)
Date: Fri, 20 Sep 2019 16:19:07 -0700
In-Reply-To: <20190920231923.141900-1-brendanhiggins@google.com>
Message-Id: <20190920231923.141900-4-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v16 03/19] kunit: test: add string_stream a std::stream like
 string builder
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_161949_006394_BD17D16D 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
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
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 rostedt@goodmis.org, Stephen Boyd <swboyd@chromium.org>, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, torvalds@linux-foundation.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

A number of test features need to do pretty complicated string printing
where it may not be possible to rely on a single preallocated string
with parameters.

So provide a library for constructing the string as you go similar to
C++'s std::string. string_stream is really just a string builder,
nothing more.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
 include/kunit/string-stream.h |  51 ++++++++
 lib/kunit/Makefile            |   3 +-
 lib/kunit/string-stream.c     | 217 ++++++++++++++++++++++++++++++++++
 3 files changed, 270 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/string-stream.h
 create mode 100644 lib/kunit/string-stream.c

diff --git a/include/kunit/string-stream.h b/include/kunit/string-stream.h
new file mode 100644
index 000000000000..fe98a00b75a9
--- /dev/null
+++ b/include/kunit/string-stream.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * C++ stream style string builder used in KUnit for building messages.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#ifndef _KUNIT_STRING_STREAM_H
+#define _KUNIT_STRING_STREAM_H
+
+#include <linux/spinlock.h>
+#include <linux/types.h>
+#include <stdarg.h>
+
+struct string_stream_fragment {
+	struct kunit *test;
+	struct list_head node;
+	char *fragment;
+};
+
+struct string_stream {
+	size_t length;
+	struct list_head fragments;
+	/* length and fragments are protected by this lock */
+	spinlock_t lock;
+	struct kunit *test;
+	gfp_t gfp;
+};
+
+struct kunit;
+
+struct string_stream *alloc_string_stream(struct kunit *test, gfp_t gfp);
+
+int __printf(2, 3) string_stream_add(struct string_stream *stream,
+				     const char *fmt, ...);
+
+int string_stream_vadd(struct string_stream *stream,
+		       const char *fmt,
+		       va_list args);
+
+char *string_stream_get_string(struct string_stream *stream);
+
+int string_stream_append(struct string_stream *stream,
+			 struct string_stream *other);
+
+bool string_stream_is_empty(struct string_stream *stream);
+
+int string_stream_destroy(struct string_stream *stream);
+
+#endif /* _KUNIT_STRING_STREAM_H */
diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
index 5efdc4dea2c0..275b565a0e81 100644
--- a/lib/kunit/Makefile
+++ b/lib/kunit/Makefile
@@ -1 +1,2 @@
-obj-$(CONFIG_KUNIT) +=			test.o
+obj-$(CONFIG_KUNIT) +=			test.o \
+					string-stream.o
diff --git a/lib/kunit/string-stream.c b/lib/kunit/string-stream.c
new file mode 100644
index 000000000000..e6d17aacca30
--- /dev/null
+++ b/lib/kunit/string-stream.c
@@ -0,0 +1,217 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * C++ stream style string builder used in KUnit for building messages.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/string-stream.h>
+#include <kunit/test.h>
+#include <linux/list.h>
+#include <linux/slab.h>
+
+struct string_stream_fragment_alloc_context {
+	struct kunit *test;
+	int len;
+	gfp_t gfp;
+};
+
+static int string_stream_fragment_init(struct kunit_resource *res,
+				       void *context)
+{
+	struct string_stream_fragment_alloc_context *ctx = context;
+	struct string_stream_fragment *frag;
+
+	frag = kunit_kzalloc(ctx->test, sizeof(*frag), ctx->gfp);
+	if (!frag)
+		return -ENOMEM;
+
+	frag->test = ctx->test;
+	frag->fragment = kunit_kmalloc(ctx->test, ctx->len, ctx->gfp);
+	if (!frag->fragment)
+		return -ENOMEM;
+
+	res->allocation = frag;
+
+	return 0;
+}
+
+static void string_stream_fragment_free(struct kunit_resource *res)
+{
+	struct string_stream_fragment *frag = res->allocation;
+
+	list_del(&frag->node);
+	kunit_kfree(frag->test, frag->fragment);
+	kunit_kfree(frag->test, frag);
+}
+
+static struct string_stream_fragment *alloc_string_stream_fragment(
+		struct kunit *test, int len, gfp_t gfp)
+{
+	struct string_stream_fragment_alloc_context context = {
+		.test = test,
+		.len = len,
+		.gfp = gfp
+	};
+
+	return kunit_alloc_resource(test,
+				    string_stream_fragment_init,
+				    string_stream_fragment_free,
+				    gfp,
+				    &context);
+}
+
+static int string_stream_fragment_destroy(struct string_stream_fragment *frag)
+{
+	return kunit_resource_destroy(frag->test,
+				      kunit_resource_instance_match,
+				      string_stream_fragment_free,
+				      frag);
+}
+
+int string_stream_vadd(struct string_stream *stream,
+		       const char *fmt,
+		       va_list args)
+{
+	struct string_stream_fragment *frag_container;
+	int len;
+	va_list args_for_counting;
+
+	/* Make a copy because `vsnprintf` could change it */
+	va_copy(args_for_counting, args);
+
+	/* Need space for null byte. */
+	len = vsnprintf(NULL, 0, fmt, args_for_counting) + 1;
+
+	va_end(args_for_counting);
+
+	frag_container = alloc_string_stream_fragment(stream->test,
+						      len,
+						      stream->gfp);
+	if (!frag_container)
+		return -ENOMEM;
+
+	len = vsnprintf(frag_container->fragment, len, fmt, args);
+	spin_lock(&stream->lock);
+	stream->length += len;
+	list_add_tail(&frag_container->node, &stream->fragments);
+	spin_unlock(&stream->lock);
+
+	return 0;
+}
+
+int string_stream_add(struct string_stream *stream, const char *fmt, ...)
+{
+	va_list args;
+	int result;
+
+	va_start(args, fmt);
+	result = string_stream_vadd(stream, fmt, args);
+	va_end(args);
+
+	return result;
+}
+
+static void string_stream_clear(struct string_stream *stream)
+{
+	struct string_stream_fragment *frag_container, *frag_container_safe;
+
+	spin_lock(&stream->lock);
+	list_for_each_entry_safe(frag_container,
+				 frag_container_safe,
+				 &stream->fragments,
+				 node) {
+		string_stream_fragment_destroy(frag_container);
+	}
+	stream->length = 0;
+	spin_unlock(&stream->lock);
+}
+
+char *string_stream_get_string(struct string_stream *stream)
+{
+	struct string_stream_fragment *frag_container;
+	size_t buf_len = stream->length + 1; /* +1 for null byte. */
+	char *buf;
+
+	buf = kunit_kzalloc(stream->test, buf_len, stream->gfp);
+	if (!buf)
+		return NULL;
+
+	spin_lock(&stream->lock);
+	list_for_each_entry(frag_container, &stream->fragments, node)
+		strlcat(buf, frag_container->fragment, buf_len);
+	spin_unlock(&stream->lock);
+
+	return buf;
+}
+
+int string_stream_append(struct string_stream *stream,
+			 struct string_stream *other)
+{
+	const char *other_content;
+
+	other_content = string_stream_get_string(other);
+
+	if (!other_content)
+		return -ENOMEM;
+
+	return string_stream_add(stream, other_content);
+}
+
+bool string_stream_is_empty(struct string_stream *stream)
+{
+	return list_empty(&stream->fragments);
+}
+
+struct string_stream_alloc_context {
+	struct kunit *test;
+	gfp_t gfp;
+};
+
+static int string_stream_init(struct kunit_resource *res, void *context)
+{
+	struct string_stream *stream;
+	struct string_stream_alloc_context *ctx = context;
+
+	stream = kunit_kzalloc(ctx->test, sizeof(*stream), ctx->gfp);
+	if (!stream)
+		return -ENOMEM;
+
+	res->allocation = stream;
+	stream->gfp = ctx->gfp;
+	stream->test = ctx->test;
+	INIT_LIST_HEAD(&stream->fragments);
+	spin_lock_init(&stream->lock);
+
+	return 0;
+}
+
+static void string_stream_free(struct kunit_resource *res)
+{
+	struct string_stream *stream = res->allocation;
+
+	string_stream_clear(stream);
+}
+
+struct string_stream *alloc_string_stream(struct kunit *test, gfp_t gfp)
+{
+	struct string_stream_alloc_context context = {
+		.test = test,
+		.gfp = gfp
+	};
+
+	return kunit_alloc_resource(test,
+				    string_stream_init,
+				    string_stream_free,
+				    gfp,
+				    &context);
+}
+
+int string_stream_destroy(struct string_stream *stream)
+{
+	return kunit_resource_destroy(stream->test,
+				      kunit_resource_instance_match,
+				      string_stream_free,
+				      stream);
+}
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
