Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13687158F6B
	for <lists+linux-um@lfdr.de>; Tue, 11 Feb 2020 14:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jL2KmOOOwfGjBfDE38Jo4UN5/G9ZDr4gbR2LzoQlVWQ=; b=Wu2Oqsf3vqQW5o
	GgmjX3MKZXo2h7VeKvuc5X6J373DFLC4ZhoxfaENm6gGiHrf+QzNMczDgaXfGDjDaOof070RcY3Mw
	T4qZ6LBHT3jBXurg24KX5z3yygrMA2U/KCiLvfnue/9bTby2FbtM2glL/G8wc54IfionelW5oojQf
	GjoppvjuMi2najsLFcaqbMJLW69orFCjnrvTCXQnCD/f7tJ3l2oOqeBp8tbLjV5N0KgSb8m/BnkwR
	ko3fTG5yYEG2e2tyfv9RSN/XqCdswB4csoOUJHFR6bVEVbYxtl6BPLSxZSYpwqq37+vhCJbL9Pnad
	+WgC5kRW26dvKHOsDn8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VC8-0001p8-Qm; Tue, 11 Feb 2020 13:03:16 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VC5-0001o4-1M
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 13:03:15 +0000
Received: by mail-qt1-x842.google.com with SMTP id d5so7850487qto.0
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 05:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bas+/VrzdMy27Ru/nYIGc/kjNJVzSRBJ3GgmNCXPKdM=;
 b=WxJg/u6Na/pFoI949NKg7uYm3QzOQNt2Vp092Boa5ku+WMvifXoEKnS02wETWux/nZ
 +oi7+xcseC1PYs96v5w5jEg9BVsU2u+kLs5jS2Pa25nagRNGNTZUQdV1h/VgqtHLqydF
 s+XlnsHeAejkWpJ/IiFDRbkz5g4G9FHmdLdawEGc/fADvqH1cx/YAccoCARwukD4SGml
 HxjZOKGM9/ibw7z9Y+0LYCRe1EHG3lPGkTSrvNnsyPQAtFryEy/itYCSori7Zdqh6X6Y
 RP8xZUkvnLS00N/BzhjD3g9YqSbk9CY/I+l48i3/wtrUjvTbKQnBu+7oZ1JDYe3xhY89
 rFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bas+/VrzdMy27Ru/nYIGc/kjNJVzSRBJ3GgmNCXPKdM=;
 b=seixmj9AXSq0sZjeUgFdWbeTCKv+smPq5TT8GDX7b6f7B667hlcJTatPgGWnxsHsA8
 AZZUptoB2XUO9dCVGjKB7dABpQvE/ObvYzdZLHmba2LtG50QJZ5oxPmAqQpJRsE+Qpu5
 NlSCz6UrL/9d2FtmndyuZ7ZSTIxIBHeax6siV8BN7NAJOSc/QFAYQQ5vgSryO4/YDoHe
 Qn1MpVXKs0LQxepNw7u2k6miN79R9L7B24lINoGxzSiqH7TiRbHTG1k5b18Db5IHIMC7
 evtikevT3TeMVsY67cW5Diheb6IiJ4ARdTrsFcWAqmdgrTG0PD1354L23e5reH3H6hMa
 K2LA==
X-Gm-Message-State: APjAAAUvLbtsv616EIqt/gOkIUtAmwQ7D8wKSTKjLWcSrw/kyjEGyP+U
 h6+uqXYjnVFv+TfbXcVwO7Ck/Tv/nqRz5Vy007b9bw==
X-Google-Smtp-Source: APXvYqwZkrX6NfWxgbWR+Da8udNZDtLP1WdUg2ATAhvMsNOYXKquFhuVhGBHy5pks6LhgDwaGSpyBkdfJ/ejv2R7ANA=
X-Received: by 2002:ac8:7159:: with SMTP id h25mr2278562qtp.380.1581426187228; 
 Tue, 11 Feb 2020 05:03:07 -0800 (PST)
MIME-Version: 1.0
References: <20200210225806.249297-1-trishalfonso@google.com>
In-Reply-To: <20200210225806.249297-1-trishalfonso@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Feb 2020 14:02:55 +0100
Message-ID: <CACT4Y+Y=Qj6coWpY107Dj+TsUJK1nruWAC=QMZBDC5snNZRTOw@mail.gmail.com>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_050313_109048_CA586A91 
X-CRM114-Status: GOOD (  36.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Johannes Berg <johannes@sipsolutions.net>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 11:58 PM 'Patricia Alfonso' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> Make KASAN run on User Mode Linux on x86_64.
>
> Depends on Constructor support in UML and is based off of
> "[RFC PATCH] um: implement CONFIG_CONSTRUCTORS for modules"
> (https://patchwork.ozlabs.org/patch/1234551/) and "[DEMO] um:
> demonstrate super early constructors"
> (https://patchwork.ozlabs.org/patch/1234553/) by
> Johannes.
>
> The location of the KASAN shadow memory, starting at
> KASAN_SHADOW_OFFSET, can be configured using the
> KASAN_SHADOW_OFFSET option. UML uses roughly 18TB of address
> space, and KASAN requires 1/8th of this. The default location of
> this offset is 0x100000000000. There is usually enough free space at
> this location; however, it is a config option so that it can be
> easily changed if needed.
>
> The UML-specific KASAN initializer uses mmap to map
> the roughly 2.25TB of shadow memory to the location defined by
> KASAN_SHADOW_OFFSET.
>
> Signed-off-by: Patricia Alfonso <trishalfonso@google.com>
> ---
>
> Changes since v1:
>  - KASAN has been initialized much earlier.
>  - With the help of Johannes's RFC patch to implement constructors in
>    UML and Demo showing how kasan_init could take advantage of these
>    super early constructors, most of the "KASAN_SANITIZE := n" have
>    been removed.
>  - Removed extraneous code
>  - Fixed typos


I started reviewing this, but I am spotting things that I already
commented on, like shadow start and about shadow size const. Please
either address them, or answer why they are not addressed, or add some
kind of TODOs so that I don't write the same comment again.


>  arch/um/Kconfig              | 10 ++++++++++
>  arch/um/Makefile             |  6 ++++++
>  arch/um/include/asm/dma.h    |  1 +
>  arch/um/include/asm/kasan.h  | 30 ++++++++++++++++++++++++++++++
>  arch/um/kernel/Makefile      | 22 ++++++++++++++++++++++
>  arch/um/kernel/mem.c         | 19 +++++++++----------
>  arch/um/os-Linux/mem.c       | 19 +++++++++++++++++++
>  arch/um/os-Linux/user_syms.c |  4 ++--
>  arch/x86/um/Makefile         |  3 ++-
>  arch/x86/um/vdso/Makefile    |  3 +++
>  10 files changed, 104 insertions(+), 13 deletions(-)
>  create mode 100644 arch/um/include/asm/kasan.h
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c28..2b76dc273731 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -8,6 +8,7 @@ config UML
>         select ARCH_HAS_KCOV
>         select ARCH_NO_PREEMPT
>         select HAVE_ARCH_AUDITSYSCALL
> +       select HAVE_ARCH_KASAN if X86_64
>         select HAVE_ARCH_SECCOMP_FILTER
>         select HAVE_ASM_MODVERSIONS
>         select HAVE_UID16
> @@ -200,6 +201,15 @@ config UML_TIME_TRAVEL_SUPPORT
>
>           It is safe to say Y, but you probably don't need this.
>
> +config KASAN_SHADOW_OFFSET
> +       hex
> +       depends on KASAN
> +       default 0x100000000000
> +       help
> +         This is the offset at which the ~2.25TB of shadow memory is
> +         initialized and used by KASAN for memory debugging. The default
> +         is 0x100000000000.
> +
>  endmenu
>
>  source "arch/um/drivers/Kconfig"
> diff --git a/arch/um/Makefile b/arch/um/Makefile
> index d2daa206872d..28fe7a9a1858 100644
> --- a/arch/um/Makefile
> +++ b/arch/um/Makefile
> @@ -75,6 +75,12 @@ USER_CFLAGS = $(patsubst $(KERNEL_DEFINES),,$(patsubst -I%,,$(KBUILD_CFLAGS))) \
>                 -D_FILE_OFFSET_BITS=64 -idirafter $(srctree)/include \
>                 -idirafter $(objtree)/include -D__KERNEL__ -D__UM_HOST__
>
> +# Kernel config options are not included in USER_CFLAGS, but the option for KASAN
> +# should be included if the KASAN config option was set.
> +ifdef CONFIG_KASAN
> +       USER_CFLAGS+=-DCONFIG_KASAN=y
> +endif
> +
>  #This will adjust *FLAGS accordingly to the platform.
>  include $(ARCH_DIR)/Makefile-os-$(OS)
>
> diff --git a/arch/um/include/asm/dma.h b/arch/um/include/asm/dma.h
> index fdc53642c718..8aafd60d62bb 100644
> --- a/arch/um/include/asm/dma.h
> +++ b/arch/um/include/asm/dma.h
> @@ -5,6 +5,7 @@
>  #include <asm/io.h>
>
>  extern unsigned long uml_physmem;
> +extern unsigned long long physmem_size;
>
>  #define MAX_DMA_ADDRESS (uml_physmem)
>
> diff --git a/arch/um/include/asm/kasan.h b/arch/um/include/asm/kasan.h
> new file mode 100644
> index 000000000000..ba08061068cf
> --- /dev/null
> +++ b/arch/um/include/asm/kasan.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_UM_KASAN_H
> +#define __ASM_UM_KASAN_H
> +
> +#include <linux/init.h>
> +#include <linux/const.h>
> +
> +#define KASAN_SHADOW_OFFSET _AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
> +#ifdef CONFIG_X86_64
> +#define KASAN_SHADOW_SIZE 0x100000000000UL
> +#else
> +#error "KASAN_SHADOW_SIZE is not defined for this sub-architecture"
> +#endif /* CONFIG_X86_64 */
> +
> +// used in kasan_mem_to_shadow to divide by 8
> +#define KASAN_SHADOW_SCALE_SHIFT 3
> +
> +#define KASAN_SHADOW_START (KASAN_SHADOW_OFFSET)
> +#define KASAN_SHADOW_END (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
> +
> +#ifdef CONFIG_KASAN
> +void kasan_init(void);
> +#else
> +static inline void kasan_init(void) { }
> +#endif /* CONFIG_KASAN */
> +
> +void kasan_map_memory(void *start, unsigned long len);
> +void kasan_unpoison_shadow(const void *address, size_t size);
> +
> +#endif /* __ASM_UM_KASAN_H */
> diff --git a/arch/um/kernel/Makefile b/arch/um/kernel/Makefile
> index 5aa882011e04..875e1827588b 100644
> --- a/arch/um/kernel/Makefile
> +++ b/arch/um/kernel/Makefile
> @@ -8,6 +8,28 @@
>  # kernel.
>  KCOV_INSTRUMENT                := n
>
> +# The way UMl deals with the stack causes seemingly false positive KASAN
> +# reports such as:
> +# BUG: KASAN: stack-out-of-bounds in show_stack+0x15e/0x1fb
> +# Read of size 8 at addr 000000006184bbb0 by task swapper/1
> +# ==================================================================
> +# BUG: KASAN: stack-out-of-bounds in dump_trace+0x141/0x1c5
> +# Read of size 8 at addr 0000000071057eb8 by task swapper/1
> +# ==================================================================
> +# BUG: KASAN: stack-out-of-bounds in get_wchan+0xd7/0x138
> +# Read of size 8 at addr 0000000070e8fc80 by task systemd/1
> +#
> +# With these files removed from instrumentation, those reports are
> +# eliminated, but KASAN still repeatedly reports a bug on syscall_stub_data:
> +# ==================================================================
> +# BUG: KASAN: stack-out-of-bounds in syscall_stub_data+0x299/0x2bf
> +# Read of size 128 at addr 0000000071457c50 by task swapper/1
> +
> +KASAN_SANITIZE_stacktrace.o := n
> +KASAN_SANITIZE_sysrq.o := n
> +KASAN_SANITIZE_process.o := n
> +
> +
>  CPPFLAGS_vmlinux.lds := -DSTART=$(LDS_START)           \
>                          -DELF_ARCH=$(LDS_ELF_ARCH)     \
>                          -DELF_FORMAT=$(LDS_ELF_FORMAT) \
> diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
> index 32fc941c80f7..7b7b8a0ee724 100644
> --- a/arch/um/kernel/mem.c
> +++ b/arch/um/kernel/mem.c
> @@ -18,21 +18,20 @@
>  #include <kern_util.h>
>  #include <mem_user.h>
>  #include <os.h>
> +#include <linux/sched/task.h>
>
> -extern int printf(const char *msg, ...);
> -static void early_print(void)
> +#ifdef CONFIG_KASAN
> +void kasan_init(void)
>  {
> -       printf("I'm super early, before constructors\n");
> +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> +       init_task.kasan_depth = 0;
> +       os_info("KernelAddressSanitizer initialized\n");
>  }
>
> -static void __attribute__((constructor)) constructor_test(void)
> -{
> -       printf("yes, you can see it\n");
> -}
> -
> -static void (*early_print_ptr)(void)
> +static void (*kasan_init_ptr)(void)
>  __attribute__((section(".kasan_init"), used))
> - = early_print;
> += kasan_init;
> +#endif
>
>  /* allocated in paging_init, zeroed in mem_init, and unchanged thereafter */
>  unsigned long *empty_zero_page = NULL;
> diff --git a/arch/um/os-Linux/mem.c b/arch/um/os-Linux/mem.c
> index 3c1b77474d2d..da7039721d35 100644
> --- a/arch/um/os-Linux/mem.c
> +++ b/arch/um/os-Linux/mem.c
> @@ -17,6 +17,25 @@
>  #include <init.h>
>  #include <os.h>
>
> +/**
> + * kasan_map_memory() - maps memory from @start with a size of @len.
> + * The allocated memory is filled with zeroes upon success.
> + * @start: the start address of the memory to be mapped
> + * @len: the length of the memory to be mapped
> + *
> + * This function is used to map shadow memory for KASAN in uml
> + */
> +void kasan_map_memory(void *start, size_t len)
> +{
> +       if (mmap(start,
> +                len,
> +                PROT_READ|PROT_WRITE,
> +                MAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE|MAP_NORESERVE,
> +                -1,
> +                0) == MAP_FAILED)
> +               os_info("Couldn't allocate shadow memory %s", strerror(errno));
> +}
> +
>  /* Set by make_tempfile() during early boot. */
>  static char *tempdir = NULL;
>
> diff --git a/arch/um/os-Linux/user_syms.c b/arch/um/os-Linux/user_syms.c
> index 715594fe5719..cb667c9225ab 100644
> --- a/arch/um/os-Linux/user_syms.c
> +++ b/arch/um/os-Linux/user_syms.c
> @@ -27,10 +27,10 @@ EXPORT_SYMBOL(strstr);
>  #ifndef __x86_64__
>  extern void *memcpy(void *, const void *, size_t);
>  EXPORT_SYMBOL(memcpy);
> -#endif
> -
>  EXPORT_SYMBOL(memmove);
>  EXPORT_SYMBOL(memset);
> +#endif
> +
>  EXPORT_SYMBOL(printf);
>
>  /* Here, instead, I can provide a fake prototype. Yes, someone cares: genksyms.
> diff --git a/arch/x86/um/Makefile b/arch/x86/um/Makefile
> index 33c51c064c77..7dbd76c546fe 100644
> --- a/arch/x86/um/Makefile
> +++ b/arch/x86/um/Makefile
> @@ -26,7 +26,8 @@ else
>
>  obj-y += syscalls_64.o vdso/
>
> -subarch-y = ../lib/csum-partial_64.o ../lib/memcpy_64.o ../entry/thunk_64.o
> +subarch-y = ../lib/csum-partial_64.o ../lib/memcpy_64.o ../entry/thunk_64.o \
> +       ../lib/memmove_64.o ../lib/memset_64.o
>
>  endif
>
> diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
> index 0caddd6acb22..450efa0fb694 100644
> --- a/arch/x86/um/vdso/Makefile
> +++ b/arch/x86/um/vdso/Makefile
> @@ -3,6 +3,9 @@
>  # Building vDSO images for x86.
>  #
>
> +# do not instrument on vdso because KASAN is not compatible with user mode
> +KASAN_SANITIZE                 := n
> +
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
>  KCOV_INSTRUMENT                := n
>
> --
> 2.25.0.341.g760bfbb309-goog
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200210225806.249297-1-trishalfonso%40google.com.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
