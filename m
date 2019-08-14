Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396018CAEC
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8KRRPSDs4C38+hTlwrTN3MqR6kZZ69B9YXrVC79IEk=; b=nUlozRzIpdfbDO
	ALu/uMzPVac2Elf52CQ2ic3y9AWool97wPWLns2VVx1Aa/NDY1GbnLBjcyZESN3PEGRSFlqpyLUmI
	8O6ThhjUSpSY3rc2/NqbOU2LnMdZ4h+tlTAmxhc929r6e4wXLZjsUWsowzhhycpjHiAG7MqIj4QNu
	pVUb1FXICW/BJZ/LsTn44w1qcH1tIar7Fpck4cfKbVguSauxcy3OdOn0MrP8BZDZz/TDK+hR8y1eX
	rM2ZeNiGTJO2nAX3ya6BkCwLmFBSRCTF0BbuAinrtZ9BtfhXYn3pxiqa7bT9BV3hoYfbNGzrvL1pD
	6pIUHOiBsqDgrS/qH6yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmDF-0003At-RT; Wed, 14 Aug 2019 05:52:45 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmDB-00036j-Hs
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:43 +0000
Received: by mail-pf1-x449.google.com with SMTP id t14so2672186pfq.15
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=6C2ZlF+2nkpiQNia9KBxXkOd0VH5RZKy8K/fGEQC8fM=;
 b=XbNhGjBd8V9RwDWs2HkrQg7uLkRIeEVSExf+t2FgPifc1kx5Yzvm3wQpumSlsVWjiE
 Lw67gzXBMHCQpFm/6gWK5rFc16GXC3PH+VERf3D3Yi/4Lesu2jIm/e8xkgrzqwzL0lhL
 METRZEWdQUxSBAL0dGvB05/sceCdWKQqeuHOe8zCBuQSD2NBPpcSzNHU6uSKsschipqM
 nK2FpGY6lVH5jt6h4d20XTF9hBFByLWt3Kc3coTy3mGt4nbDtMcsUt7yvR8zE0xKbcxQ
 3anSRAV9ZvaEyNnsugoiRwK+O69y0s2fAefwJbfyZZwiuuWEur7XMZVYxpevHtXOl8cF
 DtVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=6C2ZlF+2nkpiQNia9KBxXkOd0VH5RZKy8K/fGEQC8fM=;
 b=hmEKBfNKkGHzQ6mS75jOltjnYPgfzmuSalW2LGnrLTAQyzZJAAxG4UXKzKGyKZHV88
 Z+dQCff2LQWq6w7Ih5T9yEPpQ0rrGBeOiwHffAvbEp0bIEI0UjMiLl2esGLcV98zK9ZN
 /VONOGUHjz/UJqsb9LX9oN/Dqw7EEv5KO7N+tdnrSWVw8Nxgr+vG1aVBfalx6fkspmiO
 HmK6AwAi5YVs49pfoq/U0SDCfUg2Hffib6nNkC+O13nYOBN9GOg8r+dzn5KTUBlvEJaC
 B9T5t2uGhM8govyiEC20He+T4ZMHCBE3Jr9qOmuteLfT70RVHKSOk7wjrmIOn7ZqsllY
 Y6Gw==
X-Gm-Message-State: APjAAAX9UkO42YVqkoKOYpae4IZHAVcBwEIV62+Z/NFin2lo/bwDWeZ6
 xpm5Kg0lRkSApkXkkBjgT1NFwMQpHbvqCbisivi9Zg==
X-Google-Smtp-Source: APXvYqwO5Vo7UJK4b/wb7l34QdHLxpo16x+1j2Bdgf1y6Vu7D5g6Dzdk4If7O/y0RwG81ytCF+0+4z1FwZYprCvo+vbLuQ==
X-Received: by 2002:a63:704:: with SMTP id 4mr37413405pgh.242.1565761959225;
 Tue, 13 Aug 2019 22:52:39 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:51:01 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-12-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 11/18] kunit: test: add the concept of assertions
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225241_607158_EC0143C8 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 include/kunit/test.h       | 284 ++++++++++++++++++++++++++++++++++++-
 kunit/string-stream-test.c |   2 +-
 kunit/test-test.c          |   7 +-
 3 files changed, 284 insertions(+), 9 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index f52c7c65ef651..d521d7e5be6ee 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -86,9 +86,10 @@ struct kunit;
  * @name: the name of the test case.
  *
  * A test case is a function with the signature, ``void (*)(struct kunit *)``
- * that makes expectations (see KUNIT_EXPECT_TRUE()) about code under test. Each
- * test case is associated with a &struct kunit_suite and will be run after the
- * suite's init function and followed by the suite's exit function.
+ * that makes expectations and assertions (see KUNIT_EXPECT_TRUE() and
+ * KUNIT_ASSERT_TRUE()) about code under test. Each test case is associated with
+ * a &struct kunit_suite and will be run after the suite's init function and
+ * followed by the suite's exit function.
  *
  * A test case should be static and should only be created with the KUNIT_CASE()
  * macro; additionally, every array of test cases should be terminated with an
@@ -1193,4 +1194,281 @@ do {									       \
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
index 75229e267c323..76cc05eb00edd 100644
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
index 06d34d36b1038..e0ab4bd546eac 100644
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
