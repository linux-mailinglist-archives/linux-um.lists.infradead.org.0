Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F63F16F481
	for <lists+linux-um@lfdr.de>; Wed, 26 Feb 2020 01:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fC/oAP65MCQpdbvaEhfHfx953mVolkYvpnMt06ink/g=; b=qk62VI008eFg1L
	NL5V58Dbc1ZzB7UG8dthi3QrM4DA/m4kSfJlsQVT5ceHW5ykMdIEGg2osrCOSMMyZJqZDcvZrpAXD
	/P78nvRIWBryo6G1cIr7AQlMiEvxFEFZQsrVIbAUpU33yMsDeP47o79nnsI2sBJLTRLayf1tuSURL
	MTfgy8NGXtx8IkAcxwbxciW8zSbqCudSj+Cmff+TtJgRImIKLi87STqmAfV3mSceOjkXq+PFFiJ50
	ikSSQySla1IFuM3G9C4dZ9sc+Rp3jXkthPmUstLrChek9ukfa5Sx1gNmxGgYWV0TGqTKM8uSM+vh8
	gAhs9kWJ7+CsUD0zSJ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kqK-0002ag-TG; Wed, 26 Feb 2020 00:46:28 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kqH-0002aK-Sh
 for linux-um@lists.infradead.org; Wed, 26 Feb 2020 00:46:27 +0000
Received: by mail-pg1-x549.google.com with SMTP id r192so606377pgr.6
 for <linux-um@lists.infradead.org>; Tue, 25 Feb 2020 16:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=qg/mLm47H3J3LUrDOT9vShpF52qrmnDuVDLkcH3D2w8=;
 b=r8iqvzjBFD4Lp6WY306uxCFszfwb/93bmu0RHdjzb6Wn4+y1c4+yJ30PyPnruGlsYl
 zM8WBpNdGg/E2TMJEVm7ERiUFHMexUc+msOLmOwR5vTalh5tZK+zdE06tlpBdGs57Q6p
 MrG7zYHRPCuS/7dUaBbMJ9zqBFRoQxzBaQ0oTfwKViTdq4tmc0Ft80TXAd3BliXja3Vc
 y/cgIXQIaoRob/MeR/BIVk1B0TcWZtHXllltzLm7I5I0oVDOtZWLLIP8JDbWB8EBEKDm
 D6+vlLisM3FqFoL5wBsJA+J7/g2LbkMYYA86xbBZPfFmco8b0QcFTfPoXXiTNp7eaCSe
 LikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=qg/mLm47H3J3LUrDOT9vShpF52qrmnDuVDLkcH3D2w8=;
 b=HS5AeWjEafmLK8brmFhHL1ZMzxMb7US8qyUW+wLvVCYtEs8E0a3EPPOX348pdEp3Yb
 w9KEddSOtV/z2IL2iRl1VuvGZ8TF1BQ4Q6SmhwewEYVEI9mM+vTBvxchwg64Dh0d9jsW
 qvzl+g/t9QskeGfHF80tMzfN5Y5fAWWsRKCRgq0ImR/AmEPv5xhCcsnJKtvdXZO0K0X+
 qDiZJtSZz8VoJhCKiciCIm+L+IrL1U+gcPejBy9A3/m+kq4A1VntS/k+QJ44ugCEe5ns
 77jy34uPc3FWTgyfP7GNJsGh3AvpjNayQQwTsvg7JASys2LexTyBgaY65VnKQUX4Dq0k
 OaRA==
X-Gm-Message-State: APjAAAUqTb0vlpPAds9VPObvMnVb1BXYt/ynd1EzBqqYPZGd3sL5MP1S
 ZIO+rfFWwksinFEiNllQ/IRMUwjuK09O5NinXD8=
X-Google-Smtp-Source: APXvYqzSgsd6BXLQ0a/vH8rOV628YFASFocMEi0zrxgdlgXuo1I1U4lD47oVJEOzRnlsPavCKFiLbuP54wHmUXHXmvk=
X-Received: by 2002:a63:770d:: with SMTP id s13mr1108426pgc.7.1582677984725;
 Tue, 25 Feb 2020 16:46:24 -0800 (PST)
Date: Tue, 25 Feb 2020 16:46:08 -0800
Message-Id: <20200226004608.8128-1-trishalfonso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH] UML: add support for KASAN under x86_64
From: Patricia Alfonso <trishalfonso@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 aryabinin@virtuozzo.com, dvyukov@google.com, brendanhiggins@google.com, 
 davidgow@google.com, johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_164625_954482_CB4F2F78 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Make KASAN run on User Mode Linux on x86_64.

Depends on Constructor support in UML - "[RFC PATCH] um:
implement CONFIG_CONSTRUCTORS for modules"
(https://patchwork.ozlabs.org/patch/1234551/) by Johannes Berg.

The location of the KASAN shadow memory, starting at
KASAN_SHADOW_OFFSET, can be configured using the
KASAN_SHADOW_OFFSET option. UML uses roughly 18TB of address
space, and KASAN requires 1/8th of this. The default location of
this offset is 0x7fff8000 as suggested by Dmitry Vyukov. There is
usually enough free space at this location; however, it is a config
option so that it can be easily changed if needed.

The UML-specific KASAN initializer uses mmap to map
the roughly 2.25TB of shadow memory to the location defined by
KASAN_SHADOW_OFFSET. kasan_init() utilizes constructors to initialize
KASAN before main().

Disable stack instrumentation on UML via KASAN_STACK config option to
avoid false positive KASAN reports.

Signed-off-by: Patricia Alfonso <trishalfonso@google.com>
---
 arch/um/Kconfig                  | 13 +++++++++++++
 arch/um/Makefile                 |  6 ++++++
 arch/um/include/asm/common.lds.S |  1 +
 arch/um/include/asm/kasan.h      | 32 ++++++++++++++++++++++++++++++++
 arch/um/kernel/dyn.lds.S         |  5 ++++-
 arch/um/kernel/mem.c             | 18 ++++++++++++++++++
 arch/um/os-Linux/mem.c           | 22 ++++++++++++++++++++++
 arch/um/os-Linux/user_syms.c     |  4 ++--
 arch/x86/um/Makefile             |  3 ++-
 arch/x86/um/vdso/Makefile        |  3 +++
 lib/Kconfig.kasan                |  2 +-
 11 files changed, 104 insertions(+), 5 deletions(-)
 create mode 100644 arch/um/include/asm/kasan.h

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 0917f8443c28..fb2ad1fb05fd 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -8,6 +8,7 @@ config UML
 	select ARCH_HAS_KCOV
 	select ARCH_NO_PREEMPT
 	select HAVE_ARCH_AUDITSYSCALL
+	select HAVE_ARCH_KASAN if X86_64
 	select HAVE_ARCH_SECCOMP_FILTER
 	select HAVE_ASM_MODVERSIONS
 	select HAVE_UID16
@@ -200,6 +201,18 @@ config UML_TIME_TRAVEL_SUPPORT
 
 	  It is safe to say Y, but you probably don't need this.
 
+config KASAN_SHADOW_OFFSET
+	hex
+	depends on KASAN
+	default 0x7fff8000
+	help
+	  This is the offset at which the ~2.25TB of shadow memory is
+	  mapped and used by KASAN for memory debugging. This can be any
+	  address that has at least KASAN_SHADOW_SIZE(total address space divided
+	  by 8) amount of space so that the KASAN shadow memory does not conflict
+	  with anything. The default is 0x7fff8000, as it fits into immediate of
+	  most instructions.
+
 endmenu
 
 source "arch/um/drivers/Kconfig"
diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872d..28fe7a9a1858 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -75,6 +75,12 @@ USER_CFLAGS = $(patsubst $(KERNEL_DEFINES),,$(patsubst -I%,,$(KBUILD_CFLAGS))) \
 		-D_FILE_OFFSET_BITS=64 -idirafter $(srctree)/include \
 		-idirafter $(objtree)/include -D__KERNEL__ -D__UM_HOST__
 
+# Kernel config options are not included in USER_CFLAGS, but the option for KASAN
+# should be included if the KASAN config option was set.
+ifdef CONFIG_KASAN
+	USER_CFLAGS+=-DCONFIG_KASAN=y
+endif
+
 #This will adjust *FLAGS accordingly to the platform.
 include $(ARCH_DIR)/Makefile-os-$(OS)
 
diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index eca6c452a41b..731f8c8422a2 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -83,6 +83,7 @@
   }
   .init_array : {
 	__init_array_start = .;
+	*(.kasan_init)
 	*(.init_array)
 	__init_array_end = .;
   }
diff --git a/arch/um/include/asm/kasan.h b/arch/um/include/asm/kasan.h
new file mode 100644
index 000000000000..2b81e7bcd4af
--- /dev/null
+++ b/arch/um/include/asm/kasan.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_UM_KASAN_H
+#define __ASM_UM_KASAN_H
+
+#include <linux/init.h>
+#include <linux/const.h>
+
+#define KASAN_SHADOW_OFFSET _AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
+
+/* used in kasan_mem_to_shadow to divide by 8 */
+#define KASAN_SHADOW_SCALE_SHIFT 3
+
+#ifdef CONFIG_X86_64
+#define KASAN_HOST_USER_SPACE_END_ADDR 0x00007fffffffffffUL
+/* KASAN_SHADOW_SIZE is the size of total address space divided by 8 */
+#define KASAN_SHADOW_SIZE ((KASAN_HOST_USER_SPACE_END_ADDR + 1) >> \
+			KASAN_SHADOW_SCALE_SHIFT)
+#else
+#error "KASAN_SHADOW_SIZE is not defined for this sub-architecture"
+#endif /* CONFIG_X86_64 */
+
+#define KASAN_SHADOW_START (KASAN_SHADOW_OFFSET)
+#define KASAN_SHADOW_END (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
+
+#ifdef CONFIG_KASAN
+void kasan_init(void);
+void kasan_map_memory(void *start, unsigned long len);
+#else
+static inline void kasan_init(void) { }
+#endif /* CONFIG_KASAN */
+
+#endif /* __ASM_UM_KASAN_H */
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index f5001481010c..d91bdb2c3143 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -103,7 +103,10 @@ SECTIONS
      be empty, which isn't pretty.  */
   . = ALIGN(32 / 8);
   .preinit_array     : { *(.preinit_array) }
-  .init_array     : { *(.init_array) }
+  .init_array     : {
+    *(.kasan_init)
+    *(.init_array)
+  }
   .fini_array     : { *(.fini_array) }
   .data           : {
     INIT_TASK_DATA(KERNEL_STACK_SIZE)
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index 30885d0b94ac..7b0d028aa079 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -18,6 +18,24 @@
 #include <kern_util.h>
 #include <mem_user.h>
 #include <os.h>
+#include <linux/sched/task.h>
+
+#ifdef CONFIG_KASAN
+void kasan_init(void)
+{
+	/*
+	 * kasan_map_memory will map all of the required address space and
+	 * the host machine will allocate physical memory as necessary.
+	 */
+	kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
+	init_task.kasan_depth = 0;
+	os_info("KernelAddressSanitizer initialized\n");
+}
+
+static void (*kasan_init_ptr)(void)
+__section(.kasan_init) __used
+= kasan_init;
+#endif
 
 /* allocated in paging_init, zeroed in mem_init, and unchanged thereafter */
 unsigned long *empty_zero_page = NULL;
diff --git a/arch/um/os-Linux/mem.c b/arch/um/os-Linux/mem.c
index 3c1b77474d2d..8530b2e08604 100644
--- a/arch/um/os-Linux/mem.c
+++ b/arch/um/os-Linux/mem.c
@@ -17,6 +17,28 @@
 #include <init.h>
 #include <os.h>
 
+/*
+ * kasan_map_memory - maps memory from @start with a size of @len.
+ * The allocated memory is filled with zeroes upon success.
+ * @start: the start address of the memory to be mapped
+ * @len: the length of the memory to be mapped
+ *
+ * This function is used to map shadow memory for KASAN in uml
+ */
+void kasan_map_memory(void *start, size_t len)
+{
+	if (mmap(start,
+		 len,
+		 PROT_READ|PROT_WRITE,
+		 MAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE|MAP_NORESERVE,
+		 -1,
+		 0) == MAP_FAILED) {
+		os_info("Couldn't allocate shadow memory: %s\n.",
+			strerror(errno));
+		exit(1);
+	}
+}
+
 /* Set by make_tempfile() during early boot. */
 static char *tempdir = NULL;
 
diff --git a/arch/um/os-Linux/user_syms.c b/arch/um/os-Linux/user_syms.c
index 715594fe5719..cb667c9225ab 100644
--- a/arch/um/os-Linux/user_syms.c
+++ b/arch/um/os-Linux/user_syms.c
@@ -27,10 +27,10 @@ EXPORT_SYMBOL(strstr);
 #ifndef __x86_64__
 extern void *memcpy(void *, const void *, size_t);
 EXPORT_SYMBOL(memcpy);
-#endif
-
 EXPORT_SYMBOL(memmove);
 EXPORT_SYMBOL(memset);
+#endif
+
 EXPORT_SYMBOL(printf);
 
 /* Here, instead, I can provide a fake prototype. Yes, someone cares: genksyms.
diff --git a/arch/x86/um/Makefile b/arch/x86/um/Makefile
index 33c51c064c77..7dbd76c546fe 100644
--- a/arch/x86/um/Makefile
+++ b/arch/x86/um/Makefile
@@ -26,7 +26,8 @@ else
 
 obj-y += syscalls_64.o vdso/
 
-subarch-y = ../lib/csum-partial_64.o ../lib/memcpy_64.o ../entry/thunk_64.o
+subarch-y = ../lib/csum-partial_64.o ../lib/memcpy_64.o ../entry/thunk_64.o \
+	../lib/memmove_64.o ../lib/memset_64.o
 
 endif
 
diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
index 0caddd6acb22..450efa0fb694 100644
--- a/arch/x86/um/vdso/Makefile
+++ b/arch/x86/um/vdso/Makefile
@@ -3,6 +3,9 @@
 # Building vDSO images for x86.
 #
 
+# do not instrument on vdso because KASAN is not compatible with user mode
+KASAN_SANITIZE			:= n
+
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT                := n
 
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 81f5464ea9e1..5b54f3c9a741 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -125,7 +125,7 @@ config KASAN_STACK_ENABLE
 
 config KASAN_STACK
 	int
-	default 1 if KASAN_STACK_ENABLE || CC_IS_GCC
+	default 1 if (KASAN_STACK_ENABLE || CC_IS_GCC) && !UML
 	default 0
 
 config KASAN_S390_4_LEVEL_PAGING
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
