Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571871E485
	for <lists+linux-um@lfdr.de>; Wed, 15 May 2019 00:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2DoYthphGkK/20DxXxZwkMNabz/guUSfFUnoVaIfog=; b=FOKmVKTiaLq0sJ
	s3CxfyhOUX6wYJamhzKqAj6ZQD5COkvUmlYbhD2o8Nb/LMMAn1w9ot9GkwXcDJBeCVGIjbSy017MX
	wMuFMdeA2kB2PeJylQPKEnGoM9H/12M7ahAPletYySFtq02RjO2F3AcEwgn0qsmzOwQmVuEuki5i/
	mz5F4YNljESUkbdEMM89rEEJNNQuDi0sfmv8yy0R2p1hE0/RK12tO1tAhZUz4GtcMlUtBCQmNbRxB
	dIleSqINbSqUPvffWw/l0sivie9sXMjKaKPQOCljjHHtumdlX65ZAZugI7KpBtJT0aKJxmmZc0+FC
	egqnsZOxdHqwOh9cHVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfkw-0000my-DH; Tue, 14 May 2019 22:18:42 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfkt-0000mG-Ew
 for linux-um@lists.infradead.org; Tue, 14 May 2019 22:18:41 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id v123so626005ywf.16
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 15:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=cYVYiRlOTl+HHTHC4VnotSZcOxpzrVA2zwYQx1TkL4M=;
 b=dXBGU2hHcMiE4u+kb9J0rgbPRA4L+RwX45cYa7yjiJOCgqCswGeD1mKQmYJ6ivvUvL
 hz+pb6xz9vh3w43kb631cryEdSDHtIZVieHMMWphtl1A6rDk8I9nIBvYIT4ONVxPPTWS
 Rc44UOaIBM5/C2FXGtCr4x9wMlYwh+Lct8Lz2+R11hye7FDumEMyWFoGxyB6nxrP2S7P
 vw0ZSsMWkKNfPWQzwt+B1Vg+TV5xVPk6HFRUpomF6jcG65/n1SHgvaVqR5WhZ053WvLp
 ZPPCKOL/5LkzTvBnDk8o1F4CaDNZAyYrHp24c2sNqUDJUfyGmAqSLFIE+nPjO/grh5xe
 nj7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=cYVYiRlOTl+HHTHC4VnotSZcOxpzrVA2zwYQx1TkL4M=;
 b=jB8Ec4JlycaVTTxwTO1aWsU5IpOCm1ML6KIaeuFRDpj9DucQbvZuizYnJZUhNKM4Dc
 oJL49nQsZwJsJ8lGuIerQ2n7HrY7p+obtWaUr36Ni1/dOKhiJdHLD0cVfDdgnhWNX/Qk
 aJVm5irqQNM2K9qsSpezf6F7PpG0rod6ufXPmxI5p60M+hCB2RFciICYB6Zp7TBVkb5D
 WKZtxzK0sM0198686bZnMC2vvudKqTZPys6B2X4F15XVHhtpr9hxqyumKvTbwZJCJR5M
 ro44XZoqR1YAuBVEWU3HGpYlfoUewAPqAgobcd7iUoV3XNRMdRmsQIiKJpvbYWkrOrk2
 /Pyw==
X-Gm-Message-State: APjAAAUlhMs9fju6nxL1oWtDGtUWRhT0nof3iwID6bY0VtsLazG7j49D
 QaFP93oH+eKiTT17f4R3EUMesq+lcZXRxP3YBJgx2A==
X-Google-Smtp-Source: APXvYqzQ6dKuzahWylpitsM/95C+uvJi8W1WIQ4jGgq8U1/lvr0pPL58kmPdhaSXWdlNzcnwppp1Yj1xdH/Iqu8xgB3+Kw==
X-Received: by 2002:a81:5e0a:: with SMTP id s10mr19670374ywb.451.1557872317694; 
 Tue, 14 May 2019 15:18:37 -0700 (PDT)
Date: Tue, 14 May 2019 15:16:57 -0700
In-Reply-To: <20190514221711.248228-1-brendanhiggins@google.com>
Message-Id: <20190514221711.248228-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v4 04/18] kunit: test: add kunit_stream a std::stream like
 logger
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_151839_500971_8B12864A 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

A lot of the expectation and assertion infrastructure prints out fairly
complicated test failure messages, so add a C++ style log library for
for logging test results.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/kunit-stream.h |  85 ++++++++++++++++++++
 include/kunit/test.h         |   3 +
 kunit/Makefile               |   3 +-
 kunit/kunit-stream.c         | 152 +++++++++++++++++++++++++++++++++++
 kunit/test.c                 |   7 ++
 5 files changed, 249 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/kunit-stream.h
 create mode 100644 kunit/kunit-stream.c

diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
new file mode 100644
index 0000000000000..d457a54fe0100
--- /dev/null
+++ b/include/kunit/kunit-stream.h
@@ -0,0 +1,85 @@
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
+	spinlock_t lock; /* Guards level. */
+	const char *level;
+	struct string_stream *internal_stream;
+};
+
+/**
+ * kunit_new_stream() - constructs a new &struct kunit_stream.
+ * @test: The test context object.
+ *
+ * Constructs a new test managed &struct kunit_stream.
+ */
+struct kunit_stream *kunit_new_stream(struct kunit *test);
+
+/**
+ * kunit_stream_set_level(): sets the level that string should be printed at.
+ * @this: the stream being operated on.
+ * @level: the print level the stream is set to output to.
+ *
+ * Sets the print level at which the stream outputs.
+ */
+void kunit_stream_set_level(struct kunit_stream *this, const char *level);
+
+/**
+ * kunit_stream_add(): adds the formatted input to the internal buffer.
+ * @this: the stream being operated on.
+ * @fmt: printf style format string to append to stream.
+ *
+ * Appends the formatted string, @fmt, to the internal buffer.
+ */
+void __printf(2, 3) kunit_stream_add(struct kunit_stream *this,
+				     const char *fmt, ...);
+
+/**
+ * kunit_stream_append(): appends the contents of @other to @this.
+ * @this: the stream to which @other is appended.
+ * @other: the stream whose contents are appended to @this.
+ *
+ * Appends the contents of @other to @this.
+ */
+void kunit_stream_append(struct kunit_stream *this, struct kunit_stream *other);
+
+/**
+ * kunit_stream_commit(): prints out the internal buffer to the user.
+ * @this: the stream being operated on.
+ *
+ * Outputs the contents of the internal buffer as a kunit_printk formatted
+ * output.
+ */
+void kunit_stream_commit(struct kunit_stream *this);
+
+/**
+ * kunit_stream_clear(): clears the internal buffer.
+ * @this: the stream being operated on.
+ *
+ * Clears the contents of the internal buffer.
+ */
+void kunit_stream_clear(struct kunit_stream *this);
+
+#endif /* _KUNIT_KUNIT_STREAM_H */
diff --git a/include/kunit/test.h b/include/kunit/test.h
index 5e86d88cd5305..4bc839884a83c 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -11,6 +11,7 @@
 
 #include <linux/types.h>
 #include <linux/slab.h>
+#include <kunit/kunit-stream.h>
 
 struct kunit_resource;
 
@@ -172,6 +173,8 @@ struct kunit {
 
 void kunit_init_test(struct kunit *test, const char *name);
 
+void kunit_fail(struct kunit *test, struct kunit_stream *stream);
+
 int kunit_run_tests(struct kunit_module *module);
 
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
index 0000000000000..1884f1b550888
--- /dev/null
+++ b/kunit/kunit-stream.c
@@ -0,0 +1,152 @@
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
+static const char *kunit_stream_get_level(struct kunit_stream *this)
+{
+	unsigned long flags;
+	const char *level;
+
+	spin_lock_irqsave(&this->lock, flags);
+	level = this->level;
+	spin_unlock_irqrestore(&this->lock, flags);
+
+	return level;
+}
+
+void kunit_stream_set_level(struct kunit_stream *this, const char *level)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&this->lock, flags);
+	this->level = level;
+	spin_unlock_irqrestore(&this->lock, flags);
+}
+
+void kunit_stream_add(struct kunit_stream *this, const char *fmt, ...)
+{
+	va_list args;
+	struct string_stream *stream = this->internal_stream;
+
+	va_start(args, fmt);
+
+	if (string_stream_vadd(stream, fmt, args) < 0)
+		kunit_err(this->test, "Failed to allocate fragment: %s\n", fmt);
+
+	va_end(args);
+}
+
+void kunit_stream_append(struct kunit_stream *this,
+				struct kunit_stream *other)
+{
+	struct string_stream *other_stream = other->internal_stream;
+	const char *other_content;
+
+	other_content = string_stream_get_string(other_stream);
+
+	if (!other_content) {
+		kunit_err(this->test,
+			  "Failed to get string from second argument for appending.\n");
+		return;
+	}
+
+	kunit_stream_add(this, other_content);
+}
+
+void kunit_stream_clear(struct kunit_stream *this)
+{
+	string_stream_clear(this->internal_stream);
+}
+
+void kunit_stream_commit(struct kunit_stream *this)
+{
+	struct string_stream *stream = this->internal_stream;
+	struct string_stream_fragment *fragment;
+	const char *level;
+	char *buf;
+
+	level = kunit_stream_get_level(this);
+	if (!level) {
+		kunit_err(this->test,
+			  "Stream was committed without a specified log level.\n");
+		level = KERN_ERR;
+		kunit_stream_set_level(this, level);
+	}
+
+	buf = string_stream_get_string(stream);
+	if (!buf) {
+		kunit_err(this->test,
+			 "Could not allocate buffer, dumping stream:\n");
+		list_for_each_entry(fragment, &stream->fragments, node) {
+			kunit_err(this->test, fragment->fragment);
+		}
+		kunit_err(this->test, "\n");
+		goto cleanup;
+	}
+
+	kunit_printk(level, this->test, buf);
+	kfree(buf);
+
+cleanup:
+	kunit_stream_clear(this);
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
+	spin_lock_init(&stream->lock);
+	stream->internal_stream = new_string_stream();
+
+	if (!stream->internal_stream) {
+		kfree(stream);
+		return -ENOMEM;
+	}
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
+			 "End of test case reached with uncommitted stream entries.\n");
+		kunit_stream_commit(stream);
+	}
+
+	destroy_string_stream(stream->internal_stream);
+	kfree(stream);
+}
+
+struct kunit_stream *kunit_new_stream(struct kunit *test)
+{
+	struct kunit_resource *res;
+
+	res = kunit_alloc_resource(test,
+				   kunit_stream_init,
+				   kunit_stream_free,
+				   test);
+
+	if (res)
+		return res->allocation;
+	else
+		return NULL;
+}
diff --git a/kunit/test.c b/kunit/test.c
index a15e6f8c41582..0bb6f53a7f87e 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -138,6 +138,13 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
 			      test_case->name);
 }
 
+void kunit_fail(struct kunit *test, struct kunit_stream *stream)
+{
+	kunit_set_success(test, false);
+	kunit_stream_set_level(stream, KERN_ERR);
+	kunit_stream_commit(stream);
+}
+
 void kunit_init_test(struct kunit *test, const char *name)
 {
 	spin_lock_init(&test->lock);
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
