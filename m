Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270AB1C21B
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhJSWRQFsemeeu3AbdeFWdDDRdDozd+EvCOVms+A1c4=; b=m4QWbJgxeM8Q1X
	0QFT51nefSSodynJLeUGhWOnXCBqVShB6IlsBaJcVLhcYPEvLjLQ50H5tZj2wzmGy4PW/KCw9NioO
	xHv7ZBUB9S2ELA1AQZSG9LUKsiwO3AmHA/CwdFvmOd1eO3BbQO+sAlwcQUzxIk8KDQeHXVcwmusqa
	jcylKbpK8ifrDO2p5tzLPr7zhUQ6ms2ouxGswcTkuPEaautAM367ZYO1uKfzzKdw+W+QdfLGuVDv/
	7LmQ0LxdQSbsncKQzOBdWCeHjjS/WPCizstRDMRgy6tfQeo8W3isZP9Ce1uzv412IVRB+XubFjU9D
	0X4Qdnz3swaA2JIOC7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQEX-0004uz-7K; Tue, 14 May 2019 05:44:13 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQET-0004t3-BQ
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:44:11 +0000
Received: by mail-ot1-x34a.google.com with SMTP id a2so8595818otk.13
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=b+We70BY3dZ4L8YNONbNDcOTzg4G47e2+Ufeg5e4dH4=;
 b=mwVFEvzm1hsm+jj8XJ0Yw11mxVx1Ku5E+XJU7trVBVvbqK/7MkYh8n6FVE7YLOCKc5
 yHfPllmWwJUqTajgv0YUSxiGX61tuxIX7ifQiMxW3t+dQka+jpC3kUzMKCH4rwehKZYk
 +yDRIjagyCe03Nw25n66trrnDhL1Ce+gHdGjimPvKPoQbLomm3aW49IdGmPy0lHr6OK6
 XDSLSuqgr5+Hr99yCCkm3INyzVs95Y/Ry90PYobO1L0tMuRWaUGkFu8MB18k/xGXNJHr
 PQfTdrbUxCVE9w3K84T163VF3H04o419lvZ5eoIMbQGur7eP5nKqFAM3UX7toCMy82Ag
 Ukdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=b+We70BY3dZ4L8YNONbNDcOTzg4G47e2+Ufeg5e4dH4=;
 b=Ye97Aq9WgfnZjGg/uWZgu6TGT5DmMxzRcWKtxEbV/KO4k/SIjgwjfHCJ85afHlIfQU
 m5r8XSilMne7G/IJbZVnamHapvdGpie8K/OV7rHTAmFEI99RBqmz0qgXjT6Hvz3YG9kA
 ikoGWvmzu1dnDDdt6P2h3UAdPcfsxm2h3RZgrPE1ktaDlsL5RTDDiVuDB/Tim2fEdKNt
 RWXRjYXz7PpKBL5k3jJzpvVVFKBUVqSxkYVAqEf5hOumZKWurZiDdXGDcQk+DoBJX60b
 FUGBLHFQcXn5EXAoWUjQhIt/bh+Z5N8/ojt1/tYlvBegAwtZQV7spz1bnRR7Ps34i57l
 3Gww==
X-Gm-Message-State: APjAAAUxEJ21sAnXOYOkXPKOE1hYY70DM3u+bhEuLo0yczIgcr5iQ/BJ
 bbeKcw157bu97LHBOzpZy7WHRoz+s4SttETVgUZQ1Q==
X-Google-Smtp-Source: APXvYqxpUszhpMljibDUla83PSaPz00pjkroVS4x54o/HHeJXHpxFED4efWYAN/bVfnCuoTOfqJupSAfy/2xZfjEFMZwcQ==
X-Received: by 2002:a9d:32c7:: with SMTP id u65mr20107031otb.320.1557812647326; 
 Mon, 13 May 2019 22:44:07 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:38 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-6-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 05/18] kunit: test: add the concept of expectations
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224409_405067_9AB57A96 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add support for expectations, which allow properties to be specified and
then verified in tests.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
Changes Since Last Revision:
 - Added EXPECT macros for pointer comparison to address issue pointed
   out by kbuild bot.
---
 include/kunit/test.h | 518 +++++++++++++++++++++++++++++++++++++++++++
 kunit/test.c         |  66 ++++++
 2 files changed, 584 insertions(+)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 4bc839884a83c..86187ba069a5d 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -271,4 +271,522 @@ void __printf(3, 4) kunit_printk(const char *level,
 #define kunit_err(test, fmt, ...) \
 		kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
 
+static inline struct kunit_stream *kunit_expect_start(struct kunit *test,
+						      const char *file,
+						      const char *line)
+{
+	struct kunit_stream *stream = kunit_new_stream(test);
+
+	kunit_stream_add(stream, "EXPECTATION FAILED at %s:%s\n\t", file, line);
+
+	return stream;
+}
+
+static inline void kunit_expect_end(struct kunit *test,
+				    bool success,
+				    struct kunit_stream *stream)
+{
+	if (!success)
+		kunit_fail(test, stream);
+	else
+		kunit_stream_clear(stream);
+}
+
+#define KUNIT_EXPECT_START(test) \
+		kunit_expect_start(test, __FILE__, __stringify(__LINE__))
+
+#define KUNIT_EXPECT_END(test, success, stream) \
+		kunit_expect_end(test, success, stream)
+
+#define KUNIT_EXPECT_MSG(test, success, message, fmt, ...) do {		       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, message);				       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+	KUNIT_EXPECT_END(test, success, __stream);			       \
+} while (0)
+
+#define KUNIT_EXPECT(test, success, message) do {			       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, message);				       \
+	KUNIT_EXPECT_END(test, success, __stream);			       \
+} while (0)
+
+/**
+ * KUNIT_SUCCEED() - A no-op expectation. Only exists for code clarity.
+ * @test: The test context object.
+ *
+ * The opposite of KUNIT_FAIL(), it is an expectation that cannot fail. In other
+ * words, it does nothing and only exists for code clarity. See
+ * KUNIT_EXPECT_TRUE() for more information.
+ */
+#define KUNIT_SUCCEED(test) do {} while (0)
+
+/**
+ * KUNIT_FAIL() - Always causes a test to fail when evaluated.
+ * @test: The test context object.
+ * @fmt: an informational message to be printed when the assertion is made.
+ * @...: string format arguments.
+ *
+ * The opposite of KUNIT_SUCCEED(), it is an expectation that always fails. In
+ * other words, it always results in a failed expectation, and consequently
+ * always causes the test case to fail when evaluated. See KUNIT_EXPECT_TRUE()
+ * for more information.
+ */
+#define KUNIT_FAIL(test, fmt, ...) do {					       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+	KUNIT_EXPECT_END(test, false, __stream);			       \
+} while (0)
+
+/**
+ * KUNIT_EXPECT_TRUE() - Causes a test failure when the expression is not true.
+ * @test: The test context object.
+ * @condition: an arbitrary boolean expression. The test fails when this does
+ * not evaluate to true.
+ *
+ * This and expectations of the form `KUNIT_EXPECT_*` will cause the test case
+ * to fail when the specified condition is not met; however, it will not prevent
+ * the test case from continuing to run; this is otherwise known as an
+ * *expectation failure*.
+ */
+#define KUNIT_EXPECT_TRUE(test, condition)				       \
+		KUNIT_EXPECT(test, (condition),				       \
+		       "Expected " #condition " is true, but is false.\n")
+
+#define KUNIT_EXPECT_TRUE_MSG(test, condition, fmt, ...)		       \
+		KUNIT_EXPECT_MSG(test, (condition),			       \
+				"Expected " #condition " is true, but is false.\n",\
+				fmt, ##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_FALSE() - Makes a test failure when the expression is not false.
+ * @test: The test context object.
+ * @condition: an arbitrary boolean expression. The test fails when this does
+ * not evaluate to false.
+ *
+ * Sets an expectation that @condition evaluates to false. See
+ * KUNIT_EXPECT_TRUE() for more information.
+ */
+#define KUNIT_EXPECT_FALSE(test, condition)				       \
+		KUNIT_EXPECT(test, !(condition),			       \
+		       "Expected " #condition " is false, but is true.")
+
+#define KUNIT_EXPECT_FALSE_MSG(test, condition, fmt, ...)		       \
+		KUNIT_EXPECT_MSG(test, !(condition),			       \
+				"Expected " #condition " is false, but is true.\n",\
+				fmt, ##__VA_ARGS__)
+
+void kunit_expect_binary_msg(struct kunit *test,
+			     long long left, const char *left_name,
+			     long long right, const char *right_name,
+			     bool compare_result,
+			     const char *compare_name,
+			     const char *file,
+			     const char *line,
+			     const char *fmt, ...);
+
+static inline void kunit_expect_binary(struct kunit *test,
+				       long long left, const char *left_name,
+				       long long right, const char *right_name,
+				       bool compare_result,
+				       const char *compare_name,
+				       const char *file,
+				       const char *line)
+{
+	kunit_expect_binary_msg(test,
+				left, left_name,
+				right, right_name,
+				compare_result,
+				compare_name,
+				file,
+				line,
+				NULL);
+}
+
+void kunit_expect_ptr_binary_msg(struct kunit *test,
+				 void *left, const char *left_name,
+				 void *right, const char *right_name,
+				 bool compare_result,
+				 const char *compare_name,
+				 const char *file,
+				 const char *line,
+				 const char *fmt, ...);
+
+static inline void kunit_expect_ptr_binary(struct kunit *test,
+					   void *left, const char *left_name,
+					   void *right, const char *right_name,
+					   bool compare_result,
+					   const char *compare_name,
+					   const char *file,
+					   const char *line)
+{
+	kunit_expect_ptr_binary_msg(test,
+				    left, left_name,
+				    right, right_name,
+				    compare_result,
+				    compare_name,
+				    file,
+				    line,
+				    NULL);
+}
+
+/*
+ * A factory macro for defining the expectations for the basic comparisons
+ * defined for the built in types.
+ *
+ * Unfortunately, there is no common type that all types can be promoted to for
+ * which all the binary operators behave the same way as for the actual types
+ * (for example, there is no type that long long and unsigned long long can
+ * both be cast to where the comparison result is preserved for all values). So
+ * the best we can do is do the comparison in the original types and then coerce
+ * everything to long long for printing; this way, the comparison behaves
+ * correctly and the printed out value usually makes sense without
+ * interpretation, but can always be interpretted to figure out the actual
+ * value.
+ */
+#define KUNIT_EXPECT_BINARY(test, left, condition, right) do {		       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_expect_binary(test,					       \
+			    (long long) __left, #left,			       \
+			    (long long) __right, #right,		       \
+			    __left condition __right, #condition,	       \
+			    __FILE__, __stringify(__LINE__));		       \
+} while (0)
+
+#define KUNIT_EXPECT_BINARY_MSG(test, left, condition, right, fmt, ...) do {   \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_expect_binary_msg(test,					       \
+				(long long) __left, #left,		       \
+				(long long) __right, #right,		       \
+				__left condition __right, #condition,	       \
+				__FILE__, __stringify(__LINE__),	       \
+				fmt, ##__VA_ARGS__);			       \
+} while (0)
+
+/*
+ * Just like KUNIT_EXPECT_BINARY, but for comparing pointer types.
+ */
+#define KUNIT_EXPECT_PTR_BINARY(test, left, condition, right) do {	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_expect_ptr_binary(test,					       \
+			    (void *) __left, #left,			       \
+			    (void *) __right, #right,			       \
+			    __left condition __right, #condition,	       \
+			    __FILE__, __stringify(__LINE__));		       \
+} while (0)
+
+#define KUNIT_EXPECT_PTR_BINARY_MSG(test,				       \
+				    left,				       \
+				    condition,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...) do {				       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_expect_ptr_binary_msg(test,				       \
+				    (void *) __left, #left,		       \
+				    (void *) __right, #right,		       \
+				    __left condition __right, #condition,      \
+				    __FILE__, __stringify(__LINE__),	       \
+				    fmt, ##__VA_ARGS__);		       \
+} while (0)
+
+/**
+ * KUNIT_EXPECT_EQ() - Sets an expectation that @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are
+ * equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) == (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_EQ(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, ==, right)
+
+#define KUNIT_EXPECT_EQ_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					==,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_PTR_EQ() - Expects that pointers @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a pointer.
+ * @right: an arbitrary expression that evaluates to a pointer.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are
+ * equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) == (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_PTR_EQ(test, left, right) \
+		KUNIT_EXPECT_PTR_BINARY(test, left, ==, right)
+
+#define KUNIT_EXPECT_PTR_EQ_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_PTR_BINARY_MSG(test,			       \
+					    left,			       \
+					    ==,				       \
+					    right,			       \
+					    fmt,			       \
+					    ##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_NE() - An expectation that @left and @right are not equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are not
+ * equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) != (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_NE(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, !=, right)
+
+#define KUNIT_EXPECT_NE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					!=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_PTR_NE() - Expects that pointers @left and @right are not equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a pointer.
+ * @right: an arbitrary expression that evaluates to a pointer.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are not
+ * equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) != (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_PTR_NE(test, left, right) \
+		KUNIT_EXPECT_PTR_BINARY(test, left, !=, right)
+
+#define KUNIT_EXPECT_PTR_NE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_PTR_BINARY_MSG(test,			       \
+					    left,			       \
+					    !=,				       \
+					    right,			       \
+					    fmt,			       \
+					    ##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_LT() - An expectation that @left is less than @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the value that @left evaluates to is less than the
+ * value that @right evaluates to. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) < (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_LT(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, <, right)
+
+#define KUNIT_EXPECT_LT_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					<,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_LE() - Expects that @left is less than or equal to @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the value that @left evaluates to is less than or
+ * equal to the value that @right evaluates to. Semantically this is equivalent
+ * to KUNIT_EXPECT_TRUE(@test, (@left) <= (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_LE(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, <=, right)
+
+#define KUNIT_EXPECT_LE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					<=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_GT() - An expectation that @left is greater than @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the value that @left evaluates to is greater than
+ * the value that @right evaluates to. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) > (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_GT(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, >, right)
+
+#define KUNIT_EXPECT_GT_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					>,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_GE() - Expects that @left is greater than or equal to @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an expectation that the value that @left evaluates to is greater than
+ * the value that @right evaluates to. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, (@left) >= (@right)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_GE(test, left, right) \
+		KUNIT_EXPECT_BINARY(test, left, >=, right)
+
+#define KUNIT_EXPECT_GE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_EXPECT_BINARY_MSG(test,				       \
+					left,				       \
+					>=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_EXPECT_STREQ() - Expects that strings @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a null terminated string.
+ * @right: an arbitrary expression that evaluates to a null terminated string.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are
+ * equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, !strcmp((@left), (@right))). See KUNIT_EXPECT_TRUE()
+ * for more information.
+ */
+#define KUNIT_EXPECT_STREQ(test, left, right) do {			       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Expected " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+									       \
+	KUNIT_EXPECT_END(test, !strcmp(left, right), __stream);		       \
+} while (0)
+
+#define KUNIT_EXPECT_STREQ_MSG(test, left, right, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Expected " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+									       \
+	KUNIT_EXPECT_END(test, !strcmp(left, right), __stream);		       \
+} while (0)
+
+/**
+ * KUNIT_EXPECT_STRNEQ() - Expects that strings @left and @right are not equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a null terminated string.
+ * @right: an arbitrary expression that evaluates to a null terminated string.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are
+ * not equal. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, strcmp((@left), (@right))). See KUNIT_EXPECT_TRUE()
+ * for more information.
+ */
+#define KUNIT_EXPECT_STRNEQ(test, left, right) do {			       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Expected " #left " != " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+									       \
+	KUNIT_EXPECT_END(test, strcmp(left, right), __stream);		       \
+} while (0)
+
+#define KUNIT_EXPECT_STRNEQ_MSG(test, left, right, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Expected " #left " != " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+									       \
+	KUNIT_EXPECT_END(test, strcmp(left, right), __stream);		       \
+} while (0)
+
+/**
+ * KUNIT_EXPECT_NOT_ERR_OR_NULL() - Expects that @ptr is not null and not err.
+ * @test: The test context object.
+ * @ptr: an arbitrary pointer.
+ *
+ * Sets an expectation that the value that @ptr evaluates to is not null and not
+ * an errno stored in a pointer. This is semantically equivalent to
+ * KUNIT_EXPECT_TRUE(@test, !IS_ERR_OR_NULL(@ptr)). See KUNIT_EXPECT_TRUE() for
+ * more information.
+ */
+#define KUNIT_EXPECT_NOT_ERR_OR_NULL(test, ptr) do {			       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(ptr) __ptr = (ptr);					       \
+									       \
+	if (!__ptr)							       \
+		kunit_stream_add(__stream,				       \
+			      "Expected " #ptr " is not null, but is.");       \
+	if (IS_ERR(__ptr))						       \
+		kunit_stream_add(__stream,				       \
+			      "Expected " #ptr " is not error, but is: %ld",   \
+			      PTR_ERR(__ptr));				       \
+									       \
+	KUNIT_EXPECT_END(test, !IS_ERR_OR_NULL(__ptr), __stream);	       \
+} while (0)
+
+#define KUNIT_EXPECT_NOT_ERR_OR_NULL_MSG(test, ptr, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_EXPECT_START(test);	       \
+	typeof(ptr) __ptr = (ptr);					       \
+									       \
+	if (!__ptr) {							       \
+		kunit_stream_add(__stream,				       \
+			      "Expected " #ptr " is not null, but is.");       \
+		kunit_stream_add(__stream, fmt, ##__VA_ARGS__);		       \
+	}								       \
+	if (IS_ERR(__ptr)) {						       \
+		kunit_stream_add(__stream,				       \
+			      "Expected " #ptr " is not error, but is: %ld",   \
+			      PTR_ERR(__ptr));				       \
+									       \
+		kunit_stream_add(__stream, fmt, ##__VA_ARGS__);		       \
+	}								       \
+	KUNIT_EXPECT_END(test, !IS_ERR_OR_NULL(__ptr), __stream);	       \
+} while (0)
+
 #endif /* _KUNIT_TEST_H */
diff --git a/kunit/test.c b/kunit/test.c
index 0bb6f53a7f87e..e0727afb5d8a9 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -329,3 +329,69 @@ void kunit_printk(const char *level,
 
 	va_end(args);
 }
+
+void kunit_expect_binary_msg(struct kunit *test,
+			     long long left, const char *left_name,
+			     long long right, const char *right_name,
+			     bool compare_result,
+			     const char *compare_name,
+			     const char *file,
+			     const char *line,
+			     const char *fmt, ...)
+{
+	struct kunit_stream *stream = kunit_expect_start(test, file, line);
+	struct va_format vaf;
+	va_list args;
+
+	kunit_stream_add(stream,
+			 "Expected %s %s %s, but\n",
+			 left_name, compare_name, right_name);
+	kunit_stream_add(stream, "\t\t%s == %lld\n", left_name, left);
+	kunit_stream_add(stream, "\t\t%s == %lld", right_name, right);
+
+	if (fmt) {
+		va_start(args, fmt);
+
+		vaf.fmt = fmt;
+		vaf.va = &args;
+
+		kunit_stream_add(stream, "\n%pV", &vaf);
+
+		va_end(args);
+	}
+
+	kunit_expect_end(test, compare_result, stream);
+}
+
+void kunit_expect_ptr_binary_msg(struct kunit *test,
+				 void *left, const char *left_name,
+				 void *right, const char *right_name,
+				 bool compare_result,
+				 const char *compare_name,
+				 const char *file,
+				 const char *line,
+				 const char *fmt, ...)
+{
+	struct kunit_stream *stream = kunit_expect_start(test, file, line);
+	struct va_format vaf;
+	va_list args;
+
+	kunit_stream_add(stream,
+			 "Expected %s %s %s, but\n",
+			 left_name, compare_name, right_name);
+	kunit_stream_add(stream, "\t\t%s == %pK\n", left_name, left);
+	kunit_stream_add(stream, "\t\t%s == %pK", right_name, right);
+
+	if (fmt) {
+		va_start(args, fmt);
+
+		vaf.fmt = fmt;
+		vaf.va = &args;
+
+		kunit_stream_add(stream, "\n%pV", &vaf);
+
+		va_end(args);
+	}
+
+	kunit_expect_end(test, compare_result, stream);
+}
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
