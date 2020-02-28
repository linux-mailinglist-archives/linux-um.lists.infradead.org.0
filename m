Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E10172E1F
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfBrbvNRfZv2m7zpGx6KcU3jlbZ6WPy+2YokzZNs95s=; b=QFNy37tYxW/uBi
	b4ck8KVNIOtkiavoCWv4tgjTY4MwpSSwdxaPRnx0jupalBu7PtgR3zhbPQfFrgAYSHvkCmsXq2Mlk
	oGz52uZxFQYlKzFggClnAwBgLNcJEO4Gcm4rpu+WvPgsYDdfk0IIpd34Xn0j4nsmXN5T0YOjBFqSc
	ZcENILdedwWIRxfOfBn6XPTZTVjjN80VKsSiualaOQRxg91PGUlIvoo+WgIiwVW0FX11LvXW9gF3q
	Y7fqe2VUAq68tfqa83mpn4A92NCakTbMZM/GH4UYQj0EaHXmV0W5u9D1lT8ZIZdOKl2iW0Or7fRxT
	pQfxq+yV58Kbplqwlfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UL0-0006e7-JW; Fri, 28 Feb 2020 01:21:10 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UKx-0006bd-F9
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:21:08 +0000
Received: by mail-pj1-x104a.google.com with SMTP id kx17so741047pjb.4
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=8lHd0YZkwZG2tzVOdxbzliRdb15FJbxx1Rjn1yB5+70=;
 b=Bty/Q2oVTN47foIGrI34kAsL9y3zp5FC92Tuh2vIv90lA66BfzLsxq5CRGdQbuTU/V
 n9fsZay5lgeSnvTqrjeQFbuDLt8lGR8C8QILxlmjfijeVL9WgNaefmZfmv/doN7k5/S8
 KDIo01iFyP9kibL/VroPQ24eUBVXE2M+B5HjmVxniWizwDLZv8WhkeLTRcTVx2Dtg/pA
 ASEMv/Lpre04igKn6rhqAcPph95bj91sQcBUU9tgeRwUFrU2REdGiZETCN6W1ZkhBUr4
 XN7JrUYawuanT9NktwcCxIrp78dZRMo5IxQc8AD4YNi8wC1H11QUDW5GjX6zndj+Wze/
 4MGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=8lHd0YZkwZG2tzVOdxbzliRdb15FJbxx1Rjn1yB5+70=;
 b=XT2gB+YvqdmyrVu09FnnEG+6TgS24nrRyzbFdydtVRi+9gdRmWwTiYFdeBSnKcMfE3
 y92we8oPbhKra8fSLMvQQiDHWpDvLA82MJruGgn22i3rs+HS7kjF9KVuTKhknBALcjun
 pMLKUy7CrkrVLy04pC39c0zF8zVsJ4XYBzFyo7u+cxO5Hn3v6PrQI7D6i2Ul2WTL7kn7
 88nuUi4DOTFMFrD4S3cPsENKN/uSIlShoOYn/EzcMMt8oTF41rHeQVDPQYddRHsf8+il
 q3niGj7j5Z5LCnbbSbCVl+Eemek1zbDVeJHicz8K0y2CUZtdXJ8E+FcgfiSKjsNNvNOD
 wk5Q==
X-Gm-Message-State: APjAAAX3OSnJ8yz8nZ8MPhj7N0DvqQ7xo+emnp+qmu5xydIzCuyxFdVK
 1KUFcnwCp8pLCpO3pLGDwl4ozQWJub/Wog584qvpwQ==
X-Google-Smtp-Source: APXvYqwGEoxXjZAGlPCODTL6b1fAO5IM9ZcV9N9/Stf3e2FL1lhptdTQ9Z2499r3LVL2+l69sq+uvpIK6dT577YqJbUzyg==
X-Received: by 2002:a63:b949:: with SMTP id v9mr2010452pgo.336.1582852865540; 
 Thu, 27 Feb 2020 17:21:05 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:33 -0800
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Message-Id: <20200228012036.15682-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 4/7] init: main: add KUnit to kernel init
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172107_510433_FC4F4A16 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Remove KUnit from init calls entirely, instead call directly from
kernel_init().

Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/kunit/test.h | 9 +++++++++
 init/main.c          | 4 ++++
 lib/kunit/executor.c | 4 +---
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 8a02f93a6b505..8689dd1459844 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -197,6 +197,15 @@ void kunit_init_test(struct kunit *test, const char *name);
 
 int kunit_run_tests(struct kunit_suite *suite);
 
+#if IS_BUILTIN(CONFIG_KUNIT)
+int kunit_run_all_tests(void);
+#else
+static inline int kunit_run_all_tests(void)
+{
+	return 0;
+}
+#endif /* IS_BUILTIN(CONFIG_KUNIT) */
+
 /*
  * If a test suite is built-in, module_init() gets translated into
  * an initcall which we don't want as the idea is that for builtins
diff --git a/init/main.c b/init/main.c
index ee4947af823f3..7875a5c486dc4 100644
--- a/init/main.c
+++ b/init/main.c
@@ -104,6 +104,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/initcall.h>
 
+#include <kunit/test.h>
+
 static int kernel_init(void *);
 
 extern void init_IRQ(void);
@@ -1444,6 +1446,8 @@ static noinline void __init kernel_init_freeable(void)
 
 	do_basic_setup();
 
+	kunit_run_all_tests();
+
 	console_on_rootfs();
 
 	/*
diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index 6429927d598a5..b75a46c560847 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -11,7 +11,7 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
 
 #if IS_BUILTIN(CONFIG_KUNIT)
 
-static int kunit_run_all_tests(void)
+int kunit_run_all_tests(void)
 {
 	struct kunit_suite * const * const *suites, * const *subsuite;
 	bool has_test_failed = false;
@@ -31,6 +31,4 @@ static int kunit_run_all_tests(void)
 	return 0;
 }
 
-late_initcall(kunit_run_all_tests);
-
 #endif /* IS_BUILTIN(CONFIG_KUNIT) */
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
