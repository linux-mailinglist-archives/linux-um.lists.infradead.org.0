Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52586F3F31
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcqSkNJU1nI0PP/ZWpByGZifjRudcToW8S/ZaCzs13E=; b=fWTU80C0hCVitZ
	wsvWYBOzgFBOYjqAlc17xqPJE9KXpEvjQrFMgCU/abNbfkQhx998dnM+IPr2RM3MKR57Xs7Ef0ojA
	XrZ92gJsis8bCI+8bA9h/l7hLhZJiUzdoAEfCbbxSpFC+gdfjDDidIM0vFAOsNk5i+9K2GcAgQuf4
	NHC2FkCWswXE6ijSTdLv+cXfKA2uttiF2bkFxcikyqBE3fhXSTMiDtB8OJVg6TPueu1iIgEegf/Q3
	A8yBQvqmtQ+NZwNcVit3gPpPQYqaXR9x/vHB7D5byO8EZ9++TUt8MgkUEyd8/3cinxEHOvpRaOTsB
	xqu7T+wbWjgLWHDwKfyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQt-0003ln-27; Fri, 08 Nov 2019 05:03:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQp-0003kE-EJ
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id l4so3211936plt.13
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jRfv8uWvN/WjCmQb5eX/3JJAEj2Y2ooiXIdxAPXSx4Y=;
 b=P0Cjb5vujLMViKoIpR3O2SF3wcV0bpg9HmC8p3VH3W3JWcpKAwZWGGOZqS0cob/0m0
 hTsce8znzLNk4oc7FO6vnX9euHMSvaRseuTpqaOWkEopXTmwclO+JmPfgdhmKqb19rm3
 BUgYKbhfhJk62m7LGWMThQanjmYqcezRJCJU6SA6vv7iQLTH+3/uHTc/40epepY5q/WW
 42en4LPGslVlCTjA8C6ATEk+VSizdCZtvgWfJ+aXAfqO37HFUAR0cN45rSmgx0uLhQ9b
 k+vrWCityg+rArhK6ksOXquPWi4oRqLnkZcwpgg/EPC1QjZ/Ltr8SsPU218YMArKmhmJ
 AHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jRfv8uWvN/WjCmQb5eX/3JJAEj2Y2ooiXIdxAPXSx4Y=;
 b=minrgeOOnCYFA8juSGSPjj5xcw1baPriug8G/fxRz3eMBvIqWjEVu0lfrauzXkd/Ht
 SgGRaZV/epTS/AJoUIn8NaMgi9hjXhcKvs4gxign5Teqd8OsVJa+iDma3mSlsFJ/3LOF
 k62lDelwbM+YhBijKn4nZrSuIYXwqJ2d2j6t+mqEXI4KRQc+tzK4QItSZW9eJmlTVIVt
 ouOka0bfmHbllxCJls+Fniuif+xuOsT+YbTogBv0m6oRu9XlofOwN7hptByJYIhrSR/y
 jMXUjCw98RA7MLfCglCXm3KJSHM2WPJT2BPhtnkj1z3yLylgVLM/AFYXWJ1soRhqYvc3
 1ZWA==
X-Gm-Message-State: APjAAAXkI9Ioq1ubyoMWNGoZ2GolpIRL/VmTV+BvEcZSgi5p4sgKv9az
 1TKM1tfYzVUY/0v/SS/OlJ4uxh8l/vZOzw==
X-Google-Smtp-Source: APXvYqww3oovgTUDEP4QyCpg/zb96CvCmDDXJ/H1zdPWXsjbhEmOnDi5+Y0t3GdOK/ONtDpOlh71Gg==
X-Received: by 2002:a17:90a:fb57:: with SMTP id
 iq23mr266498pjb.79.1573189414505; 
 Thu, 07 Nov 2019 21:03:34 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 12sm5769325pjm.11.2019.11.07.21.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:33 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id DE89E201ACFD2F; Fri,  8 Nov 2019 14:03:31 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 13/37] lkl: plug in the build system
Date: Fri,  8 Nov 2019 14:02:28 +0900
Message-Id: <b48dbefff2c7a11f263a641cc770e2e170aa097b.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210335_493432_AF387F67 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Basic Makefiles for building LKL. Add a new architecture specific
target for installing the resulting library files and headers.

To make LKL binaries build, UML introduced an additional option, UMMODE
variable, to switch the output file of build: kernel (default), or
library (LKL).  Those modes are not able to be ON at the same time.

To build on library mode, users do the following:

  make defconfig ARCH=um UMMODE=library
  make ARCH=um UMMODE=library

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
Signed-off-by: Akira Moroo <retrage01@gmail.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 arch/um/Kconfig             |  26 +++++++
 arch/um/Makefile            | 151 +++---------------------------------
 arch/um/Makefile.um         | 149 +++++++++++++++++++++++++++++++++++
 arch/um/lkl/Kconfig         |  17 ++--
 arch/um/lkl/Makefile        |  69 ++++++++++++++++
 arch/um/lkl/auto.conf       |   1 +
 arch/um/lkl/kernel/Makefile |   4 +
 arch/um/lkl/mm/Makefile     |   1 +
 8 files changed, 264 insertions(+), 154 deletions(-)
 create mode 100644 arch/um/Makefile.um
 create mode 100644 arch/um/lkl/Makefile
 create mode 100644 arch/um/lkl/auto.conf
 create mode 100644 arch/um/lkl/kernel/Makefile
 create mode 100644 arch/um/lkl/mm/Makefile

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 3c3adfc486f2..c46bdb2987ce 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -5,6 +5,10 @@ menu "UML-specific options"
 config UML
 	bool
 	default y
+
+config UMMODE_KERN
+	bool "UML mode: kernel mode"
+	default y if "$(UMMODE)" = "kernel"
 	select ARCH_HAS_KCOV
 	select ARCH_NO_PREEMPT
 	select HAVE_ARCH_AUDITSYSCALL
@@ -18,7 +22,25 @@ config UML
 	select GENERIC_CLOCKEVENTS
 	select HAVE_GCC_PLUGINS
 	select TTY # Needed for line.c
+        help
+	  This mode switches a mode to build a regular kernel executable
+          of UML.
+
+config UMMODE_LIB
+	bool "UML mode: library mode"
+	depends on !UMMODE_KERN
+	select LKL
+	default y if "$(UMMODE)" = "library"
+	help
+	  This mode switches a mode to build a library of UML (Linux
+	  Kernel Library/LKL).  This switch is exclusive to "kernel mode"
+	  of UML, which is traditional mode of UML.
+
+	  For more detail about LKL, see
+	  <file:Documentation/virt/uml/lkl.txt>.
 
+
+if UMMODE_KERN
 config MMU
 	bool
 	default y
@@ -196,6 +218,10 @@ config UML_TIME_TRAVEL_SUPPORT
 
 	  It is safe to say Y, but you probably don't need this.
 
+endif #UMMODE_KERN
+
 endmenu
 
 source "arch/um/drivers/Kconfig"
+
+source "arch/um/lkl/Kconfig"
diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872d..d8cb874c8a53 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -1,148 +1,15 @@
-#
-# This file is included by the global makefile so that you can add your own
-# architecture-specific flags and dependencies.
-#
-# Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
-# Licensed under the GPL
-#
-
-# select defconfig based on actual architecture
-ifeq ($(SUBARCH),x86)
-  ifeq ($(shell uname -m),x86_64)
-        KBUILD_DEFCONFIG := x86_64_defconfig
-  else
-        KBUILD_DEFCONFIG := i386_defconfig
-  endif
-else
-        KBUILD_DEFCONFIG := $(SUBARCH)_defconfig
-endif
+# SPDX-License-Identifier: GPL-2.0
 
 ARCH_DIR := arch/um
-OS := $(shell uname -s)
-# We require bash because the vmlinux link and loader script cpp use bash
-# features.
-SHELL := /bin/bash
-
-core-y			+= $(ARCH_DIR)/kernel/		\
-			   $(ARCH_DIR)/drivers/		\
-			   $(ARCH_DIR)/os-$(OS)/
-
-MODE_INCLUDE	+= -I$(srctree)/$(ARCH_DIR)/include/shared/skas
 
-HEADER_ARCH 	:= $(SUBARCH)
+# select mode of UML build
+UMMODE ?= kernel
+include $(ARCH_DIR)/lkl/auto.conf
 
-ifneq ($(filter $(SUBARCH),x86 x86_64 i386),)
-	HEADER_ARCH := x86
+ifeq ($(UMMODE),kernel)
+	include $(ARCH_DIR)/Makefile.um
+else ifeq ($(UMMODE),library)
+	include $(ARCH_DIR)/lkl/Makefile
 endif
 
-ifdef CONFIG_64BIT
-	KBUILD_CFLAGS += -mcmodel=large
-endif
-
-HOST_DIR := arch/$(HEADER_ARCH)
-
-include $(ARCH_DIR)/Makefile-skas
-include $(HOST_DIR)/Makefile.um
-
-core-y += $(HOST_DIR)/um/
-
-SHARED_HEADERS	:= $(ARCH_DIR)/include/shared
-ARCH_INCLUDE	:= -I$(srctree)/$(SHARED_HEADERS)
-ARCH_INCLUDE	+= -I$(srctree)/$(HOST_DIR)/um/shared
-KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/um
-
-# -Dvmap=kernel_vmap prevents anything from referencing the libpcap.o symbol so
-# named - it's a common symbol in libpcap, so we get a binary which crashes.
-#
-# Same things for in6addr_loopback and mktime - found in libc. For these two we
-# only get link-time error, luckily.
-#
-# -Dlongjmp=kernel_longjmp prevents anything from referencing the libpthread.a
-# embedded copy of longjmp, same thing for setjmp.
-#
-# These apply to USER_CFLAGS to.
-
-KBUILD_CFLAGS += $(CFLAGS) $(CFLAGS-y) -D__arch_um__ \
-	$(ARCH_INCLUDE) $(MODE_INCLUDE) -Dvmap=kernel_vmap	\
-	-Dlongjmp=kernel_longjmp -Dsetjmp=kernel_setjmp \
-	-Din6addr_loopback=kernel_in6addr_loopback \
-	-Din6addr_any=kernel_in6addr_any -Dstrrchr=kernel_strrchr
-
-KBUILD_AFLAGS += $(ARCH_INCLUDE)
-
-USER_CFLAGS = $(patsubst $(KERNEL_DEFINES),,$(patsubst -I%,,$(KBUILD_CFLAGS))) \
-		$(ARCH_INCLUDE) $(MODE_INCLUDE) $(filter -I%,$(CFLAGS)) \
-		-D_FILE_OFFSET_BITS=64 -idirafter $(srctree)/include \
-		-idirafter $(objtree)/include -D__KERNEL__ -D__UM_HOST__
-
-#This will adjust *FLAGS accordingly to the platform.
-include $(ARCH_DIR)/Makefile-os-$(OS)
-
-KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/include \
-		   -I$(srctree)/$(HOST_DIR)/include/uapi \
-		   -I$(objtree)/$(HOST_DIR)/include/generated \
-		   -I$(objtree)/$(HOST_DIR)/include/generated/uapi
-
-# -Derrno=kernel_errno - This turns all kernel references to errno into
-# kernel_errno to separate them from the libc errno.  This allows -fno-common
-# in KBUILD_CFLAGS.  Otherwise, it would cause ld to complain about the two different
-# errnos.
-# These apply to kernelspace only.
-#
-# strip leading and trailing whitespace to make the USER_CFLAGS removal of these
-# defines more robust
-
-KERNEL_DEFINES = $(strip -Derrno=kernel_errno -Dsigprocmask=kernel_sigprocmask \
-			 -Dmktime=kernel_mktime $(ARCH_KERNEL_DEFINES))
-KBUILD_CFLAGS += $(KERNEL_DEFINES)
-
-PHONY += linux
-
-all: linux
-
-linux: vmlinux
-	@echo '  LINK $@'
-	$(Q)ln -f $< $@
-
-define archhelp
-  echo '* linux		- Binary kernel image (./linux) - for backward'
-  echo '		   compatibility only, this creates a hard link to the'
-  echo '		   real kernel binary, the "vmlinux" binary you'
-  echo '		   find in the kernel root.'
-endef
-
-archheaders:
-	$(Q)$(MAKE) -f $(srctree)/Makefile ARCH=$(HEADER_ARCH) asm-generic archheaders
-
-archprepare:
-	$(Q)$(MAKE) $(build)=$(HOST_DIR)/um include/generated/user_constants.h
-
-LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
-LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
-
-CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
-	$(call cc-option, -fno-stack-protector,) \
-	$(call cc-option, -fno-stack-protector-all,)
-
-# Options used by linker script
-export LDS_START      := $(START)
-export LDS_ELF_ARCH   := $(ELF_ARCH)
-export LDS_ELF_FORMAT := $(ELF_FORMAT)
-
-# The wrappers will select whether using "malloc" or the kernel allocator.
-LINK_WRAPS = -Wl,--wrap,malloc -Wl,--wrap,free -Wl,--wrap,calloc
-
-LD_FLAGS_CMDLINE = $(foreach opt,$(KBUILD_LDFLAGS),-Wl,$(opt))
-
-# Used by link-vmlinux.sh which has special support for um link
-export CFLAGS_vmlinux := $(LINK-y) $(LINK_WRAPS) $(LD_FLAGS_CMDLINE)
-
-# When cleaning we don't include .config, so we don't include
-# TT or skas makefiles and don't clean skas_ptregs.h.
-CLEAN_FILES += linux x.i gmon.out
-
-archclean:
-	@find . \( -name '*.bb' -o -name '*.bbg' -o -name '*.da' \
-		-o -name '*.gcov' \) -type f -print | xargs rm -f
-
-export HEADER_ARCH SUBARCH USER_CFLAGS CFLAGS_NO_HARDENING OS DEV_NULL_PATH
+export UMMODE HEADER_ARCH HOST_DIR SRCARCH
diff --git a/arch/um/Makefile.um b/arch/um/Makefile.um
new file mode 100644
index 000000000000..d54fd387a16f
--- /dev/null
+++ b/arch/um/Makefile.um
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# This file is included by the global makefile so that you can add your own
+# architecture-specific flags and dependencies.
+#
+# Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
+# Licensed under the GPL
+#
+
+# select defconfig based on actual architecture
+ifeq ($(SUBARCH),x86)
+  ifeq ($(shell uname -m),x86_64)
+        KBUILD_DEFCONFIG := x86_64_defconfig
+  else
+        KBUILD_DEFCONFIG := i386_defconfig
+  endif
+else
+        KBUILD_DEFCONFIG := $(SUBARCH)_defconfig
+endif
+
+ARCH_DIR := arch/um
+OS := $(shell uname -s)
+# We require bash because the vmlinux link and loader script cpp use bash
+# features.
+SHELL := /bin/bash
+
+core-y			+= $(ARCH_DIR)/kernel/		\
+			   $(ARCH_DIR)/drivers/		\
+			   $(ARCH_DIR)/os-$(OS)/
+
+MODE_INCLUDE	+= -I$(srctree)/$(ARCH_DIR)/include/shared/skas
+
+HEADER_ARCH 	:= $(SUBARCH)
+
+ifneq ($(filter $(SUBARCH),x86 x86_64 i386),)
+	HEADER_ARCH := x86
+endif
+
+ifdef CONFIG_64BIT
+	KBUILD_CFLAGS += -mcmodel=large
+endif
+
+HOST_DIR := arch/$(HEADER_ARCH)
+
+include $(ARCH_DIR)/Makefile-skas
+include $(HOST_DIR)/Makefile.um
+
+core-y += $(HOST_DIR)/um/
+
+SHARED_HEADERS	:= $(ARCH_DIR)/include/shared
+ARCH_INCLUDE	:= -I$(srctree)/$(SHARED_HEADERS)
+ARCH_INCLUDE	+= -I$(srctree)/$(HOST_DIR)/um/shared
+KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/um
+
+# -Dvmap=kernel_vmap prevents anything from referencing the libpcap.o symbol so
+# named - it's a common symbol in libpcap, so we get a binary which crashes.
+#
+# Same things for in6addr_loopback and mktime - found in libc. For these two we
+# only get link-time error, luckily.
+#
+# -Dlongjmp=kernel_longjmp prevents anything from referencing the libpthread.a
+# embedded copy of longjmp, same thing for setjmp.
+#
+# These apply to USER_CFLAGS to.
+
+KBUILD_CFLAGS += $(CFLAGS) $(CFLAGS-y) -D__arch_um__ \
+	$(ARCH_INCLUDE) $(MODE_INCLUDE) -Dvmap=kernel_vmap	\
+	-Dlongjmp=kernel_longjmp -Dsetjmp=kernel_setjmp \
+	-Din6addr_loopback=kernel_in6addr_loopback \
+	-Din6addr_any=kernel_in6addr_any -Dstrrchr=kernel_strrchr
+
+KBUILD_AFLAGS += $(ARCH_INCLUDE)
+
+USER_CFLAGS = $(patsubst $(KERNEL_DEFINES),,$(patsubst -I%,,$(KBUILD_CFLAGS))) \
+		$(ARCH_INCLUDE) $(MODE_INCLUDE) $(filter -I%,$(CFLAGS)) \
+		-D_FILE_OFFSET_BITS=64 -idirafter $(srctree)/include \
+		-idirafter $(objtree)/include -D__KERNEL__ -D__UM_HOST__
+
+#This will adjust *FLAGS accordingly to the platform.
+include $(ARCH_DIR)/Makefile-os-$(OS)
+
+KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/include \
+		   -I$(srctree)/$(HOST_DIR)/include/uapi \
+		   -I$(objtree)/$(HOST_DIR)/include/generated \
+		   -I$(objtree)/$(HOST_DIR)/include/generated/uapi
+
+# -Derrno=kernel_errno - This turns all kernel references to errno into
+# kernel_errno to separate them from the libc errno.  This allows -fno-common
+# in KBUILD_CFLAGS.  Otherwise, it would cause ld to complain about the two different
+# errnos.
+# These apply to kernelspace only.
+#
+# strip leading and trailing whitespace to make the USER_CFLAGS removal of these
+# defines more robust
+
+KERNEL_DEFINES = $(strip -Derrno=kernel_errno -Dsigprocmask=kernel_sigprocmask \
+			 -Dmktime=kernel_mktime $(ARCH_KERNEL_DEFINES))
+KBUILD_CFLAGS += $(KERNEL_DEFINES)
+
+PHONY += linux
+
+all: linux
+
+linux: vmlinux
+	@echo '  LINK $@'
+	$(Q)ln -f $< $@
+
+define archhelp
+  echo '* linux		- Binary kernel image (./linux) - for backward'
+  echo '		   compatibility only, this creates a hard link to the'
+  echo '		   real kernel binary, the "vmlinux" binary you'
+  echo '		   find in the kernel root.'
+endef
+
+archheaders:
+	$(Q)$(MAKE) -f $(srctree)/Makefile ARCH=$(HEADER_ARCH) asm-generic archheaders
+
+archprepare:
+	$(Q)$(MAKE) $(build)=$(HOST_DIR)/um include/generated/user_constants.h
+
+LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
+LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
+
+CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
+	$(call cc-option, -fno-stack-protector,) \
+	$(call cc-option, -fno-stack-protector-all,)
+
+# Options used by linker script
+export LDS_START      := $(START)
+export LDS_ELF_ARCH   := $(ELF_ARCH)
+export LDS_ELF_FORMAT := $(ELF_FORMAT)
+
+# The wrappers will select whether using "malloc" or the kernel allocator.
+LINK_WRAPS = -Wl,--wrap,malloc -Wl,--wrap,free -Wl,--wrap,calloc
+
+LD_FLAGS_CMDLINE = $(foreach opt,$(KBUILD_LDFLAGS),-Wl,$(opt))
+
+# Used by link-vmlinux.sh which has special support for um link
+export CFLAGS_vmlinux := $(LINK-y) $(LINK_WRAPS) $(LD_FLAGS_CMDLINE)
+
+# When cleaning we don't include .config, so we don't include
+# TT or skas makefiles and don't clean skas_ptregs.h.
+CLEAN_FILES += linux x.i gmon.out
+
+archclean:
+	@find . \( -name '*.bb' -o -name '*.bbg' -o -name '*.da' \
+		-o -name '*.gcov' \) -type f -print | xargs rm -f
+
+export HEADER_ARCH SUBARCH USER_CFLAGS CFLAGS_NO_HARDENING OS DEV_NULL_PATH
diff --git a/arch/um/lkl/Kconfig b/arch/um/lkl/Kconfig
index 1dae70f16c43..07b3699095ae 100644
--- a/arch/um/lkl/Kconfig
+++ b/arch/um/lkl/Kconfig
@@ -1,6 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 
-config UML_LKL
+menu "LKL-specific options"
+
+config LKL
        def_bool y
        depends on !SMP && !MMU && !COREDUMP && !SECCOMP && !UPROBES && !COMPAT && !USER_RETURN_NOTIFIER
        select ARCH_THREAD_STACK_ALLOCATOR
@@ -59,7 +61,7 @@ config BIG_ENDIAN
        def_bool n
 
 config GENERIC_CSUM
-       def_bool y
+       def_bool LKL
 
 config GENERIC_HWEIGHT
        def_bool y
@@ -83,13 +85,4 @@ config HZ
         int
         default 100
 
-config CONSOLE_LOGLEVEL_QUIET
-	int "quiet console loglevel (1-15)"
-	range 1 15
-	default "4"
-	help
-	  loglevel to use when "quiet" is passed on the kernel commandline.
-
-	  When "quiet" is passed on the kernel commandline this loglevel
-	  will be used as the loglevel. IOW passing "quiet" will be the
-	  equivalent of passing "loglevel=<CONSOLE_LOGLEVEL_QUIET>"
+endmenu
diff --git a/arch/um/lkl/Makefile b/arch/um/lkl/Makefile
new file mode 100644
index 000000000000..45af83c3825a
--- /dev/null
+++ b/arch/um/lkl/Makefile
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0
+
+HOST_DIR := $(ARCH_DIR)/lkl
+include $(HOST_DIR)/auto.conf
+
+SRCARCH := um/lkl
+ARCH_INCLUDE += -I$(srctree)/$(HOST_DIR)/um/include
+LINUXINCLUDE := $(subst $(ARCH_DIR),$(HOST_DIR),$(LINUXINCLUDE)) $(ARCH_INCLUDE)
+KBUILD_CFLAGS += -fno-builtin -D__arch_um__
+KBUILD_DEFCONFIG := lkl_defconfig
+
+ifneq (,$(filter $(OUTPUT_FORMAT),elf64-x86-64 elf32-i386 elf64-x86-64-freebsd elf32-littlearm elf64-littleaarch64))
+KBUILD_CFLAGS += -fPIC
+else ifneq (,$(filter $(OUTPUT_FORMAT),pe-i386 pe-x86-64 ))
+ifneq ($(OUTPUT_FORMAT),pe-x86-64)
+prefix=_
+endif
+# workaround for #include_next<stdarg.h> errors
+LINUXINCLUDE := -isystem $(HOST_DIR)/include/system $(LINUXINCLUDE)
+# workaround for https://gcc.gnu.org/bugzilla/show_bug.cgi?id=52991
+KBUILD_CFLAGS += -mno-ms-bitfields
+else
+$(error Unrecognized platform: $(OUTPUT_FORMAT))
+endif
+
+ifeq ($(shell uname -s), Linux)
+NPROC=$(shell nproc)
+else # e.g., FreeBSD
+NPROC=$(shell sysctl -n hw.ncpu)
+endif
+
+LDFLAGS_vmlinux += -r
+LKL_ENTRY_POINTS := lkl_start_kernel lkl_sys_halt lkl_syscall lkl_trigger_irq \
+	lkl_get_free_irq lkl_put_irq lkl_is_running lkl_bug lkl_printf
+
+ifeq ($(OUTPUT_FORMAT),elf32-i386)
+LKL_ENTRY_POINTS += \
+	__x86.get_pc_thunk.bx __x86.get_pc_thunk.dx __x86.get_pc_thunk.ax \
+	__x86.get_pc_thunk.cx __x86.get_pc_thunk.si __x86.get_pc_thunk.di
+endif
+
+core-y += $(HOST_DIR)/kernel/
+core-y += $(HOST_DIR)/mm/
+
+all: lkl.o
+
+lkl.o: vmlinux
+	$(OBJCOPY) -R .eh_frame -R .syscall_defs $(foreach sym,$(LKL_ENTRY_POINTS),-G$(prefix)$(sym)) vmlinux lkl.o
+
+$(HOST_DIR)/include/generated/uapi/asm/syscall_defs.h: vmlinux
+	$(OBJCOPY) -j .syscall_defs -O binary --set-section-flags .syscall_defs=alloc $< $@
+	$(Q) export tmpfile=$(shell mktemp); \
+	sed 's/\x0//g' $@ > $$tmpfile; mv $$tmpfile $@ ; rm -f $$tmpfile
+
+install: lkl.o headers $(HOST_DIR)/include/generated/uapi/asm/syscall_defs.h
+	@echo "  INSTALL	$(INSTALL_PATH)/lib/lkl.o"
+	@mkdir -p $(INSTALL_PATH)/lib/
+	@cp lkl.o $(INSTALL_PATH)/lib/
+	@$(srctree)/$(HOST_DIR)/scripts/headers_install.py \
+		$(subst -j,-j$(NPROC),$(findstring -j,$(MAKEFLAGS))) \
+		$(INSTALL_PATH)/include
+
+archclean:
+	$(Q)rm -rf $(srctree)/$(HOST_DIR)/include/generated
+	$(Q)$(MAKE) $(clean)=$(boot)
+
+define archhelp
+  echo '  install	- Install library and headers to INSTALL_PATH/{lib,include}'
+endef
diff --git a/arch/um/lkl/auto.conf b/arch/um/lkl/auto.conf
new file mode 100644
index 000000000000..4bfd65a02d73
--- /dev/null
+++ b/arch/um/lkl/auto.conf
@@ -0,0 +1 @@
+export OUTPUT_FORMAT=$(shell $(LD) -r -print-output-format)
diff --git a/arch/um/lkl/kernel/Makefile b/arch/um/lkl/kernel/Makefile
new file mode 100644
index 000000000000..ef489f2f7176
--- /dev/null
+++ b/arch/um/lkl/kernel/Makefile
@@ -0,0 +1,4 @@
+extra-y := vmlinux.lds
+
+obj-y = setup.o threads.o irq.o time.o syscalls.o misc.o console.o \
+	syscalls_32.o cpu.o
diff --git a/arch/um/lkl/mm/Makefile b/arch/um/lkl/mm/Makefile
new file mode 100644
index 000000000000..2af6e3051897
--- /dev/null
+++ b/arch/um/lkl/mm/Makefile
@@ -0,0 +1 @@
+obj-y = bootmem.o
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
