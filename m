Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23989B9B18
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 02:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDgI/WVrX3VZYj+e3p+Qcy7KHtzqHOAhTickIKlpSfk=; b=Jn3H+9tZUptpxp
	kBZW3l+GLg7NUD5nVId+gvxRVCPLwnp3RPFLgYLcBLv6xn2kOTz3RjMF09zjqvSkBmVuynjLgCcWw
	8dZMBAZFf0cp/L6ASR/FXlR19tJY/UjOG1iPWJuZ4Iw5pfLNzphC/+nwnPbTGJYPLgNmz7ogTBo1U
	N9K7xr+1XSdfEvMNd9taDMguQ+KLdtCOT49Vak+nkd3/nV9gv+Qy7B3oAdl86mzQAzbIESvLIRATX
	2VZtYF3vzVLu2AbTuZ7Q80W+7H12aEDs3aM41iwZ+cW0mTDrY/4meRT5B1TNblYf0/RKdeOpWciEy
	20vDyEXsGrN7aeR0Da2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT7V-0005Mr-L0; Sat, 21 Sep 2019 00:19:25 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT7R-0005Fp-Pq
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 00:19:24 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id u64so3405676vke.18
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 17:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3L1JoIUH3Yp+Gfseapn5B656SrJdhjuXnbbrrnMLohA=;
 b=bHy7tVZv3fa6PshHCwAnTL19zsWIKJXZWe4SbssYOHsGR7DEnw/Rne1i7Khc7APYZa
 BcTFadC25Akno5qZcVtLAePhB1DOdiyMB4ft68+tkSASHaBsjfERDXatav52HcN7kKNl
 rvjPozz6rZvl+78OSdJBXEsPiWi5ON4LKZb64Q2j1qOmX3jY1GpXQ+qQKHkRy/+cKmG7
 oQ1bK7yctQwXtc2hktrY0hbE0A2wAxQj8sRG+szRaDFl8tfK9NLFgpG2mJtPx17b18Q4
 KYco5FGmgFbYgPD3K5wORyaDPcr3NvJoR2Zb4VvICnJd5NGzs5RspS4A14MkL0f6ZPAe
 BPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3L1JoIUH3Yp+Gfseapn5B656SrJdhjuXnbbrrnMLohA=;
 b=MjJ1cyJ9oEY5EQTxSZrE8AP6xskpFpxwiBTewepPxpaA79mNR5f2qKxJa+MMchwOQE
 lDx0VIaptiuuYnZUJhB+6FdIfAJ7Bt5FiNUAiQeV2gvDfyPpvqzpVsp6UbAf7rzCH549
 JlUAQ0KgMe3Qyi2PgtsnpNaXciPiFKTisVK0F1TajqKxiioCaIM7pFl7GNhcJBjLcokj
 xiEcBEzTjry3CrJqO2PidAUKaJ9gkc+l9rHKmDd535lltWMOwtEObALmIciUZS6/HZdH
 hDXVfuPn1YuvWGh9NTJhupH2cvRzmjXnSDvZ6ZAlYUG60fKWDOqZhUeSiAUice/+XGMm
 GDJg==
X-Gm-Message-State: APjAAAVWKnB2XjuQZxjwPSHj0srgE8X4ZMotYGqIjODbDhipLrgf4b3M
 QQJ9RK4KBteoUF61mVzr8Xzy2Abz/tlnu8wQlVDnxg==
X-Google-Smtp-Source: APXvYqzv+Xe2DVTaGr05vCtImEXZfIQNtOs9YGiYrHgLMDEZrFdLEmCdJKs1ASdTTX+hRI4Kg115Fq4BL65kin23ees1ow==
X-Received: by 2002:a67:f2c9:: with SMTP id a9mr4428483vsn.160.1569025155397; 
 Fri, 20 Sep 2019 17:19:15 -0700 (PDT)
Date: Fri, 20 Sep 2019 17:18:40 -0700
In-Reply-To: <20190921001855.200947-1-brendanhiggins@google.com>
Message-Id: <20190921001855.200947-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190921001855.200947-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v17 04/19] kunit: test: add assertion printing library
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171921_844988_EE528942 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
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
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add `struct kunit_assert` and friends which provide a structured way to
capture data from an expectation or an assertion (introduced later in
the series) so that it may be printed out in the event of a failure.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/assert.h | 356 +++++++++++++++++++++++++++++++++++++++++
 lib/kunit/Makefile     |   3 +-
 lib/kunit/assert.c     | 141 ++++++++++++++++
 3 files changed, 499 insertions(+), 1 deletion(-)
 create mode 100644 include/kunit/assert.h
 create mode 100644 lib/kunit/assert.c

diff --git a/include/kunit/assert.h b/include/kunit/assert.h
new file mode 100644
index 000000000000..db6a0fca09b4
--- /dev/null
+++ b/include/kunit/assert.h
@@ -0,0 +1,356 @@
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
+#include <kunit/string-stream.h>
+#include <linux/err.h>
+
+struct kunit;
+
+/**
+ * enum kunit_assert_type - Type of expectation/assertion.
+ * @KUNIT_ASSERTION: Used to denote that a kunit_assert represents an assertion.
+ * @KUNIT_EXPECTATION: Denotes that a kunit_assert represents an expectation.
+ *
+ * Used in conjunction with a &struct kunit_assert to denote whether it
+ * represents an expectation or an assertion.
+ */
+enum kunit_assert_type {
+	KUNIT_ASSERTION,
+	KUNIT_EXPECTATION,
+};
+
+/**
+ * struct kunit_assert - Data for printing a failed assertion or expectation.
+ * @test: the test case this expectation/assertion is associated with.
+ * @type: the type (either an expectation or an assertion) of this kunit_assert.
+ * @line: the source code line number that the expectation/assertion is at.
+ * @file: the file path of the source file that the expectation/assertion is in.
+ * @message: an optional message to provide additional context.
+ * @format: a function which formats the data in this kunit_assert to a string.
+ *
+ * Represents a failed expectation/assertion. Contains all the data necessary to
+ * format a string to a user reporting the failure.
+ */
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
+/**
+ * KUNIT_INIT_VA_FMT_NULL - Default initializer for struct va_format.
+ *
+ * Used inside a struct initialization block to initialize struct va_format to
+ * default values where fmt and va are null.
+ */
+#define KUNIT_INIT_VA_FMT_NULL { .fmt = NULL, .va = NULL }
+
+/**
+ * KUNIT_INIT_ASSERT_STRUCT() - Initializer for a &struct kunit_assert.
+ * @kunit: The test case that this expectation/assertion is associated with.
+ * @assert_type: The type (assertion or expectation) of this kunit_assert.
+ * @fmt: The formatting function which builds a string out of this kunit_assert.
+ *
+ * The base initializer for a &struct kunit_assert.
+ */
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
+/**
+ * struct kunit_fail_assert - Represents a plain fail expectation/assertion.
+ * @assert: The parent of this type.
+ *
+ * Represents a simple KUNIT_FAIL/KUNIT_ASSERT_FAILURE that always fails.
+ */
+struct kunit_fail_assert {
+	struct kunit_assert assert;
+};
+
+void kunit_fail_assert_format(const struct kunit_assert *assert,
+			      struct string_stream *stream);
+
+/**
+ * KUNIT_INIT_FAIL_ASSERT_STRUCT() - Initializer for &struct kunit_fail_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ *
+ * Initializes a &struct kunit_fail_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
+#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {			       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_fail_assert_format)	       \
+}
+
+/**
+ * struct kunit_unary_assert - Represents a KUNIT_{EXPECT|ASSERT}_{TRUE|FALSE}
+ * @assert: The parent of this type.
+ * @condition: A string representation of a conditional expression.
+ * @expected_true: True if of type KUNIT_{EXPECT|ASSERT}_TRUE, false otherwise.
+ *
+ * Represents a simple expectation or assertion that simply asserts something is
+ * true or false. In other words, represents the expectations:
+ * KUNIT_{EXPECT|ASSERT}_{TRUE|FALSE}
+ */
+struct kunit_unary_assert {
+	struct kunit_assert assert;
+	const char *condition;
+	bool expected_true;
+};
+
+void kunit_unary_assert_format(const struct kunit_assert *assert,
+			       struct string_stream *stream);
+
+/**
+ * KUNIT_INIT_UNARY_ASSERT_STRUCT() - Initializes &struct kunit_unary_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ * @cond: A string representation of the expression asserted true or false.
+ * @expect_true: True if of type KUNIT_{EXPECT|ASSERT}_TRUE, false otherwise.
+ *
+ * Initializes a &struct kunit_unary_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
+#define KUNIT_INIT_UNARY_ASSERT_STRUCT(test, type, cond, expect_true) {	       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_unary_assert_format),	       \
+	.condition = cond,						       \
+	.expected_true = expect_true					       \
+}
+
+/**
+ * struct kunit_ptr_not_err_assert - An expectation/assertion that a pointer is
+ *	not NULL and not a -errno.
+ * @assert: The parent of this type.
+ * @text: A string representation of the expression passed to the expectation.
+ * @value: The actual evaluated pointer value of the expression.
+ *
+ * Represents an expectation/assertion that a pointer is not null and is does
+ * not contain a -errno. (See IS_ERR_OR_NULL().)
+ */
+struct kunit_ptr_not_err_assert {
+	struct kunit_assert assert;
+	const char *text;
+	const void *value;
+};
+
+void kunit_ptr_not_err_assert_format(const struct kunit_assert *assert,
+				     struct string_stream *stream);
+
+/**
+ * KUNIT_INIT_PTR_NOT_ERR_ASSERT_STRUCT() - Initializes a
+ *	&struct kunit_ptr_not_err_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ * @txt: A string representation of the expression passed to the expectation.
+ * @val: The actual evaluated pointer value of the expression.
+ *
+ * Initializes a &struct kunit_ptr_not_err_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
+#define KUNIT_INIT_PTR_NOT_ERR_STRUCT(test, type, txt, val) {		       \
+	.assert = KUNIT_INIT_ASSERT_STRUCT(test,			       \
+					   type,			       \
+					   kunit_ptr_not_err_assert_format),   \
+	.text = txt,							       \
+	.value = val							       \
+}
+
+/**
+ * struct kunit_binary_assert - An expectation/assertion that compares two
+ *	non-pointer values (for example, KUNIT_EXPECT_EQ(test, 1 + 1, 2)).
+ * @assert: The parent of this type.
+ * @operation: A string representation of the comparison operator (e.g. "==").
+ * @left_text: A string representation of the expression in the left slot.
+ * @left_value: The actual evaluated value of the expression in the left slot.
+ * @right_text: A string representation of the expression in the right slot.
+ * @right_value: The actual evaluated value of the expression in the right slot.
+ *
+ * Represents an expectation/assertion that compares two non-pointer values. For
+ * example, to expect that 1 + 1 == 2, you can use the expectation
+ * KUNIT_EXPECT_EQ(test, 1 + 1, 2);
+ */
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
+/**
+ * KUNIT_INIT_BINARY_ASSERT_STRUCT() - Initializes a
+ *	&struct kunit_binary_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ * @op_str: A string representation of the comparison operator (e.g. "==").
+ * @left_str: A string representation of the expression in the left slot.
+ * @left_val: The actual evaluated value of the expression in the left slot.
+ * @right_str: A string representation of the expression in the right slot.
+ * @right_val: The actual evaluated value of the expression in the right slot.
+ *
+ * Initializes a &struct kunit_binary_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
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
+/**
+ * struct kunit_binary_ptr_assert - An expectation/assertion that compares two
+ *	pointer values (for example, KUNIT_EXPECT_PTR_EQ(test, foo, bar)).
+ * @assert: The parent of this type.
+ * @operation: A string representation of the comparison operator (e.g. "==").
+ * @left_text: A string representation of the expression in the left slot.
+ * @left_value: The actual evaluated value of the expression in the left slot.
+ * @right_text: A string representation of the expression in the right slot.
+ * @right_value: The actual evaluated value of the expression in the right slot.
+ *
+ * Represents an expectation/assertion that compares two pointer values. For
+ * example, to expect that foo and bar point to the same thing, you can use the
+ * expectation KUNIT_EXPECT_PTR_EQ(test, foo, bar);
+ */
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
+/**
+ * KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT() - Initializes a
+ *	&struct kunit_binary_ptr_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ * @op_str: A string representation of the comparison operator (e.g. "==").
+ * @left_str: A string representation of the expression in the left slot.
+ * @left_val: The actual evaluated value of the expression in the left slot.
+ * @right_str: A string representation of the expression in the right slot.
+ * @right_val: The actual evaluated value of the expression in the right slot.
+ *
+ * Initializes a &struct kunit_binary_ptr_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
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
+/**
+ * struct kunit_binary_str_assert - An expectation/assertion that compares two
+ *	string values (for example, KUNIT_EXPECT_STREQ(test, foo, "bar")).
+ * @assert: The parent of this type.
+ * @operation: A string representation of the comparison operator (e.g. "==").
+ * @left_text: A string representation of the expression in the left slot.
+ * @left_value: The actual evaluated value of the expression in the left slot.
+ * @right_text: A string representation of the expression in the right slot.
+ * @right_value: The actual evaluated value of the expression in the right slot.
+ *
+ * Represents an expectation/assertion that compares two string values. For
+ * example, to expect that the string in foo is equal to "bar", you can use the
+ * expectation KUNIT_EXPECT_STREQ(test, foo, "bar");
+ */
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
+/**
+ * KUNIT_INIT_BINARY_STR_ASSERT_STRUCT() - Initializes a
+ *	&struct kunit_binary_str_assert.
+ * @test: The test case that this expectation/assertion is associated with.
+ * @type: The type (assertion or expectation) of this kunit_assert.
+ * @op_str: A string representation of the comparison operator (e.g. "==").
+ * @left_str: A string representation of the expression in the left slot.
+ * @left_val: The actual evaluated value of the expression in the left slot.
+ * @right_str: A string representation of the expression in the right slot.
+ * @right_val: The actual evaluated value of the expression in the right slot.
+ *
+ * Initializes a &struct kunit_binary_str_assert. Intended to be used in
+ * KUNIT_EXPECT_* and KUNIT_ASSERT_* macros.
+ */
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
diff --git a/lib/kunit/Makefile b/lib/kunit/Makefile
index 275b565a0e81..6dcbe309036b 100644
--- a/lib/kunit/Makefile
+++ b/lib/kunit/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_KUNIT) +=			test.o \
-					string-stream.o
+					string-stream.o \
+					assert.o
diff --git a/lib/kunit/assert.c b/lib/kunit/assert.c
new file mode 100644
index 000000000000..86013d4cf891
--- /dev/null
+++ b/lib/kunit/assert.c
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
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
