Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46B1C20E
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XJeVGnSVKVeicyAiCouaDVU0QkgdnXBO4I+4a+h178=; b=srrfmDTv9sZ8ou
	WppNz0w1ujoBblIhBgHoZarJ2GDreG6r+T2VJ7nWyI3fMgb2rFtUMz3rD+UF4dEENcJRRm/IwLwk1
	65btsbr3NCPJU9uN+haOQOSDQveceRxcxiXIYaK00MxBzTkIB/yLS58l+kwlteVMuQTGAeWA1QnWf
	s6T9ZxmxsNKH+54PvtFIR/WMxDHqmhC32L4uxYUL4zWDgZX2yAlE5YKBaA1esNi5Mtf5kiZyD0aMN
	Kbwg6bOJTtisjfr0zjnZEjqCKH+KNoNbiTtEL9iSDZV3hLO+so8Q73q1v8686hxEoaLAV+zF4Z85Z
	QB49reQHXQRypJpeWm+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQEL-0004pf-LO; Tue, 14 May 2019 05:44:01 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQEI-0004oB-7u
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:43:59 +0000
Received: by mail-ot1-x349.google.com with SMTP id e17so6738144otq.0
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=6qJ62ebxWqgPaWi90RXevyWcrz+KbGI56vPeGK6zAE8=;
 b=L9yDDUrcZcsBLGCBbSJF1GIBojrUge+j5UROivrWy79ljM0za2lfDGqbVnIPyvLhPB
 d+1khA7OqAizAH85CRq6IGBXIOIAXLIYEgOPzaYdtM47PzppJQJ4TXOrWfk1/OZFAnzg
 kUCyz0l2fqu9Y0GsUG5sEwj5ZLs9yqnq89tm6nxHX3TQG9hRG8bHxOFVQpm4ohpfdxvq
 mL8tiH23nXXZ8KdQ5lI2ZSDAlA0ZvHZO+alYRR7Kl2yIAphaqN9car3jdl84n1JeWOJ1
 LoK4oWcDbj7BJ21jHa4VD5/zIgOU5nUQWS8utqv70GQhVuxzbzYs2Qx0DW7RGg4Rq5lo
 HL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=6qJ62ebxWqgPaWi90RXevyWcrz+KbGI56vPeGK6zAE8=;
 b=SXJeX2LiXDkV5IIT84gOw4EVl11h6SDuP5puoneVvKNELhIVOSgCfD6aR++k7qPzEk
 Q90HxaHGze9NAXa5gjxBznDC1VJXiy7Jn4jkNQe17vamCnJPs47kihxgF0wG7D7tsiJW
 Bj5QgumhQAmtOdQGe67PIwGKjtBgPoi5c+xRFJv0sZ8dKjozQTCCxP99AI86G6nnCCp+
 9f5TgQ+v4AcuqptbGMFRd04pR6F3aTXtsGM2gmY3rZ1vbnNk8ENLDKB8vrOlAJD44oBT
 ee+OjwoYqvjyvoL9VsuAlaw6zOBxgbdqOSo3xw9FpL/xI89F5qc20NVHZZJrxDVRJ+51
 yYLw==
X-Gm-Message-State: APjAAAXkrc0ePvUbI44W2f/+Ap03HL5/xEISvcHkzcjXjyqVqVmnVgaA
 OV/sIkd31ttLBO1ssoI3BBTps1A55TnweEsccB3MCA==
X-Google-Smtp-Source: APXvYqxCUx4/4+xO4MfN1wnYqTRR6l9A5Wbry5S5kGMDERK+bHxPxs4MEElVtKmKqFS3r/iFN5vGoWNk5rz5c2Frv80vvg==
X-Received: by 2002:aca:4c83:: with SMTP id z125mr1816900oia.60.1557812633173; 
 Mon, 13 May 2019 22:43:53 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:35 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 02/18] kunit: test: add test resource management API
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224358_286426_6DEF71D2 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
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

Create a common API for test managed resources like memory and test
objects. A lot of times a test will want to set up infrastructure to be
used in test cases; this could be anything from just wanting to allocate
some memory to setting up a driver stack; this defines facilities for
creating "test resources" which are managed by the test infrastructure
and are automatically cleaned up at the conclusion of the test.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/kunit/test.h | 109 +++++++++++++++++++++++++++++++++++++++++++
 kunit/test.c         |  95 +++++++++++++++++++++++++++++++++++++
 2 files changed, 204 insertions(+)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index e682ea0e1f9a5..5e86d88cd5305 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -12,6 +12,69 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 
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
+ *		else
+ *			return NULL;
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
@@ -104,6 +167,7 @@ struct kunit {
 	const char *name; /* Read only after initialization! */
 	spinlock_t lock; /* Gaurds all mutable test state. */
 	bool success; /* Protected by lock. */
+	struct list_head resources; /* Protected by lock. */
 };
 
 void kunit_init_test(struct kunit *test, const char *name);
@@ -124,6 +188,51 @@ int kunit_run_tests(struct kunit_module *module);
 		} \
 		late_initcall(module_kunit_init##module)
 
+/**
+ * kunit_alloc_resource() - Allocates a *test managed resource*.
+ * @test: The test context object.
+ * @init: a user supplied function to initialize the resource.
+ * @free: a user supplied function to free the resource.
+ * @context: for the user to pass in arbitrary data to the init function.
+ *
+ * Allocates a *test managed resource*, a resource which will automatically be
+ * cleaned up at the end of a test case. See &struct kunit_resource for an
+ * example.
+ */
+struct kunit_resource *kunit_alloc_resource(struct kunit *test,
+					    kunit_resource_init_t init,
+					    kunit_resource_free_t free,
+					    void *context);
+
+void kunit_free_resource(struct kunit *test, struct kunit_resource *res);
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
diff --git a/kunit/test.c b/kunit/test.c
index 86f65ba2bcf92..a15e6f8c41582 100644
--- a/kunit/test.c
+++ b/kunit/test.c
@@ -141,6 +141,7 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
 void kunit_init_test(struct kunit *test, const char *name)
 {
 	spin_lock_init(&test->lock);
+	INIT_LIST_HEAD(&test->resources);
 	test->name = name;
 }
 
@@ -165,6 +166,11 @@ static void kunit_run_case_internal(struct kunit *test,
 	test_case->run_case(test);
 }
 
+static void kunit_case_internal_cleanup(struct kunit *test)
+{
+	kunit_cleanup(test);
+}
+
 /*
  * Performs post validations and cleanup after a test case was run.
  * XXX: Should ONLY BE CALLED AFTER kunit_run_case_internal!
@@ -175,6 +181,8 @@ static void kunit_run_case_cleanup(struct kunit *test,
 {
 	if (module->exit)
 		module->exit(test);
+
+	kunit_case_internal_cleanup(test);
 }
 
 /*
@@ -211,6 +219,93 @@ int kunit_run_tests(struct kunit_module *module)
 	return 0;
 }
 
+struct kunit_resource *kunit_alloc_resource(struct kunit *test,
+					    kunit_resource_init_t init,
+					    kunit_resource_free_t free,
+					    void *context)
+{
+	struct kunit_resource *res;
+	unsigned long flags;
+	int ret;
+
+	res = kzalloc(sizeof(*res), GFP_KERNEL);
+	if (!res)
+		return NULL;
+
+	ret = init(res, context);
+	if (ret)
+		return NULL;
+
+	res->free = free;
+	spin_lock_irqsave(&test->lock, flags);
+	list_add_tail(&res->node, &test->resources);
+	spin_unlock_irqrestore(&test->lock, flags);
+
+	return res;
+}
+
+void kunit_free_resource(struct kunit *test, struct kunit_resource *res)
+{
+	res->free(res);
+	list_del(&res->node);
+	kfree(res);
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
+	struct kunit_kmalloc_params params;
+	struct kunit_resource *res;
+
+	params.size = size;
+	params.gfp = gfp;
+
+	res = kunit_alloc_resource(test,
+				   kunit_kmalloc_init,
+				   kunit_kmalloc_free,
+				   &params);
+
+	if (res)
+		return res->allocation;
+	else
+		return NULL;
+}
+
+void kunit_cleanup(struct kunit *test)
+{
+	struct kunit_resource *resource, *resource_safe;
+	unsigned long flags;
+
+	spin_lock_irqsave(&test->lock, flags);
+	list_for_each_entry_safe(resource,
+				 resource_safe,
+				 &test->resources,
+				 node) {
+		kunit_free_resource(test, resource);
+	}
+	spin_unlock_irqrestore(&test->lock, flags);
+}
+
 void kunit_printk(const char *level,
 		  const struct kunit *test,
 		  const char *fmt, ...)
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
