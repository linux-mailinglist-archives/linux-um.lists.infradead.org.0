Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1355010FD5
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vr+bJxN/rqVntLL7PGUL4OXPDi17hppxEoSvbAEaGBI=; b=j8GL0pQlwjHFCJ
	0RFdJEWcWAQQByQYrwBFifccReKfTEqHax16XFCmGqu3KeOjD10OdDunAFu95IwOdPhdYWkVE5fqv
	4Dp+yLY10cY2dcIoZGNRjzzJFWGfXvtexL/ss6y4YSxfpeH4qeZ9QPBEx/ZGDnvYHAeT0reALt00d
	HDd7U5fk0tHxyY5gKtM3rG7FLSIV/vpt8RcUr8c4RQFizNfSyrkQWvOvUQAMJIRoAelYM4aXEJGrF
	HzZtqtOHBIqu7ku6iyZAg8o7rudGlo+PrJa9ojclmgH7aSkQ+LinDpnPAdxGZNmJTUUhic1OiMu14
	DzU0JDVCY6locN2i9BmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyH9-0007W3-G7; Wed, 01 May 2019 23:04:31 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyH6-0007UE-Do
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:04:30 +0000
Received: by mail-pl1-x64a.google.com with SMTP id a97so276507pla.9
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+G7LPM+i6NmkVoLbCU7sAmRt474gzlRI9LU6GUnDedQ=;
 b=uzPCjNqZ93NeuPZv1xpyKr2I02dQc9jXSsfzeRE9d/VVIp/KCqGRtPOuQRczZOqBBy
 KiP0Jy16kw2cRjZ6q7g+FeMc92Wd2TQJatyA3GeaZ43pwFhVKKyPeEfwzNjUVFB1OwTT
 agFWxKDeW5uLx19DJdgcnZ4Y7WL7qraikxIcYSHrBt48BZQb9XBvWHjAkQ+HZ3MhaW26
 TMbwN4V6UA52307leg95t5nPs2bB2AiVWTvE7NcOI+LNeFGFRd2a02pQt53fgw7rDKMX
 /ZNZzs/kjy3pQoqX3aX1uFENj83rL1Cnr94qmhaM2bj/vEkOD4mivJEc+5p3TCaKvqIV
 uzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+G7LPM+i6NmkVoLbCU7sAmRt474gzlRI9LU6GUnDedQ=;
 b=DwdytGKN0Jj/14YXsObW4UvZMpS92JXQO8LxQ+GBluk0574t7/ABCE0g9+tQ1XJ46H
 Mxh9Vz2ceOJ5ApLABsBcdHrW7nL696cWYgFiRh9idRV7MoJSgEDhw58KdiTxdwwxkYzs
 Ftg/MiASFvGxv7zh7Wayu6+pkWRg9QQ26ffD2cJITNWdvzMCXDUmHfT9hTahwq3IFU5i
 4LmpwwrGzGzhmTbCvPAjPVkNg5dGHLyKYnb/+vrleWc50K5QZGseSfsFVp0TMNj2ldT+
 txxpY8tviogrLUhM5wgw76GWZ8PbvNEQQSbRL8AWOKLeJSpm69aHI4mWjQZLi0Qf54sa
 ex5g==
X-Gm-Message-State: APjAAAX5xxfg17XVHynwY+OTSefYvru3a54DDIz+EQikCXYvU+HMJAn5
 jlRNU7+hDmOvte78nG/VTC8uoUcSGvg2BpzKQKkSwg==
X-Google-Smtp-Source: APXvYqxsjU1jFWzO3KypwMN2P1uX9t76vdHAoPQyTHx1Ml5WxKjLGQPFdzuPJIDtR+IZMzabIuwjhDfLR7kIiw0TlZZr+w==
X-Received: by 2002:a63:30c5:: with SMTP id w188mr617139pgw.76.1556751865309; 
 Wed, 01 May 2019 16:04:25 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:19 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-11-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 10/17] kunit: test: add the concept of assertions
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160428_470132_CD9062EC 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add support for assertions which are like expectations except the test
terminates if the assertion is not satisfied.

The idea with assertions is that you use them to state all the
preconditions for your test. Logically speaking, these are the premises
of the test case, so if a premise isn't true, there is no point in
continuing the test case because there are no conclusions that can be
drawn without the premises. Whereas, the expectation is the thing you
are trying to prove. It is not used universally in x-unit style test
frameworks, but I really like it as a convention.  You could still
express the idea of a premise using the above idiom, but I think
KUNIT_ASSERT_* states the intended idea perfectly.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 include/kunit/test.h       | 401 ++++++++++++++++++++++++++++++++++++-
 kunit/string-stream-test.c |  12 +-
 kunit/test-test.c          |   2 +
 kunit/test.c               |  33 +++
 4 files changed, 439 insertions(+), 9 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 1b77caeb5d51f..bb2f3e63a3522 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -85,9 +85,10 @@ struct kunit;
  * @name: the name of the test case.
  *
  * A test case is a function with the signature, ``void (*)(struct kunit *)``
- * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
- * test case is associated with a &struct kunit_module and will be run after the
- * module's init function and followed by the module's exit function.
+ * that makes expectations and assertions (see KUNIT_EXPECT_TRUE() and
+ * KUNIT_ASSERT_TRUE()) about code under test. Each test case is associated with
+ * a &struct kunit_module and will be run after the module's init function and
+ * followed by the module's exit function.
  *
  * A test case should be static and should only be created with the KUNIT_CASE()
  * macro; additionally, every array of test cases should be terminated with an
@@ -705,4 +706,398 @@ static inline void kunit_expect_binary(struct kunit *test,
 	KUNIT_EXPECT_END(test, !IS_ERR_OR_NULL(__ptr), __stream);	       \
 } while (0)
 
+static inline struct kunit_stream *kunit_assert_start(struct kunit *test,
+						      const char *file,
+						      const char *line)
+{
+	struct kunit_stream *stream = kunit_new_stream(test);
+
+	kunit_stream_add(stream, "ASSERTION FAILED at %s:%s\n\t", file, line);
+
+	return stream;
+}
+
+static inline void kunit_assert_end(struct kunit *test,
+				    bool success,
+				    struct kunit_stream *stream)
+{
+	if (!success) {
+		test->fail(test, stream);
+		test->abort(test);
+	} else {
+		kunit_stream_clear(stream);
+	}
+}
+
+#define KUNIT_ASSERT_START(test) \
+		kunit_assert_start(test, __FILE__, __stringify(__LINE__))
+
+#define KUNIT_ASSERT_END(test, success, stream) \
+		kunit_assert_end(test, success, stream)
+
+#define KUNIT_ASSERT(test, success, message) do {			       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, message);				       \
+	KUNIT_ASSERT_END(test, success, __stream);			       \
+} while (0)
+
+#define KUNIT_ASSERT_MSG(test, success, message, fmt, ...) do {		       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, message);				       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+	KUNIT_ASSERT_END(test, success, __stream);			       \
+} while (0)
+
+#define KUNIT_ASSERT_FAILURE(test, fmt, ...) do {			       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+									       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+	KUNIT_ASSERT_END(test, false, __stream);			       \
+} while (0)
+
+/**
+ * KUNIT_ASSERT_TRUE() - Sets an assertion that @condition is true.
+ * @test: The test context object.
+ * @condition: an arbitrary boolean expression. The test fails and aborts when
+ * this does not evaluate to true.
+ *
+ * This and assertions of the form `KUNIT_ASSERT_*` will cause the test case to
+ * fail *and immediately abort* when the specified condition is not met. Unlike
+ * an expectation failure, it will prevent the test case from continuing to run;
+ * this is otherwise known as an *assertion failure*.
+ */
+#define KUNIT_ASSERT_TRUE(test, condition)				       \
+		KUNIT_ASSERT(test, (condition),				       \
+			     "Asserted " #condition " is true, but is false.\n")
+
+#define KUNIT_ASSERT_TRUE_MSG(test, condition, fmt, ...)		       \
+		KUNIT_ASSERT_MSG(test, (condition),			       \
+				 "Asserted " #condition " is true, but is false.\n",\
+				 fmt, ##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_FALSE() - Sets an assertion that @condition is false.
+ * @test: The test context object.
+ * @condition: an arbitrary boolean expression.
+ *
+ * Sets an assertion that the value that @condition evaluates to is false. This
+ * is the same as KUNIT_EXPECT_FALSE(), except it causes an assertion failure
+ * (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_FALSE(test, condition)				       \
+		KUNIT_ASSERT(test, !(condition),			       \
+			     "Asserted " #condition " is false, but is true.\n")
+
+#define KUNIT_ASSERT_FALSE_MSG(test, condition, fmt, ...)		       \
+		KUNIT_ASSERT_MSG(test, !(condition),			       \
+				 "Asserted " #condition " is false, but is true.\n",\
+				 fmt, ##__VA_ARGS__)
+
+void kunit_assert_binary_msg(struct kunit *test,
+			     long long left, const char *left_name,
+			     long long right, const char *right_name,
+			     bool compare_result,
+			     const char *compare_name,
+			     const char *file,
+			     const char *line,
+			     const char *fmt, ...);
+
+static inline void kunit_assert_binary(struct kunit *test,
+				       long long left, const char *left_name,
+				       long long right, const char *right_name,
+				       bool compare_result,
+				       const char *compare_name,
+				       const char *file,
+				       const char *line)
+{
+	kunit_assert_binary_msg(test,
+				left, left_name,
+				right, right_name,
+				compare_result,
+				compare_name,
+				file,
+				line,
+				NULL);
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
+#define KUNIT_ASSERT_BINARY(test, left, condition, right) do {		       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_assert_binary(test,					       \
+			    (long long) __left, #left,			       \
+			    (long long) __right, #right,		       \
+			    __left condition __right, #condition,	       \
+			    __FILE__, __stringify(__LINE__));		       \
+} while (0)
+
+#define KUNIT_ASSERT_BINARY_MSG(test, left, condition, right, fmt, ...) do {   \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	kunit_assert_binary_msg(test,					       \
+				(long long) __left, #left,		       \
+				(long long) __right, #right,		       \
+				__left condition __right, #condition,	       \
+				__FILE__, __stringify(__LINE__),	       \
+				fmt, ##__VA_ARGS__);			       \
+} while (0)
+
+/**
+ * KUNIT_ASSERT_EQ() - Sets an assertion that @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the values that @left and @right evaluate to are
+ * equal. This is the same as KUNIT_EXPECT_EQ(), except it causes an assertion
+ * failure (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_EQ(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, ==, right)
+
+#define KUNIT_ASSERT_EQ_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					==,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_NE() - An assertion that @left and @right are not equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the values that @left and @right evaluate to are not
+ * equal. This is the same as KUNIT_EXPECT_NE(), except it causes an assertion
+ * failure (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_NE(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, !=, right)
+
+#define KUNIT_ASSERT_NE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					!=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_LT() - An assertion that @left is less than @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the value that @left evaluates to is less than the
+ * value that @right evaluates to. This is the same as KUNIT_EXPECT_LT(), except
+ * it causes an assertion failure (see KUNIT_ASSERT_TRUE()) when the assertion
+ * is not met.
+ */
+#define KUNIT_ASSERT_LT(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, <, right)
+
+#define KUNIT_ASSERT_LT_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					<,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+/**
+ * KUNIT_ASSERT_LE() - An assertion that @left is less than or equal to @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the value that @left evaluates to is less than or
+ * equal to the value that @right evaluates to. This is the same as
+ * KUNIT_EXPECT_LE(), except it causes an assertion failure (see
+ * KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_LE(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, <=, right)
+
+#define KUNIT_ASSERT_LE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					<=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+/**
+ * KUNIT_ASSERT_GT() - An assertion that @left is greater than @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the value that @left evaluates to is greater than the
+ * value that @right evaluates to. This is the same as KUNIT_EXPECT_GT(), except
+ * it causes an assertion failure (see KUNIT_ASSERT_TRUE()) when the assertion
+ * is not met.
+ */
+#define KUNIT_ASSERT_GT(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, >, right)
+
+#define KUNIT_ASSERT_GT_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					>,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_GE() - Assertion that @left is greater than or equal to @right.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a primitive C type.
+ * @right: an arbitrary expression that evaluates to a primitive C type.
+ *
+ * Sets an assertion that the value that @left evaluates to is greater than the
+ * value that @right evaluates to. This is the same as KUNIT_EXPECT_GE(), except
+ * it causes an assertion failure (see KUNIT_ASSERT_TRUE()) when the assertion
+ * is not met.
+ */
+#define KUNIT_ASSERT_GE(test, left, right) \
+		KUNIT_ASSERT_BINARY(test, left, >=, right)
+
+#define KUNIT_ASSERT_GE_MSG(test, left, right, fmt, ...)		       \
+		KUNIT_ASSERT_BINARY_MSG(test,				       \
+					left,				       \
+					>=,				       \
+					right,				       \
+					fmt,				       \
+					##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_STREQ() - An assertion that strings @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a null terminated string.
+ * @right: an arbitrary expression that evaluates to a null terminated string.
+ *
+ * Sets an assertion that the values that @left and @right evaluate to are
+ * equal. This is the same as KUNIT_EXPECT_STREQ(), except it causes an
+ * assertion failure (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_STREQ(test, left, right) do {			       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Asserted " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+									       \
+	KUNIT_ASSERT_END(test, !strcmp(left, right), __stream);		       \
+} while (0)
+
+#define KUNIT_ASSERT_STREQ_MSG(test, left, right, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Asserted " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+									       \
+	KUNIT_ASSERT_END(test, !strcmp(left, right), __stream);		       \
+} while (0)
+
+/**
+ * KUNIT_ASSERT_STRNEQ() - Expects that strings @left and @right are not equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a null terminated string.
+ * @right: an arbitrary expression that evaluates to a null terminated string.
+ *
+ * Sets an expectation that the values that @left and @right evaluate to are
+ * not equal. This is semantically equivalent to
+ * KUNIT_ASSERT_TRUE(@test, strcmp((@left), (@right))). See KUNIT_ASSERT_TRUE()
+ * for more information.
+ */
+#define KUNIT_ASSERT_STRNEQ(test, left, right) do {			       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Asserted " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+									       \
+	KUNIT_ASSERT_END(test, strcmp(left, right), __stream);		       \
+} while (0)
+
+#define KUNIT_ASSERT_STRNEQ_MSG(test, left, right, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	kunit_stream_add(__stream, "Asserted " #left " == " #right ", but\n"); \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #left, __left);	       \
+	kunit_stream_add(__stream, "\t\t%s == %s\n", #right, __right);	       \
+	kunit_stream_add(__stream, fmt, ##__VA_ARGS__);			       \
+									       \
+	KUNIT_ASSERT_END(test, strcmp(left, right), __stream);		       \
+} while (0)
+
+/**
+ * KUNIT_ASSERT_NOT_ERR_OR_NULL() - Assertion that @ptr is not null and not err.
+ * @test: The test context object.
+ * @ptr: an arbitrary pointer.
+ *
+ * Sets an assertion that the value that @ptr evaluates to is not null and not
+ * an errno stored in a pointer. This is the same as
+ * KUNIT_EXPECT_NOT_ERR_OR_NULL(), except it causes an assertion failure (see
+ * KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr) do {			       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(ptr) __ptr = (ptr);					       \
+									       \
+	if (!__ptr)							       \
+		kunit_stream_add(__stream,				       \
+				 "Asserted " #ptr " is not null, but is.\n");  \
+	if (IS_ERR(__ptr))						       \
+		kunit_stream_add(__stream,				       \
+				 "Asserted " #ptr " is not error, but is: %ld\n",\
+				 PTR_ERR(__ptr));			       \
+									       \
+	KUNIT_ASSERT_END(test, !IS_ERR_OR_NULL(__ptr), __stream);	       \
+} while (0)
+
+#define KUNIT_ASSERT_NOT_ERR_OR_NULL_MSG(test, ptr, fmt, ...) do {	       \
+	struct kunit_stream *__stream = KUNIT_ASSERT_START(test);	       \
+	typeof(ptr) __ptr = (ptr);					       \
+									       \
+	if (!__ptr) {							       \
+		kunit_stream_add(__stream,				       \
+				 "Asserted " #ptr " is not null, but is.\n");  \
+		kunit_stream_add(__stream, fmt, ##__VA_ARGS__);		       \
+	}								       \
+	if (IS_ERR(__ptr)) {						       \
+		kunit_stream_add(__stream,				       \
+				 "Asserted " #ptr " is not error, but is: %ld\n",\
+				 PTR_ERR(__ptr));			       \
+									       \
+		kunit_stream_add(__stream, fmt, ##__VA_ARGS__);		       \
+	}								       \
+	KUNIT_ASSERT_END(test, !IS_ERR_OR_NULL(__ptr), __stream);	       \
+} while (0)
+
 #endif /* _KUNIT_TEST_H */
diff --git a/kunit/string-stream-test.c b/kunit/string-stream-test.c
index b2a98576797c9..96819b99b5713 100644
--- a/kunit/string-stream-test.c
+++ b/kunit/string-stream-test.c
@@ -19,7 +19,7 @@ static void string_stream_test_get_string(struct kunit *test)
 	string_stream_add(stream, " %s", "bar");
 
 	output = string_stream_get_string(stream);
-	KUNIT_EXPECT_STREQ(test, output, "Foo bar");
+	KUNIT_ASSERT_STREQ(test, output, "Foo bar");
 	kfree(output);
 	destroy_string_stream(stream);
 }
@@ -34,16 +34,16 @@ static void string_stream_test_add_and_clear(struct kunit *test)
 		string_stream_add(stream, "A");
 
 	output = string_stream_get_string(stream);
-	KUNIT_EXPECT_STREQ(test, output, "AAAAAAAAAA");
-	KUNIT_EXPECT_EQ(test, stream->length, 10);
-	KUNIT_EXPECT_FALSE(test, string_stream_is_empty(stream));
+	KUNIT_ASSERT_STREQ(test, output, "AAAAAAAAAA");
+	KUNIT_ASSERT_EQ(test, stream->length, 10);
+	KUNIT_ASSERT_FALSE(test, string_stream_is_empty(stream));
 	kfree(output);
 
 	string_stream_clear(stream);
 
 	output = string_stream_get_string(stream);
-	KUNIT_EXPECT_STREQ(test, output, "");
-	KUNIT_EXPECT_TRUE(test, string_stream_is_empty(stream));
+	KUNIT_ASSERT_STREQ(test, output, "");
+	KUNIT_ASSERT_TRUE(test, string_stream_is_empty(stream));
 	destroy_string_stream(stream);
 }
 
diff --git a/kunit/test-test.c b/kunit/test-test.c
index c81ae6efb959f..4bd7a34d0a6cb 100644
--- a/kunit/test-test.c
+++ b/kunit/test-test.c
@@ -110,11 +110,13 @@ static int kunit_try_catch_test_init(struct kunit *test)
 	struct kunit_try_catch_test_context *ctx;
 
 	ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
 	test->priv = ctx;
 
 	ctx->try_catch = kunit_kmalloc(test,
 				       sizeof(*ctx->try_catch),
 				       GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->try_catch);
 
 	return 0;
 }
diff --git a/kunit/test.c b/kunit/test.c
index 5eace2a527a4e..55561eadc459d 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -425,3 +425,36 @@ void kunit_expect_binary_msg(struct kunit *test,
 	kunit_expect_end(test, compare_result, stream);
 }
 
+void kunit_assert_binary_msg(struct kunit *test,
+			     long long left, const char *left_name,
+			     long long right, const char *right_name,
+			     bool compare_result,
+			     const char *compare_name,
+			     const char *file,
+			     const char *line,
+			     const char *fmt, ...)
+{
+	struct kunit_stream *stream = kunit_assert_start(test, file, line);
+	struct va_format vaf;
+	va_list args;
+
+	kunit_stream_add(stream,
+			 "Asserted %s %s %s, but\n",
+			 left_name, compare_name, right_name);
+	kunit_stream_add(stream, "\t\t%s == %lld\n", left_name, left);
+	kunit_stream_add(stream, "\t\t%s == %lld\n", right_name, right);
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
+	kunit_assert_end(test, compare_result, stream);
+}
+
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
