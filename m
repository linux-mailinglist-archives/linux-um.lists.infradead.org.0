Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02DE8A5CA
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWqFbMkcPbFHPPkhE7o335YJ9xAOuQ/eDDsm1ReY36k=; b=o4xMZCKGUbUxbh
	Rrxo5l5qBbYN+nP4WsNumBsVna9ummN2RaUt3XKqdeDrfbYhtlPTAsInGI1EzV5axj9q1z1mjTq3C
	jx3ZjsT02LkZ9r6ApwNwMvbDY6NXpJADok41bi9ZJRd4R5g1OaGBoWiWRie6xEuRYYvMjAVbdBqlZ
	yj9p5FySTq2r0pZBRC0eFpam95xEefjpS8ORz0ohv5eRrUy1rP/AvoGAbdT/zG4ZczS61l7uNzqrD
	+0deD4/j0nzdPXcD48yNlLrOsVs12VyTt4YNjxTQFNqt0jKvVOQDwXRhp/DFN93N5U7iaXER4E5QY
	uVQwNweaJgfGXFPseE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF06-0003bX-4a; Mon, 12 Aug 2019 18:24:58 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF00-0003Y3-JF
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:24:54 +0000
Received: by mail-ua1-x94a.google.com with SMTP id p19so9469716uar.0
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=1lm2vg62YgNJV8aGAtuoCBokWk9J7/vL1Y4Yz7D8cCE=;
 b=g1hRuiMxleIXT0BCawGGy+JHLzmxgX8P5AgOGtzNB83MWOgfpGYOdtLVaZhJRCBn5j
 7EUaXxSIuVmI8dOEwbLlAHpvypqg4NJaTgMnzPB8Xi9o1Tf3N4hcwaHMxpKAeWhYmKE1
 HKg9+1j5B0QFSO/frOo3XEBciaAGazVei6AvmLuvu4SZRubYM4UDyTQd7is9o+Rice08
 p06SzXmuFuDGZejA6vM8BJF8pXNw+wu+RhTlhvRreS7/sZa2P7ZkU6IPtc2p7yEnAWNk
 nkIvxWKb2SRkf89XBvsYv/3mWe2gCAutWiZBXY7FtdpqBp6yQtWFSXZBSuDyqGaIJPSl
 d6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=1lm2vg62YgNJV8aGAtuoCBokWk9J7/vL1Y4Yz7D8cCE=;
 b=UpbyPXQMVLdoFAdh30RwWhDJy8Rtp6nvz+TjG9WMbv7ueJ6ujFrThpRU2dVCrrwQsU
 ER00GaVcLlkvaJDimzim4/UvU/nsO89QkOlZ9Q91CQmKQgj/ZIMSsfyqNj1kth2msXJX
 tQva7kCNAmbmT7oKobr/NGJ0pyqSqJ6NZeXGKwjaIG9QswzDBZmjNUN4DYZ15kqR+Ck+
 4fPUgLBKb22lFdOTZjHQtMmlBdC+M4sPp1lkN4Ow5Hp+wEeW2GhPB0+BfTGEqcU7StDa
 hDgbtrKOsjep2bmf1mBig8owHuzcKQZy2705abY/IFM0KYla/O2wcbHCBqCL2ly/ah4k
 2SPw==
X-Gm-Message-State: APjAAAVPE4Hs6NSfNJPM4cfwr7ABNKeOk+dBq9T2TEWiUMu+xGj6V5xl
 5pM7o6PIHQW2WQSGqpcdPzIlneuKE+GMJMHE+zErkQ==
X-Google-Smtp-Source: APXvYqy/b41GTjEEX7uN1bv3CBRrVdrZKatw7/En7moeScfgED29iInB+lzlVrZxhuKtvIn/bSRPR0mQu9eZiGbmIgPVjQ==
X-Received: by 2002:a1f:ec41:: with SMTP id k62mr3543588vkh.32.1565634289900; 
 Mon, 12 Aug 2019 11:24:49 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:07 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 04/18] kunit: test: add assertion printing library
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112452_688856_603C2EBF 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
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
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add `struct kunit_assert` and friends which provide a structured way to
capture data from an expectation or an assertion (introduced later in
the series) so that it may be printed out in the event of a failure.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 include/kunit/assert.h | 183 +++++++++++++++++++++++++++++++++++++++++
 kunit/Makefile         |   3 +-
 kunit/assert.c         | 141 +++++++++++++++++++++++++++++++
 3 files changed, 326 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/assert.h
 create mode 100644 kunit/assert.c

diff --git a/include/kunit/assert.h b/include/kunit/assert.h
new file mode 100644
index 0000000000000..55f1b88b0cb4d
--- /dev/null
+++ b/include/kunit/assert.h
@@ -0,0 +1,183 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Assertion and expectation serialization API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+
+#ifndef _KUNIT_ASSERT_H
+#define _KUNIT_ASSERT_H
+
+#include <linux/err.h>
+#include <kunit/string-stream.h>
+
+struct kunit;
+
+enum kunit_assert_type {
+	KUNIT_ASSERTION,
+	KUNIT_EXPECTATION,
+};
+
+struct kunit_assert {
+	struct kunit *test;
+	enum kunit_assert_type type;
+	int line;
+	const char *file;
+	struct va_format message;
+	void (*format)(const struct kunit_assert *assert,
+		       struct string_stream *stream);
+};
+
+#define KUNIT_INIT_VA_FMT_NULL { .fmt = NULL, .va = NULL }
+
+#define KUNIT_INIT_ASSERT_STRUCT(kunit, assert_type, fmt) {		       \
+	.test = kunit,							       \
+	.type = assert_type,						       \
+	.file = __FILE__,						       \
+	.line = __LINE__,						       \
+	.message = KUNIT_INIT_VA_FMT_NULL,				       \
+	.format = fmt							       \
+}
+
+void kunit_base_assert_format(const struct kunit_assert *assert,
+			      struct string_stream *stream);
+
+void kunit_assert_print_msg(const struct kunit_assert *assert,
+			    struct string_stream *stream);
+
+struct kunit_fail_assert {
+	struct kunit_assert assert;
+};
+
+void kunit_fail_assert_format(const struct kunit_assert *assert,
+			      struct string_stream *stream);
+
+#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {			       \
+		.assert = KUNIT_INIT_ASSERT_STRUCT(test,		       \
+						   type,		       \
+						   kunit_fail_assert_format)   \
+}
+
+struct kunit_unary_assert {
+	struct kunit_assert assert;
+	const char *condition;
+	bool expected_true;
+};
+
+void kunit_unary_assert_format(const struct kunit_assert *assert,
+			       struct string_stream *stream);
+
+#define KUNIT_INIT_UNARY_ASSERT_STRUCT(test, type, cond, expect_true) {	       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_unary_assert_format),	       \
+	.condition = cond,						       \
+	.expected_true = expect_true					       \
+}
+
+struct kunit_ptr_not_err_assert {
+	struct kunit_assert assert;
+	const char *text;
+	const void *value;
+};
+
+void kunit_ptr_not_err_assert_format(const struct kunit_assert *assert,
+				     struct string_stream *stream);
+
+#define KUNIT_INIT_PTR_NOT_ERR_STRUCT(test, type, txt, val) {		       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_ptr_not_err_assert_format),   \
+	.text = txt,							       \
+	.value = val							       \
+}
+
+struct kunit_binary_assert {
+	struct kunit_assert assert;
+	const char *operation;
+	const char *left_text;
+	long long left_value;
+	const char *right_text;
+	long long right_value;
+};
+
+void kunit_binary_assert_format(const struct kunit_assert *assert,
+				struct string_stream *stream);
+
+#define KUNIT_INIT_BINARY_ASSERT_STRUCT(test,				       \
+					type,				       \
+					op_str,				       \
+					left_str,			       \
+					left_val,			       \
+					right_str,			       \
+					right_val) {			       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_binary_assert_format),	       \
+	.operation = op_str,						       \
+	.left_text = left_str,						       \
+	.left_value = left_val,						       \
+	.right_text = right_str,					       \
+	.right_value = right_val					       \
+}
+
+struct kunit_binary_ptr_assert {
+	struct kunit_assert assert;
+	const char *operation;
+	const char *left_text;
+	const void *left_value;
+	const char *right_text;
+	const void *right_value;
+};
+
+void kunit_binary_ptr_assert_format(const struct kunit_assert *assert,
+				    struct string_stream *stream);
+
+#define KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT(test,			       \
+					    type,			       \
+					    op_str,			       \
+					    left_str,			       \
+					    left_val,			       \
+					    right_str,			       \
+					    right_val) {		       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_binary_ptr_assert_format),    \
+	.operation = op_str,						       \
+	.left_text = left_str,						       \
+	.left_value = left_val,						       \
+	.right_text = right_str,					       \
+	.right_value = right_val					       \
+}
+
+struct kunit_binary_str_assert {
+	struct kunit_assert assert;
+	const char *operation;
+	const char *left_text;
+	const char *left_value;
+	const char *right_text;
+	const char *right_value;
+};
+
+void kunit_binary_str_assert_format(const struct kunit_assert *assert,
+				    struct string_stream *stream);
+
+#define KUNIT_INIT_BINARY_STR_ASSERT_STRUCT(test,			       \
+					    type,			       \
+					    op_str,			       \
+					    left_str,			       \
+					    left_val,			       \
+					    right_str,			       \
+					    right_val) {		       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_binary_str_assert_format),    \
+	.operation = op_str,						       \
+	.left_text = left_str,						       \
+	.left_value = left_val,						       \
+	.right_text = right_str,					       \
+	.right_value = right_val					       \
+}
+
+#endif /*  _KUNIT_ASSERT_H */
diff --git a/kunit/Makefile b/kunit/Makefile
index 275b565a0e81f..6dcbe309036b8 100644
--- a/kunit/Makefile
+++ b/kunit/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
-					string-stream.o
+					string-stream.o \
+					assert.o
diff --git a/kunit/assert.c b/kunit/assert.c
new file mode 100644
index 0000000000000..86013d4cf891c
--- /dev/null
+++ b/kunit/assert.c
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Assertion and expectation serialization API.
+ *
+ * Copyright (C) 2019, Google LLC.
+ * Author: Brendan Higgins <brendanhiggins@google.com>
+ */
+#include <kunit/assert.h>
+
+void kunit_base_assert_format(const struct kunit_assert *assert,
+			      struct string_stream *stream)
+{
+	const char *expect_or_assert = NULL;
+
+	switch (assert->type) {
+	case KUNIT_EXPECTATION:
+		expect_or_assert = "EXPECTATION";
+		break;
+	case KUNIT_ASSERTION:
+		expect_or_assert = "ASSERTION";
+		break;
+	}
+
+	string_stream_add(stream, "%s FAILED at %s:%d\n",
+			 expect_or_assert, assert->file, assert->line);
+}
+
+void kunit_assert_print_msg(const struct kunit_assert *assert,
+			    struct string_stream *stream)
+{
+	if (assert->message.fmt)
+		string_stream_add(stream, "\n%pV", &assert->message);
+}
+
+void kunit_fail_assert_format(const struct kunit_assert *assert,
+			      struct string_stream *stream)
+{
+	kunit_base_assert_format(assert, stream);
+	string_stream_add(stream, "%pV", &assert->message);
+}
+
+void kunit_unary_assert_format(const struct kunit_assert *assert,
+			       struct string_stream *stream)
+{
+	struct kunit_unary_assert *unary_assert = container_of(
+			assert, struct kunit_unary_assert, assert);
+
+	kunit_base_assert_format(assert, stream);
+	if (unary_assert->expected_true)
+		string_stream_add(stream,
+				 "\tExpected %s to be true, but is false\n",
+				 unary_assert->condition);
+	else
+		string_stream_add(stream,
+				 "\tExpected %s to be false, but is true\n",
+				 unary_assert->condition);
+	kunit_assert_print_msg(assert, stream);
+}
+
+void kunit_ptr_not_err_assert_format(const struct kunit_assert *assert,
+				     struct string_stream *stream)
+{
+	struct kunit_ptr_not_err_assert *ptr_assert = container_of(
+			assert, struct kunit_ptr_not_err_assert, assert);
+
+	kunit_base_assert_format(assert, stream);
+	if (!ptr_assert->value) {
+		string_stream_add(stream,
+				 "\tExpected %s is not null, but is\n",
+				 ptr_assert->text);
+	} else if (IS_ERR(ptr_assert->value)) {
+		string_stream_add(stream,
+				 "\tExpected %s is not error, but is: %ld\n",
+				 ptr_assert->text,
+				 PTR_ERR(ptr_assert->value));
+	}
+	kunit_assert_print_msg(assert, stream);
+}
+
+void kunit_binary_assert_format(const struct kunit_assert *assert,
+				struct string_stream *stream)
+{
+	struct kunit_binary_assert *binary_assert = container_of(
+			assert, struct kunit_binary_assert, assert);
+
+	kunit_base_assert_format(assert, stream);
+	string_stream_add(stream,
+			 "\tExpected %s %s %s, but\n",
+			 binary_assert->left_text,
+			 binary_assert->operation,
+			 binary_assert->right_text);
+	string_stream_add(stream, "\t\t%s == %lld\n",
+			 binary_assert->left_text,
+			 binary_assert->left_value);
+	string_stream_add(stream, "\t\t%s == %lld",
+			 binary_assert->right_text,
+			 binary_assert->right_value);
+	kunit_assert_print_msg(assert, stream);
+}
+
+void kunit_binary_ptr_assert_format(const struct kunit_assert *assert,
+				    struct string_stream *stream)
+{
+	struct kunit_binary_ptr_assert *binary_assert = container_of(
+			assert, struct kunit_binary_ptr_assert, assert);
+
+	kunit_base_assert_format(assert, stream);
+	string_stream_add(stream,
+			 "\tExpected %s %s %s, but\n",
+			 binary_assert->left_text,
+			 binary_assert->operation,
+			 binary_assert->right_text);
+	string_stream_add(stream, "\t\t%s == %pK\n",
+			 binary_assert->left_text,
+			 binary_assert->left_value);
+	string_stream_add(stream, "\t\t%s == %pK",
+			 binary_assert->right_text,
+			 binary_assert->right_value);
+	kunit_assert_print_msg(assert, stream);
+}
+
+void kunit_binary_str_assert_format(const struct kunit_assert *assert,
+				    struct string_stream *stream)
+{
+	struct kunit_binary_str_assert *binary_assert = container_of(
+			assert, struct kunit_binary_str_assert, assert);
+
+	kunit_base_assert_format(assert, stream);
+	string_stream_add(stream,
+			 "\tExpected %s %s %s, but\n",
+			 binary_assert->left_text,
+			 binary_assert->operation,
+			 binary_assert->right_text);
+	string_stream_add(stream, "\t\t%s == %s\n",
+			 binary_assert->left_text,
+			 binary_assert->left_value);
+	string_stream_add(stream, "\t\t%s == %s",
+			 binary_assert->right_text,
+			 binary_assert->right_value);
+	kunit_assert_print_msg(assert, stream);
+}
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
