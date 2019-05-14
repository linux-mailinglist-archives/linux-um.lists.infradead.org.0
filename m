Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596461C25E
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EqlRBXXpXLzKVJ5bckiZHjpJ6UpZqEV0mjz4UtPCYc=; b=ufA4Nwc1rE8/0p
	JZv9hL/XegiCX38rK4weVceVNwl5Q9yu/0H7xo4F+LkysY+TK2GXpysnKQMXyJxuKtVnIOpqfBQB5
	bPO8FTzxVkflxSafAHKKEM8dwf32TMEhOyP2TsMM5HALqAA1BKeM90wnfDK6K+jvOZKr7H84g3N1X
	FBKIwQ2GIRIwjldYgMB07KG7ubkw7RvKslxLmz3+ZSQ0pLiqG2fdQgI4memgEUZeMs0QELy0VFKq0
	tH06v8H99lO8H3IM9qaKucFjE4MEx1THyz4ewmYLa1mRduMvxeRv3/npZsfD65Hnr4U+NLetfQ+aB
	rghxe9RRJKvB7ZcOjwOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQGl-0006RS-LX; Tue, 14 May 2019 05:46:31 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQGj-0006Px-6V
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:46:30 +0000
Received: by mail-ot1-x34a.google.com with SMTP id v16so8606071otp.17
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=A9vF5ks8OoQZOvkqahZ7WGJYbSmWAhAF5wYZd8NRVmE=;
 b=dfl8Ji6Htzz+1ddgqbnlogyfrjm/3opxZHA3nioXFl8PTmlsW/GlCrQk7EXSZMQ2Ct
 zUjIabrobt+80se+j6Aw5fNIG3fBjvF5dCzlpWBKLq8E4lb1Yjw8KtbmHhG+X/O2e8fU
 yJ+1pI75UJn6hB9rWQSYcQfyxbkGNCaxrLyGmnuNgd5Cct/DBhcATklrYyablesIapaN
 HuqJonyZvw1/KZtIU7y+OvjvKhvdKk3ckXh/RyGxpJ81yctviKQ1vDdC7zbPzYkYcqp7
 KpZypaneNMXCarWNNKMKkyUWCZ5OLDbK9Yye3gH2Td11gIY6I3FJ6EK3G3rpCoVCMyYL
 5PHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=A9vF5ks8OoQZOvkqahZ7WGJYbSmWAhAF5wYZd8NRVmE=;
 b=bBlSzD9sp9DeD6VgtVCqgaMclXfN1cV3EyQBpsW3W0U6guCAWQEomdKcf5IIR/RVB9
 Mo+p1auQHahVj0/76ypIIBXkLqAk8JwVeoWVCqUNKl/bznm1XDd48MKLK6VNh9IDcvBO
 HQujrUA+Y3/JeRuU4z6iMYW45s3TsGqywdB4umlUxsWuttNmFBQe/YMxHEVwKJqXo5gY
 Og1aQn6zYColJAzv0CgPPQp2op3MOPfcb6i+ImH/cj/+siPWkfIOsLCqM2XhgnfgAjMz
 pBLiVgoUq8RI6u95gAJtKC3V56qhXVvCSIklYvcW7HidqJvLEL2Yo4iSluj2pwC0mUGX
 BSfg==
X-Gm-Message-State: APjAAAVlqmv1/tF47Rvk1ixpOhdetKmE5PxJo5TsMmqq2dScbJcns+mP
 drg9MZqGLBTWPdfOoMs3aGDQe/WVxEw6Y6pyQx7/zA==
X-Google-Smtp-Source: APXvYqzoxb1c4zA0TNBr4g5Lkv5gwMc1r1zt2yfpcsMrms+cGW7RWFxNQc78oibKn6vTEyxYD9rOGeq81bKLazVpQRLWGQ==
X-Received: by 2002:aca:f007:: with SMTP id o7mr1850976oih.59.1557812787702;
 Mon, 13 May 2019 22:46:27 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:48 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-15-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 14/18] kunit: defconfig: add defconfigs for building KUnit
 tests
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224629_243458_A89EF072 
X-CRM114-Status: GOOD (  13.44  )
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

Add defconfig for UML and a fragment that can be used to configure other
architectures for building KUnit tests. Add option to kunit_tool to use
a defconfig to create the kunitconfig.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 arch/um/configs/kunit_defconfig              |  8 ++++++++
 tools/testing/kunit/configs/all_tests.config |  8 ++++++++
 tools/testing/kunit/kunit.py                 | 18 ++++++++++++++++--
 tools/testing/kunit/kunit_kernel.py          |  3 ++-
 4 files changed, 34 insertions(+), 3 deletions(-)
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
index 85ed1c32a6c48..956326f87101f 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -11,6 +11,7 @@ import argparse
 import sys
 import os
 import time
+import shutil
 
 from collections import namedtuple
 from enum import Enum, auto
@@ -21,7 +22,7 @@ import kunit_parser
 
 KunitResult = namedtuple('KunitResult', ['status','result'])
 
-KunitRequest = namedtuple('KunitRequest', ['raw_output','timeout', 'jobs', 'build_dir'])
+KunitRequest = namedtuple('KunitRequest', ['raw_output','timeout', 'jobs', 'build_dir', 'defconfig'])
 
 class KunitStatus(Enum):
 	SUCCESS = auto()
@@ -29,8 +30,16 @@ class KunitStatus(Enum):
 	BUILD_FAILURE = auto()
 	TEST_FAILURE = auto()
 
+def create_default_kunitconfig():
+	if not os.path.exists(kunit_kernel.KUNITCONFIG_PATH):
+		shutil.copyfile('arch/um/configs/kunit_defconfig',
+				kunit_kernel.KUNITCONFIG_PATH)
+
 def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	      request: KunitRequest) -> KunitResult:
+	if request.defconfig:
+		create_default_kunitconfig()
+
 	config_start = time.time()
 	success = linux.build_reconfig(request.build_dir)
 	config_end = time.time()
@@ -99,13 +108,18 @@ def main(argv, linux):
 				'directory.',
 				type=str, default=None, metavar='build_dir')
 
+	run_parser.add_argument('--defconfig',
+				help='Uses a default kunitconfig.',
+				action='store_true')
+
 	cli_args = parser.parse_args(argv)
 
 	if cli_args.subcommand == 'run':
 		request = KunitRequest(cli_args.raw_output,
 				       cli_args.timeout,
 				       cli_args.jobs,
-				       cli_args.build_dir)
+				       cli_args.build_dir,
+				       cli_args.defconfig)
 		result = run_tests(linux, request)
 		if result.status != KunitStatus.SUCCESS:
 			sys.exit(1)
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
