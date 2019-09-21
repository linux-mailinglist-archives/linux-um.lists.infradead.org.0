Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B65B9B10
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 02:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVgq2BcD3xtdpyJGMBS6yP1RbPPLHHwLe3I7y7mYt4I=; b=BZ5Bgtj2c7bAx6
	9STzDC2FaQu+tWRdR6D/IUReeAwhiPhvKGCDbQQFPIrqBBH4C4OSnQlHrDCfr27jfS4wfsalUO+2F
	V+q59gkbiGcoJGSTKfyp3F9WtfqXXuAnO83OzDdqopxsRteh04ty7SlvfiINrBy3LikZsfWe9EfPO
	lv/f1A1PZ/x6RwsD4uxO7mBCpmmhFgAVIaxw48gYUvaDsq4w3uhrj29S/ZtDtdFPwjY0VlAJqEgUP
	I0MQ8bW10Q1lRdslmP6we6mgjBHrv236yF6FDBUpns6nuhNDfK0h8tOiDiBPeUlo5E5eTkkyglrme
	oPx9VlHoQWVkCHjS95qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT7K-0005Ei-0v; Sat, 21 Sep 2019 00:19:14 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT7G-0005DE-Pg
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 00:19:12 +0000
Received: by mail-pl1-x649.google.com with SMTP id g11so5438905plm.22
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 17:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Y0xYR4PS86ooH7AKhBWD3EqeH7toUpR236CnccW5V4s=;
 b=EysUiNJVivbMG+LVTbLF6YIh7LyOp4Nh2L/ykU3oMD4djAsL6I52KRj1wWK1F6N2gr
 eMke//POFz8F63OCr1BytX4pKjk9m1GmT1WsJ0gC2JzndHG/mz0OxG8DoscdE+/V/Z31
 89MnmDiGXYmS71PQ7U0QcsZe1D86Ef54LWw5W74GJ9lZIkUIWUsQn+JjjDhNNOXFmyT/
 fckXrE2PrM0oMFLGXOZ4lI6SUAIWRCz/Q5n10/DbgU40pNVmEQiZ8srIQeL1fLWAKdM7
 LuytWtgdwr2g348WyAkYHPuEnAwnBY1zf58EB7NdnE2AMY0WS9iHN4PJA7FScjQHDxiu
 D5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Y0xYR4PS86ooH7AKhBWD3EqeH7toUpR236CnccW5V4s=;
 b=uQaS5GtGgv6ttZZEqPlY5Y6WbHZ0hCQlcYe/ajcBEvB75oAA7881++0k9RwQkinj/J
 FCk+mYhlhHYLgQ3IUBkwYkmiDCkJpPDSeASnL0F8kIx6tqGvBlKWa/HTLEepcn9HOAuL
 whcED5SC/ZV+VjBh6iGUD2mhjqo0zO/VA/n5tNPtp4DOh7E933zucHZK5VPCt/2ydflD
 AoIgGBTqSckn0J9/agzSJ6zO3NwKAOPMo3kpymOm9RNtoOEqYEHvqwsswg2+0RQPTqi1
 OmEoWkIHw3nWrW7qM34l4Ayklf1N0Ivn5KSQXF61gADKNl9rp7ovWFpuKhNKsmFD6h9Z
 bqAA==
X-Gm-Message-State: APjAAAXIxTCqNB2mlSAKVnTtWCF8FlmjUHbYmEsorR1KC8hMg2CwLhos
 wIryfdm15K9F3lhBkHRY2rYhorHQEt16fivzt/P54g==
X-Google-Smtp-Source: APXvYqwwSqGC3rqe9kTclermBulyFNZ635/Qd5yD20lj+ooEXVKETEmFMimJe6LMKNOVNUefFoUg1uCkuaFG/4g2vEDXug==
X-Received: by 2002:a65:60c3:: with SMTP id r3mr17830186pgv.116.1569025149504; 
 Fri, 20 Sep 2019 17:19:09 -0700 (PDT)
Date: Fri, 20 Sep 2019 17:18:38 -0700
In-Reply-To: <20190921001855.200947-1-brendanhiggins@google.com>
Message-Id: <20190921001855.200947-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190921001855.200947-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v17 02/19] kunit: test: add test resource management API
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171910_845747_FEDC4085 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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

Create a common API for test managed resources like memory and test
objects. A lot of times a test will want to set up infrastructure to be
used in test cases; this could be anything from just wanting to allocate
some memory to setting up a driver stack; this defines facilities for
creating "test resources" which are managed by the test infrastructure
and are automatically cleaned up at the conclusion of the test.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h | 187 +++++++++++++++++++++++++++++++++++++++++++
 lib/kunit/test.c     | 163 +++++++++++++++++++++++++++++++++++++
 2 files changed, 350 insertions(+)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index e30d1bf2fb68..6781c756f11b 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -9,8 +9,72 @@
 #ifndef _KUNIT_TEST_H
 #define _KUNIT_TEST_H
 
+#include <linux/slab.h>
 #include <linux/types.h>
 
+struct kunit_resource;
+
+typedef int (*kunit_resource_init_t)(struct kunit_resource *, void *);
+typedef void (*kunit_resource_free_t)(struct kunit_resource *);
+
+/**
+ * struct kunit_resource - represents a *test managed resource*
+ * @allocation: for the user to store arbitrary data.
+ * @free: a user supplied function to free the resource. Populated by
+ * kunit_alloc_resource().
+ *
+ * Represents a *test managed resource*, a resource which will automatically be
+ * cleaned up at the end of a test case.
+ *
+ * Example:
+ *
+ * .. code-block:: c
+ *
+ *	struct kunit_kmalloc_params {
+ *		size_t size;
+ *		gfp_t gfp;
+ *	};
+ *
+ *	static int kunit_kmalloc_init(struct kunit_resource *res, void *context)
+ *	{
+ *		struct kunit_kmalloc_params *params = context;
+ *		res->allocation = kmalloc(params->size, params->gfp);
+ *
+ *		if (!res->allocation)
+ *			return -ENOMEM;
+ *
+ *		return 0;
+ *	}
+ *
+ *	static void kunit_kmalloc_free(struct kunit_resource *res)
+ *	{
+ *		kfree(res->allocation);
+ *	}
+ *
+ *	void *kunit_kmalloc(struct kunit *test, size_t size, gfp_t gfp)
+ *	{
+ *		struct kunit_kmalloc_params params;
+ *		struct kunit_resource *res;
+ *
+ *		params.size = size;
+ *		params.gfp = gfp;
+ *
+ *		res = kunit_alloc_resource(test, kunit_kmalloc_init,
+ *			kunit_kmalloc_free, &params);
+ *		if (res)
+ *			return res->allocation;
+ *
+ *		return NULL;
+ *	}
+ */
+struct kunit_resource {
+	void *allocation;
+	kunit_resource_free_t free;
+
+	/* private: internal use only. */
+	struct list_head node;
+};
+
 struct kunit;
 
 /**
@@ -114,6 +178,13 @@ struct kunit {
 	 * with the test case have terminated.
 	 */
 	bool success; /* Read only after test_case finishes! */
+	spinlock_t lock; /* Guards all mutable test state. */
+	/*
+	 * Because resources is a list that may be updated multiple times (with
+	 * new resources) from any thread associated with a test case, we must
+	 * protect it with some type of lock.
+	 */
+	struct list_head resources; /* Protected by lock. */
 };
 
 void kunit_init_test(struct kunit *test, const char *name);
@@ -147,6 +218,122 @@ int kunit_run_tests(struct kunit_suite *suite);
 	}								       \
 	late_initcall(kunit_suite_init##suite)
 
+/*
+ * Like kunit_alloc_resource() below, but returns the struct kunit_resource
+ * object that contains the allocation. This is mostly for testing purposes.
+ */
+struct kunit_resource *kunit_alloc_and_get_resource(struct kunit *test,
+						    kunit_resource_init_t init,
+						    kunit_resource_free_t free,
+						    gfp_t internal_gfp,
+						    void *context);
+
+/**
+ * kunit_alloc_resource() - Allocates a *test managed resource*.
+ * @test: The test context object.
+ * @init: a user supplied function to initialize the resource.
+ * @free: a user supplied function to free the resource.
+ * @internal_gfp: gfp to use for internal allocations, if unsure, use GFP_KERNEL
+ * @context: for the user to pass in arbitrary data to the init function.
+ *
+ * Allocates a *test managed resource*, a resource which will automatically be
+ * cleaned up at the end of a test case. See &struct kunit_resource for an
+ * example.
+ *
+ * NOTE: KUnit needs to allocate memory for each kunit_resource object. You must
+ * specify an @internal_gfp that is compatible with the use context of your
+ * resource.
+ */
+static inline void *kunit_alloc_resource(struct kunit *test,
+					 kunit_resource_init_t init,
+					 kunit_resource_free_t free,
+					 gfp_t internal_gfp,
+					 void *context)
+{
+	struct kunit_resource *res;
+
+	res = kunit_alloc_and_get_resource(test, init, free, internal_gfp,
+					   context);
+
+	if (res)
+		return res->allocation;
+
+	return NULL;
+}
+
+typedef bool (*kunit_resource_match_t)(struct kunit *test,
+				       const void *res,
+				       void *match_data);
+
+/**
+ * kunit_resource_instance_match() - Match a resource with the same instance.
+ * @test: Test case to which the resource belongs.
+ * @res: The data stored in kunit_resource->allocation.
+ * @match_data: The resource pointer to match against.
+ *
+ * An instance of kunit_resource_match_t that matches a resource whose
+ * allocation matches @match_data.
+ */
+static inline bool kunit_resource_instance_match(struct kunit *test,
+						 const void *res,
+						 void *match_data)
+{
+	return res == match_data;
+}
+
+/**
+ * kunit_resource_destroy() - Find a kunit_resource and destroy it.
+ * @test: Test case to which the resource belongs.
+ * @match: Match function. Returns whether a given resource matches @match_data.
+ * @free: Must match free on the kunit_resource to free.
+ * @match_data: Data passed into @match.
+ *
+ * Free the latest kunit_resource of @test for which @free matches the
+ * kunit_resource_free_t associated with the resource and for which @match
+ * returns true.
+ *
+ * RETURNS:
+ * 0 if kunit_resource is found and freed, -ENOENT if not found.
+ */
+int kunit_resource_destroy(struct kunit *test,
+			   kunit_resource_match_t match,
+			   kunit_resource_free_t free,
+			   void *match_data);
+
+/**
+ * kunit_kmalloc() - Like kmalloc() except the allocation is *test managed*.
+ * @test: The test context object.
+ * @size: The size in bytes of the desired memory.
+ * @gfp: flags passed to underlying kmalloc().
+ *
+ * Just like `kmalloc(...)`, except the allocation is managed by the test case
+ * and is automatically cleaned up after the test case concludes. See &struct
+ * kunit_resource for more information.
+ */
+void *kunit_kmalloc(struct kunit *test, size_t size, gfp_t gfp);
+
+/**
+ * kunit_kfree() - Like kfree except for allocations managed by KUnit.
+ * @test: The test case to which the resource belongs.
+ * @ptr: The memory allocation to free.
+ */
+void kunit_kfree(struct kunit *test, const void *ptr);
+
+/**
+ * kunit_kzalloc() - Just like kunit_kmalloc(), but zeroes the allocation.
+ * @test: The test context object.
+ * @size: The size in bytes of the desired memory.
+ * @gfp: flags passed to underlying kmalloc().
+ *
+ * See kzalloc() and kunit_kmalloc() for more information.
+ */
+static inline void *kunit_kzalloc(struct kunit *test, size_t size, gfp_t gfp)
+{
+	return kunit_kmalloc(test, size, gfp | __GFP_ZERO);
+}
+
+void kunit_cleanup(struct kunit *test);
+
 void __printf(3, 4) kunit_printk(const char *level,
 				 const struct kunit *test,
 				 const char *fmt, ...);
diff --git a/lib/kunit/test.c b/lib/kunit/test.c
index d3dda359f99b..68b1037ab74d 100644
--- a/lib/kunit/test.c
+++ b/lib/kunit/test.c
@@ -122,6 +122,8 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
 
 void kunit_init_test(struct kunit *test, const char *name)
 {
+	spin_lock_init(&test->lock);
+	INIT_LIST_HEAD(&test->resources);
 	test->name = name;
 	test->success = true;
 }
@@ -153,6 +155,8 @@ static void kunit_run_case(struct kunit_suite *suite,
 	if (suite->exit)
 		suite->exit(&test);
 
+	kunit_cleanup(&test);
+
 	test_case->success = test.success;
 }
 
@@ -173,6 +177,165 @@ int kunit_run_tests(struct kunit_suite *suite)
 	return 0;
 }
 
+struct kunit_resource *kunit_alloc_and_get_resource(struct kunit *test,
+						    kunit_resource_init_t init,
+						    kunit_resource_free_t free,
+						    gfp_t internal_gfp,
+						    void *context)
+{
+	struct kunit_resource *res;
+	int ret;
+
+	res = kzalloc(sizeof(*res), internal_gfp);
+	if (!res)
+		return NULL;
+
+	ret = init(res, context);
+	if (ret)
+		return NULL;
+
+	res->free = free;
+	spin_lock(&test->lock);
+	list_add_tail(&res->node, &test->resources);
+	spin_unlock(&test->lock);
+
+	return res;
+}
+
+static void kunit_resource_free(struct kunit *test, struct kunit_resource *res)
+{
+	res->free(res);
+	kfree(res);
+}
+
+static struct kunit_resource *kunit_resource_find(struct kunit *test,
+						  kunit_resource_match_t match,
+						  kunit_resource_free_t free,
+						  void *match_data)
+{
+	struct kunit_resource *resource;
+
+	lockdep_assert_held(&test->lock);
+
+	list_for_each_entry_reverse(resource, &test->resources, node) {
+		if (resource->free != free)
+			continue;
+		if (match(test, resource->allocation, match_data))
+			return resource;
+	}
+
+	return NULL;
+}
+
+static struct kunit_resource *kunit_resource_remove(
+		struct kunit *test,
+		kunit_resource_match_t match,
+		kunit_resource_free_t free,
+		void *match_data)
+{
+	struct kunit_resource *resource;
+
+	spin_lock(&test->lock);
+	resource = kunit_resource_find(test, match, free, match_data);
+	if (resource)
+		list_del(&resource->node);
+	spin_unlock(&test->lock);
+
+	return resource;
+}
+
+int kunit_resource_destroy(struct kunit *test,
+			   kunit_resource_match_t match,
+			   kunit_resource_free_t free,
+			   void *match_data)
+{
+	struct kunit_resource *resource;
+
+	resource = kunit_resource_remove(test, match, free, match_data);
+
+	if (!resource)
+		return -ENOENT;
+
+	kunit_resource_free(test, resource);
+	return 0;
+}
+
+struct kunit_kmalloc_params {
+	size_t size;
+	gfp_t gfp;
+};
+
+static int kunit_kmalloc_init(struct kunit_resource *res, void *context)
+{
+	struct kunit_kmalloc_params *params = context;
+
+	res->allocation = kmalloc(params->size, params->gfp);
+	if (!res->allocation)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void kunit_kmalloc_free(struct kunit_resource *res)
+{
+	kfree(res->allocation);
+}
+
+void *kunit_kmalloc(struct kunit *test, size_t size, gfp_t gfp)
+{
+	struct kunit_kmalloc_params params = {
+		.size = size,
+		.gfp = gfp
+	};
+
+	return kunit_alloc_resource(test,
+				    kunit_kmalloc_init,
+				    kunit_kmalloc_free,
+				    gfp,
+				    &params);
+}
+
+void kunit_kfree(struct kunit *test, const void *ptr)
+{
+	int rc;
+
+	rc = kunit_resource_destroy(test,
+				    kunit_resource_instance_match,
+				    kunit_kmalloc_free,
+				    (void *)ptr);
+
+	WARN_ON(rc);
+}
+
+void kunit_cleanup(struct kunit *test)
+{
+	struct kunit_resource *resource;
+
+	/*
+	 * test->resources is a stack - each allocation must be freed in the
+	 * reverse order from which it was added since one resource may depend
+	 * on another for its entire lifetime.
+	 * Also, we cannot use the normal list_for_each constructs, even the
+	 * safe ones because *arbitrary* nodes may be deleted when
+	 * kunit_resource_free is called; the list_for_each_safe variants only
+	 * protect against the current node being deleted, not the next.
+	 */
+	while (true) {
+		spin_lock(&test->lock);
+		if (list_empty(&test->resources)) {
+			spin_unlock(&test->lock);
+			break;
+		}
+		resource = list_last_entry(&test->resources,
+					   struct kunit_resource,
+					   node);
+		list_del(&resource->node);
+		spin_unlock(&test->lock);
+
+		kunit_resource_free(test, resource);
+	}
+}
+
 void kunit_printk(const char *level,
 		  const struct kunit *test,
 		  const char *fmt, ...)
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
