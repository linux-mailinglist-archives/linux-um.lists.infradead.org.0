Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FB2114CCD
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 08:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nQ3R9Rttcyrc99ZfIaymwiyDXgp8bDYxUg9wusblgAw=; b=p511PbGe01Hbfykqa813Op0sk
	w7bd+YFJS6s9ijiFl/2BA4Jf4syPPO4sG2ufm8FBWZ/g75mZvno4Jj3UMJS21OuHiNTcjvcROm/Rj
	xowfI5+o0aQNYkeP/R3q+yr5G6v/+2OvKFMTerHqKKFct6UdaUomIKofe4dHPAb4ieV/tGSxjp5mO
	1ePqv8VWva2eJooA/SRFArBzLNlflpJQ1RSXenmXb3HP3rZjyI0GtWtu71CSwXEC5fIpe3rMl2jEM
	+Ia9bl9bgCGxCeGv+Cl535K1kHPmAY/D2ZHj9MjwSxykWdP7E3uFzJSxnD5XNpJ8xTBSTA6JRmDM5
	BvZxMr3rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8FZ-0002V6-4x; Fri, 06 Dec 2019 07:42:05 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8Ep-0001ly-2u
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 07:41:22 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1id8El-0007HL-9g; Fri, 06 Dec 2019 07:41:15 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1id8Ei-0005pz-MG; Fri, 06 Dec 2019 07:41:14 +0000
Subject: Re: [RFC v1 2/2] uml: remove support for CONFIG_STATIC_LINK
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-3-brendanhiggins@google.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <aa7b77aa-bf3a-6919-ed66-37af00d856d2@cambridgegreys.com>
Date: Fri, 6 Dec 2019 07:41:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191206020153.228283-3-brendanhiggins@google.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_234119_438904_6F2C7E5E 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: davidgow@google.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, johannes.berg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 06/12/2019 02:01, Brendan Higgins wrote:
> CONFIG_STATIC_LINK appears to have been broken since before v4.20. It
> doesn't play nice with CONFIG_UML_NET_VECTOR=y:
> 
> /usr/bin/ld: arch/um/drivers/vector_user.o: in function
> `user_init_socket_fds': vector_user.c:(.text+0x430): warning: Using
> 'getaddrinfo' in statically linked applications requires at runtime the
> shared libraries from the glibc version used for linking
> 
> And it seems to break the ptrace check:
> 
> Checking that ptrace can change system call numbers...check_ptrace :
> child exited with exitcode 6, while expecting 0; status 0x67f
> [1]    126822 abort      ./linux mem=256M
> 
> Given the importance of ptrace in UML, CONFIG_STATIC_LINK seems totally
> broken right now; remove it in order to fix allyesconfig for ARCH=um.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>   arch/um/Kconfig              |  23 +----
>   arch/um/Makefile             |   3 +-
>   arch/um/kernel/dyn.lds.S     | 170 ----------------------------------
>   arch/um/kernel/uml.lds.S     | 115 -----------------------
>   arch/um/kernel/vmlinux.lds.S | 175 ++++++++++++++++++++++++++++++++++-
>   5 files changed, 172 insertions(+), 314 deletions(-)
>   delete mode 100644 arch/um/kernel/dyn.lds.S
>   delete mode 100644 arch/um/kernel/uml.lds.S
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 2a6d04fcb3e91..00927fb7ce67a 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -19,6 +19,7 @@ config UML
>   	select GENERIC_CLOCKEVENTS
>   	select HAVE_GCC_PLUGINS
>   	select TTY # Needed for line.c
> +	select MODULE_REL_CRCS if MODVERSIONS
>   
>   config MMU
>   	bool
> @@ -61,28 +62,6 @@ config NR_CPUS
>   
>   source "arch/$(HEADER_ARCH)/um/Kconfig"
>   
> -config STATIC_LINK
> -	bool "Force a static link"
> -	default n
> -	help
> -	  This option gives you the ability to force a static link of UML.
> -	  Normally, UML is linked as a shared binary.  This is inconvenient for
> -	  use in a chroot jail.  So, if you intend to run UML inside a chroot,
> -	  you probably want to say Y here.
> -	  Additionally, this option enables using higher memory spaces (up to
> -	  2.75G) for UML.
> -
> -config LD_SCRIPT_STATIC
> -	bool
> -	default y
> -	depends on STATIC_LINK
> -
> -config LD_SCRIPT_DYN
> -	bool
> -	default y
> -	depends on !LD_SCRIPT_STATIC
> -	select MODULE_REL_CRCS if MODVERSIONS
> -
>   config HOSTFS
>   	tristate "Host filesystem"
>   	help
> diff --git a/arch/um/Makefile b/arch/um/Makefile
> index d2daa206872da..ec8af28daf051 100644
> --- a/arch/um/Makefile
> +++ b/arch/um/Makefile
> @@ -117,8 +117,7 @@ archheaders:
>   archprepare:
>   	$(Q)$(MAKE) $(build)=$(HOST_DIR)/um include/generated/user_constants.h
>   
> -LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
> -LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
> +LINK-y += -Wl,-rpath,/lib $(call cc-option, -no-pie)
>   
>   CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
>   	$(call cc-option, -fno-stack-protector,) \
> diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
> deleted file mode 100644
> index c69d69ee96beb..0000000000000
> --- a/arch/um/kernel/dyn.lds.S
> +++ /dev/null
> @@ -1,170 +0,0 @@
> -#include <asm/vmlinux.lds.h>
> -#include <asm/page.h>
> -
> -OUTPUT_FORMAT(ELF_FORMAT)
> -OUTPUT_ARCH(ELF_ARCH)
> -ENTRY(_start)
> -jiffies = jiffies_64;
> -
> -SECTIONS
> -{
> -  PROVIDE (__executable_start = START);
> -  . = START + SIZEOF_HEADERS;
> -  .interp         : { *(.interp) }
> -  __binary_start = .;
> -  . = ALIGN(4096);		/* Init code and data */
> -  _text = .;
> -  INIT_TEXT_SECTION(PAGE_SIZE)
> -
> -  . = ALIGN(PAGE_SIZE);
> -
> -  /* Read-only sections, merged into text segment: */
> -  .hash           : { *(.hash) }
> -  .gnu.hash       : { *(.gnu.hash) }
> -  .dynsym         : { *(.dynsym) }
> -  .dynstr         : { *(.dynstr) }
> -  .gnu.version    : { *(.gnu.version) }
> -  .gnu.version_d  : { *(.gnu.version_d) }
> -  .gnu.version_r  : { *(.gnu.version_r) }
> -  .rel.init       : { *(.rel.init) }
> -  .rela.init      : { *(.rela.init) }
> -  .rel.text       : { *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*) }
> -  .rela.text      : { *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*) }
> -  .rel.fini       : { *(.rel.fini) }
> -  .rela.fini      : { *(.rela.fini) }
> -  .rel.rodata     : { *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*) }
> -  .rela.rodata    : { *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*) }
> -  .rel.data       : { *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*) }
> -  .rela.data      : { *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*) }
> -  .rel.tdata	  : { *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*) }
> -  .rela.tdata	  : { *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*) }
> -  .rel.tbss	  : { *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*) }
> -  .rela.tbss	  : { *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*) }
> -  .rel.ctors      : { *(.rel.ctors) }
> -  .rela.ctors     : { *(.rela.ctors) }
> -  .rel.dtors      : { *(.rel.dtors) }
> -  .rela.dtors     : { *(.rela.dtors) }
> -  .rel.got        : { *(.rel.got) }
> -  .rela.got       : { *(.rela.got) }
> -  .rel.bss        : { *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*) }
> -  .rela.bss       : { *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*) }
> -  .rel.plt : {
> -	*(.rel.plt)
> -	PROVIDE_HIDDEN(__rel_iplt_start = .);
> -	*(.rel.iplt)
> -	PROVIDE_HIDDEN(__rel_iplt_end = .);
> -  }
> -  .rela.plt : {
> -	*(.rela.plt)
> -	PROVIDE_HIDDEN(__rela_iplt_start = .);
> -	*(.rela.iplt)
> -	PROVIDE_HIDDEN(__rela_iplt_end = .);
> -  }
> -  .init           : {
> -    KEEP (*(.init))
> -  } =0x90909090
> -  .plt            : { *(.plt) }
> -  .text           : {
> -    _stext = .;
> -    TEXT_TEXT
> -    SCHED_TEXT
> -    CPUIDLE_TEXT
> -    LOCK_TEXT
> -    IRQENTRY_TEXT
> -    SOFTIRQENTRY_TEXT
> -    *(.fixup)
> -    *(.stub .text.* .gnu.linkonce.t.*)
> -    /* .gnu.warning sections are handled specially by elf32.em.  */
> -    *(.gnu.warning)
> -
> -    . = ALIGN(PAGE_SIZE);
> -  } =0x90909090
> -  . = ALIGN(PAGE_SIZE);
> -  .syscall_stub : {
> -	__syscall_stub_start = .;
> -	*(.__syscall_stub*)
> -	__syscall_stub_end = .;
> -  }
> -  .fini           : {
> -    KEEP (*(.fini))
> -  } =0x90909090
> -
> -  .kstrtab : { *(.kstrtab) }
> -
> -  #include <asm/common.lds.S>
> -
> -  __init_begin = .;
> -  init.data : { INIT_DATA }
> -  __init_end = .;
> -
> -  /* Ensure the __preinit_array_start label is properly aligned.  We
> -     could instead move the label definition inside the section, but
> -     the linker would then create the section even if it turns out to
> -     be empty, which isn't pretty.  */
> -  . = ALIGN(32 / 8);
> -  .preinit_array     : { *(.preinit_array) }
> -  .fini_array     : { *(.fini_array) }
> -  .data           : {
> -    INIT_TASK_DATA(KERNEL_STACK_SIZE)
> -    . = ALIGN(KERNEL_STACK_SIZE);
> -    *(.data..init_irqstack)
> -    DATA_DATA
> -    *(.data.* .gnu.linkonce.d.*)
> -    SORT(CONSTRUCTORS)
> -  }
> -  .data1          : { *(.data1) }
> -  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
> -  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
> -  .eh_frame       : { KEEP (*(.eh_frame)) }
> -  .gcc_except_table   : { *(.gcc_except_table) }
> -  .dynamic        : { *(.dynamic) }
> -  .ctors          : {
> -    /* gcc uses crtbegin.o to find the start of
> -       the constructors, so we make sure it is
> -       first.  Because this is a wildcard, it
> -       doesn't matter if the user does not
> -       actually link against crtbegin.o; the
> -       linker won't look for a file to match a
> -       wildcard.  The wildcard also means that it
> -       doesn't matter which directory crtbegin.o
> -       is in.  */
> -    KEEP (*crtbegin.o(.ctors))
> -    /* We don't want to include the .ctor section from
> -       from the crtend.o file until after the sorted ctors.
> -       The .ctor section from the crtend file contains the
> -       end of ctors marker and it must be last */
> -    KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
> -    KEEP (*(SORT(.ctors.*)))
> -    KEEP (*(.ctors))
> -  }
> -  .dtors          : {
> -    KEEP (*crtbegin.o(.dtors))
> -    KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
> -    KEEP (*(SORT(.dtors.*)))
> -    KEEP (*(.dtors))
> -  }
> -  .jcr            : { KEEP (*(.jcr)) }
> -  .got            : { *(.got.plt) *(.got) }
> -  _edata = .;
> -  PROVIDE (edata = .);
> -  .bss            : {
> -   __bss_start = .;
> -   *(.dynbss)
> -   *(.bss .bss.* .gnu.linkonce.b.*)
> -   *(COMMON)
> -   /* Align here to ensure that the .bss section occupies space up to
> -      _end.  Align after .bss to ensure correct alignment even if the
> -      .bss section disappears because there are no input sections.  */
> -   . = ALIGN(32 / 8);
> -  . = ALIGN(32 / 8);
> -  }
> -   __bss_stop = .;
> -  _end = .;
> -  PROVIDE (end = .);
> -
> -  STABS_DEBUG
> -
> -  DWARF_DEBUG
> -
> -  DISCARDS
> -}
> diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
> deleted file mode 100644
> index 9f21443be2c9e..0000000000000
> --- a/arch/um/kernel/uml.lds.S
> +++ /dev/null
> @@ -1,115 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#include <asm/vmlinux.lds.h>
> -#include <asm/page.h>
> -
> -OUTPUT_FORMAT(ELF_FORMAT)
> -OUTPUT_ARCH(ELF_ARCH)
> -ENTRY(_start)
> -jiffies = jiffies_64;
> -
> -SECTIONS
> -{
> -  /* This must contain the right address - not quite the default ELF one.*/
> -  PROVIDE (__executable_start = START);
> -  /* Static binaries stick stuff here, like the sigreturn trampoline,
> -   * invisibly to objdump.  So, just make __binary_start equal to the very
> -   * beginning of the executable, and if there are unmapped pages after this,
> -   * they are forever unusable.
> -   */
> -  __binary_start = START;
> -
> -  . = START + SIZEOF_HEADERS;
> -
> -  _text = .;
> -  INIT_TEXT_SECTION(0)
> -  . = ALIGN(PAGE_SIZE);
> -
> -  .text      :
> -  {
> -    _stext = .;
> -    TEXT_TEXT
> -    SCHED_TEXT
> -    CPUIDLE_TEXT
> -    LOCK_TEXT
> -    IRQENTRY_TEXT
> -    SOFTIRQENTRY_TEXT
> -    *(.fixup)
> -    /* .gnu.warning sections are handled specially by elf32.em.  */
> -    *(.gnu.warning)
> -    *(.gnu.linkonce.t*)
> -  }
> -
> -  . = ALIGN(PAGE_SIZE);
> -  .syscall_stub : {
> -	__syscall_stub_start = .;
> -	*(.__syscall_stub*)
> -	__syscall_stub_end = .;
> -  }
> -
> -  /*
> -   * These are needed even in a static link, even if they wind up being empty.
> -   * Newer glibc needs these __rel{,a}_iplt_{start,end} symbols.
> -   */
> -  .rel.plt : {
> -	*(.rel.plt)
> -	PROVIDE_HIDDEN(__rel_iplt_start = .);
> -	*(.rel.iplt)
> -	PROVIDE_HIDDEN(__rel_iplt_end = .);
> -  }
> -  .rela.plt : {
> -	*(.rela.plt)
> -	PROVIDE_HIDDEN(__rela_iplt_start = .);
> -	*(.rela.iplt)
> -	PROVIDE_HIDDEN(__rela_iplt_end = .);
> -  }
> -
> -  #include <asm/common.lds.S>
> -
> -  __init_begin = .;
> -  init.data : { INIT_DATA }
> -  __init_end = .;
> -
> -  .data    :
> -  {
> -    INIT_TASK_DATA(KERNEL_STACK_SIZE)
> -    . = ALIGN(KERNEL_STACK_SIZE);
> -    *(.data..init_irqstack)
> -    DATA_DATA
> -    *(.gnu.linkonce.d*)
> -    CONSTRUCTORS
> -  }
> -  .data1   : { *(.data1) }
> -  .ctors         :
> -  {
> -    *(.ctors)
> -  }
> -  .dtors         :
> -  {
> -    *(.dtors)
> -  }
> -
> -  .got           : { *(.got.plt) *(.got) }
> -  .dynamic       : { *(.dynamic) }
> -  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
> -  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
> -  /* We want the small data sections together, so single-instruction offsets
> -     can access them all, and initialized data all before uninitialized, so
> -     we can shorten the on-disk segment size.  */
> -  .sdata     : { *(.sdata) }
> -  _edata  =  .;
> -  PROVIDE (edata = .);
> -  . = ALIGN(PAGE_SIZE);
> -  __bss_start = .;
> -  PROVIDE(_bss_start = .);
> -  SBSS(0)
> -  BSS(0)
> -   __bss_stop = .;
> -  _end = .;
> -  PROVIDE (end = .);
> -
> -  STABS_DEBUG
> -
> -  DWARF_DEBUG
> -
> -  DISCARDS
> -}
> diff --git a/arch/um/kernel/vmlinux.lds.S b/arch/um/kernel/vmlinux.lds.S
> index 16e49bfa2b426..f4b6114e54d62 100644
> --- a/arch/um/kernel/vmlinux.lds.S
> +++ b/arch/um/kernel/vmlinux.lds.S
> @@ -1,8 +1,173 @@
>   
>   KERNEL_STACK_SIZE = 4096 * (1 << CONFIG_KERNEL_STACK_ORDER);
>   
> -#ifdef CONFIG_LD_SCRIPT_STATIC
> -#include "uml.lds.S"
> -#else
> -#include "dyn.lds.S"
> -#endif
> +#include <asm/vmlinux.lds.h>
> +#include <asm/page.h>
> +
> +OUTPUT_FORMAT(ELF_FORMAT)
> +OUTPUT_ARCH(ELF_ARCH)
> +ENTRY(_start)
> +jiffies = jiffies_64;
> +
> +SECTIONS
> +{
> +  PROVIDE (__executable_start = START);
> +  . = START + SIZEOF_HEADERS;
> +  .interp         : { *(.interp) }
> +  __binary_start = .;
> +  . = ALIGN(4096);		/* Init code and data */
> +  _text = .;
> +  INIT_TEXT_SECTION(PAGE_SIZE)
> +
> +  . = ALIGN(PAGE_SIZE);
> +
> +  /* Read-only sections, merged into text segment: */
> +  .hash           : { *(.hash) }
> +  .gnu.hash       : { *(.gnu.hash) }
> +  .dynsym         : { *(.dynsym) }
> +  .dynstr         : { *(.dynstr) }
> +  .gnu.version    : { *(.gnu.version) }
> +  .gnu.version_d  : { *(.gnu.version_d) }
> +  .gnu.version_r  : { *(.gnu.version_r) }
> +  .rel.init       : { *(.rel.init) }
> +  .rela.init      : { *(.rela.init) }
> +  .rel.text       : { *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*) }
> +  .rela.text      : { *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*) }
> +  .rel.fini       : { *(.rel.fini) }
> +  .rela.fini      : { *(.rela.fini) }
> +  .rel.rodata     : { *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*) }
> +  .rela.rodata    : { *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*) }
> +  .rel.data       : { *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*) }
> +  .rela.data      : { *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*) }
> +  .rel.tdata	  : { *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*) }
> +  .rela.tdata	  : { *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*) }
> +  .rel.tbss	  : { *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*) }
> +  .rela.tbss	  : { *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*) }
> +  .rel.ctors      : { *(.rel.ctors) }
> +  .rela.ctors     : { *(.rela.ctors) }
> +  .rel.dtors      : { *(.rel.dtors) }
> +  .rela.dtors     : { *(.rela.dtors) }
> +  .rel.got        : { *(.rel.got) }
> +  .rela.got       : { *(.rela.got) }
> +  .rel.bss        : { *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*) }
> +  .rela.bss       : { *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*) }
> +  .rel.plt : {
> +	*(.rel.plt)
> +	PROVIDE_HIDDEN(__rel_iplt_start = .);
> +	*(.rel.iplt)
> +	PROVIDE_HIDDEN(__rel_iplt_end = .);
> +  }
> +  .rela.plt : {
> +	*(.rela.plt)
> +	PROVIDE_HIDDEN(__rela_iplt_start = .);
> +	*(.rela.iplt)
> +	PROVIDE_HIDDEN(__rela_iplt_end = .);
> +  }
> +  .init           : {
> +    KEEP (*(.init))
> +  } =0x90909090
> +  .plt            : { *(.plt) }
> +  .text           : {
> +    _stext = .;
> +    TEXT_TEXT
> +    SCHED_TEXT
> +    CPUIDLE_TEXT
> +    LOCK_TEXT
> +    IRQENTRY_TEXT
> +    SOFTIRQENTRY_TEXT
> +    *(.fixup)
> +    *(.stub .text.* .gnu.linkonce.t.*)
> +    /* .gnu.warning sections are handled specially by elf32.em.  */
> +    *(.gnu.warning)
> +
> +    . = ALIGN(PAGE_SIZE);
> +  } =0x90909090
> +  . = ALIGN(PAGE_SIZE);
> +  .syscall_stub : {
> +	__syscall_stub_start = .;
> +	*(.__syscall_stub*)
> +	__syscall_stub_end = .;
> +  }
> +  .fini           : {
> +    KEEP (*(.fini))
> +  } =0x90909090
> +
> +  .kstrtab : { *(.kstrtab) }
> +
> +  #include <asm/common.lds.S>
> +
> +  __init_begin = .;
> +  init.data : { INIT_DATA }
> +  __init_end = .;
> +
> +  /* Ensure the __preinit_array_start label is properly aligned.  We
> +     could instead move the label definition inside the section, but
> +     the linker would then create the section even if it turns out to
> +     be empty, which isn't pretty.  */
> +  . = ALIGN(32 / 8);
> +  .preinit_array     : { *(.preinit_array) }
> +  .fini_array     : { *(.fini_array) }
> +  .data           : {
> +    INIT_TASK_DATA(KERNEL_STACK_SIZE)
> +    . = ALIGN(KERNEL_STACK_SIZE);
> +    *(.data..init_irqstack)
> +    DATA_DATA
> +    *(.data.* .gnu.linkonce.d.*)
> +    SORT(CONSTRUCTORS)
> +  }
> +  .data1          : { *(.data1) }
> +  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
> +  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
> +  .eh_frame       : { KEEP (*(.eh_frame)) }
> +  .gcc_except_table   : { *(.gcc_except_table) }
> +  .dynamic        : { *(.dynamic) }
> +  .ctors          : {
> +    /* gcc uses crtbegin.o to find the start of
> +       the constructors, so we make sure it is
> +       first.  Because this is a wildcard, it
> +       doesn't matter if the user does not
> +       actually link against crtbegin.o; the
> +       linker won't look for a file to match a
> +       wildcard.  The wildcard also means that it
> +       doesn't matter which directory crtbegin.o
> +       is in.  */
> +    KEEP (*crtbegin.o(.ctors))
> +    /* We don't want to include the .ctor section from
> +       from the crtend.o file until after the sorted ctors.
> +       The .ctor section from the crtend file contains the
> +       end of ctors marker and it must be last */
> +    KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
> +    KEEP (*(SORT(.ctors.*)))
> +    KEEP (*(.ctors))
> +  }
> +  .dtors          : {
> +    KEEP (*crtbegin.o(.dtors))
> +    KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
> +    KEEP (*(SORT(.dtors.*)))
> +    KEEP (*(.dtors))
> +  }
> +  .jcr            : { KEEP (*(.jcr)) }
> +  .got            : { *(.got.plt) *(.got) }
> +  _edata = .;
> +  PROVIDE (edata = .);
> +  .bss            : {
> +   __bss_start = .;
> +   *(.dynbss)
> +   *(.bss .bss.* .gnu.linkonce.b.*)
> +   *(COMMON)
> +   /* Align here to ensure that the .bss section occupies space up to
> +      _end.  Align after .bss to ensure correct alignment even if the
> +      .bss section disappears because there are no input sections.  */
> +   . = ALIGN(32 / 8);
> +  . = ALIGN(32 / 8);
> +  }
> +   __bss_stop = .;
> +  _end = .;
> +  PROVIDE (end = .);
> +
> +  STABS_DEBUG
> +
> +  DWARF_DEBUG
> +
> +  DISCARDS
> +}
> 

The ptrace check was discussed on the list this week - it is the enable 
constructors commit in 5.3-rc1.

A patch reverting it was submitted by Johannes yesterday.

I did not try disabling/enabling static link - good catch.

Otherwise, I agree - static link should probably go.

Adding PCAP throws even more warnings and the AF_XDP work I have in 
progress generates a whole page of them. Considering that the resulting 
executable is not really static there is no point keeping the option.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
