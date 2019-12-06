Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06E114ABD
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 03:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yovB+1TIabUd1NVtDAZGVELAesKOYvNkMXebSZl8Y6I=; b=TJWrY2hjq7q2OX
	vCVuLwADbZwotK1LUR69cMJReplJF4z+RQ85yaTddaAeKq1eDFE6fxgtWovsig5Y8zT/G6rHiiCEf
	Ctl4iy7uPxm5DM4mMDxhKPEiVCXczwsddxm8sW/mh2JW7odntbWdVUAk1YAxjGL6CkJlvcJYkjGqC
	fXc/JOsfjyPvDjKbMZGnlv8LlvCxjsNx2N79JdsevzgrnfkGl4G2seFEVDfHxVgGXvKiTAZhHClew
	VPew1dbm4DgTDLLGeTSrJIGdZrBpTSZfmizEZayLXzKteNvPVQ4BBtvrj9Rn/w95PXN12kwXd92A0
	sMZ+z8ZK2IG7LPDOAmmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id2wb-0007OC-0F; Fri, 06 Dec 2019 02:02:09 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id2wW-0007MN-Sp
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 02:02:07 +0000
Received: by mail-qv1-xf49.google.com with SMTP id d12so3305952qvj.16
 for <linux-um@lists.infradead.org>; Thu, 05 Dec 2019 18:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Uoiqh1iH4v2ToeU0Yb3li8l0pRuRjEA756eXvPEi7Mo=;
 b=I+URPTph6l0Gjs3Ty5lna/SaVY6dGnLiMvedep9LVzRlBnXh4BlRhEru9kNSK7kAgA
 Sr1FEq019Zb8B8NkmYgdQWR06k1Sab84vy1YdjKtBrGGM1qOKfylPpP3BqK3Pgym8RNA
 V9crMh95vDkLIDuTwMaaga8rAriY4ZWzjpNhS01LZXT32PoWm8cRD+bZ8KYKK+KsZlxR
 ZlkEzFee724eKYHofmb5Yt/qrIUvfuc1tFAHZgZIQ5BfLLiO+rxyBGEPUjk8tkA3B6JI
 ybGslqwWeP8xp47xYVzGKoXYTseDCW7VmHcitBDxe0d4KtQk4zZJH5HYnu+ZfiEuFxC1
 YzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Uoiqh1iH4v2ToeU0Yb3li8l0pRuRjEA756eXvPEi7Mo=;
 b=bdrhwbtGvMHOf+YfRRk4HJ0v6uAr70roGdYaguBggXxGYpYnJVBr6Uve7X0MQLBUiB
 8YFNI7+XzijwLGt6VYIYaWCG1uYB5imcvVVu+bhlHgdhTG7t9XSbjKA/W47lwjg969qL
 +vadXGsQJ1wjW2ZP5Ve0ZfwmOryEFteMuhFZbMEzyWi1X8UFKAd5UAWAI6CDAWM77pX/
 WqaRkfxwy7gKlIqezFtYTYLhsGpdHfBikYvKrMU9cjWF/tyHcb62XLHHnoJeS+5Ye6nF
 GxFrAaD73/mKXpmOFUttvmwS7cAxZR5BSuINmYP7I3HHlePLavUJbFaDvctY+VL+1Ysg
 Of2A==
X-Gm-Message-State: APjAAAWaTbW47G6UWc+0/BZudMOdSaITRQ39dODXrMxq6Yj399OictWY
 N/2luf7E2w5/Mr94/wt1FKT31/tCxAjqj25EJjfpVQ==
X-Google-Smtp-Source: APXvYqxnCAAePAJYwutn/nMNtv2h7hp4eBG3fP64yEX27E7cV5KiNxgEwZ9eXMu1isQAmWYuE4uF7xe7qroFbRXw978AKA==
X-Received: by 2002:ac8:47cc:: with SMTP id d12mr10768532qtr.246.1575597722723; 
 Thu, 05 Dec 2019 18:02:02 -0800 (PST)
Date: Thu,  5 Dec 2019 18:01:53 -0800
In-Reply-To: <20191206020153.228283-1-brendanhiggins@google.com>
Message-Id: <20191206020153.228283-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191206020153.228283-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [RFC v1 2/2] uml: remove support for CONFIG_STATIC_LINK
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_180204_939037_7275F5AF 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: davidgow@google.com, Brendan Higgins <brendanhiggins@google.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 johannes.berg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CONFIG_STATIC_LINK appears to have been broken since before v4.20. It
doesn't play nice with CONFIG_UML_NET_VECTOR=y:

/usr/bin/ld: arch/um/drivers/vector_user.o: in function
`user_init_socket_fds': vector_user.c:(.text+0x430): warning: Using
'getaddrinfo' in statically linked applications requires at runtime the
shared libraries from the glibc version used for linking

And it seems to break the ptrace check:

Checking that ptrace can change system call numbers...check_ptrace :
child exited with exitcode 6, while expecting 0; status 0x67f
[1]    126822 abort      ./linux mem=256M

Given the importance of ptrace in UML, CONFIG_STATIC_LINK seems totally
broken right now; remove it in order to fix allyesconfig for ARCH=um.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 arch/um/Kconfig              |  23 +----
 arch/um/Makefile             |   3 +-
 arch/um/kernel/dyn.lds.S     | 170 ----------------------------------
 arch/um/kernel/uml.lds.S     | 115 -----------------------
 arch/um/kernel/vmlinux.lds.S | 175 ++++++++++++++++++++++++++++++++++-
 5 files changed, 172 insertions(+), 314 deletions(-)
 delete mode 100644 arch/um/kernel/dyn.lds.S
 delete mode 100644 arch/um/kernel/uml.lds.S

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 2a6d04fcb3e91..00927fb7ce67a 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -19,6 +19,7 @@ config UML
 	select GENERIC_CLOCKEVENTS
 	select HAVE_GCC_PLUGINS
 	select TTY # Needed for line.c
+	select MODULE_REL_CRCS if MODVERSIONS
 
 config MMU
 	bool
@@ -61,28 +62,6 @@ config NR_CPUS
 
 source "arch/$(HEADER_ARCH)/um/Kconfig"
 
-config STATIC_LINK
-	bool "Force a static link"
-	default n
-	help
-	  This option gives you the ability to force a static link of UML.
-	  Normally, UML is linked as a shared binary.  This is inconvenient for
-	  use in a chroot jail.  So, if you intend to run UML inside a chroot,
-	  you probably want to say Y here.
-	  Additionally, this option enables using higher memory spaces (up to
-	  2.75G) for UML.
-
-config LD_SCRIPT_STATIC
-	bool
-	default y
-	depends on STATIC_LINK
-
-config LD_SCRIPT_DYN
-	bool
-	default y
-	depends on !LD_SCRIPT_STATIC
-	select MODULE_REL_CRCS if MODVERSIONS
-
 config HOSTFS
 	tristate "Host filesystem"
 	help
diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872da..ec8af28daf051 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -117,8 +117,7 @@ archheaders:
 archprepare:
 	$(Q)$(MAKE) $(build)=$(HOST_DIR)/um include/generated/user_constants.h
 
-LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
-LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
+LINK-y += -Wl,-rpath,/lib $(call cc-option, -no-pie)
 
 CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
 	$(call cc-option, -fno-stack-protector,) \
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
deleted file mode 100644
index c69d69ee96beb..0000000000000
--- a/arch/um/kernel/dyn.lds.S
+++ /dev/null
@@ -1,170 +0,0 @@
-#include <asm/vmlinux.lds.h>
-#include <asm/page.h>
-
-OUTPUT_FORMAT(ELF_FORMAT)
-OUTPUT_ARCH(ELF_ARCH)
-ENTRY(_start)
-jiffies = jiffies_64;
-
-SECTIONS
-{
-  PROVIDE (__executable_start = START);
-  . = START + SIZEOF_HEADERS;
-  .interp         : { *(.interp) }
-  __binary_start = .;
-  . = ALIGN(4096);		/* Init code and data */
-  _text = .;
-  INIT_TEXT_SECTION(PAGE_SIZE)
-
-  . = ALIGN(PAGE_SIZE);
-
-  /* Read-only sections, merged into text segment: */
-  .hash           : { *(.hash) }
-  .gnu.hash       : { *(.gnu.hash) }
-  .dynsym         : { *(.dynsym) }
-  .dynstr         : { *(.dynstr) }
-  .gnu.version    : { *(.gnu.version) }
-  .gnu.version_d  : { *(.gnu.version_d) }
-  .gnu.version_r  : { *(.gnu.version_r) }
-  .rel.init       : { *(.rel.init) }
-  .rela.init      : { *(.rela.init) }
-  .rel.text       : { *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*) }
-  .rela.text      : { *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*) }
-  .rel.fini       : { *(.rel.fini) }
-  .rela.fini      : { *(.rela.fini) }
-  .rel.rodata     : { *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*) }
-  .rela.rodata    : { *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*) }
-  .rel.data       : { *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*) }
-  .rela.data      : { *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*) }
-  .rel.tdata	  : { *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*) }
-  .rela.tdata	  : { *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*) }
-  .rel.tbss	  : { *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*) }
-  .rela.tbss	  : { *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*) }
-  .rel.ctors      : { *(.rel.ctors) }
-  .rela.ctors     : { *(.rela.ctors) }
-  .rel.dtors      : { *(.rel.dtors) }
-  .rela.dtors     : { *(.rela.dtors) }
-  .rel.got        : { *(.rel.got) }
-  .rela.got       : { *(.rela.got) }
-  .rel.bss        : { *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*) }
-  .rela.bss       : { *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*) }
-  .rel.plt : {
-	*(.rel.plt)
-	PROVIDE_HIDDEN(__rel_iplt_start = .);
-	*(.rel.iplt)
-	PROVIDE_HIDDEN(__rel_iplt_end = .);
-  }
-  .rela.plt : {
-	*(.rela.plt)
-	PROVIDE_HIDDEN(__rela_iplt_start = .);
-	*(.rela.iplt)
-	PROVIDE_HIDDEN(__rela_iplt_end = .);
-  }
-  .init           : {
-    KEEP (*(.init))
-  } =0x90909090
-  .plt            : { *(.plt) }
-  .text           : {
-    _stext = .;
-    TEXT_TEXT
-    SCHED_TEXT
-    CPUIDLE_TEXT
-    LOCK_TEXT
-    IRQENTRY_TEXT
-    SOFTIRQENTRY_TEXT
-    *(.fixup)
-    *(.stub .text.* .gnu.linkonce.t.*)
-    /* .gnu.warning sections are handled specially by elf32.em.  */
-    *(.gnu.warning)
-
-    . = ALIGN(PAGE_SIZE);
-  } =0x90909090
-  . = ALIGN(PAGE_SIZE);
-  .syscall_stub : {
-	__syscall_stub_start = .;
-	*(.__syscall_stub*)
-	__syscall_stub_end = .;
-  }
-  .fini           : {
-    KEEP (*(.fini))
-  } =0x90909090
-
-  .kstrtab : { *(.kstrtab) }
-
-  #include <asm/common.lds.S>
-
-  __init_begin = .;
-  init.data : { INIT_DATA }
-  __init_end = .;
-
-  /* Ensure the __preinit_array_start label is properly aligned.  We
-     could instead move the label definition inside the section, but
-     the linker would then create the section even if it turns out to
-     be empty, which isn't pretty.  */
-  . = ALIGN(32 / 8);
-  .preinit_array     : { *(.preinit_array) }
-  .fini_array     : { *(.fini_array) }
-  .data           : {
-    INIT_TASK_DATA(KERNEL_STACK_SIZE)
-    . = ALIGN(KERNEL_STACK_SIZE);
-    *(.data..init_irqstack)
-    DATA_DATA
-    *(.data.* .gnu.linkonce.d.*)
-    SORT(CONSTRUCTORS)
-  }
-  .data1          : { *(.data1) }
-  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
-  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
-  .eh_frame       : { KEEP (*(.eh_frame)) }
-  .gcc_except_table   : { *(.gcc_except_table) }
-  .dynamic        : { *(.dynamic) }
-  .ctors          : {
-    /* gcc uses crtbegin.o to find the start of
-       the constructors, so we make sure it is
-       first.  Because this is a wildcard, it
-       doesn't matter if the user does not
-       actually link against crtbegin.o; the
-       linker won't look for a file to match a
-       wildcard.  The wildcard also means that it
-       doesn't matter which directory crtbegin.o
-       is in.  */
-    KEEP (*crtbegin.o(.ctors))
-    /* We don't want to include the .ctor section from
-       from the crtend.o file until after the sorted ctors.
-       The .ctor section from the crtend file contains the
-       end of ctors marker and it must be last */
-    KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
-    KEEP (*(SORT(.ctors.*)))
-    KEEP (*(.ctors))
-  }
-  .dtors          : {
-    KEEP (*crtbegin.o(.dtors))
-    KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
-    KEEP (*(SORT(.dtors.*)))
-    KEEP (*(.dtors))
-  }
-  .jcr            : { KEEP (*(.jcr)) }
-  .got            : { *(.got.plt) *(.got) }
-  _edata = .;
-  PROVIDE (edata = .);
-  .bss            : {
-   __bss_start = .;
-   *(.dynbss)
-   *(.bss .bss.* .gnu.linkonce.b.*)
-   *(COMMON)
-   /* Align here to ensure that the .bss section occupies space up to
-      _end.  Align after .bss to ensure correct alignment even if the
-      .bss section disappears because there are no input sections.  */
-   . = ALIGN(32 / 8);
-  . = ALIGN(32 / 8);
-  }
-   __bss_stop = .;
-  _end = .;
-  PROVIDE (end = .);
-
-  STABS_DEBUG
-
-  DWARF_DEBUG
-
-  DISCARDS
-}
diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
deleted file mode 100644
index 9f21443be2c9e..0000000000000
--- a/arch/um/kernel/uml.lds.S
+++ /dev/null
@@ -1,115 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#include <asm/vmlinux.lds.h>
-#include <asm/page.h>
-
-OUTPUT_FORMAT(ELF_FORMAT)
-OUTPUT_ARCH(ELF_ARCH)
-ENTRY(_start)
-jiffies = jiffies_64;
-
-SECTIONS
-{
-  /* This must contain the right address - not quite the default ELF one.*/
-  PROVIDE (__executable_start = START);
-  /* Static binaries stick stuff here, like the sigreturn trampoline,
-   * invisibly to objdump.  So, just make __binary_start equal to the very
-   * beginning of the executable, and if there are unmapped pages after this,
-   * they are forever unusable.
-   */
-  __binary_start = START;
-
-  . = START + SIZEOF_HEADERS;
-
-  _text = .;
-  INIT_TEXT_SECTION(0)
-  . = ALIGN(PAGE_SIZE);
-
-  .text      :
-  {
-    _stext = .;
-    TEXT_TEXT
-    SCHED_TEXT
-    CPUIDLE_TEXT
-    LOCK_TEXT
-    IRQENTRY_TEXT
-    SOFTIRQENTRY_TEXT
-    *(.fixup)
-    /* .gnu.warning sections are handled specially by elf32.em.  */
-    *(.gnu.warning)
-    *(.gnu.linkonce.t*)
-  }
-
-  . = ALIGN(PAGE_SIZE);
-  .syscall_stub : {
-	__syscall_stub_start = .;
-	*(.__syscall_stub*)
-	__syscall_stub_end = .;
-  }
-
-  /*
-   * These are needed even in a static link, even if they wind up being empty.
-   * Newer glibc needs these __rel{,a}_iplt_{start,end} symbols.
-   */
-  .rel.plt : {
-	*(.rel.plt)
-	PROVIDE_HIDDEN(__rel_iplt_start = .);
-	*(.rel.iplt)
-	PROVIDE_HIDDEN(__rel_iplt_end = .);
-  }
-  .rela.plt : {
-	*(.rela.plt)
-	PROVIDE_HIDDEN(__rela_iplt_start = .);
-	*(.rela.iplt)
-	PROVIDE_HIDDEN(__rela_iplt_end = .);
-  }
-
-  #include <asm/common.lds.S>
-
-  __init_begin = .;
-  init.data : { INIT_DATA }
-  __init_end = .;
-
-  .data    :
-  {
-    INIT_TASK_DATA(KERNEL_STACK_SIZE)
-    . = ALIGN(KERNEL_STACK_SIZE);
-    *(.data..init_irqstack)
-    DATA_DATA
-    *(.gnu.linkonce.d*)
-    CONSTRUCTORS
-  }
-  .data1   : { *(.data1) }
-  .ctors         :
-  {
-    *(.ctors)
-  }
-  .dtors         :
-  {
-    *(.dtors)
-  }
-
-  .got           : { *(.got.plt) *(.got) }
-  .dynamic       : { *(.dynamic) }
-  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
-  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
-  /* We want the small data sections together, so single-instruction offsets
-     can access them all, and initialized data all before uninitialized, so
-     we can shorten the on-disk segment size.  */
-  .sdata     : { *(.sdata) }
-  _edata  =  .;
-  PROVIDE (edata = .);
-  . = ALIGN(PAGE_SIZE);
-  __bss_start = .;
-  PROVIDE(_bss_start = .);
-  SBSS(0)
-  BSS(0)
-   __bss_stop = .;
-  _end = .;
-  PROVIDE (end = .);
-
-  STABS_DEBUG
-
-  DWARF_DEBUG
-
-  DISCARDS
-}
diff --git a/arch/um/kernel/vmlinux.lds.S b/arch/um/kernel/vmlinux.lds.S
index 16e49bfa2b426..f4b6114e54d62 100644
--- a/arch/um/kernel/vmlinux.lds.S
+++ b/arch/um/kernel/vmlinux.lds.S
@@ -1,8 +1,173 @@
 
 KERNEL_STACK_SIZE = 4096 * (1 << CONFIG_KERNEL_STACK_ORDER);
 
-#ifdef CONFIG_LD_SCRIPT_STATIC
-#include "uml.lds.S"
-#else
-#include "dyn.lds.S"
-#endif
+#include <asm/vmlinux.lds.h>
+#include <asm/page.h>
+
+OUTPUT_FORMAT(ELF_FORMAT)
+OUTPUT_ARCH(ELF_ARCH)
+ENTRY(_start)
+jiffies = jiffies_64;
+
+SECTIONS
+{
+  PROVIDE (__executable_start = START);
+  . = START + SIZEOF_HEADERS;
+  .interp         : { *(.interp) }
+  __binary_start = .;
+  . = ALIGN(4096);		/* Init code and data */
+  _text = .;
+  INIT_TEXT_SECTION(PAGE_SIZE)
+
+  . = ALIGN(PAGE_SIZE);
+
+  /* Read-only sections, merged into text segment: */
+  .hash           : { *(.hash) }
+  .gnu.hash       : { *(.gnu.hash) }
+  .dynsym         : { *(.dynsym) }
+  .dynstr         : { *(.dynstr) }
+  .gnu.version    : { *(.gnu.version) }
+  .gnu.version_d  : { *(.gnu.version_d) }
+  .gnu.version_r  : { *(.gnu.version_r) }
+  .rel.init       : { *(.rel.init) }
+  .rela.init      : { *(.rela.init) }
+  .rel.text       : { *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*) }
+  .rela.text      : { *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*) }
+  .rel.fini       : { *(.rel.fini) }
+  .rela.fini      : { *(.rela.fini) }
+  .rel.rodata     : { *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*) }
+  .rela.rodata    : { *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*) }
+  .rel.data       : { *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*) }
+  .rela.data      : { *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*) }
+  .rel.tdata	  : { *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*) }
+  .rela.tdata	  : { *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*) }
+  .rel.tbss	  : { *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*) }
+  .rela.tbss	  : { *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*) }
+  .rel.ctors      : { *(.rel.ctors) }
+  .rela.ctors     : { *(.rela.ctors) }
+  .rel.dtors      : { *(.rel.dtors) }
+  .rela.dtors     : { *(.rela.dtors) }
+  .rel.got        : { *(.rel.got) }
+  .rela.got       : { *(.rela.got) }
+  .rel.bss        : { *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*) }
+  .rela.bss       : { *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*) }
+  .rel.plt : {
+	*(.rel.plt)
+	PROVIDE_HIDDEN(__rel_iplt_start = .);
+	*(.rel.iplt)
+	PROVIDE_HIDDEN(__rel_iplt_end = .);
+  }
+  .rela.plt : {
+	*(.rela.plt)
+	PROVIDE_HIDDEN(__rela_iplt_start = .);
+	*(.rela.iplt)
+	PROVIDE_HIDDEN(__rela_iplt_end = .);
+  }
+  .init           : {
+    KEEP (*(.init))
+  } =0x90909090
+  .plt            : { *(.plt) }
+  .text           : {
+    _stext = .;
+    TEXT_TEXT
+    SCHED_TEXT
+    CPUIDLE_TEXT
+    LOCK_TEXT
+    IRQENTRY_TEXT
+    SOFTIRQENTRY_TEXT
+    *(.fixup)
+    *(.stub .text.* .gnu.linkonce.t.*)
+    /* .gnu.warning sections are handled specially by elf32.em.  */
+    *(.gnu.warning)
+
+    . = ALIGN(PAGE_SIZE);
+  } =0x90909090
+  . = ALIGN(PAGE_SIZE);
+  .syscall_stub : {
+	__syscall_stub_start = .;
+	*(.__syscall_stub*)
+	__syscall_stub_end = .;
+  }
+  .fini           : {
+    KEEP (*(.fini))
+  } =0x90909090
+
+  .kstrtab : { *(.kstrtab) }
+
+  #include <asm/common.lds.S>
+
+  __init_begin = .;
+  init.data : { INIT_DATA }
+  __init_end = .;
+
+  /* Ensure the __preinit_array_start label is properly aligned.  We
+     could instead move the label definition inside the section, but
+     the linker would then create the section even if it turns out to
+     be empty, which isn't pretty.  */
+  . = ALIGN(32 / 8);
+  .preinit_array     : { *(.preinit_array) }
+  .fini_array     : { *(.fini_array) }
+  .data           : {
+    INIT_TASK_DATA(KERNEL_STACK_SIZE)
+    . = ALIGN(KERNEL_STACK_SIZE);
+    *(.data..init_irqstack)
+    DATA_DATA
+    *(.data.* .gnu.linkonce.d.*)
+    SORT(CONSTRUCTORS)
+  }
+  .data1          : { *(.data1) }
+  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
+  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
+  .eh_frame       : { KEEP (*(.eh_frame)) }
+  .gcc_except_table   : { *(.gcc_except_table) }
+  .dynamic        : { *(.dynamic) }
+  .ctors          : {
+    /* gcc uses crtbegin.o to find the start of
+       the constructors, so we make sure it is
+       first.  Because this is a wildcard, it
+       doesn't matter if the user does not
+       actually link against crtbegin.o; the
+       linker won't look for a file to match a
+       wildcard.  The wildcard also means that it
+       doesn't matter which directory crtbegin.o
+       is in.  */
+    KEEP (*crtbegin.o(.ctors))
+    /* We don't want to include the .ctor section from
+       from the crtend.o file until after the sorted ctors.
+       The .ctor section from the crtend file contains the
+       end of ctors marker and it must be last */
+    KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
+    KEEP (*(SORT(.ctors.*)))
+    KEEP (*(.ctors))
+  }
+  .dtors          : {
+    KEEP (*crtbegin.o(.dtors))
+    KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
+    KEEP (*(SORT(.dtors.*)))
+    KEEP (*(.dtors))
+  }
+  .jcr            : { KEEP (*(.jcr)) }
+  .got            : { *(.got.plt) *(.got) }
+  _edata = .;
+  PROVIDE (edata = .);
+  .bss            : {
+   __bss_start = .;
+   *(.dynbss)
+   *(.bss .bss.* .gnu.linkonce.b.*)
+   *(COMMON)
+   /* Align here to ensure that the .bss section occupies space up to
+      _end.  Align after .bss to ensure correct alignment even if the
+      .bss section disappears because there are no input sections.  */
+   . = ALIGN(32 / 8);
+  . = ALIGN(32 / 8);
+  }
+   __bss_stop = .;
+  _end = .;
+  PROVIDE (end = .);
+
+  STABS_DEBUG
+
+  DWARF_DEBUG
+
+  DISCARDS
+}
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
