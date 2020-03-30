Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF124197ED8
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZHgTUl6hi9A10JA3mvCTEAZwwaqfASnVptdtlErIkk=; b=mi3+h1fsWuG93g
	DbqcuLR/hjsaL45zFPRpUEO2mNpb9n9Ucfgu6j10HXm+CWs5f6+8zRK8nGnNdQxkGl1ePDMsWyQGi
	R8LfbU6ONJqE70fIlzh6hG5ySIP0f8MKMSV1bHSGkKGekwb0mUHtj5chRWc7CoMMfhAp9FavSUKEM
	RbIn9wZMmJpeWfct3/i5re9K9Xg2Kbm5WrhmQMzXo73YyAuLI3+ZeuIWb7OG6bana1VVEIAraAyXI
	puIeErSoTfGyUUXzoD4TCIemYmIeh0BJtIDItjOLResb26SdKKWWbJUw60B6f+lMjWx5qhtd1rlsi
	6/+8ZFzC4YNrErSKx80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvhn-0004qr-SO; Mon, 30 Mar 2020 14:47:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvhk-0004pa-Hq
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:47:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so6819403plm.1
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=crxY0P9Cw/36E1OJdjjcbQJMYcLGDWiv6136clh8l9U=;
 b=czXjoOWFPBtTtkQvPysXcb0DCDUQVaHz3OtP4zjah1iBNMLwcICDUenm2ux2n5dLAh
 sjgfl1rDa0/iXIxzqOGC/Zvr7/W1Vi8TfrlXBQbluU0qO/0BkIPIrAikKazj4ajetuWN
 Vo5ZVN+oICB8IYuGIwGQcVr7j+XSnMS0dhxhRILrmMO2bf38KhI9/YObNgM/06OScLcq
 H5i7LjzWva1pRF3fWvZNFaKZQg8PuJbQEYEj6cNtk9YJwgt+d/Thum9CfXcDeWnplg+m
 Xaqc/jNSQRVbXO4MBG/+5HUlDNN3JooxR+Qxv8+Vpo/cNrFgT0DqQS+gxAnzupaildbW
 X4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=crxY0P9Cw/36E1OJdjjcbQJMYcLGDWiv6136clh8l9U=;
 b=o7zRxXpcxapehUEngMfbY0jdHFNmedkycBV7n8bx4MoZyS2WYsA+7HCNkBVqQYCseM
 5ntVsZyXy5Lm6WZr+TaZmJDqnFgKvaRqPnoVcWCnDe9CDn3etvkmXsXHG8V5/Qyxd9kS
 8UzKTmjyJKsMPAYlovgg19U1RbfTbBD9OaSXkz7M1cRsprWW7Jfqmx95mhOLoKzanP5M
 BJYIwhYpuoO3Tj4cyG045XtADrAjglR/rySU7Hm6Ch+v1S8X/uZyDDq0XD7BP+OItfcd
 49TH+Dkr17zlDR7AyI/TKS9BJCRThJgiPjVbhtrxHYEgdMJDETyzBxprJoEiEJGXVhH0
 fylQ==
X-Gm-Message-State: ANhLgQ2OVuPBnfqt4ai1CL89ErMDzqMH+SePcKdmU3WxnZFXdI+k+oES
 tCD8m6Jlm5yuDSYrLqop6aE=
X-Google-Smtp-Source: ADFU+vsSZ21zZYhlGeXEbFW7k8n8Gggry75EDOXpm7jg9uCeexs2G2gidB1e0D4ykJVheNYs25jpzA==
X-Received: by 2002:a17:90a:30cf:: with SMTP id
 h73mr16978054pjb.189.1585579675815; 
 Mon, 30 Mar 2020 07:47:55 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id 66sm10507703pfb.150.2020.03.30.07.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:47:55 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 3D9EA202804D6E; Mon, 30 Mar 2020 23:47:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 11/25] um lkl: plug in the build system
Date: Mon, 30 Mar 2020 23:45:43 +0900
Message-Id: <ba2722dbe1536cdebcdc85e101de2212c1544947.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074756_601922_D04051C5 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/um/Kconfig             | 13 +++++++
 arch/um/Makefile            | 19 ++++++++++-
 arch/um/Makefile.um         | 10 ++++++
 arch/um/lkl/Kconfig         | 31 +++++++++++++++--
 arch/um/lkl/Makefile        | 67 +++++++++++++++++++++++++++++++++++++
 arch/um/lkl/auto.conf       |  1 +
 arch/um/lkl/kernel/Makefile |  4 +++
 arch/um/lkl/mm/Makefile     |  1 +
 8 files changed, 143 insertions(+), 3 deletions(-)
 create mode 100644 arch/um/Makefile.um
 create mode 100644 arch/um/lkl/Makefile
 create mode 100644 arch/um/lkl/auto.conf
 create mode 100644 arch/um/lkl/kernel/Makefile
 create mode 100644 arch/um/lkl/mm/Makefile

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 96ab7026b037..17a6bc25b615 100644
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
@@ -20,7 +24,12 @@ config UML
 	select GENERIC_CLOCKEVENTS
 	select HAVE_GCC_PLUGINS
 	select TTY # Needed for line.c
+        help
+	  This mode switches a mode to build a regular kernel executable
+          of UML.
+
 
+if UMMODE_KERN
 config MMU
 	bool
 	default y
@@ -207,6 +216,10 @@ config UML_TIME_TRAVEL_SUPPORT
 
 	  It is safe to say Y, but you probably don't need this.
 
+endif #UMMODE_KERN
+
 endmenu
 
 source "arch/um/drivers/Kconfig"
+
+source "arch/um/lkl/Kconfig"
diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872d..f2a537f700c2 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # This file is included by the global makefile so that you can add your own
 # architecture-specific flags and dependencies.
@@ -44,7 +45,7 @@ HOST_DIR := arch/$(HEADER_ARCH)
 include $(ARCH_DIR)/Makefile-skas
 include $(HOST_DIR)/Makefile.um
 
-core-y += $(HOST_DIR)/um/
+
 
 SHARED_HEADERS	:= $(ARCH_DIR)/include/shared
 ARCH_INCLUDE	:= -I$(srctree)/$(SHARED_HEADERS)
@@ -144,5 +145,21 @@ CLEAN_FILES += linux x.i gmon.out
 archclean:
 	@find . \( -name '*.bb' -o -name '*.bbg' -o -name '*.da' \
 		-o -name '*.gcov' \) -type f -print | xargs rm -f
+	$(Q)rm -rf $(srctree)/$(LKL_DIR)/include/generated
 
 export HEADER_ARCH SUBARCH USER_CFLAGS CFLAGS_NO_HARDENING OS DEV_NULL_PATH
+
+
+
+# SPDX-License-Identifier: GPL-2.0
+# select mode of UML build
+UMMODE ?= kernel
+LKL_DIR := $(ARCH_DIR)/lkl
+
+ifeq ($(UMMODE),kernel)
+	include $(ARCH_DIR)/Makefile.um
+else ifeq ($(UMMODE),library)
+	include $(ARCH_DIR)/lkl/Makefile
+endif
+
+export UMMODE LKL_DIR
diff --git a/arch/um/Makefile.um b/arch/um/Makefile.um
new file mode 100644
index 000000000000..be7ee4d1adde
--- /dev/null
+++ b/arch/um/Makefile.um
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# This file is included by the global makefile so that you can add your own
+# architecture-specific flags and dependencies.
+#
+# Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
+# Licensed under the GPL
+#
+
+core-y += $(HOST_DIR)/um/
diff --git a/arch/um/lkl/Kconfig b/arch/um/lkl/Kconfig
index f7e8d707a12b..c72c40226509 100644
--- a/arch/um/lkl/Kconfig
+++ b/arch/um/lkl/Kconfig
@@ -1,6 +1,25 @@
 # SPDX-License-Identifier: GPL-2.0
 
-config UML_LKL
+menu "LKL-specific options"
+
+config UML
+	bool
+	default y
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
+config LKL
        def_bool y
        depends on !SMP && !MMU && !COREDUMP && !SECCOMP && !UPROBES && !COMPAT && !USER_RETURN_NOTIFIER
        select ARCH_THREAD_STACK_ALLOCATOR
@@ -29,6 +48,12 @@ config OUTPUT_FORMAT
 config ARCH_DMA_ADDR_T_64BIT
        def_bool 64BIT
 
+config X86_64
+       def_bool y if "$(OUTPUT_FORMAT)" = "elf64-x86-64"
+
+config X86_32
+       def_bool y if "$(OUTPUT_FORMAT)" = "elf32-i386"
+
 config 64BIT
        def_bool n
 
@@ -39,7 +64,7 @@ config BIG_ENDIAN
        def_bool n
 
 config GENERIC_CSUM
-       def_bool y
+       def_bool LKL
 
 config GENERIC_HWEIGHT
        def_bool y
@@ -54,3 +79,5 @@ config RWSEM_GENERIC_SPINLOCK
 config HZ
         int
         default 100
+
+endmenu
diff --git a/arch/um/lkl/Makefile b/arch/um/lkl/Makefile
new file mode 100644
index 000000000000..e1161fa3fb63
--- /dev/null
+++ b/arch/um/lkl/Makefile
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+
+include $(LKL_DIR)/auto.conf
+
+# fixup CFLAGS of um build
+KBUILD_CFLAGS := $(subst $(CFLAGS),,$(KBUILD_CFLAGS))
+
+SRCARCH := um/lkl
+ARCH_INCLUDE += -I$(srctree)/$(LKL_DIR)/um/include
+LINUXINCLUDE := $(subst $(ARCH_DIR),$(LKL_DIR),$(LINUXINCLUDE)) $(ARCH_INCLUDE)
+KBUILD_CFLAGS += -fno-builtin
+KBUILD_DEFCONFIG := lkl_defconfig
+
+ifneq (,$(filter $(OUTPUT_FORMAT),elf64-x86-64 elf32-i386 elf64-x86-64-freebsd elf32-littlearm elf64-littleaarch64))
+KBUILD_CFLAGS += -fPIC
+else ifneq (,$(filter $(OUTPUT_FORMAT),pe-i386 pe-x86-64 ))
+ifneq ($(OUTPUT_FORMAT),pe-x86-64)
+prefix=_
+endif
+# workaround for #include_next<stdarg.h> errors
+LINUXINCLUDE := -isystem $(LKL_DIR)/include/system $(LINUXINCLUDE)
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
+core-y += $(LKL_DIR)/kernel/
+core-y += $(LKL_DIR)/mm/
+
+all: lkl.o
+
+lkl.o: vmlinux
+	$(OBJCOPY) -R .eh_frame -R .syscall_defs $(foreach sym,$(LKL_ENTRY_POINTS),-G$(prefix)$(sym)) vmlinux lkl.o
+
+$(LKL_DIR)/include/generated/uapi/asm/syscall_defs.h: vmlinux
+	$(OBJCOPY) -j .syscall_defs -O binary --set-section-flags .syscall_defs=alloc $< $@
+	$(Q) export tmpfile=$(shell mktemp); \
+	sed 's/\x0//g' $@ > $$tmpfile; mv $$tmpfile $@ ; rm -f $$tmpfile
+
+install: lkl.o headers $(LKL_DIR)/include/generated/uapi/asm/syscall_defs.h
+	@echo "  INSTALL	$(INSTALL_PATH)/lib/lkl.o"
+	@mkdir -p $(INSTALL_PATH)/lib/
+	@cp lkl.o $(INSTALL_PATH)/lib/
+	$(Q)$(srctree)/$(LKL_DIR)/scripts/headers_install.py \
+		$(subst -j,-j$(NPROC),$(findstring -j,$(MAKEFLAGS))) \
+		$(INSTALL_PATH)/include
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
