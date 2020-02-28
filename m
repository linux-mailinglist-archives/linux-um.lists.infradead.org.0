Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB6C172E21
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FH87X3U3gvLMYhDxZSgoVkF29IRP1KKoC1mK1chmE3o=; b=QYeVyibDwiEdbS
	XGWnH5QPz0hda7RKJWR0ViSolsaF3uxhigWLw8JUPXzEiVCkgc0AwGs3gzYdGifOBAuGWaOJNrxIM
	8C3jQhYtkaw6mtAKeZjlhIICnewqrpEwNhpKjm6x7FDcefiDSnWiTX24UfmowgJhR9Dfmf/5mowW8
	b/AFvzyZS+SiYJIXuoB21E02E6kKSbDYQH8WYDrGqjsZ/Vq6ri5eyr3N+lpphFbsGWYQWaIDDdjIt
	RjW2XL2vSH04znIfhFBEuen6HhGe1AQ8EXeObPSWlIirDtyqZVhdKu9heONmpD0Fg2A1dgHyzpE7f
	C8julNcervYuQXfcBVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UL5-0006gY-0Y; Fri, 28 Feb 2020 01:21:15 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UL2-0006ey-2c
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:21:13 +0000
Received: by mail-pj1-x1049.google.com with SMTP id ev1so739792pjb.5
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+RQb0O9/ANDgn7O27sRp5ZtZTpbReSUGwniCuF+Cbp4=;
 b=aVEeGKe22nuT+AY9XSYnyJt98FnHF4PfCk5p8sv4bJiC+R4AJxjBf/mXc0e0toX5Hu
 jvDqabQJ/NjX4KfjQQouS3ID09TUMXxfXSIlk5W3/evKbc4aCMG8eunt9sQsa7CKsz0Y
 jkm/o0h1C3+GMSMQzkbp6YSsrcwLYplOvfDnnDH/ex3TN6z/nKoaJUw5wJDpAPDPci1s
 q+RSfm7HbtJz4tOLR4sxBuird496AqZ6I8yrJx8BCEztWD//3DR2CZz85nDg5CK40aMW
 Sq7XNgHjZcqYet6A3zQF7GGH8LNmFN7REhzxNiJ0UKoWyWo+VIoizh9Ukk3X+1mp0T3c
 eENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+RQb0O9/ANDgn7O27sRp5ZtZTpbReSUGwniCuF+Cbp4=;
 b=LoTVaUWVJx9mtxbU3GtZYgR9UZzCg9cwfN/rCCTO2BLD9unWU/7yeVKu7y5Ambpl4K
 9/qZbbLU3iPjXwSIDoRDF1HN5aRfdtiF9tWd1X85h7jd+jw4EWxwqPvjK5EcbzjO1Ji2
 l7u0ts0FrWbCryIMPLUhI5kFeomyIk21z81NIE+Aj1skfcCU2BMAZVJDuDrQttjsTh8H
 AO2tZ9pZDnCx4aPbg+NnbwfwoBbQxSB/6KlKbF1b0i87bngy3/e3xgJ1zwZ23kR1/sHW
 8SeLTqE9lLHreD61z8Cu+okijJfKdO4sXvlQN1/8iOFT55ZM2Bw90q4D+eDuHsmLn/v8
 e6ZQ==
X-Gm-Message-State: APjAAAVQ1KARjY996j68RgZRzaTYOddvlAx0/S0aYFT2GJ537+BdsjcN
 sZwxj7ZcsHv5esCaeQu5IKJbWONUISts7JPBqNm3BA==
X-Google-Smtp-Source: APXvYqxQ1rOCCg5Gw3xbVsq9larNndZOz8N2rPlyFxHiMX0CbG1fYPY5L0MBjR5rVPDuE7TzH4FU4VdnMiw912h55MWbkQ==
X-Received: by 2002:a63:104a:: with SMTP id 10mr2052540pgq.276.1582852870640; 
 Thu, 27 Feb 2020 17:21:10 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:35 -0800
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Message-Id: <20200228012036.15682-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 6/7] kunit: Add 'kunit_shutdown' option
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172112_117926_1C89C060 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
index d99ae75ef72fa..6cf0697c788b6 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -145,7 +145,7 @@ class LinuxSourceTree(object):
 		return self.validate_config(build_dir)
 
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
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
