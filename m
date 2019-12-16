Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC565121C5F
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHRwvplvj0tgG4/0N4euy0Ws9ekdw0qxETDaGp65yvI=; b=NgnHDZXnv7yGa+
	xYsfGLNeZ1ocyXIcMkRSMX0HVM3RNrIV9HvVpfamyl7HvyH/+7IsOr8RTWz/8qQvXqWZqOV46c8EP
	7StwQJGsjK9iGcwig6te0bznZKuAzjsH6/W83EmfqRhyVLmub2FsbvSl1HFEriwDydNQPjqRChmYG
	EYpfeOEIVj07UUcq/M3FQuIAwlbrTpAXWYPbcaOsuh2l0NAgXrhX1ZzO3VnkVbrFPc5i5xFRsXdpg
	8mFn9R5R7p3RRaO0x9uJzQwUrgKkugL02Xu5V+ng8VN1800yrLmgE/oPeaiPqZHOez7+m7346UGc9
	0Do0gQ/G0dLtqFFaKJLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyWD-0001xi-2q; Mon, 16 Dec 2019 22:07:09 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyWA-0001vm-AL
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:07:07 +0000
Received: by mail-pj1-x1049.google.com with SMTP id iq22so4182230pjb.21
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Q0qe2kR+bAay0VBCKejOtYmpF3XJORWe/2Y7Sg9amhw=;
 b=KXEdzR5sEfYW47IOMB4cZpps1PEpUNY54j1THILz0FDue58d4xDTo4xEyITzycC8WI
 cty59wubaPPbwA/praz2PhIRWbMoNlSfJ5HI5lCRKkz8ZEl+1Q+Mgi5nnUk4hwIMFFyK
 o9a7hgBtcB2M5nWh7oleILEiPMeC9wsSl3JvL9uyI3jcWOWl2HiNpuPS3tm/2kuzXz/2
 ZwrcD9NIwbP+TD9B5epGkERp4xEk54xjjIh2KP3BOzg2dWatvs23FcGoe18LGv9tigsN
 zk7enm6BbQ+IPvYpT59CVbQcLcAbQsDC1kmQ7hMOW4aOh6ehkNGuohUloJyoEOImpdB0
 og2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Q0qe2kR+bAay0VBCKejOtYmpF3XJORWe/2Y7Sg9amhw=;
 b=AXz/wK5fYFONuqH6HMBEyXbR/QqmVAmD6d5xJBn8ypZb0wOK2GIPmvBniXmTXo500N
 rmz0Y6Vw7IjbC93pSmQ3FwGlpUV7LiLrbOJOwa/3jbKYFcLzu+hmLBBiBnoK7NNtkHLw
 giAIvUbRsD+yFcVur82836wlgSIbFp1r5b3XWMgfOQR4rf+/Y6/OCVYUe+JuhOHlM4Cm
 Jh+MzPPE4LMxYZtkLGKcpZ8gPJjrnmogeamWnC5d5JarqEvNsGodf6ruaTERvDF/TBIu
 7yMX2eM4m822qC7qIjcO6a7Z++it0oqIbrQa4k2xE8dtqo+Dtf1c8eiStIz0CSJnFC34
 cjHw==
X-Gm-Message-State: APjAAAVMiL4C5nKucnsfSt6XDcDQjpej8Z13Adjd1ny82BzOncpw8Sxu
 d06/rq+m4OK+4ORHWLEAdJPx6z5w7LyQyekI8wGppQ==
X-Google-Smtp-Source: APXvYqxRhQSngjdpwvFolaB1SLzzXTDEa/g1lTeVrAduuwj0fvc+F3k5fBaVV1qGODXsFPGnv0IqlV0v+/1bKZjWCdvWlA==
X-Received: by 2002:a63:9548:: with SMTP id t8mr9143009pgn.205.1576534024897; 
 Mon, 16 Dec 2019 14:07:04 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:55 -0800
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
Message-Id: <20191216220555.245089-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 6/6] kunit: Add 'kunit_shutdown' option
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140706_361343_CB775B64 
X-CRM114-Status: GOOD (  10.88  )
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

From: David Gow <davidgow@google.com>

Add a new kernel command-line option, 'kunit_shutdown', which allows the
user to specify that the kernel poweroff, halt, or reboot after
completing all KUnit tests; this is very handy for running KUnit tests
on UML or a VM so that the UML/VM process exits cleanly immediately
after running all tests without needing a special initramfs.

Signed-off-by: David Gow <davidgow@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 lib/kunit/executor.c                | 18 ++++++++++++++++++
 tools/testing/kunit/kunit_kernel.py |  2 +-
 tools/testing/kunit/kunit_parser.py |  2 +-
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index d5f1d07f2f817..32462ecb94eb6 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -7,7 +7,9 @@
  */
 
 #include <linux/init.h>
+#include <linux/moduleparam.h>
 #include <linux/printk.h>
+#include <linux/reboot.h>
 #include <kunit/test.h>
 
 /*
@@ -17,6 +19,9 @@
 extern struct kunit_suite *__kunit_suites_start[];
 extern struct kunit_suite *__kunit_suites_end[];
 
+static char *kunit_shutdown;
+core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
+
 static void kunit_print_tap_header(void)
 {
 	size_t num_of_suites;
@@ -30,6 +35,17 @@ static void kunit_print_tap_header(void)
 	pr_info("1..%zd\n", num_of_suites);
 }
 
+static void kunit_handle_shutdown(void)
+{
+	if (!strcmp(kunit_shutdown, "poweroff")) {
+		kernel_power_off();
+	} else if (!strcmp(kunit_shutdown, "halt")) {
+		kernel_halt();
+	} else if (!strcmp(kunit_shutdown, "reboot")) {
+		kernel_restart(NULL);
+	}
+}
+
 static bool kunit_run_all_tests(void)
 {
 	struct kunit_suite **suite;
@@ -44,6 +60,8 @@ static bool kunit_run_all_tests(void)
 			has_test_failed = true;
 	}
 
+	kunit_handle_shutdown();
+
 	return !has_test_failed;
 }
 
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index bf38768353313..0070c6b807d2a 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -141,7 +141,7 @@ class LinuxSourceTree(object):
 		return True
 
 	def run_kernel(self, args=[], timeout=None, build_dir=None):
-		args.extend(['mem=256M'])
+		args.extend(['mem=256M', 'kunit_shutdown=halt'])
 		process = self._ops.linux_bin(args, timeout, build_dir)
 		with open('test.log', 'w') as f:
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
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
