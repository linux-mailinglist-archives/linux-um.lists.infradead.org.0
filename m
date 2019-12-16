Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813F121C56
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OBYVAfAkzVGcQumKZwD5nO8cdyVdIYeNyf5h9itc1k=; b=tp3Nq7FlkLGokx
	93EDciidHHEuFCUfPr2MBRnh1mHNw0KTMJCXylT1EMVisN65z3qXsjwb3wojlO3xHgqrHhIUeSYnk
	sZN5hWMqB0+y7MNpD83YwUt6rAT8NZv72+TuhjZJcL9fjCz8xNHMigtVZ0uTVYV0WuJXprzp0uw4n
	Kr20n8fuGhIagTx99mEnfWRs/g1u6bhYTrXBbe2UeDygqIY6sFSBrdiugbfi6+LXcgD08re+0VZmY
	KK4UOpuZnMaO7DXFbsP2GPCOFukc/Z6R/Oi/hOMbPKHAx8DKUAx87J52M0jz+thj1OAYzNg51kzIQ
	kS5o9CErKp+uqOTewNCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyW8-0001v7-L5; Mon, 16 Dec 2019 22:07:04 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyW5-0001tS-Lc
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:07:02 +0000
Received: by mail-pj1-x1049.google.com with SMTP id k93so5278755pjh.5
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fUKe1Twogj/Ads22pclfJ/w3t8syJGqJvSKjDedrbpw=;
 b=C3/fEW4uN1pnb8OM7dsTafKVdOwQty6te1Is6teEx+xIwPtt6UpyRl370qTrVmfj5L
 9/BoprIuaGbdjzopAOBaLBnODhEBuSztZ4TGCqUoBA35ntTHZw8rJ0hVCmNqlh7gqmBk
 Xqeriez8b1ehXW0pkDHk4T8twh4eN6gwYXUZ4F2+PEA2/3IgYZU6U+AYGJ3Iex5CP/Cu
 yDsF9vPOJyI6Mj89I2VunKR5Cel/PrwoGvu4OZ7OvZKqB1YqDEFdALgjNqxVRMFtupQJ
 JSMzuYn7OFU4NC9tt6Z2wrIi6ApUvk67cxPxWEb/1wvib/qhoJODWNO/JAxxRYMlqI6w
 3hkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fUKe1Twogj/Ads22pclfJ/w3t8syJGqJvSKjDedrbpw=;
 b=AO3/24ah1NdQa0/yJ1Y9rxWjJlmfmG7fTC+tX3ac5j20ZsvUGaYe+6/EtLigyh3bTE
 z5xXZ5raYGKgwG4mWAI1i64c1lFLt4Kk7qjmyiTCvrGoaFJjN9qXbO9aGzUPXX5wf/p1
 9IzI1Z7AX6j61L8kkx6QoDHVdh7vy4iHvXwNJEcxyhSAhlVBxSzwUZSfr8VF93T6KvQg
 SzYke9s7qOEnfZc4HPu7gix8iWBLoTJHAdew7q83iZ7iBJBS4QTZTf4hvznnTrgYgzr+
 xt3Am6PKok0OTlxah2QbiAY0h7txVlNLV/ilp0J97a5BwfhZJrnu8uh8Q0O95tsBmFZt
 d+Dg==
X-Gm-Message-State: APjAAAVb7n/U7ULs+wIfdxk7wyp6ugvMRrU4I3P2U0AUtM/lUAK9ZvoM
 DcPAPNqp+AMDVv1UYEeXGAWSk720gJqUsFDzRCDFiw==
X-Google-Smtp-Source: APXvYqw/XxbHOc5ekUfzWkfW60wRalC38/w8JdEAkNWydl9vLxaw9Oqdw4NQB9iWg+hS7Jnpm5VUJuMrHggDTgl/y2aI8g==
X-Received: by 2002:a63:ff52:: with SMTP id s18mr21401528pgk.253.1576534019840; 
 Mon, 16 Dec 2019 14:06:59 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:53 -0800
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
Message-Id: <20191216220555.245089-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 4/6] init: main: add KUnit to kernel init
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140701_702726_17B90C83 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 knut.omang@oracle.com, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Remove KUnit from init calls entirely, instead call directly from
kernel_init().

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 include/kunit/test.h | 9 +++++++++
 init/main.c          | 4 ++++
 lib/kunit/executor.c | 4 +---
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index c070798ebb765..9da4f2cc1a3fc 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -196,6 +196,15 @@ void kunit_init_test(struct kunit *test, const char *name);
 
 int kunit_run_tests(struct kunit_suite *suite);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+int kunit_executor_init(void);
+#else
+static inline int kunit_executor_init(void)
+{
+	return 0;
+}
+#endif /* IS_ENABLED(CONFIG_KUNIT) */
+
 /**
  * kunit_test_suite() - used to register a &struct kunit_suite with KUnit.
  *
diff --git a/init/main.c b/init/main.c
index 91f6ebb30ef04..b299396a5466b 100644
--- a/init/main.c
+++ b/init/main.c
@@ -103,6 +103,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/initcall.h>
 
+#include <kunit/test.h>
+
 static int kernel_init(void *);
 
 extern void init_IRQ(void);
@@ -1190,6 +1192,8 @@ static noinline void __init kernel_init_freeable(void)
 
 	do_basic_setup();
 
+	kunit_executor_init();
+
 	/* Open the /dev/console on the rootfs, this should never fail */
 	if (ksys_open((const char __user *) "/dev/console", O_RDWR, 0) < 0)
 		pr_err("Warning: unable to open an initial console.\n");
diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index 978086cfd257d..ca880224c0bab 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -32,12 +32,10 @@ static bool kunit_run_all_tests(void)
 	return !has_test_failed;
 }
 
-static int kunit_executor_init(void)
+int kunit_executor_init(void)
 {
 	if (kunit_run_all_tests())
 		return 0;
 	else
 		return -EFAULT;
 }
-
-late_initcall(kunit_executor_init);
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
