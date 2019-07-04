Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7765F07C
	for <lists+linux-um@lfdr.de>; Thu,  4 Jul 2019 02:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuuF5oq+06Ru918IO2bV4pHWoLwcAssq00rmUndvytQ=; b=BRTBpgaoFCYYFk
	Tn4nyGQHDjgK0vDe4HeK9csmFDZ9EtAGO3kfD4ZXHGg73lL5uO+X3c4N1hW52+LENrB/CRpV/b6/f
	avS7VWhvvjg3FriGEqHp5xEg2amQPrT9haSifclUUib6SL0Jn/tr7pxpTJrHEs5OjRRyZ3zY5ahlz
	bhJQ5zgXPwepkGyWsoSkziBT7C8VYIyuwgYPorDbOPFknsNluXh0MmyCoutp/ltODtYnsOMueUcyq
	z6310n/aR5+/D15WED5pc9gRLaAIBf15iGsr8WN03Fj7gUqCn0enz10Omfwuf/+HberaB07lM/jys
	XXQrPk0VgmoplpQ6NYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiplb-0007WF-6A; Thu, 04 Jul 2019 00:38:27 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiplX-0007UV-UH
 for linux-um@lists.infradead.org; Thu, 04 Jul 2019 00:38:25 +0000
Received: by mail-qk1-x74a.google.com with SMTP id k125so5499286qkc.12
 for <linux-um@lists.infradead.org>; Wed, 03 Jul 2019 17:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5ITzFQ13C29abIT2H8JegwiISTqveD/hhAgmQXoh5oA=;
 b=jyRSoyNawUE417SkK94hLVOB1vTtOPqbOQfzmER41jow5EeKa1VsGuFcew8PL0Gegm
 9S5mSMX6yWB8JAxENVLTs4bjg5IqiQRA0QfEvbaSLoLF8ZguWfRw3XBTYsm7qnan/BJO
 rHIOe+3raWyYKKCz6IrB66eeugUdHA2wtEj9CcMyMw6k2/k6+nCYxuislBhq6VrT/yH9
 uPthg93qlKVj2Jk75AV+1j9izGHmdmjLYJ4v5jO02AOTN3+pz3HTVkQyJGe1cZJzouAR
 ddc9/n6JIPcBQ0JveTJw1IRPHeZoiGeIzznmQxJB5GalG7iP073n6k4TF8aiGZHG3k3p
 pFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5ITzFQ13C29abIT2H8JegwiISTqveD/hhAgmQXoh5oA=;
 b=uVla/0HNmNJuKKJwbSwyzFoAQPgFE8TJyg9vZncXoFSA4zy1ydEQCvcNg9iGxlCy1D
 w/y35QtMgjn2MjszQ/HMbTG3fCb9x8sEytnGzm5rojZf6GxYw9KV/EKL8qPnacqwyp4U
 Fj/bncdKfbBD9HnsTCvzNKnuM4evgijsL8O4HX9gWhPNQkTQuvnhQwSUNxPWmzAFib+9
 lFduZewm+T5Oso5eqUCV9GMSNQ3sURdhPJHbq+pRNogbTnsJX28YbREfm952KoCaPAm0
 2Cc9pXxPW9gpXG8DO7Ng1D/aG0YB4g3uWVI107ryb4e6l/bSe/llfJsQDR4Ga7wnOJq/
 cngw==
X-Gm-Message-State: APjAAAVMq0pMlapPhab280v//Cgdo+x7KrIzIgWnx6JeecaYiIYe22R3
 7AMRofvbLw7bnbwxOQ1+0v6bX0atwfhRwmUNRtZ7GQ==
X-Google-Smtp-Source: APXvYqxAkMJ4mIogMtAUOfoKlATE011loov9BP+bWhD0zNtR+QBEvJRSSUJ6IY7z9GBaoxLFmOPm2s5KIsJSLZQJwe2uVA==
X-Received: by 2002:a0c:adef:: with SMTP id x44mr34890320qvc.153.1562200702322; 
 Wed, 03 Jul 2019 17:38:22 -0700 (PDT)
Date: Wed,  3 Jul 2019 17:36:09 -0700
In-Reply-To: <20190704003615.204860-1-brendanhiggins@google.com>
Message-Id: <20190704003615.204860-13-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190704003615.204860-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v6 12/18] kunit: test: add tests for KUnit managed resources
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_173823_984713_6E3BD5E4 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 Avinash Kondareddy <akndr41@gmail.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Avinash Kondareddy <akndr41@gmail.com>

Add unit tests for KUnit managed resources. KUnit managed resources
(struct kunit_resource) are resources that are automatically cleaned up
at the end of a KUnit test, similar to the concept of devm_* managed
resources.

Signed-off-by: Avinash Kondareddy <akndr41@gmail.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 kunit/test-test.c | 219 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 219 insertions(+)

diff --git a/kunit/test-test.c b/kunit/test-test.c
index 058f3fb37458a..b044659fe868b 100644
--- a/kunit/test-test.c
+++ b/kunit/test-test.c
@@ -101,3 +101,222 @@ static struct kunit_suite kunit_try_catch_test_suite = {
 	.test_cases = kunit_try_catch_test_cases,
 };
 kunit_test_suite(kunit_try_catch_test_suite);
+
+/*
+ * Context for testing test managed resources
+ * is_resource_initialized is used to test arbitrary resources
+ */
+struct kunit_test_resource_context {
+	struct kunit test;
+	bool is_resource_initialized;
+	int allocate_order[2];
+	int free_order[2];
+};
+
+static int fake_resource_init(struct kunit_resource *res, void *context)
+{
+	struct kunit_test_resource_context *ctx = context;
+
+	res->allocation = &ctx->is_resource_initialized;
+	ctx->is_resource_initialized = true;
+	return 0;
+}
+
+static void fake_resource_free(struct kunit_resource *res)
+{
+	bool *is_resource_initialized = res->allocation;
+
+	*is_resource_initialized = false;
+}
+
+static void kunit_resource_test_init_resources(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx = test->priv;
+
+	kunit_init_test(&ctx->test, "testing_test_init_test");
+
+	KUNIT_EXPECT_TRUE(test, list_empty(&ctx->test.resources));
+}
+
+static void kunit_resource_test_alloc_resource(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx = test->priv;
+	struct kunit_resource *res;
+	kunit_resource_free_t free = fake_resource_free;
+
+	res = kunit_alloc_resource(&ctx->test,
+				   fake_resource_init,
+				   fake_resource_free,
+				   ctx);
+
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, res);
+	KUNIT_EXPECT_PTR_EQ(test,
+			    &ctx->is_resource_initialized,
+			    (bool *) res->allocation);
+	KUNIT_EXPECT_TRUE(test, list_is_last(&res->node, &ctx->test.resources));
+	KUNIT_EXPECT_PTR_EQ(test, free, res->free);
+}
+
+static void kunit_resource_test_free_resource(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx = test->priv;
+	struct kunit_resource *res = kunit_alloc_resource(&ctx->test,
+							  fake_resource_init,
+							  fake_resource_free,
+							  ctx);
+
+	kunit_free_resource(&ctx->test, res);
+
+	KUNIT_EXPECT_FALSE(test, ctx->is_resource_initialized);
+	KUNIT_EXPECT_TRUE(test, list_empty(&ctx->test.resources));
+}
+
+static void kunit_resource_test_cleanup_resources(struct kunit *test)
+{
+	int i;
+	struct kunit_test_resource_context *ctx = test->priv;
+	struct kunit_resource *resources[5];
+
+	for (i = 0; i < ARRAY_SIZE(resources); i++) {
+		resources[i] = kunit_alloc_resource(&ctx->test,
+						    fake_resource_init,
+						    fake_resource_free,
+						    ctx);
+	}
+
+	kunit_cleanup(&ctx->test);
+
+	KUNIT_EXPECT_TRUE(test, list_empty(&ctx->test.resources));
+}
+
+static void kunit_resource_test_mark_order(int order_array[],
+					   size_t order_size,
+					   int key)
+{
+	int i;
+
+	for (i = 0; i < order_size && order_array[i]; i++)
+		;
+
+	order_array[i] = key;
+}
+
+#define KUNIT_RESOURCE_TEST_MARK_ORDER(ctx, order_field, key)		       \
+		kunit_resource_test_mark_order(ctx->order_field,	       \
+					       ARRAY_SIZE(ctx->order_field),   \
+					       key)
+
+static int fake_resource_2_init(struct kunit_resource *res, void *context)
+{
+	struct kunit_test_resource_context *ctx = context;
+
+	KUNIT_RESOURCE_TEST_MARK_ORDER(ctx, allocate_order, 2);
+
+	res->allocation = ctx;
+
+	return 0;
+}
+
+static void fake_resource_2_free(struct kunit_resource *res)
+{
+	struct kunit_test_resource_context *ctx = res->allocation;
+
+	KUNIT_RESOURCE_TEST_MARK_ORDER(ctx, free_order, 2);
+}
+
+static int fake_resource_1_init(struct kunit_resource *res, void *context)
+{
+	struct kunit_test_resource_context *ctx = context;
+
+	kunit_alloc_resource(&ctx->test,
+			     fake_resource_2_init,
+			     fake_resource_2_free,
+			     ctx);
+
+	KUNIT_RESOURCE_TEST_MARK_ORDER(ctx, allocate_order, 1);
+
+	res->allocation = ctx;
+
+	return 0;
+}
+
+static void fake_resource_1_free(struct kunit_resource *res)
+{
+	struct kunit_test_resource_context *ctx = res->allocation;
+
+	KUNIT_RESOURCE_TEST_MARK_ORDER(ctx, free_order, 1);
+}
+
+/*
+ * TODO(brendanhiggins@google.com): replace the arrays that keep track of the
+ * order of allocation and freeing with strict mocks using the IN_SEQUENCE macro
+ * to assert allocation and freeing order when the feature becomes available.
+ */
+static void kunit_resource_test_proper_free_ordering(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx = test->priv;
+
+	/* fake_resource_1 allocates a fake_resource_2 in its init. */
+	kunit_alloc_resource(&ctx->test,
+			     fake_resource_1_init,
+			     fake_resource_1_free,
+			     ctx);
+
+	/*
+	 * Since fake_resource_2_init calls KUNIT_RESOURCE_TEST_MARK_ORDER
+	 * before returning to fake_resource_1_init, it should be the first to
+	 * put its key in the allocate_order array.
+	 */
+	KUNIT_EXPECT_EQ(test, ctx->allocate_order[0], 2);
+	KUNIT_EXPECT_EQ(test, ctx->allocate_order[1], 1);
+
+	kunit_cleanup(&ctx->test);
+
+	/*
+	 * Because fake_resource_2 finishes allocation before fake_resource_1,
+	 * fake_resource_1 should be freed first since it could depend on
+	 * fake_resource_2.
+	 */
+	KUNIT_EXPECT_EQ(test, ctx->free_order[0], 1);
+	KUNIT_EXPECT_EQ(test, ctx->free_order[1], 2);
+}
+
+static int kunit_resource_test_init(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx =
+			kzalloc(sizeof(*ctx), GFP_KERNEL);
+
+	if (!ctx)
+		return -ENOMEM;
+
+	test->priv = ctx;
+
+	kunit_init_test(&ctx->test, "test_test_context");
+
+	return 0;
+}
+
+static void kunit_resource_test_exit(struct kunit *test)
+{
+	struct kunit_test_resource_context *ctx = test->priv;
+
+	kunit_cleanup(&ctx->test);
+	kfree(ctx);
+}
+
+static struct kunit_case kunit_resource_test_cases[] = {
+	KUNIT_CASE(kunit_resource_test_init_resources),
+	KUNIT_CASE(kunit_resource_test_alloc_resource),
+	KUNIT_CASE(kunit_resource_test_free_resource),
+	KUNIT_CASE(kunit_resource_test_cleanup_resources),
+	KUNIT_CASE(kunit_resource_test_proper_free_ordering),
+	{}
+};
+
+static struct kunit_suite kunit_resource_test_suite = {
+	.name = "kunit-resource-test",
+	.init = kunit_resource_test_init,
+	.exit = kunit_resource_test_exit,
+	.test_cases = kunit_resource_test_cases,
+};
+kunit_test_suite(kunit_resource_test_suite);
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
