Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A914B047
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4ul7gOG4vt99LlMU4+DDVSVA199bLKJ4Q7wkSScZ0I=; b=Dv8BRIgqFCopcS
	cCujZMwACxRR+puKdIuRvYjRC5rJFM06rAVdFjH5qkhlRcJrVic4xJ6e2KXvHDQbRJQUZ1r7nU7Db
	eqMkFKYihT5HQx/cHj3HBZBIMdmnNznWP4v1vBJGmnHpXj6LjxFXOBZexb315kfZjhGww2vgxtP+z
	KHgcIRofOuXDVydOu50dRbhX1OIdsT50NDE6OZ0vEYXpg/E3q+hcq1SpJkhrJmFQuGr3hXQv9JJ5J
	YTtiPN2aenzz9cYrtgzMrxDsWZOD/N/O1dI9IpUKdJ2ThM0UMP+ErGa8AUwI/57+jtHP5WMvUwgb6
	B6OnhjwsqWpyxzTq11nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLAp-0004yL-Tm; Tue, 28 Jan 2020 07:20:35 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLAm-0004vO-Iu
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:20:34 +0000
Received: by mail-pf1-x44a.google.com with SMTP id c185so2867728pfb.13
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ef0MAJ1wuFu9y6HizHmc+/vFBSY+7F2zQHC6+1+Hv1k=;
 b=Z9Rb2a9OQQHmevk8nrBhA6nMqohaXS+cG6wGimkIIX5tHmd4Pla36/oP2X+CBhBu+I
 MZIwM4ZWPLsGyRKF+THFYAWYcrFw4AOPprobTmns1Y4xUpQZDFGHWhylzEMDgvhPIWTw
 s0rhejVCZb6PwJGu/hcxbA6wWyRhioPtQqiA6KNwkqRiDwHD9IWqpxxO3p77HSNL6oSz
 PZ5RN2GLx7NCetNZWXyjyLHYApiADsuou7UdhE0NpbtXfdxNLo4Lf1wa8CGK6BYNTdbF
 n1fGAt/9obdNBLBZ/c8m0DnIeUsAhvgCBZr/Obx1G05HyHiH1ApxH0jtUzg/SLSE/jav
 PYsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ef0MAJ1wuFu9y6HizHmc+/vFBSY+7F2zQHC6+1+Hv1k=;
 b=CJscTCXLpLlwSifuIwplwZ6tyyrYupYokIXLnNu1MSPLmuhkyHzMbakpBLHboIBeFX
 Mp1v04JgU+cxdW7LHCdZVzGHiS91O7nkeO15PkSbBYx9eWhRegXGB8Wc/IHjpQAAmy7N
 9z+DgxTKoTUSBDNQ2zzWegtkmjMOMKMN3f92UPNDVrZ7zEpByR6apUsjz7/+8HIpoTcw
 8KvD/133ja0/fWPJpLRC0iiyOwyf0H6lNoem3W2tozMKoOzwrD3DEy9fvl4t/ltPsXTK
 TdddqGI0wQx3OLu0+F2g+eVnqhJuLC5wZHeEKHWZ1eMaf2w8RvVZuiDeUmmCadlJsvSi
 /Kkw==
X-Gm-Message-State: APjAAAVyj0AbUgHgntNeGAhc1C/Rl7aoQ+yA4oUDVOuPL6vIk6dkCve2
 q+zCH3HCQ8mGSE9lX+qtbkOeHRM5DUKQrxPyn1Zq/Q==
X-Google-Smtp-Source: APXvYqy+iukg1YFtkL0zEsGFAFKLSUcupLf+r9TZ5GGj6CTFqS5Dypdm73H+Nj4kyXHdRRRLEEtoMmp3GQtENLhfPkCjiQ==
X-Received: by 2002:a63:4d4c:: with SMTP id n12mr24215375pgl.212.1580196030652; 
 Mon, 27 Jan 2020 23:20:30 -0800 (PST)
Date: Mon, 27 Jan 2020 23:20:01 -0800
In-Reply-To: <20200128072002.79250-1-brendanhiggins@google.com>
Message-Id: <20200128072002.79250-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 6/7] kunit: Add 'kunit_shutdown' option
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232032_630139_0B3C3E01 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
---
 lib/kunit/executor.c                | 20 ++++++++++++++++++++
 tools/testing/kunit/kunit_kernel.py |  2 +-
 tools/testing/kunit/kunit_parser.py |  2 +-
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index 7fd16feff157e..d3ec1265a72fd 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <kunit/test.h>
+#include <linux/reboot.h>
 
 /*
  * These symbols point to the .kunit_test_suites section and are defined in
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
+	if (!strcmp(kunit_shutdown, "poweroff")) {
+		kernel_power_off();
+	} else if (!strcmp(kunit_shutdown, "halt")) {
+		kernel_halt();
+	} else if (!strcmp(kunit_shutdown, "reboot")) {
+		kernel_restart(NULL);
+	}
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
