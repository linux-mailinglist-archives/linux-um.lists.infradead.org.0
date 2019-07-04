Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FC05F047
	for <lists+linux-um@lfdr.de>; Thu,  4 Jul 2019 02:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mALqCZtieBlBbjc75C4GiqhDE3r0fZjL57jiqXr1eQg=; b=QQY1+PFjRmFQHx
	QlpYc3vEp47gXumnF4168z6REVF6Hrs9QjGL+X6PTFa3zXW6qunK8YVgTe7Dl1FNJN+bqeLHrlLHb
	wE300SL5hvpDbCLhi2Co3sG39Jhh/bzlmKNXI0E6YDAVMTbESeczCht8qGQZE5mFVNLfgldglHxnh
	Noqg8WWIjA6V3UihzxvxjsRaJ/jejuXJ6RszfZK1Ea798KicYiWuOq+vb5jM8fyErPXvcSqbPhExr
	ypO0mp7f9m6pzNYPGlC5/MqTdZ6VjufJ8CrKmaNBFti8leiOxGnbx/eAxY5hj9Hln+Jc5cNq6udDu
	BPDsbquVnFC6hQIN0WuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hipku-0007Ec-PZ; Thu, 04 Jul 2019 00:37:44 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hipkr-0007CV-L1
 for linux-um@lists.infradead.org; Thu, 04 Jul 2019 00:37:43 +0000
Received: by mail-pg1-x54a.google.com with SMTP id o19so2566882pgl.14
 for <linux-um@lists.infradead.org>; Wed, 03 Jul 2019 17:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=f0PwmK8KrN9Jpyw0Rue8Ft1fka8kdXwoPf6EfT7qZIw=;
 b=U4ZRei3OdgZI68WZawZWFae/Lu1PnUlyWBtfnJgdU6+d0ltIx7gjfrWcCzoSLPkMnj
 h1bffkO2vsdxoA0WKchAXI/4wbxP7kJ8E7tGUMVPrWSboxak3MKrNAlQRGdNuJi+ia3K
 V3yv2YQQP0P/plKf9OccqxLBCOn3QvqnBuTccNOQSp9ZGqsnzozwid9spcBmESNXE5Qb
 SlhMGpQU1ElfwO3LhVuLMycqzd31ycNjhkUIiAPaEdb/bnVL/8J+Qw6pj1TqtgBYBsr8
 ByKlmsm36VSIPOfzsKn3vJ9HzbSylZGesYJx8P6YEcyA9VhXHv622quvB2EkYB/95OeO
 xtNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=f0PwmK8KrN9Jpyw0Rue8Ft1fka8kdXwoPf6EfT7qZIw=;
 b=uMcLPnKwy3VoRl48tg1guv2G4/IDdVqQT+Fa3K5w/NK5qwdLYjRuUDrLCmPSWFR/R2
 98IDXiIHPKJ/X3RyqQEmahOgjpw55d/uvFyaBNM/HyyQTigB16L3WVktgjpIoEUe3L2T
 sBa0hhiQHKRxx5NnCynt8eeOOPszyaZMOS1rT2/yy5+QohoIKTOwjzuCkj7WyvUdCPGb
 MgiwGx3sfB6+Zym5IVDVcN9330kDufLmxFjBXqYNYtsP8W56Hwg3Es8Z8FI/NasOjzlo
 YJ3Ya+BRB7GS0cENRkZRRTzaLaTAkuGuvrcSvcFjEuzl4Z3E4kNueAtwaQ1NGHH729jl
 ADWQ==
X-Gm-Message-State: APjAAAU6x8nMyMSva03V6wV5quZZ7191YBqlFEU/7o5JCFkHFbgg8wgT
 02IQrVhve6VmsNalgSE1w5O9wDN5tx6sYeFSymrdoA==
X-Google-Smtp-Source: APXvYqwbpNsGjtf7QHt4urJS7wjUhWkD2PI3oHuHtZOM2G/nN7YCPHGjQ5yGYK0AsgvoGOi++fUmMf22gtvxJ2PhVV9CtQ==
X-Received: by 2002:a63:1462:: with SMTP id 34mr40229339pgu.417.1562200658210; 
 Wed, 03 Jul 2019 17:37:38 -0700 (PDT)
Date: Wed,  3 Jul 2019 17:36:01 -0700
In-Reply-To: <20190704003615.204860-1-brendanhiggins@google.com>
Message-Id: <20190704003615.204860-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190704003615.204860-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v6 04/18] kunit: test: add kunit_stream a std::stream like
 logger
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_173741_687287_DFEB329C 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
for logging test results.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/kunit-stream.h |  81 +++++++++++++++++++++++
 include/kunit/test.h         |   3 +
 kunit/Makefile               |   3 +-
 kunit/kunit-stream.c         | 123 +++++++++++++++++++++++++++++++++++
 kunit/test.c                 |   6 ++
 5 files changed, 215 insertions(+), 1 deletion(-)
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
index d9973ee5d7f82..a96a166c4808c 100644
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
index 0000000000000..8bea1f22eafb5
--- /dev/null
+++ b/kunit/kunit-stream.c
@@ -0,0 +1,123 @@
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
+	if (string_stream_vadd(stream, fmt, args) < 0)
+		kunit_err(kstream->test,
+			  "Failed to allocate fragment: %s\n",
+			  fmt);
+
+	va_end(args);
+}
+
+void kunit_stream_append(struct kunit_stream *kstream,
+				struct kunit_stream *other)
+{
+	struct string_stream *other_stream = other->internal_stream;
+	const char *other_content;
+
+	other_content = string_stream_get_string(other_stream);
+
+	if (!other_content) {
+		kunit_err(kstream->test,
+			  "Failed to get string from second argument for appending\n");
+		return;
+	}
+
+	kunit_stream_add(kstream, other_content);
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
+		goto cleanup;
+	}
+
+	kunit_printk(kstream->level, test, buf);
+	kfree(buf);
+
+cleanup:
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
+	struct kunit_resource *res;
+
+	res = kunit_alloc_resource(test,
+				   kunit_stream_init,
+				   kunit_stream_free,
+				   test);
+
+	if (!res)
+		return NULL;
+
+	kstream = res->allocation;
+	kstream->level = level;
+
+	return kstream;
+}
diff --git a/kunit/test.c b/kunit/test.c
index a70fbe449e922..c6a9e89ae3048 100644
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
 	mutex_init(&test->lock);
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
