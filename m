Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8988314E5F3
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3SllibTYMRIaYH1LjDHZp4ilIQC/nsK4HfEYfo1g90=; b=btd2Mzr9gRTbxo
	obkwlh4v7+3NvzFPQLsUVH+riU/UKBhgSqhYzlw2v4rxowoELBc7seQ3i0e4V4fY38Fsj7Ft4bnyl
	E1OhytXfk/nqP1uVKsGmIF46dn66IZly37IKPDV/IZescEEDzyrPQXuEIB3XmPIbozPsjhwsSotsV
	Am/AUEHe+H6uO1iwxS7NUfjdIZDBTSxI+/hUmNYwV43syWu+8SK6yPJ1FYDphv6loaL+VV5FMRt41
	ZK/7iYjtwgmfKD8sQlsmeA+Za69X5ZAAm/TFDiep6vMe+cbZM4kUm+XSlnuRUvg2SVhaYNyNmDIRQ
	/UlKXpuk7sarFAOZHB3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvT-0006FH-AU; Thu, 30 Jan 2020 23:08:43 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvQ-0006D8-GR
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:41 +0000
Received: by mail-pg1-x54a.google.com with SMTP id i21so2746362pgm.21
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MP470Mm16Hbis3uK4k7c4Y0juRzNAQ4jaojQ4FBlGRU=;
 b=qUKS4/biEzUnqRfVp6CMVb9g2VsQwQM5ss8wWgmxhAEh7N2VSqjHFRlpTPo/f7mWRg
 9PO1MoSacP4zU4ZonpKGxOZYrEyppqNSUoXZa0FQt//aqOuXc89cbAvr0ezWDJ4GamtO
 BiZt1ehsxt7k4vkVItcppjb3GvfT1saAPVkTubBH/5WHPjLpLZrfNxtsAs4tlFqaM8Ct
 0NQxiswyTirVUAHgkpirY4VdeJZ14+VcQUYvCB5Hq+v/C2MpCBLC95YavwPj0wL7qRwo
 8DhYch1X7zqIrC958MLGmLeDXLdHjcpXcFAd8h8WSAOLOUVu7byljiU1Xi2E8Io7bhXC
 eiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MP470Mm16Hbis3uK4k7c4Y0juRzNAQ4jaojQ4FBlGRU=;
 b=tDzj6fua0GuvMOKi+T7bg45dKh8tqEUnv3BLizl/Y1lJd3vNecAsxfE6KWhCiUrNTW
 +zKVlvcQQbo+U/+/xZKAyt+ff6FNkyLppP8yudJD6wXtRgePlXxmc11LNEiwWucCzoE6
 v1J2L2dB8V/m4icPPiuUKyGOzynkcttebV9c5/DU8qnQANp0lskzXoEnHjeJ0qLci7Sr
 iJBUEtZ3VXI0kqrQMPE9iYvHUUJ3IiyBysIF6PJRpLF16ty+FDdtM2MpTLVdlNJ3H4wk
 twikmpFO7C4X+xgaf3HLoQt9bVZ5sQl4s7fKutnfnWYNSJ9nWkpNIgrITVBj3N8zsNFh
 fVmg==
X-Gm-Message-State: APjAAAX7lMaB7kzpKSsCYc9QKuYXWpbzYxVNPPNXiNeTvlPzlBu3/B+v
 8nMQ3xwL3D+ua0K1+Nxogq1WgMMYFfvN2cw17naEtA==
X-Google-Smtp-Source: APXvYqyakXU44AbYhg6GU2MGJUC6PijcNjm4QFympm/fEDorxw23X7egQMZVQ745p6ST6BfiY6ejMzNK6GIvB25GXWjyng==
X-Received: by 2002:a63:4503:: with SMTP id s3mr7221610pga.311.1580425719434; 
 Thu, 30 Jan 2020 15:08:39 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:09 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 4/7] init: main: add KUnit to kernel init
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150840_543770_C3B5A33A 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
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
index 2cd736059416f..90301d4fbd1bb 100644
--- a/init/main.c
+++ b/init/main.c
@@ -103,6 +103,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/initcall.h>
 
+#include <kunit/test.h>
+
 static int kernel_init(void *);
 
 extern void init_IRQ(void);
@@ -1201,6 +1203,8 @@ static noinline void __init kernel_init_freeable(void)
 
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
