Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEFEE110D
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibuxAJKNJ6Ia4MELjHCCZJoG1DoJhFYod+6tFY95mwQ=; b=AdobnPT9uf0+pf
	2FPsXyq3Z0v5uXCL8bUV+Ye1fzxineh1WqNPXe+ZsNlu4UX2SFVAFTbyfeEOupzTXWxFPBA+wpnYa
	SDff00st/jG36D02f/MN5uSoObZybPCGOe/qOWNtZKy4+uYQXlm4gFPO6Xls8PfBKTt+QRZJGPfYj
	E5rGBXVOWcxPMRvJwqmUyzH3c+GlmIJ9cyPBswu3SFGR1C40tvBwtGEB0zLt7XzwHcR14RQh/Eq8Z
	YmBA62loyeXcQQ95julma0IxvHRXcQ55m/IQIjdG0J2iBIyx+hbQlDJ7vbMLmNlP6bNkvmoAzNIEv
	zpXnLdiylnNiLF2wp8DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QO-0001tT-Pg; Wed, 23 Oct 2019 04:39:08 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QI-0001lj-Qc
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id j11so9447515plk.3
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pbgcyPNeuDArbYd18x6IBkIVHb3/sGdaB6bI1nBhvI4=;
 b=Cc6QBbvokXz3IXqjcffqKU5TcQT/clehbIz5L1q0D0cfIKhnxDgGJS+1Y//3cx9iBI
 f3Lkrv/woAOzsIvqz8a+5/EbR8Cp0hfh4FSYeept2wT+giXOMfszmZ+2yk799qeoxblq
 k41KONRd9GvZBJzmSgPVm9oYw0tUH5mO9/X1L5iK6yf7PMhurte8BhEkXUXYmywg8Xx2
 MMZfi32ufe9DM08EfVBTK5RyHH15IKr7x0r0c0qkM4E9LFTt6Jc3JcBEgQza5uDElGvW
 KEvSYgnNAH/x09usp7JyZdadzbUNPbbssKO9GL5xUnQgkiTq9+E66DGyrypdWeHz0oaI
 2nmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pbgcyPNeuDArbYd18x6IBkIVHb3/sGdaB6bI1nBhvI4=;
 b=QbJ8w6p+EKovUBSDECuqrmrFDmSuks3+DTZRkq07TjNE3TK1QjjAYXxrOc429A8P56
 SYHKp+Rgs4ZVY3c9tZKTfI7UItxWbJrpQ76mZYL2Brzjej+t1fbcENrVRjIP2agmdF3t
 qgUzamzQmCjfXIKy4evJqiiFO3cwHdRsRGsH4xXKglXz+sHJEUJPePrbNwOA2cJWkBMh
 tfMbra1WrWEv3jisX6Vi7za4tViYbS6oOyFF8zDu/RUJIBgqnDbxeaUvh2C2ioTkXOiQ
 5JZoos4hCqikQws4kuaWiQZGsHBCakpLcgRgQPDPT968/FQAVw6/7ryr6xcWmOz0UVZf
 uXVg==
X-Gm-Message-State: APjAAAUQ9U0LhbzWVb7Y3OCPrt6U1HzAUEOYS8eGI/+1zUqponeuwGOF
 8d4M2IL9CsKpMc+DrtZwAFQ=
X-Google-Smtp-Source: APXvYqzHbLnrK5unW2oqL6r01s/BzGW8FvAkpt81TbR6x27Ax5+dMpCyROoHPJdJiG3oyqWoNfRgMw==
X-Received: by 2002:a17:902:aa08:: with SMTP id
 be8mr7242299plb.95.1571805541675; 
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id q26sm18555928pgk.60.2019.10.22.21.38.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 8B61E20199580C; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 13/47] lkl: plug in the build system
Date: Wed, 23 Oct 2019 13:37:47 +0900
Message-Id: <fbc2a747dbfe5520828aabc5d0a7f190455b9d9c.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213902_871506_DBCCBC5C 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

From: Octavian Purdila <tavi.purdila@gmail.com>

Basic Makefiles for building LKL. Add a new architecture specific
target for installing the resulting library files and headers.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/Makefile.um         | 117 ++++++++++++++++++++++++++++++++++++
 arch/um/lkl/auto.conf       |   1 +
 arch/um/lkl/kernel/Makefile |   4 ++
 arch/um/lkl/mm/Makefile     |   1 +
 4 files changed, 123 insertions(+)
 create mode 100644 arch/um/Makefile.um
 create mode 100644 arch/um/lkl/auto.conf
 create mode 100644 arch/um/lkl/kernel/Makefile
 create mode 100644 arch/um/lkl/mm/Makefile

diff --git a/arch/um/Makefile.um b/arch/um/Makefile.um
new file mode 100644
index 000000000000..24a088e5df04
--- /dev/null
+++ b/arch/um/Makefile.um
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# This file is included by the global makefile so that you can add your own
+# architecture-specific flags and dependencies.
+#
+# Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
+# Licensed under the GPL
+#
+
+core-y			+= $(ARCH_DIR)/kernel/		\
+			 $(ARCH_DIR)/drivers/		\
+			 $(ARCH_DIR)/os-$(OS)/
+
+ifdef CONFIG_64BIT
+	KBUILD_CFLAGS += -mcmodel=large
+endif
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
+		-idirafter $(obj)/include -D__KERNEL__ -D__UM_HOST__
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
+export USER_CFLAGS CFLAGS_NO_HARDENING OS DEV_NULL_PATH
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
