Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69FA6A527
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 11:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CmSS3sBDs+QTUaVJ25tE5WrofZ5A9XT2brZF+80Zsc=; b=iLXCI9z5vSZdVE
	ctdIKPy4f8T1uwjqS80ijPiozXYP4wdd8i7F/KlYvjk4Onpkt85ABEvUWKAKmKCLBCXOcN5HErDxr
	C8Se/6pkpfxYSWffnOr2CMRZ/EO+K0KA+1/PmxzgFGIvWXgzhfVQ4U/gkOJoyJtTnGanuE3to5VwE
	eLzOM2d2k7nRwDy6fvNpJPQwW/GJZwZedeiNT9KzdJFSBAX2KbjpT0Jmnmy33irE8XGZrCS2x6j+W
	o4IBTgMoOUMsh9zbl6wvlp5jQexz/k211my8F4wmJzOTsNPxU3LJoS/mNRRwyHtZdRvIet1JAcPWe
	79omv7RZp3yoOmOOI8WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJzc-0005uX-9B; Tue, 16 Jul 2019 09:43:28 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJzY-0005qn-1j
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 09:43:25 +0000
Received: by mail-vs1-xe49.google.com with SMTP id b23so4211154vsl.20
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 02:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=TqlQqjzxZZ3G8gKzAaIB3o8BgpiljaP5AXN98lbOCcc=;
 b=b+x1y6mMnXsqkekWLIXfsj8Vbl45WTrrs1bixw1uF7FXw1tzJOv/Q3wH6id2Mq4dCo
 3g0ynGU45w8KR5sQz5FrcvwLeWepFLuXQGGKUaObVBrbC8tQx1jEu6s5DPmHyRiY50Pw
 AO9FkEIW3TzWdHfIuyB3UIf8Du4u0HAxL7oEjv04EXQ+GH4xpnLXPJbt1eDiDwPJ3pMw
 +oPeGNWREg5AzytL8uXuh/Ie3x9Vpc7FXQ3U6OtS4RA93N8xZ43vWmqFRJYDDYBxBa4l
 2s64soc3LbTYlh+YeSYFxigKmddAR19FUhkIHf7Y0ZE4LmfSE+ZNcN2NWVvtH64+/2s+
 QMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=TqlQqjzxZZ3G8gKzAaIB3o8BgpiljaP5AXN98lbOCcc=;
 b=ntH08nSY9gr2tD+/wmvaim8PIoqfTcWWApqpcqBLKVSaVLFrYt+zI5I/0GcXsf9r/i
 5PurHff//vbd9fhA6d3DAQOf3CW3G/gQojxMMCaT+6WObB97ICCsQXaO19WpagUtqTG8
 ZEdrCXfXCMOm0kjOv2AyNlCXHyCqXnXmf7N/wDDqMbqhJB4tHn54PgLZ+b60RQFdc4d0
 RTHKPHqb3cHuzumVrLZgk0BKNczu/1FaMCdx/cp/EwPwSkz7erqMgtuYYazB53F9JDV7
 Yuebppr5QkOfLp4wrfcuCj9vmoCqYq2U0Kii41LaIMWwISPxs/3DmZvahtf+BJ1WZslH
 tu/w==
X-Gm-Message-State: APjAAAUCY0I3zrunIenSKElwb1386O75p4REECF6HqimzZz8xYOxo4PW
 s0TYxJarZQOU7FwKkTlO34F3UnBOANoI/cPNa3DzgA==
X-Google-Smtp-Source: APXvYqwIbm7JxNlDogsJxSfizqw2t4SKDaVyPJJRYSQrWc4qwERW0wH53pqIAppUmtC5n+DIgt8XtwZJyC6giWyEsCA4xw==
X-Received: by 2002:a67:d50f:: with SMTP id l15mr19688769vsj.108.1563270200491; 
 Tue, 16 Jul 2019 02:43:20 -0700 (PDT)
Date: Tue, 16 Jul 2019 02:42:48 -0700
In-Reply-To: <20190716094302.180360-1-brendanhiggins@google.com>
Message-Id: <20190716094302.180360-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190716094302.180360-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v10 04/18] kunit: test: add kunit_stream a std::stream like
 logger
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_024324_096812_0D5A8EEB 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
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

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/kunit-stream.h |  81 ++++++++++++++++++++++++
 include/kunit/test.h         |   3 +
 kunit/Makefile               |   3 +-
 kunit/kunit-stream.c         | 116 +++++++++++++++++++++++++++++++++++
 kunit/test.c                 |   6 ++
 5 files changed, 208 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/kunit-stream.h
 create mode 100644 kunit/kunit-stream.c

diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
new file mode 100644
index 0000000000000..a7b53eabf6be4
--- /dev/null
+++ b/include/kunit/kunit-stream.h
@@ -0,0 +1,81 @@
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
+ * printed all at once.
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
+ *
+ * Constructs a new test managed &struct kunit_stream.
+ */
+struct kunit_stream *alloc_kunit_stream(struct kunit *test, const char *level);
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
index 12196719cf8f4..e92940d7e9e50 100644
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
index 0000000000000..c87b7fd3c06b4
--- /dev/null
+++ b/kunit/kunit-stream.c
@@ -0,0 +1,116 @@
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
+		kfree(buf);
+	}
+
+	kunit_stream_clear(kstream);
+}
+
+static int kunit_stream_init(struct kunit_resource *res, void *context)
+{
+	struct kunit *test = context;
+	struct kunit_stream *stream;
+
+	stream = kzalloc(sizeof(*stream), GFP_KERNEL);
+	if (!stream)
+		return -ENOMEM;
+
+	res->allocation = stream;
+	stream->test = test;
+	stream->internal_stream = alloc_string_stream(test);
+
+	if (!stream->internal_stream)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void kunit_stream_free(struct kunit_resource *res)
+{
+	struct kunit_stream *stream = res->allocation;
+
+	if (!string_stream_is_empty(stream->internal_stream)) {
+		kunit_err(stream->test,
+			  "End of test case reached with uncommitted stream entries\n");
+		kunit_stream_commit(stream);
+	}
+}
+
+struct kunit_stream *alloc_kunit_stream(struct kunit *test, const char *level)
+{
+	struct kunit_stream *kstream;
+
+	kstream = kunit_alloc_resource(test,
+				       kunit_stream_init,
+				       kunit_stream_free,
+				       GFP_KERNEL,
+				       test);
+
+	if (!kstream)
+		return NULL;
+
+	kstream->level = level;
+
+	return kstream;
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
