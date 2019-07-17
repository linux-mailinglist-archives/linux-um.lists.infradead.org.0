Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E466B3A6
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lTal4XpnUL7i/zVJWuj8ayxsyz6LNr4+tzOgd62SDA=; b=vEK8ZFnRUg8Apm
	m0FpLuGfSxKpBJ2bnPnH55me6Nb1HSnCZA2pkRZeiWnSuy4SqAc6ihid5XxxinojC8kKvugDGvnGf
	UrKEOiuOQsbucbga7bi6VDLRuKB/720iWS+gwDNaNNY+wlxrIRbWjwL6hNexFHFpA9ZGzx5zmPCKD
	1WtV7fGqWlFy9Pa2p1+a/DsIWUZc+PY+MHcmzb5rKk9/SVIeyzWV3wZaWt0kNkdOVEh7u2bR+KHd9
	ebL3FATpP0AqiAgksS9ylU7mZNN86VaTUi+fEho7Txqx2Oy47fngD3eAwgGcrxPo+wUFxU+9zZh+2
	appmywcm8CArNdVzA+Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZAv-0006P1-Rr; Wed, 17 Jul 2019 01:56:09 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZAs-0006Mr-An
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:56:08 +0000
Received: by mail-pl1-x649.google.com with SMTP id f2so11175760plr.0
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Nz8aHV39st6C14LfpoASArc0NcKx9jRy4dn2kjWwnX8=;
 b=qQsx0jtc8w1sgJvUe/HBL6sYcJv0mQpi1pE2DODOu7wiK8hBgAw5eKIanqIz+MCPP+
 T42lXg62zCQUHH1HcPy+rdJrTlLvly2oxydW9AA+AjKUYSDQtHbxiyurLQa0sTzRzQts
 fusFLoxwz9RW6IYhqoi3Ao7MDICk3idt/q3hKTTBtnLnA4p1QwXAZjBEWWAe7eJWUlpp
 Z38Ah5SBDsoKrms0G12A/N9VrKF5r3sKdxZ19JzADgdQNWdhpmAFlKCck/2cTkzDpCKI
 dAbG4gSaB9PO3ZSIHlsHXkIEKonQY/W+nK0Hz+7X7ebdQ3z92PNyFoxS94t2MGImlEeh
 0C8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Nz8aHV39st6C14LfpoASArc0NcKx9jRy4dn2kjWwnX8=;
 b=AyQurDsS9dJEU4DbA0v/T5M+SOX5oj89d9B3Qf6T2xVqGq+tZELOfGpOgIsADBeehW
 s207Tc2ZKk7alUdsq4aKUBawliKrc4ifTtKJyVHlACVNKW1cCvxIJyfMQqto0PAa8O8S
 r3v5i/rE2uh7mJf8V/4awemUQ4CoJZaatt1u93kJL3T+JQcBhW5jr7zhOfQ41TpBoO4C
 zP3r9FH8VV4/m+haBBOAOiZH0A3npu4fBwbs9+TemVabK6d2OkxsJ1L1vr6tiEpFjJbd
 vYhZgHagFGF+XjD+6pxXYrUuMKfpxN9HrMgkgK/4P/Jr7CPo8ZFo9bbZXuq5emA/HoOc
 T7MQ==
X-Gm-Message-State: APjAAAVLFv0pmqLTXL2COZ2vy031gi7XMxyoBn1TPUedaCd+XrlM4dAt
 YC5V8mGSUE0sZ2ezP1v/iRfl9tOJ1vpZZ/4Xz3dPDQ==
X-Google-Smtp-Source: APXvYqz0kOQ0kjtDlOHNl7pfytCE13iMAmvjEs4xHUGo47xOC7cuwiN8PWab0JpIXXH5u0DcT8cEF0Ve3SFX6VxWkHAAiw==
X-Received: by 2002:a63:e907:: with SMTP id i7mr37161686pgh.84.1563328563771; 
 Tue, 16 Jul 2019 18:56:03 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:29 -0700
In-Reply-To: <20190717015543.152251-1-brendanhiggins@google.com>
Message-Id: <20190717015543.152251-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190717015543.152251-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 04/18] kunit: test: add kunit_stream a std::stream like
 logger
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185606_372929_FF2FE7F8 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

A lot of the expectation and assertion infrastructure prints out fairly
complicated test failure messages, so add a C++ style log library for
for logging test results called `struct kunit_stream`.

kunit_stream allows us to construct a message before we know whether we
want to print it out; this can be extremely handy if there is
information you might need for a failure message that is easiest to
collect in the steps leading up to the actual check.

Note that kunit_stream is distinct from string_stream: whereas
string_stream is really just a string builder, kunit_stream is
specifically used for constructing expectation/assertion (introduced
later in this series) messages to a user of KUnit.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/kunit-stream.h |  97 +++++++++++++++++++++++++++++
 include/kunit/test.h         |   3 +
 kunit/Makefile               |   3 +-
 kunit/kunit-stream.c         | 115 +++++++++++++++++++++++++++++++++++
 kunit/test.c                 |   6 ++
 5 files changed, 223 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/kunit-stream.h
 create mode 100644 kunit/kunit-stream.c

diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
new file mode 100644
index 0000000000000..ba0ff553b8301
--- /dev/null
+++ b/include/kunit/kunit-stream.h
@@ -0,0 +1,97 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * C++ stream style string formatter and printer used in KUnit for outputting
+ * KUnit messages.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#ifndef _KUNIT_KUNIT_STREAM_H
+#define _KUNIT_KUNIT_STREAM_H
+
+#include <linux/types.h>
+#include <kunit/string-stream.h>
+
+struct kunit;
+
+/**
+ * struct kunit_stream - a std::stream style string builder.
+ *
+ * A std::stream style string builder. Allows messages to be built up and
+ * printed all at once. Note that the intention is to only use
+ * &struct kunit_stream to communicate with a user of KUnit, most often to
+ * communicate something about an expectation or an assertion to the user. If
+ * you want a similar interface, but aren't sure if this is the right class for
+ * you to use, you probably want to use the related string_stream class, which
+ * is allowed for generic string construction in a similar manner. This class is
+ * really only for the KUnit library to communicate certain kinds of information
+ * to KUnit users and should not be used by anyone else.
+ *
+ * A note on &struct kunit_stream's usage: a kunit_stream will generally
+ * accompany *one* expectation or assertion. Multiple expectations/assertions
+ * may be validated concurrently at any given time, even within a single test
+ * case, so sharing a kunit_stream between expectations/assertions may result in
+ * unintended consequences.
+ */
+struct kunit_stream {
+	/* private: internal use only. */
+	struct kunit *test;
+	const char *level;
+	struct string_stream *internal_stream;
+};
+
+/**
+ * alloc_kunit_stream() - constructs a new &struct kunit_stream.
+ * @test: The test context object.
+ * @level: The log level at which to print out the message.
+ * @gfp: The GFP flags to use for internal allocations.
+ *
+ * Constructs a new test managed &struct kunit_stream.
+ */
+struct kunit_stream *alloc_kunit_stream(struct kunit *test,
+					const char *level,
+					gfp_t gfp);
+
+/**
+ * kunit_stream_add(): adds the formatted input to the internal buffer.
+ * @kstream: the stream being operated on.
+ * @fmt: printf style format string to append to stream.
+ *
+ * Appends the formatted string, @fmt, to the internal buffer.
+ */
+void __printf(2, 3) kunit_stream_add(struct kunit_stream *kstream,
+				     const char *fmt, ...);
+
+/**
+ * kunit_stream_append(): appends the contents of @other to @kstream.
+ * @kstream: the stream to which @other is appended.
+ * @other: the stream whose contents are appended to @kstream.
+ *
+ * Appends the contents of @other to @kstream.
+ */
+void kunit_stream_append(struct kunit_stream *kstream,
+			 struct kunit_stream *other);
+
+/**
+ * kunit_stream_commit(): prints out the internal buffer to the user.
+ * @kstream: the stream being operated on.
+ *
+ * Outputs the contents of the internal buffer as a kunit_printk formatted
+ * output. KUNIT_STREAM ONLY OUTPUTS ITS BUFFER TO THE USER IF COMMIT IS
+ * CALLED!!! The reason for this is that it allows us to construct a message
+ * before we know whether we want to print it out; this can be extremely handy
+ * if there is information you might need for a failure message that is easiest
+ * to collect in the steps leading up to the actual check.
+ */
+void kunit_stream_commit(struct kunit_stream *kstream);
+
+/**
+ * kunit_stream_clear(): clears the internal buffer.
+ * @kstream: the stream being operated on.
+ *
+ * Clears the contents of the internal buffer.
+ */
+void kunit_stream_clear(struct kunit_stream *kstream);
+
+#endif /* _KUNIT_KUNIT_STREAM_H */
diff --git a/include/kunit/test.h b/include/kunit/test.h
index d0bf112910caf..4b6e7d91afd34 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -11,6 +11,7 @@
 
 #include <linux/types.h>
 #include <linux/slab.h>
+#include <kunit/kunit-stream.h>
 
 struct kunit_resource;
 
@@ -184,6 +185,8 @@ struct kunit {
 
 void kunit_init_test(struct kunit *test, const char *name);
 
+void kunit_fail(struct kunit *test, struct kunit_stream *stream);
+
 int kunit_run_tests(struct kunit_suite *suite);
 
 /**
diff --git a/kunit/Makefile b/kunit/Makefile
index 275b565a0e81f..6ddc622ee6b1c 100644
--- a/kunit/Makefile
+++ b/kunit/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
-					string-stream.o
+					string-stream.o \
+					kunit-stream.o
diff --git a/kunit/kunit-stream.c b/kunit/kunit-stream.c
new file mode 100644
index 0000000000000..42fcef8188b3a
--- /dev/null
+++ b/kunit/kunit-stream.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * C++ stream style string formatter and printer used in KUnit for outputting
+ * KUnit messages.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#include <kunit/test.h>
+#include <kunit/kunit-stream.h>
+#include <kunit/string-stream.h>
+
+void kunit_stream_add(struct kunit_stream *kstream, const char *fmt, ...)
+{
+	va_list args;
+	struct string_stream *stream = kstream->internal_stream;
+
+	va_start(args, fmt);
+
+	if (string_stream_vadd(stream, fmt, args))
+		kunit_err(kstream->test,
+			  "Failed to allocate fragment: %s\n",
+			  fmt);
+
+	va_end(args);
+}
+
+void kunit_stream_append(struct kunit_stream *kstream,
+			 struct kunit_stream *other)
+{
+	int ret;
+
+	ret = string_stream_append(kstream->internal_stream,
+				   other->internal_stream);
+
+	if (ret)
+		kunit_err(kstream->test,
+			  "Failed to append other stream: %d\n", ret);
+}
+
+void kunit_stream_clear(struct kunit_stream *kstream)
+{
+	string_stream_clear(kstream->internal_stream);
+}
+
+void kunit_stream_commit(struct kunit_stream *kstream)
+{
+	struct string_stream *stream = kstream->internal_stream;
+	struct string_stream_fragment *fragment;
+	struct kunit *test = kstream->test;
+	char *buf;
+
+	buf = string_stream_get_string(stream);
+	if (!buf) {
+		kunit_err(test,
+			  "Could not allocate buffer, dumping stream:\n");
+		list_for_each_entry(fragment, &stream->fragments, node) {
+			kunit_err(test, fragment->fragment);
+		}
+		kunit_err(test, "\n");
+	} else {
+		kunit_printk(kstream->level, test, buf);
+	}
+
+	kunit_stream_clear(kstream);
+}
+
+struct kunit_stream_alloc_context {
+	struct kunit *test;
+	const char *level;
+	gfp_t gfp;
+};
+
+static int kunit_stream_init(struct kunit_resource *res, void *context)
+{
+	struct kunit_stream_alloc_context *ctx = context;
+	struct kunit_stream *stream;
+
+	stream = kunit_kzalloc(ctx->test, sizeof(*stream), ctx->gfp);
+	if (!stream)
+		return -ENOMEM;
+
+	res->allocation = stream;
+	stream->test = ctx->test;
+	stream->level = ctx->level;
+	stream->internal_stream = alloc_string_stream(ctx->test, ctx->gfp);
+
+	if (!stream->internal_stream)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void kunit_stream_free(struct kunit_resource *res)
+{
+	/* Do nothing because cleanup is handled by KUnit managed resources */
+}
+
+struct kunit_stream *alloc_kunit_stream(struct kunit *test,
+					const char *level,
+					gfp_t gfp)
+{
+	struct kunit_stream_alloc_context ctx = {
+		.test = test,
+		.level = level,
+		.gfp = gfp
+	};
+
+	return kunit_alloc_resource(test,
+				    kunit_stream_init,
+				    kunit_stream_free,
+				    gfp,
+				    &ctx);
+}
diff --git a/kunit/test.c b/kunit/test.c
index 4c178a817f2fe..fdab07bb0b529 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -120,6 +120,12 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
 			      test_case->name);
 }
 
+void kunit_fail(struct kunit *test, struct kunit_stream *stream)
+{
+	kunit_set_failure(test);
+	kunit_stream_commit(stream);
+}
+
 void kunit_init_test(struct kunit *test, const char *name)
 {
 	spin_lock_init(&test->lock);
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
