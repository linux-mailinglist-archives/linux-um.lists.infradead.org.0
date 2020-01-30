Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF3A14E5FB
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfsZOrCCuJMllZe/PH4QQVou/QiD5lPoWHFZVrIgtLY=; b=lyVxFnt3+KELr1
	2kpc7kAc8VNfp3zXgWr6r9NhsO5ruJPUcByqFjCr7zIaFAcr34I47rArXx2Xi/sAuy4khFwXnsBo5
	272vOXIc+t9ZZClhPs5eLhhUYKpmckDJsm7PSS+ZD69kvGRoIYYqKvK5Tb4fBKil9iTv8Jc46lIQS
	e0jVljkukCRRpPTeyapCVx+oGv8UfoPSu7OJ1Xb/cwic78xzqcdp3ZpZre7Pc+2GM8c1UDG4wCTUV
	1/TIg9/tvUF3qn3y4nDyKEeKC9GDDYXePmcoa2Q9kf89asiOSuKK7GF77712NAtImYK0+jTcXY+ik
	KrYnqHVeVfj3E+wOzxZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvY-0006Iu-Mg; Thu, 30 Jan 2020 23:08:48 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvV-0006Gi-HH
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:46 +0000
Received: by mail-pl1-x649.google.com with SMTP id y2so2611964plt.7
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VLqpq28FQRNQIVptajpFe63XhXFy0jhE9mXehwRafIA=;
 b=jz7FW5QU7Lk7TNOglAB0pQLHAXY15yKO+wUPozFqMZXyMlBLlb6/X5oUjtRgVLQoX5
 leNaWs2uAAoWweShkRCnuCM8GAhGpe2U/pdwmZFC+YZY/8Y3bg4lXRQnLBrq6XdKHZpq
 14wtOnyDqjspPfbK9+mSK/qcSo7QHDPN7wzK/oM2+WSP7brw45o+sfHNjF0eG3KuuTgW
 KusUu8QrBJB2TWX08qxa06d8cbGlCHz7UsUiBq3VON2Kv3zJqZNO22MMFKt7LbzxkzPu
 IBzxyH5QZSUj3GDAGOAYnHSNvOPpyEQnauUuT5CHnuMeqvdkZRAEQJo9Slwod8umeU91
 UIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VLqpq28FQRNQIVptajpFe63XhXFy0jhE9mXehwRafIA=;
 b=YVnGzyDcq9b72DfGdALqb3SX+mu5IECGftdvB8bFQLt/SGundWv9WM6bwoHdeSnTTH
 /eP1FPQ54O8P6Rs/S2ParMxLBmCVM3TvRu6jCPASexH90aP8Md7aJ9bSspKVZZwwIKRS
 QBf6KmXMy3qs9seuHUflb8O2T32m5YUD7i/BOr0mY3xrLUynGQOohWPKDB84XmYqt44/
 7/nFW7Ru88cBgGy7XRB1+RluAB3IoWxbBF5kf6ggBcmbsL8du8RzemEMT34psppOdvSe
 ju7PMoIfi8HeYOrMU4SRPY3IVtD2V/H3Trtr04gddtdnUkE6b1z8Ekq586xV9Sjz061f
 SsGg==
X-Gm-Message-State: APjAAAWbG0537mzf28RRv+x9xjqp2qNXYIZY8QLZWCL3EC1SUcmMTAUz
 n16xHnM+VVYDT7VI0EyoHFMZPyLaGP9VJa+VYemrKA==
X-Google-Smtp-Source: APXvYqzBqNRIyEKJeeJ3vuVUa5lujbAxG836k8LFK157Mt4Z9zRai9oKPPjbAb0UbTVrzR42WihyGzrGGGpxul8Euvoifw==
X-Received: by 2002:a63:1119:: with SMTP id g25mr7065313pgl.359.1580425724082; 
 Thu, 30 Jan 2020 15:08:44 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:11 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 6/7] kunit: Add 'kunit_shutdown' option
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150845_570331_A2CC89DE 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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

From: David Gow <davidgow@google.com>

Add a new kernel command-line option, 'kunit_shutdown', which allows the
user to specify that the kernel poweroff, halt, or reboot after
completing all KUnit tests; this is very handy for running KUnit tests
on UML or a VM so that the UML/VM process exits cleanly immediately
after running all tests without needing a special initramfs.

Signed-off-by: David Gow <davidgow@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 lib/kunit/executor.c                | 20 ++++++++++++++++++++
 tools/testing/kunit/kunit_kernel.py |  2 +-
 tools/testing/kunit/kunit_parser.py |  2 +-
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index 7fd16feff157e..a93821116ccec 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 
+#include <linux/reboot.h>
 #include <kunit/test.h>
 
 /*
@@ -11,6 +12,23 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
 
 #if IS_BUILTIN(CONFIG_KUNIT)
 
+static char *kunit_shutdown;
+core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
+
+static void kunit_handle_shutdown(void)
+{
+	if (!kunit_shutdown)
+		return;
+
+	if (!strcmp(kunit_shutdown, "poweroff"))
+		kernel_power_off();
+	else if (!strcmp(kunit_shutdown, "halt"))
+		kernel_halt();
+	else if (!strcmp(kunit_shutdown, "reboot"))
+		kernel_restart(NULL);
+
+}
+
 static void kunit_print_tap_header(void)
 {
 	struct kunit_suite * const * const *suites, * const *subsuite;
@@ -42,6 +60,8 @@ int kunit_run_all_tests(void)
 		}
 	}
 
+	kunit_handle_shutdown();
+
 	if (has_test_failed)
 		return -EFAULT;
 
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index cc5d844ecca13..43314aa537d30 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -141,7 +141,7 @@ class LinuxSourceTree(object):
 		return True
 
 	def run_kernel(self, args=[], timeout=None, build_dir=''):
-		args.extend(['mem=256M'])
+		args.extend(['mem=256M', 'kunit_shutdown=halt'])
 		process = self._ops.linux_bin(args, timeout, build_dir)
 		with open(os.path.join(build_dir, 'test.log'), 'w') as f:
 			for line in process.stdout:
diff --git a/tools/testing/kunit/kunit_parser.py b/tools/testing/kunit/kunit_parser.py
index 78b3bdd03b1e4..633811dd9bce8 100644
--- a/tools/testing/kunit/kunit_parser.py
+++ b/tools/testing/kunit/kunit_parser.py
@@ -48,7 +48,7 @@ class TestStatus(Enum):
 	FAILURE_TO_PARSE_TESTS = auto()
 
 kunit_start_re = re.compile(r'^TAP version [0-9]+$')
-kunit_end_re = re.compile('List of all partitions:')
+kunit_end_re = re.compile(r'reboot: System halted')
 
 def isolate_kunit_output(kernel_output):
 	started = False
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
