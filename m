Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1A8CADF
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf1KoE/syBFWyCFw/yKY/P0q4TqR1rNIMlQlSRDrujo=; b=nW8ZMqG9B3I2WQ
	lQidTtW9Z1MCtGt735AO/To8R545sZi+cd59gXVNce6mjZ++rQ/iv5VmFTIh+x6Dh5ymdWGFlXgV7
	dWMZPdZbCdphqBtQ/wdWKUGBWi29iULKLgLD1aejZOi8iT5LYp170+IUssynuAvLOxp5jgUXlQ8P4
	emNlXC5GvBqSyEabag5wk+pomN5YunmN1CvnZkgnr31goEZuWEeplJ84BkTVjVDhurbVhEvNJWmCs
	R5pTKzfXHtNXrixz9Xef8/3YglNRjgz2eXJi95hMp2isculj470fQuocEmosswSs6M7cC8mdc5TyV
	QeG1NbMyqycFVMkBLAFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmD1-000305-C2; Wed, 14 Aug 2019 05:52:31 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmCw-0002wN-KW
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:29 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id n2so369258vsq.14
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=2AFO/KVd80UF3Pli/mixWH6zxVu161JF9UJWjyc7Sqw=;
 b=ZyRNsLc3WW3fVJ4zcpKoO7y3yz8N9HujdrHJ4qYhPvdIko9qR+JNrU2axe+6WQy8Ge
 bvdZTitPopY9unsLn8Z08+hH8SWP6RrtFxKa8Ld1gdWeU6xtEURQZURQU//TOb533aD6
 5qMrwIqGaqc/3qsOOolNVNPWAeasjSlD4k6F7JSimOuuzm9HW29Wjgi/GEf7inKgWRZz
 w45YRKq+tE4hsxYAAL41+HEAV0ocCcsRStSXhr+mKNz/jqmru14RJdF/A9i4SW3klrnt
 BcqTHc8mXCOBKB1F3ds/cNQlx0ZoW8suPS/C178PD8/xuYXxypDANdN26SRC1qYY9rmh
 cukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=2AFO/KVd80UF3Pli/mixWH6zxVu161JF9UJWjyc7Sqw=;
 b=prBzXJ3PRyCPkNAAhzYA33ZbXdEy/uEhoNNKGvBWlV0tABtfp/As8KeutC6y0bS40s
 OORjOUz5E8Sg7FrU/gsKYocIaqkN68gNbGpc16plg9uHTYe61wGGNemEr2UMIGEWqcCH
 upnxeL+HVHJUxP8eptvJCYeITrjzScnYvyG4dmzgRvu4omJtUFYfU5MZ+iQbWcG3NRPT
 iJ7EE7ZYmaSJppcxGEmEWncLSh6Eds4aC7hnL0SkgO09KdSWBhvd5giovSuFZ1g5GNQS
 grSyZwpi9IlE+0gFa84nDqxsRo+kj4twSjcxa9Mj7VW8vKEoKMEhKKA80hK/PJtDAULP
 iK3g==
X-Gm-Message-State: APjAAAXrdJBMyw48RKqg8GJfWVzN9Wskz/Z32hB44a//vEbWGVeFmj8k
 /u4FCA/5X1Xz+pLuMB72ZLpHk+do0a1nXPMG5+kAqw==
X-Google-Smtp-Source: APXvYqxRmtp9EHBK8gtkXQ1A1J9zrt7O1mh4k9G/Kfv5Qf3Z8qOBkpNdAp1Z2yQC9RI6g5RlKLnW5QGQmzlqSVpx7fDPXw==
X-Received: by 2002:a1f:2192:: with SMTP id h140mr9721172vkh.6.1565761942643; 
 Tue, 13 Aug 2019 22:52:22 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:50:55 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-6-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 05/18] kunit: test: add the concept of expectations
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225226_689038_8D5A2C8A 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
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

Add support for expectations, which allow properties to be specified and
then verified in tests.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h | 834 ++++++++++++++++++++++++++++++++++++++++++-
 kunit/test.c         |  62 ++++
 2 files changed, 893 insertions(+), 3 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index f264ffe58f008..4c41e6bde1588 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -9,6 +9,8 @@
 #ifndef _KUNIT_TEST_H
 #define _KUNIT_TEST_H
 
+#include <kunit/assert.h>
+#include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 
@@ -341,7 +343,7 @@ void __printf(3, 4) kunit_printk(const char *level,
  * a variable number of format parameters just like printk().
  */
 #define kunit_info(test, fmt, ...) \
-		kunit_printk(KERN_INFO, test, fmt, ##__VA_ARGS__)
+	kunit_printk(KERN_INFO, test, fmt, ##__VA_ARGS__)
 
 /**
  * kunit_warn() - Prints a WARN level message associated with the current test.
@@ -351,7 +353,7 @@ void __printf(3, 4) kunit_printk(const char *level,
  * Prints a warning level message.
  */
 #define kunit_warn(test, fmt, ...) \
-		kunit_printk(KERN_WARNING, test, fmt, ##__VA_ARGS__)
+	kunit_printk(KERN_WARNING, test, fmt, ##__VA_ARGS__)
 
 /**
  * kunit_err() - Prints an ERROR level message associated with the current test.
@@ -361,6 +363,832 @@ void __printf(3, 4) kunit_printk(const char *level,
  * Prints an error level message.
  */
 #define kunit_err(test, fmt, ...) \
-		kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
+	kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
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
+void kunit_do_assertion(struct kunit *test,
+			struct kunit_assert *assert,
+			bool pass,
+			const char *fmt, ...);
+
+#define KUNIT_ASSERTION(test, pass, assert_class, INITIALIZER, fmt, ...) do {  \
+	struct assert_class __assertion = INITIALIZER;			       \
+	kunit_do_assertion(test,					       \
+			   &__assertion.assert,				       \
+			   pass,					       \
+			   fmt,						       \
+			   ##__VA_ARGS__);				       \
+} while (0)
+
+
+#define KUNIT_FAIL_ASSERTION(test, assert_type, fmt, ...)		       \
+	KUNIT_ASSERTION(test,						       \
+			false,						       \
+			kunit_fail_assert,				       \
+			KUNIT_INIT_FAIL_ASSERT_STRUCT(test, assert_type),      \
+			fmt,						       \
+			##__VA_ARGS__)
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
+#define KUNIT_FAIL(test, fmt, ...)					       \
+	KUNIT_FAIL_ASSERTION(test,					       \
+			     KUNIT_EXPECTATION,				       \
+			     fmt,					       \
+			     ##__VA_ARGS__)
+
+#define KUNIT_UNARY_ASSERTION(test,					       \
+			      assert_type,				       \
+			      condition,				       \
+			      expected_true,				       \
+			      fmt,					       \
+			      ...)					       \
+	KUNIT_ASSERTION(test,						       \
+			!!(condition) == !!expected_true,		       \
+			kunit_unary_assert,				       \
+			KUNIT_INIT_UNARY_ASSERT_STRUCT(test,		       \
+						       assert_type,	       \
+						       #condition,	       \
+						       expected_true),	       \
+			fmt,						       \
+			##__VA_ARGS__)
+
+#define KUNIT_TRUE_MSG_ASSERTION(test, assert_type, condition, fmt, ...)       \
+	KUNIT_UNARY_ASSERTION(test,					       \
+			      assert_type,				       \
+			      condition,				       \
+			      true,					       \
+			      fmt,					       \
+			      ##__VA_ARGS__)
+
+#define KUNIT_TRUE_ASSERTION(test, assert_type, condition) \
+	KUNIT_TRUE_MSG_ASSERTION(test, assert_type, condition, NULL)
+
+#define KUNIT_FALSE_MSG_ASSERTION(test, assert_type, condition, fmt, ...)      \
+	KUNIT_UNARY_ASSERTION(test,					       \
+			      assert_type,				       \
+			      condition,				       \
+			      false,					       \
+			      fmt,					       \
+			      ##__VA_ARGS__)
+
+#define KUNIT_FALSE_ASSERTION(test, assert_type, condition) \
+	KUNIT_FALSE_MSG_ASSERTION(test, assert_type, condition, NULL)
+
+#define KUNIT_BINARY_CLASS \
+	kunit_binary_assert, KUNIT_INIT_BINARY_ASSERT_STRUCT
+#define KUNIT_BINARY_PTR_CLASS \
+	kunit_binary_ptr_assert, KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT
+
+/*
+ * A factory macro for defining the assertions and expectations for the basic
+ * comparisons defined for the built in types.
+ *
+ * Unfortunately, there is no common type that all types can be promoted to for
+ * which all the binary operators behave the same way as for the actual types
+ * (for example, there is no type that long long and unsigned long long can
+ * both be cast to where the comparison result is preserved for all values). So
+ * the best we can do is do the comparison in the original types and then coerce
+ * everything to long long for printing; this way, the comparison behaves
+ * correctly and the printed out value usually makes sense without
+ * interpretation, but can always be interpreted to figure out the actual
+ * value.
+ */
+#define KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    assert_class,			       \
+				    ASSERT_CLASS_INIT,			       \
+				    assert_type,			       \
+				    left,				       \
+				    op,					       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+do {									       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+	((void)__typecheck(__left, __right));				       \
+									       \
+	KUNIT_ASSERTION(test,						       \
+			__left op __right,				       \
+			assert_class,					       \
+			ASSERT_CLASS_INIT(test,				       \
+					  assert_type,			       \
+					  #op,				       \
+					  #left,			       \
+					  __left,			       \
+					  #right,			       \
+					  __right),			       \
+			fmt,						       \
+			##__VA_ARGS__);					       \
+} while (0)
+
+#define KUNIT_BINARY_ASSERTION(test, assert_type, left, op, right, fmt, ...)   \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    kunit_binary_assert,		       \
+				    KUNIT_INIT_BINARY_ASSERT_STRUCT,	       \
+				    assert_type,			       \
+				    left,				       \
+				    op,					       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_EQ_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, ==, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_NE_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, !=, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_LT_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, <, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_LE_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, <=, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_GT_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, >, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BASE_GE_MSG_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ...)				       \
+	KUNIT_BASE_BINARY_ASSERTION(test,				       \
+				    ASSERT_CLASS,			       \
+				    assert_type,			       \
+				    left, >=, right,			       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_EQ_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_EQ_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_EQ_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_EQ_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_EQ_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_EQ_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_EQ_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_EQ_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_NE_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_NE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_NE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_NE_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_NE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_NE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_NE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_NE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_LT_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_LT_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_LT_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_LT_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_LT_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_LT_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_LT_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_LT_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_LE_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_LE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_LE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_LE_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_LE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_LE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_LE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_LE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_GT_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_GT_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_GT_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_GT_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_GT_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_GT_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_GT_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_GT_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_GE_MSG_ASSERTION(test, assert_type, left, right, fmt, ...)\
+	KUNIT_BASE_GE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_CLASS,			       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_GE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_GE_MSG_ASSERTION(test,				       \
+				      assert_type,			       \
+				      left,				       \
+				      right,				       \
+				      NULL)
+
+#define KUNIT_BINARY_PTR_GE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BASE_GE_MSG_ASSERTION(test,				       \
+				    KUNIT_BINARY_PTR_CLASS,		       \
+				    assert_type,			       \
+				    left,				       \
+				    right,				       \
+				    fmt,				       \
+				    ##__VA_ARGS__)
+
+#define KUNIT_BINARY_PTR_GE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_PTR_GE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_STR_ASSERTION(test,				       \
+				   assert_type,				       \
+				   left,				       \
+				   op,					       \
+				   right,				       \
+				   fmt,					       \
+				   ...)					       \
+do {									       \
+	typeof(left) __left = (left);					       \
+	typeof(right) __right = (right);				       \
+									       \
+	KUNIT_ASSERTION(test,						       \
+			strcmp(__left, __right) op 0,			       \
+			kunit_binary_str_assert,			       \
+			KUNIT_INIT_BINARY_ASSERT_STRUCT(test,		       \
+							assert_type,	       \
+							#op,		       \
+							#left,		       \
+							__left,		       \
+							#right,		       \
+							__right),	       \
+			fmt,						       \
+			##__VA_ARGS__);					       \
+} while (0)
+
+#define KUNIT_BINARY_STR_EQ_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BINARY_STR_ASSERTION(test,				       \
+				   assert_type,				       \
+				   left, ==, right,			       \
+				   fmt,					       \
+				   ##__VA_ARGS__)
+
+#define KUNIT_BINARY_STR_EQ_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_STR_EQ_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ...)				       \
+	KUNIT_BINARY_STR_ASSERTION(test,				       \
+				   assert_type,				       \
+				   left, !=, right,			       \
+				   fmt,					       \
+				   ##__VA_ARGS__)
+
+#define KUNIT_BINARY_STR_NE_ASSERTION(test, assert_type, left, right)	       \
+	KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,				       \
+					  assert_type,			       \
+					  left,				       \
+					  right,			       \
+					  NULL)
+
+#define KUNIT_PTR_NOT_ERR_OR_NULL_MSG_ASSERTION(test,			       \
+						assert_type,		       \
+						ptr,			       \
+						fmt,			       \
+						...)			       \
+do {									       \
+	typeof(ptr) __ptr = (ptr);					       \
+									       \
+	KUNIT_ASSERTION(test,						       \
+			!IS_ERR_OR_NULL(__ptr),				       \
+			kunit_ptr_not_err_assert,			       \
+			KUNIT_INIT_PTR_NOT_ERR_STRUCT(test,		       \
+						      assert_type,	       \
+						      #ptr,		       \
+						      __ptr),		       \
+			fmt,						       \
+			##__VA_ARGS__);					       \
+} while (0)
+
+#define KUNIT_PTR_NOT_ERR_OR_NULL_ASSERTION(test, assert_type, ptr)	       \
+	KUNIT_PTR_NOT_ERR_OR_NULL_MSG_ASSERTION(test,			       \
+						assert_type,		       \
+						ptr,			       \
+						NULL)
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
+#define KUNIT_EXPECT_TRUE(test, condition) \
+	KUNIT_TRUE_ASSERTION(test, KUNIT_EXPECTATION, condition)
+
+#define KUNIT_EXPECT_TRUE_MSG(test, condition, fmt, ...)		       \
+	KUNIT_TRUE_MSG_ASSERTION(test,					       \
+				 KUNIT_EXPECTATION,			       \
+				 condition,				       \
+				 fmt,					       \
+				 ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_FALSE(test, condition) \
+	KUNIT_FALSE_ASSERTION(test, KUNIT_EXPECTATION, condition)
+
+#define KUNIT_EXPECT_FALSE_MSG(test, condition, fmt, ...)		       \
+	KUNIT_FALSE_MSG_ASSERTION(test,					       \
+				  KUNIT_EXPECTATION,			       \
+				  condition,				       \
+				  fmt,					       \
+				  ##__VA_ARGS__)
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
+	KUNIT_BINARY_EQ_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_EQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_EQ_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_PTR_EQ(test, left, right)				       \
+	KUNIT_BINARY_PTR_EQ_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right)
+
+#define KUNIT_EXPECT_PTR_EQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_PTR_EQ_MSG_ASSERTION(test,				       \
+					  KUNIT_EXPECTATION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+	KUNIT_BINARY_NE_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_NE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_NE_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_PTR_NE(test, left, right)				       \
+	KUNIT_BINARY_PTR_NE_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right)
+
+#define KUNIT_EXPECT_PTR_NE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_PTR_NE_MSG_ASSERTION(test,				       \
+					  KUNIT_EXPECTATION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+	KUNIT_BINARY_LT_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_LT_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_LT_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+	KUNIT_BINARY_LE_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_LE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_LE_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+	KUNIT_BINARY_GT_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_GT_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_GT_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+	KUNIT_BINARY_GE_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_GE_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_GE_MSG_ASSERTION(test,				       \
+				      KUNIT_EXPECTATION,		       \
+				      left,				       \
+				      right,				       \
+				      fmt,				       \
+				      ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_STREQ(test, left, right) \
+	KUNIT_BINARY_STR_EQ_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_STREQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_STR_EQ_MSG_ASSERTION(test,				       \
+					  KUNIT_EXPECTATION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_STRNEQ(test, left, right) \
+	KUNIT_BINARY_STR_NE_ASSERTION(test, KUNIT_EXPECTATION, left, right)
+
+#define KUNIT_EXPECT_STRNEQ_MSG(test, left, right, fmt, ...)		       \
+	KUNIT_BINARY_STR_NE_MSG_ASSERTION(test,				       \
+					  KUNIT_EXPECTATION,		       \
+					  left,				       \
+					  right,			       \
+					  fmt,				       \
+					  ##__VA_ARGS__)
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
+#define KUNIT_EXPECT_NOT_ERR_OR_NULL(test, ptr) \
+	KUNIT_PTR_NOT_ERR_OR_NULL_ASSERTION(test, KUNIT_EXPECTATION, ptr)
+
+#define KUNIT_EXPECT_NOT_ERR_OR_NULL_MSG(test, ptr, fmt, ...)		       \
+	KUNIT_PTR_NOT_ERR_OR_NULL_MSG_ASSERTION(test,			       \
+						KUNIT_EXPECTATION,	       \
+						ptr,			       \
+						fmt,			       \
+						##__VA_ARGS__)
 
 #endif /* _KUNIT_TEST_H */
diff --git a/kunit/test.c b/kunit/test.c
index 68b1037ab74d0..3cbceb34b3b36 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -120,6 +120,68 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
 			      test_case->name);
 }
 
+static void kunit_print_string_stream(struct kunit *test,
+				      struct string_stream *stream)
+{
+	struct string_stream_fragment *fragment;
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
+		kunit_err(test, buf);
+		kunit_kfree(test, buf);
+	}
+}
+
+static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
+{
+	struct string_stream *stream;
+
+	kunit_set_failure(test);
+
+	stream = alloc_string_stream(test, GFP_KERNEL);
+	if (!stream) {
+		WARN(true,
+		     "Could not allocate stream to print failed assertion in %s:%d\n",
+		     assert->file,
+		     assert->line);
+		return;
+	}
+
+	assert->format(assert, stream);
+
+	kunit_print_string_stream(test, stream);
+
+	WARN_ON(string_stream_destroy(stream));
+}
+
+void kunit_do_assertion(struct kunit *test,
+			struct kunit_assert *assert,
+			bool pass,
+			const char *fmt, ...)
+{
+	va_list args;
+
+	if (pass)
+		return;
+
+	va_start(args, fmt);
+
+	assert->message.fmt = fmt;
+	assert->message.va = &args;
+
+	kunit_fail(test, assert);
+
+	va_end(args);
+}
+
 void kunit_init_test(struct kunit *test, const char *name)
 {
 	spin_lock_init(&test->lock);
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
