Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC3010FEA
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB6smWK4b31pNnMjV0qbf+CvXTFD+KoTCdE2ci4Lc3E=; b=guvzYHWxoL0X5O
	aNyDWtjZvD54ZQ7/Ey/3HTMFUgmjHj+A/w5TaC19aDAYp8Hd5hSiVMrFAENQzAUK5JO5aNkspfkaO
	hXfRYeY076sekkh5qhk2BOIBjDAQMyZayv5t+cVtVx2mNcTcF5sP1nn178hck72ScAvSGx58Kb5WA
	BV7yA2/EGSKiD2NZBovomPKLCjoPw2wM0DzBCA0zZl6JqMGms+MJdFdD5NXCMs+siAPyvMlTFcmO2
	fne1zY0vI9h0LzCr6NEOsYG1RtLLlPdLFvz2VWyorCyHUgbyJ0jkGdOy+0wpE875oVNFO9fA1nGym
	K9X/9v9EJcK2WRTzAMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyHQ-0007bJ-0V; Wed, 01 May 2019 23:04:48 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyHN-0007aZ-E2
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:04:46 +0000
Received: by mail-ot1-x34a.google.com with SMTP id q23so295994otk.10
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=chqbiB4K0p/zEKsVbXe4iW2Xpj6yAVIrWQhjpUaEvyA=;
 b=GE0P464mBtC8wrhfBO7g793E4I4dqW2RIP7+tHwU/PC57hjNo6fmzw5HElvCwVJ32i
 ZkuQrQPVcHSfFt6v723klhDSf/BCGNNvLIImZbUWeECzTjsM5G6js6Y4BB5vjlq16LAN
 nySbgJK0p0eYO+3PMfew/5txRXxjgd1tovWq5YKZjGYzlDxEQ+Q6GSZnOMuy+DFhqKMT
 uJ3lLNt16MIjzkoA11kKC2qDuhYsfvUVFDvaTEF8ASb3zPAzcT2kDwqalnmACvYsWp+Z
 7T2yCIRZwzp4TkmtK1c2L5CoSAeNHI4xKfYHm9/xZ7l5IMHM0zff93mqcrZ2D4EpNlPo
 NA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=chqbiB4K0p/zEKsVbXe4iW2Xpj6yAVIrWQhjpUaEvyA=;
 b=tkfW9z+S+9hHARpTa8x3y+S5BYD3Tza5THjjyguRISxZU9zhQgYy4WUoslbmEhPeVy
 KFhWdSY/7g43kcaLUO8VCiuYeC36nN6Z9ycbhTbve+wJDqMo5BdPlrjA56hsOahSidEz
 +siUavROX5SfXNcFbbPL7UMBI3muFDVc9skpyLMRXTUdP2IPTNrMgHu3PCWWVqaLRnyq
 t6pwa5TTInMDITj/m/S/AarEcnxDohUIL+7eff4DCT3xG5UFvs6KG1S+M+td7mtBLeNQ
 7PG+K9tw4NQkRXRmgWTqTPlrBfckkP0zQFNuaut9QNTVPUd3gGwjJ2RizvYRudvaZYLK
 bquQ==
X-Gm-Message-State: APjAAAXydYsbCMBa8gxFHN6Q2FqovUtyL9qqpNuiUk3eqFZNlhiGXu/y
 58rw5Py+P+7xKPsMNO9GZTaJblaGV4zjSDWef6ed2Q==
X-Google-Smtp-Source: APXvYqziahGWgdBZbQfWG2ft5ebLp+ozkgppLiv8kSSis3P9fMvGcrL9eofrdvhLG15CPkadoMaZYjcvL9G8Pk6lBON+yg==
X-Received: by 2002:aca:cd88:: with SMTP id d130mr481038oig.63.1556751883876; 
 Wed, 01 May 2019 16:04:43 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:22 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-14-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 13/17] kunit: defconfig: add defconfigs for building KUnit
 tests
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160445_468369_2BF49EFA 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add defconfig for UML and a fragment that can be used to configure other
architectures for building KUnit tests. Add option to kunit_tool to use
a defconfig to create the kunitconfig.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 arch/um/configs/kunit_defconfig              |  8 ++++++++
 tools/testing/kunit/configs/all_tests.config |  8 ++++++++
 tools/testing/kunit/kunit.py                 | 17 +++++++++++++++--
 tools/testing/kunit/kunit_kernel.py          |  3 ++-
 4 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 arch/um/configs/kunit_defconfig
 create mode 100644 tools/testing/kunit/configs/all_tests.config

diff --git a/arch/um/configs/kunit_defconfig b/arch/um/configs/kunit_defconfig
new file mode 100644
index 0000000000000..bfe49689038f1
--- /dev/null
+++ b/arch/um/configs/kunit_defconfig
@@ -0,0 +1,8 @@
+CONFIG_OF=y
+CONFIG_OF_UNITTEST=y
+CONFIG_OF_OVERLAY=y
+CONFIG_I2C=y
+CONFIG_I2C_MUX=y
+CONFIG_KUNIT=y
+CONFIG_KUNIT_TEST=y
+CONFIG_KUNIT_EXAMPLE_TEST=y
diff --git a/tools/testing/kunit/configs/all_tests.config b/tools/testing/kunit/configs/all_tests.config
new file mode 100644
index 0000000000000..bfe49689038f1
--- /dev/null
+++ b/tools/testing/kunit/configs/all_tests.config
@@ -0,0 +1,8 @@
+CONFIG_OF=y
+CONFIG_OF_UNITTEST=y
+CONFIG_OF_OVERLAY=y
+CONFIG_I2C=y
+CONFIG_I2C_MUX=y
+CONFIG_KUNIT=y
+CONFIG_KUNIT_TEST=y
+CONFIG_KUNIT_EXAMPLE_TEST=y
diff --git a/tools/testing/kunit/kunit.py b/tools/testing/kunit/kunit.py
index 7413ec7351a20..63e9fb3b60200 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -11,6 +11,7 @@ import argparse
 import sys
 import os
 import time
+import shutil
 
 import kunit_config
 import kunit_kernel
@@ -36,14 +37,26 @@ parser.add_argument('--build_dir',
 		    'directory.',
 		    type=str, default=None, metavar='build_dir')
 
-cli_args = parser.parse_args()
+parser.add_argument('--defconfig',
+		    help='Uses a default kunitconfig.',
+		    action='store_true')
 
-linux = kunit_kernel.LinuxSourceTree()
+def create_default_kunitconfig():
+	if not os.path.exists(kunit_kernel.KUNITCONFIG_PATH):
+		shutil.copyfile('arch/um/configs/kunit_defconfig',
+				kunit_kernel.KUNITCONFIG_PATH)
+
+cli_args = parser.parse_args()
 
 build_dir = None
 if cli_args.build_dir:
 	build_dir = cli_args.build_dir
 
+if cli_args.defconfig:
+	create_default_kunitconfig()
+
+linux = kunit_kernel.LinuxSourceTree()
+
 config_start = time.time()
 success = linux.build_reconfig(build_dir)
 config_end = time.time()
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index 07c0abf2f47df..bf38768353313 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -14,6 +14,7 @@ import os
 import kunit_config
 
 KCONFIG_PATH = '.config'
+KUNITCONFIG_PATH = 'kunitconfig'
 
 class ConfigError(Exception):
 	"""Represents an error trying to configure the Linux kernel."""
@@ -81,7 +82,7 @@ class LinuxSourceTree(object):
 
 	def __init__(self):
 		self._kconfig = kunit_config.Kconfig()
-		self._kconfig.read_from_file('kunitconfig')
+		self._kconfig.read_from_file(KUNITCONFIG_PATH)
 		self._ops = LinuxSourceTreeOperations()
 
 	def clean(self):
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
