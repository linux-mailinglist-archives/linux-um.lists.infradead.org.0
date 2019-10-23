Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC91DE1162
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DBjMmyew+1/QS4K2Xsp6LV7V9SoXV0PDkkUXiBng/g=; b=FVLYDsvaTNXYhN
	OR8zZ/D2U7kutgHxD4/XJMwyRuK659gFu59dUT09Y3O6u4tOuLyAr3o+sFqUzxW4rA+tjgKT0BUXv
	nPWqFuDMgt6Q0d98puHPMSSoAUur70bM1PrgeqfHHRlQel3upv/WKMy9Bk1jrYYIeFFN4hJwvb8hw
	wDHV6rT9LHFn/SNIGpnk/JYy8GPBWKnfhvMWt70FA3UqOX9i35ivdjQkU3H6PS0DYQsBCObdAdRG6
	XRP+hiHUKr1loCyqPji0BWbSH5yZq18AqgGYzU3QQ33GE9JNTkwBgZGHwDvMAsj5Fgg3fTXq5loSJ
	o/ojyXT/Vw3mNyAYpIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kn-0002AL-GV; Wed, 23 Oct 2019 05:00:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kf-0001NR-Ht
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so12120823pfw.2
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TmdSaLTq0vNTrUGnbn5+NNFvaJUDoYCphAwBcbht02s=;
 b=tY4dcbTJCcnSgotnBO7aohaW337vVhxtoVWbOpkipiZbKDc38aTXjK0w/KJjOIoN/I
 DaQkMjaEsPm9iCUo0K9Y+XyvjWmiT56dLzG22dNutXgmiXLiO/EIfNkdpSlgD8cobrdH
 Y+6NzQBXZXVsUQMheH21ZhbeMtrFVfcYtygleeOpbkWK2+9RDwSjsOi527eZGsKASZ86
 UgeOi/ho0YObHAwGtFb2QCOkK5JL3SHBcSMD+AAqsNu3Dle+ngE0z8OD0qbh1L9wxR8W
 2kfYAc7C+qkgV5dtgHEyK69OF3aQTm8xWovnwcJ2wClY655ZRluY2OvElLfeH86n+Px9
 SyOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TmdSaLTq0vNTrUGnbn5+NNFvaJUDoYCphAwBcbht02s=;
 b=IXeVVqANKs/0KOti16FXOV+jYzCqBpRYk2TUhHbv85HayKapVI6SNtv4naQ9pAGmAS
 NuHET5ZA7UMLumk4CQpZPG3MT0oYbuiNqy/OUdHTvXP2GQqnNnkMylvsQfV0VD1qwpGa
 0dOnlwJlEnlKXcfzZQ/GzsvO5jEyjn73gQDWyOA6efjTB2zai5wXAgfwyLeIQQyYd+xg
 tBbEYMPPKJofZeoi8EJwx3ZX07O3DYN5g5T+sr653y2dLaICiU3VtNd1+CXiby8hc1Er
 4TcZnBIAv56IEd2VvuepRgI5HjHf4qBeG4OvwqBpdPOZTKlfXT08nTiiECiUEYbMweDa
 I1lA==
X-Gm-Message-State: APjAAAVCyslF1LULysgrGinnfBFPo1sZ9qt1+2pAJMFgvsDxbmjsOQm7
 EDzPuNv4d+8bC+OMTAXiX6A=
X-Google-Smtp-Source: APXvYqzNJKd8su7PfBN3+0Cza1gjZsLKCJ10eXShg+Oly6widh0H2lGygAGsReBkDDughhUDpN6TYA==
X-Received: by 2002:a63:1311:: with SMTP id i17mr7769738pgl.343.1571806804520; 
 Tue, 22 Oct 2019 22:00:04 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id o20sm4771267pfp.16.2019.10.22.22.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:02 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 9281E20199584A; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 44/47] um lkl: use ARCH=um SUBARCH=lkl for tools/lkl
Date: Wed, 23 Oct 2019 13:38:18 +0900
Message-Id: <621ee80e30110730997be90b99bde401a36e0656.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220005_601124_9A13F167 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Akira Moroo <retrage01@gmail.com>

This unifies LKL code under arch/um so that we can treat LKL as one of
mode inside UML.

Signed-off-by: Akira Moroo <retrage01@gmail.com>
---
 arch/um/Kconfig                               |  50 ++++----
 arch/um/Makefile                              | 115 ++----------------
 arch/um/auto.conf                             |   0
 arch/um/include/asm/Kbuild                    |   5 +
 arch/um/lkl/um/Makefile                       |   1 +
 .../um/lkl/um/include/sysdep/kernel-offsets.h |   4 +
 6 files changed, 44 insertions(+), 131 deletions(-)
 create mode 100644 arch/um/auto.conf
 create mode 100644 arch/um/lkl/um/Makefile
 create mode 100644 arch/um/lkl/um/include/sysdep/kernel-offsets.h

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 3c3adfc486f2..d7e9af63cf8f 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -5,23 +5,23 @@ menu "UML-specific options"
 config UML
 	bool
 	default y
-	select ARCH_HAS_KCOV
-	select ARCH_NO_PREEMPT
-	select HAVE_ARCH_AUDITSYSCALL
-	select HAVE_ARCH_SECCOMP_FILTER
-	select HAVE_UID16
-	select HAVE_FUTEX_CMPXCHG if FUTEX
-	select HAVE_DEBUG_KMEMLEAK
-	select HAVE_DEBUG_BUGVERBOSE
-	select GENERIC_IRQ_SHOW
-	select GENERIC_CPU_DEVICES
-	select GENERIC_CLOCKEVENTS
-	select HAVE_GCC_PLUGINS
-	select TTY # Needed for line.c
+	select ARCH_HAS_KCOV if !UML_LKL
+	select ARCH_NO_PREEMPT if !UML_LKL
+	select HAVE_ARCH_AUDITSYSCALL if !UML_LKL
+	select HAVE_ARCH_SECCOMP_FILTER if !UML_LKL
+	select HAVE_UID16 if !UML_LKL
+	select HAVE_FUTEX_CMPXCHG if (FUTEX && !UML_LKL)
+	select HAVE_DEBUG_KMEMLEAK if !UML_LKL
+	select HAVE_DEBUG_BUGVERBOSE if !UML_LKL
+	select GENERIC_IRQ_SHOW if !UML_LKL
+	select GENERIC_CPU_DEVICES if !UML_LKL
+	select GENERIC_CLOCKEVENTS if !UML_LKL
+	select HAVE_GCC_PLUGINS if !UML_LKL
+	select TTY if !UML_LKL # Needed for line.c
 
 config MMU
 	bool
-	default y
+	default y if !UML_LKL
 
 config NO_IOMEM
 	def_bool y
@@ -34,20 +34,20 @@ config SBUS
 
 config TRACE_IRQFLAGS_SUPPORT
 	bool
-	default y
+	default y if !UML_LKL
 
 config LOCKDEP_SUPPORT
 	bool
-	default y
+	default y if !UML_LKL
 
 config STACKTRACE_SUPPORT
 	bool
-	default y
-	select STACKTRACE
+	default y if !UML_LKL
+	select STACKTRACE if !UML_LKL
 
 config GENERIC_CALIBRATE_DELAY
 	bool
-	default y
+	default y if !UML_LKL
 
 config HZ
 	int
@@ -73,12 +73,12 @@ config STATIC_LINK
 
 config LD_SCRIPT_STATIC
 	bool
-	default y
+	default y if !UML_LKL
 	depends on STATIC_LINK
 
 config LD_SCRIPT_DYN
 	bool
-	default y
+	default y if !UML_LKL
 	depends on !LD_SCRIPT_STATIC
 	select MODULE_REL_CRCS if MODVERSIONS
 
@@ -106,7 +106,7 @@ config HOSTFS
 config MCONSOLE
 	bool "Management console"
 	depends on PROC_FS
-	default y
+	default y if !UML_LKL
 	help
 	  The user mode linux management console is a low-level interface to
 	  the kernel, somewhat like the i386 SysRq interface.  Since there is
@@ -169,7 +169,7 @@ config PGTABLE_LEVELS
 	default 2
 
 config SECCOMP
-	def_bool y
+	def_bool y if !UML_LKL
 	prompt "Enable seccomp to safely compute untrusted bytecode"
 	---help---
 	  This kernel feature is useful for number crunching applications
@@ -198,4 +198,6 @@ config UML_TIME_TRAVEL_SUPPORT
 
 endmenu
 
-source "arch/um/drivers/Kconfig"
+if !UML_LKL
+	source "arch/um/drivers/Kconfig"
+endif
diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872d..21fff60d63ea 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -23,10 +23,6 @@ OS := $(shell uname -s)
 # features.
 SHELL := /bin/bash
 
-core-y			+= $(ARCH_DIR)/kernel/		\
-			   $(ARCH_DIR)/drivers/		\
-			   $(ARCH_DIR)/os-$(OS)/
-
 MODE_INCLUDE	+= -I$(srctree)/$(ARCH_DIR)/include/shared/skas
 
 HEADER_ARCH 	:= $(SUBARCH)
@@ -35,114 +31,19 @@ ifneq ($(filter $(SUBARCH),x86 x86_64 i386),)
 	HEADER_ARCH := x86
 endif
 
-ifdef CONFIG_64BIT
-	KBUILD_CFLAGS += -mcmodel=large
-endif
-
 HOST_DIR := arch/$(HEADER_ARCH)
 
+ifneq ($(filter $(HEADER_ARCH),lkl),)
+	HOST_DIR := $(ARCH_DIR)/$(HEADER_ARCH)
+endif
+
 include $(ARCH_DIR)/Makefile-skas
 include $(HOST_DIR)/Makefile.um
 
 core-y += $(HOST_DIR)/um/
 
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
+ifneq ($(SUBARCH),lkl)
+  include $(ARCH_DIR)/Makefile.um
+endif
 
-export HEADER_ARCH SUBARCH USER_CFLAGS CFLAGS_NO_HARDENING OS DEV_NULL_PATH
+export HEADER_ARCH SUBARCH
diff --git a/arch/um/auto.conf b/arch/um/auto.conf
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index 398006d27e40..6c2aa280f1d9 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -17,6 +17,11 @@ generic-y += kdebug.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
+generic-$(UML_LKL) += mmu.h
+generic-$(UML_LKL) += mmu_context.h
+generic-$(UML_LKL) += module.h
+generic-$(UML_LKL) += msgbuf.h
+generic-$(UML_LKL) += page.h
 generic-y += param.h
 generic-y += pci.h
 generic-y += percpu.h
diff --git a/arch/um/lkl/um/Makefile b/arch/um/lkl/um/Makefile
new file mode 100644
index 000000000000..f66554cd5c45
--- /dev/null
+++ b/arch/um/lkl/um/Makefile
@@ -0,0 +1 @@
+# SPDX-License-Identifier: GPL-2.0
diff --git a/arch/um/lkl/um/include/sysdep/kernel-offsets.h b/arch/um/lkl/um/include/sysdep/kernel-offsets.h
new file mode 100644
index 000000000000..27004731b0ab
--- /dev/null
+++ b/arch/um/lkl/um/include/sysdep/kernel-offsets.h
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Dummy kernel-offsets.h file. Required by kbuild and ready to be used
+ * - hint!
+ */
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
