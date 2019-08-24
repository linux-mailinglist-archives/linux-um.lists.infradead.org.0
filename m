Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E3A9BA43
	for <lists+linux-um@lfdr.de>; Sat, 24 Aug 2019 03:35:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GPbIzPfHLHJKJSRsJeDe7+n8waVBmZrnE3AFa2NZ7Q=; b=ilf3NnJFWYDpzD
	05yLXug/AIARtsyn0utsa8xcPZKatGJXYmH8LztsOwba9UebcZYCExXRMNGz5TIrN76HJjEzzc6ng
	TGugw+3ZBU9Bg7+DMsULfzLjyQSTRyje7VmLqZYMqf+g83cCSRi47hA1Esv0vBjrhHLqCoKd9sQwx
	eH8g3ddWL+jFptJT6UdlTq82Wg7bUvkeKJ5LN+CT5DitGoqDT7rCxyIWGO15VeC5ZZNxsxeRIWFMp
	eC4chFA2aw0BwZutrAALeEsKbpgEvcJEsxBpE4V+2kq5qxjoDMIFPU3AEl2FgTh0meJr6voF4xwGE
	l285uzg7/BB+kLSsiq6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KxW-0005Ag-31; Sat, 24 Aug 2019 01:35:14 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KxR-0004tt-PF
 for linux-um@lists.infradead.org; Sat, 24 Aug 2019 01:35:11 +0000
Received: by mail-pl1-x649.google.com with SMTP id t2so6845303plq.11
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 18:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VBOKhaNiIF1Za7Wn+J3NS35QckGa03frBK/hJfiW8UY=;
 b=f6eIDO4e3JKsu7WiZIa+bxawYB24mhAD4MWKpZ0zYIv8GmUcx0vCsxevSkyw9/SYOl
 cC71LiO60k60SF2KwNZkRpVD0zaN6VdDP2bKqy68IMY/JdIBSzFTxAOH8hCVSrGoZKA+
 qP/0j130q9KDX+w2Z3YL1CuzcwWwu1yAMlPe+gmhwbrWWU7MBgcFAJYEkv814Fk9WagL
 xOJBK4j0hMRvvUiOauohBPEyeS2aQW1fALmmIszCeeqn9Uk3HgT72L5UTQFGrInf6Uu4
 Qa0X80YqwxceD3DSvlb4lzVv3V3iC7ac52Onktbq5NRzPSTWYpQCZy1mChkl9K83gYkq
 RpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VBOKhaNiIF1Za7Wn+J3NS35QckGa03frBK/hJfiW8UY=;
 b=odwDTz/g2SZTK02Z4yF0fReuERcQBKiUlGo3lHCAnreOSra1yIUfQ2f6CxPWWqp95i
 0vIAco/LUdrfg9rhoWRd2yO0HNjF4vhq3JSn0C9QDPh1E1O9d2FSyLf2A+lSoDdHtdux
 c+tXxHpExh/hHUK2ZDRPp1dzAW1+5QXce4qgVQwTIccsUR/3noEwQlJWPfCl6f5+6xfA
 8/va7/W1d2H9ww0KfUbkmVvI9Il6MBeuQYKnVYWkWPFZdNElOj30xi2WG4nZjBltEqrj
 P6Dda58z8/ZbuyYcQWAXupxmcy8VPFvS2v3/GupOPaUFYGcLtzEEvOgAarS67ZhoHwJt
 KiCA==
X-Gm-Message-State: APjAAAU0QS5eQupAnfH9nnbntqAxROI32N61zEOwYzJlY/hrlDukF1sp
 US4xtI41fCO0u6/qS92/4OSkbir2BHb7Gkggt8CiIw==
X-Google-Smtp-Source: APXvYqy9qCeEWEnze3IiskRqX0Wqf10KUhk4jcDfZcsF6U9lb3lhz/s06B2xLjKu4iqfFqAyNpBo9uWZRKmFhwmr/7IqDA==
X-Received: by 2002:a63:2148:: with SMTP id s8mr6279045pgm.336.1566610506224; 
 Fri, 23 Aug 2019 18:35:06 -0700 (PDT)
Date: Fri, 23 Aug 2019 18:34:18 -0700
In-Reply-To: <20190824013425.175645-1-brendanhiggins@google.com>
Message-Id: <20190824013425.175645-12-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190824013425.175645-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v15 11/18] kunit: test: add the concept of assertions
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_183509_883840_00F4C6CC 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h       | 282 ++++++++++++++++++++++++++++++++++++-
 kunit/string-stream-test.c |   2 +-
 kunit/test-test.c          |   7 +-
 3 files changed, 283 insertions(+), 8 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 3d554d7c1c79..8b7eb03d4971 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -87,8 +87,9 @@ struct kunit;
  * @name:     the name of the test case.
  *
  * A test case is a function with the signature,
- * ``void (*)(struct kunit *)`` that makes expectations (see
- * KUNIT_EXPECT_TRUE()) about code under test. Each test case is associated
+ * ``void (*)(struct kunit *)``
+ * that makes expectations and assertions (see KUNIT_EXPECT_TRUE() and
+ * KUNIT_ASSERT_TRUE()) about code under test. Each test case is associated
  * with a &struct kunit_suite and will be run after the suite's init
  * function and followed by the suite's exit function.
  *
@@ -1210,4 +1211,281 @@ do {									       \
 						fmt,			       \
 						##__VA_ARGS__)
 
+#define KUNIT_ASSERT_FAILURE(test, fmt, ...) \
+	KUNIT_FAIL_ASSERTION(test, KUNIT_ASSERTION, fmt, ##__VA_ARGS__)
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
+#define KUNIT_ASSERT_TRUE(test, condition) \
+	KUNIT_TRUE_ASSERTION(test, KUNIT_ASSERTION, condition)
+
+#define KUNIT_ASSERT_TRUE_MSG(test, condition, fmt, ...)		       \
+	KUNIT_TRUE_MSG_ASSERTION(test,					       \
+				 KUNIT_ASSERTION,			       \
+				 condition,				       \
+				 fmt,					       \
+				 ##__VA_ARGS__)
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
+#define KUNIT_ASSERT_FALSE(test, condition) \
+	KUNIT_FALSE_ASSERTION(test, KUNIT_ASSERTION, condition)
+
+#define KUNIT_ASSERT_FALSE_MSG(test, condition, fmt, ...)		       \
+	KUNIT_FALSE_MSG_ASSERTION(test,					       \
+				  KUNIT_ASSERTION,			       \
+				  condition,				       \
+				  fmt,					       \
+				  ##__VA_ARGS__)
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
+	KUNIT_BINARY_EQ_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_EQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_EQ_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_PTR_EQ() - Asserts that pointers @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a pointer.
+ * @right: an arbitrary expression that evaluates to a pointer.
+ *
+ * Sets an assertion that the values that @left and @right evaluate to are
+ * equal. This is the same as KUNIT_EXPECT_EQ(), except it causes an assertion
+ * failure (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_PTR_EQ(test, left, right) \
+	KUNIT_BINARY_PTR_EQ_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_PTR_EQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_PTR_EQ_MSG_ASSERTION(test,				       \
+					  KUNIT_ASSERTION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+	KUNIT_BINARY_NE_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_NE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_NE_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
+
+/**
+ * KUNIT_ASSERT_PTR_NE() - Asserts that pointers @left and @right are not equal.
+ * KUNIT_ASSERT_PTR_EQ() - Asserts that pointers @left and @right are equal.
+ * @test: The test context object.
+ * @left: an arbitrary expression that evaluates to a pointer.
+ * @right: an arbitrary expression that evaluates to a pointer.
+ *
+ * Sets an assertion that the values that @left and @right evaluate to are not
+ * equal. This is the same as KUNIT_EXPECT_NE(), except it causes an assertion
+ * failure (see KUNIT_ASSERT_TRUE()) when the assertion is not met.
+ */
+#define KUNIT_ASSERT_PTR_NE(test, left, right) \
+	KUNIT_BINARY_PTR_NE_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_PTR_NE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_PTR_NE_MSG_ASSERTION(test,				       \
+					  KUNIT_ASSERTION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+	KUNIT_BINARY_LT_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_LT_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_LT_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+	KUNIT_BINARY_LE_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_LE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_LE_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
+
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
+	KUNIT_BINARY_GT_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_GT_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_GT_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+	KUNIT_BINARY_GE_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_GE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_GE_MSG_ASSERTION(test,				       \
+				      KUNIT_ASSERTION,			       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+#define KUNIT_ASSERT_STREQ(test, left, right) \
+	KUNIT_BINARY_STR_EQ_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_STREQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_STR_EQ_MSG_ASSERTION(test,				       \
+					  KUNIT_ASSERTION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+#define KUNIT_ASSERT_STRNEQ(test, left, right) \
+	KUNIT_BINARY_STR_NE_ASSERTION(test, KUNIT_ASSERTION, left, right)
+
+#define KUNIT_ASSERT_STRNEQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,				       \
+					  KUNIT_ASSERTION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+#define KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr) \
+	KUNIT_PTR_NOT_ERR_OR_NULL_ASSERTION(test, KUNIT_ASSERTION, ptr)
+
+#define KUNIT_ASSERT_NOT_ERR_OR_NULL_MSG(test, ptr, fmt, ...)		       \
+	KUNIT_PTR_NOT_ERR_OR_NULL_MSG_ASSERTION(test,			       \
+						KUNIT_ASSERTION,	       \
+						ptr,			       \
+						fmt,			       \
+						##__VA_ARGS__)
+
 #endif /* _KUNIT_TEST_H */
diff --git a/kunit/string-stream-test.c b/kunit/string-stream-test.c
index 75229e267c32..76cc05eb00ed 100644
--- a/kunit/string-stream-test.c
+++ b/kunit/string-stream-test.c
@@ -35,7 +35,7 @@ static void string_stream_test_get_string(struct kunit *test)
 	string_stream_add(stream, " %s", "bar");
 
 	output = string_stream_get_string(stream);
-	KUNIT_EXPECT_STREQ(test, output, "Foo bar");
+	KUNIT_ASSERT_STREQ(test, output, "Foo bar");
 }
 
 static struct kunit_case string_stream_test_cases[] = {
diff --git a/kunit/test-test.c b/kunit/test-test.c
index 06d34d36b103..e0ab4bd546ea 100644
--- a/kunit/test-test.c
+++ b/kunit/test-test.c
@@ -78,16 +78,13 @@ static int kunit_try_catch_test_init(struct kunit *test)
 	struct kunit_try_catch_test_context *ctx;
 
 	ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return -ENOMEM;
-
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
 	test->priv = ctx;
 
 	ctx->try_catch = kunit_kmalloc(test,
 				       sizeof(*ctx->try_catch),
 				       GFP_KERNEL);
-	if (!ctx->try_catch)
-		return -ENOMEM;
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->try_catch);
 
 	return 0;
 }
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
