Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7D3181F96
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 18:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEQq7mvIQ47D77kEiz4xFUvhI/8RnaVo13mvZ6y6f6g=; b=ACGo5RR8xqiv8M
	gq0U6K+cmy4UouGd1UXf/zUVZfU3vxIG1Jg6OQk0GQRMaEQwXAGxrs8ca8rgvdAedex3RFKZTnWIi
	46GpzeGXUBdANeHvahGOCYaxrAlueGqq/+UeAGnjmFGghjiIVo+1Gsp2Og8l0EAgt8GnL8HAz1UbI
	oe6DedEnkJ8vRlhNHX/AdyvAuAn8DXGPXQuY1aII/PRJZZU+VcecP8yHLz3oSv+1GRgmWt6xDQ+OX
	1uHaU0qYdIzNLTSudXtaamszOEqMF2+Bk2Xtw+0k3fTfoShZw31A911USMd+LPYeqV2ROVN21zzkv
	GuqL33nj6SYgI2sF7cCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5G9-0001mD-7E; Wed, 11 Mar 2020 17:35:09 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5G6-0001IX-8o
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 17:35:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id p62so2926183qkb.0
 for <linux-um@lists.infradead.org>; Wed, 11 Mar 2020 10:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fa8m8jYa1TakhUMQnyj4bRdIQUor/ug/z2CxDzEB9h0=;
 b=NvKtUY0DBLe1tfvvtp1Z2SVROwsagGCASov9STUry2x/j89DDCMXFq7bTl43l8AGVI
 dauIcZr3TbHcXlxLkHjZ1HaALtly7ZKcj4YRAVXPbDz+LdJcYzZT/NXrYKScb9e+Ei5N
 gJ7ILUSrdZyN4SOI8U3ZXxqCY8ncrnOZ39FxNJ2WkTrAwUzwL4NnM4/B+8qBscfQmrkb
 e6KciU7DZvc8xlBAaNtyjL2BhdEh6Cn9C8cpZuKKF4KrVcCXqKtYq5zS3rhf3bRheu1U
 eRcnHjk6998Lcii8yvZmUMqBodbevhTGL+WIKcbSzy+N3bjKQcSFZ0kJrITTD/BLGs6T
 auUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fa8m8jYa1TakhUMQnyj4bRdIQUor/ug/z2CxDzEB9h0=;
 b=YrEReJTTY50o0uH8ezfBDYUH8X3JPSswd+y5CaGDIj64cT4rfBohZAeF9Psu+xqJoH
 qGzCnU+XcWGYJ5+nTPqiJHDeSW8/PPG4ZFKycOYNw0ZaK5qS9HxDUwPDzTrTsH4XL8Y8
 6+QjC5XoOJhlsjk90ckx2JtHPYRBLi9RP62Q/Ez3/aNJVRccM/GZhnlqT0dDN3AT/pWK
 kwMUtBISv1Qpy+gZe7BxlPkCzYiAf2JcIzgpMEOwAL+MY37V6EjitBjK1bs9vRrhRLts
 Ndwk6nOIpaSsnUBentqF9UTR42CRwZcQNVtgpT0csvOblu1T93KXSuTRx9wuFaTgksX0
 MgLQ==
X-Gm-Message-State: ANhLgQ2X5q/xyQ4irJmzQpc/8HXKe162UM5YJ7F6e83PxIxKWpy3oJyj
 3dcVv2FmeMGerZPGLwfizMWmkKQBy7c2Z8gtE2W2ww==
X-Google-Smtp-Source: ADFU+vtZ68BUMbFjWWp0dDmlvZtbGDKtdC2vup/8asz8+RCIjbaersqICeqVV48kr0D/uCraVlheoXyRtxUgba5qPZE=
X-Received: by 2002:a37:8b01:: with SMTP id n1mr3423155qkd.407.1583948104591; 
 Wed, 11 Mar 2020 10:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
In-Reply-To: <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 11 Mar 2020 18:34:53 +0100
Message-ID: <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_103506_377735_551022D7 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 12:19 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Wed, 2020-03-11 at 11:32 +0100, Johannes Berg wrote:
> >
> > I do see issues with modules though, e.g.
> > https://p.sipsolutions.net/1a2df5f65d885937.txt
> >
> > where we seem to get some real confusion when lockdep is storing the
> > stack trace??
> >
> > And https://p.sipsolutions.net/9a97e8f68d8d24b7.txt, where something
> > convinces ASAN that an address is a user address (it might even be
> > right?) and it disallows kernel access to it?
>
> I can work around both of these by not freeing the original module copy
> in kernel/module.c:
>
>         /* Get rid of temporary copy. */
> //      free_copy(info);
>
> but I really have no idea why we get this in the first place?
>
> Another interesting data point is that it never happens on the first
> module.
>
> Also, I've managed to get a report like this:
>
> Memory state around the buggy address:
>  000000007106cf00: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
>  000000007106cf80: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> >000000007106d000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
>                    ^
>  000000007106d080: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
>  000000007106d100: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
>
>
> which indicates that something's _really_ off with the KASAN shadow?
>
>
> Ohhh ...
>
> $ gdb -p ...
> (gdb) p/x task_size
> $1 = 0x7fc0000000
> (gdb) p/x __end_of_fixed_addresses
> $2 = 0x0
> (gdb) p/x end_iomem
> $3 = 0x70000000
> (gdb) p/x __va_space
>
> #define TASK_SIZE (task_size)
> #define FIXADDR_TOP        (TASK_SIZE - 2 * PAGE_SIZE)
>
> #define FIXADDR_START      (FIXADDR_TOP - FIXADDR_SIZE)
> #define FIXADDR_SIZE       (__end_of_fixed_addresses << PAGE_SHIFT)
>
> #define VMALLOC_END       (FIXADDR_START-2*PAGE_SIZE)
>
> #define MODULES_VADDR   VMALLOC_START
> #define MODULES_END       VMALLOC_END
> #define VMALLOC_START ((end_iomem + VMALLOC_OFFSET) & ~(VMALLOC_OFFSET-1))
> #define VMALLOC_OFFSET  (__va_space)
> #define __va_space (8*1024*1024)
>
>
> So from that, it would look like the UML vmalloc area is from
> 0x  70800000 all the way to
> 0x7fbfffc000, which obviously clashes with the KASAN_SHADOW_OFFSET being
> just 0x7fff8000.
>
>
> I'm guessing that basically the module loading overwrote the kasan
> shadow then?

Well, ok, this is definitely not going to fly :)

I don't know if it's easy to move modules to a different location. It
would be nice because 0x7fbfffc000 is the shadow start that's used in
userspace asan and it allows to faster instrumentation (if offset is
within first 2 gigs, the instruction encoding is much more compact,
for >2gigs it will require several instructions).
But if it's not really easy, I guess we go with a large shadow start
(at least initially). A slower but working KASAN is better than fast
non-working KASAN :)

> I tried changing it
>
>  config KASAN_SHADOW_OFFSET
>         hex
>         depends on KASAN
> -       default 0x7fff8000
> +       default 0x8000000000
>
>
> and also put a check in like this:
>
> +++ b/arch/um/kernel/um_arch.c
> @@ -13,6 +13,7 @@
>  #include <linux/sched.h>
>  #include <linux/sched/task.h>
>  #include <linux/kmsg_dump.h>
> +#include <linux/kasan.h>
>
>  #include <asm/pgtable.h>
>  #include <asm/processor.h>
> @@ -267,9 +268,11 @@ int __init linux_main(int argc, char **argv)
>         /*
>          * TASK_SIZE needs to be PGDIR_SIZE aligned or else exit_mmap craps
>          * out
>          */
>         task_size = host_task_size & PGDIR_MASK;
>
> +       if (task_size > KASAN_SHADOW_OFFSET)
> +               panic("KASAN shadow offset must be bigger than task size");
>
>
> but now I just crash accessing the shadow even though it was mapped fine?

Yes, this is puzzling.
I noticed that RIP is the same in both cases and it relates to vmap code.
A support for shadow for vmalloced-memory was added to KASAN recently
and I suspect it may conflict with UML.
See:
https://elixir.bootlin.com/linux/v5.6-rc5/ident/kasan_populate_vmalloc

I think we simply don't need any of that because we already mapped
shadow for all potentially used memory.
A simple thing to try is to disable CONFIG_KASAN_VMALLOC. If it fixes
the problem, we need to either force-disable CONFIG_KASAN_VMALLOC
under UML or return early from these functions.

What does pte-manipulation code even do under UML?

Looking at the code around, kasan_mem_notifier may be a problem too,
or at least excessive and confusing. We already have shadow for
everything, we don't need _any_ of dynamic/lazy shadow mapping.


> Pid: 504, comm: modprobe Tainted: G           O      5.5.0-rc6-00009-g09462ab4014b-dirty
> RIP:
> RSP: 000000006d68fa90  EFLAGS: 00010202
> RAX: 000000800e0210cd RBX: 000000007010866f RCX: 00000000601a9777
> RDX: 000000800e0210ce RSI: 0000000000000004 RDI: 000000007010866c
> RBP: 000000006d68faa0 R08: 000000800e0210cd R09: 0000000060041432
> R10: 000000800e0210ce R11: 0000000000000001 R12: 000000800e0210cd
> R13: 0000000000000000 R14: 0000000000000001 R15: 00000000601c2e82
> Kernel panic - not syncing: Kernel mode fault at addr 0x800e0210cd, ip 0x601c332b
> CPU: 0 PID: 504 Comm: modprobe Tainted: G           O      5.5.0-rc6-00009-g09462ab4014b-dirty #24
> Stack:
> 601c2f89 70108638 6d68fab0 601c1209
> 6d68fad0 601a9777 6cf2b240 7317f000
> 6d68fb40 601a2ae9 6f15b118 00000001
> Call Trace:
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> __kasan_check_write (/home/tester/vlab/linux/mm/kasan/common.c:102)
> __free_pages (/home/tester/vlab/linux/./arch/x86/include/asm/atomic.h:125 /home/tester/vlab/linux/./include/asm-generic/atomic-instrumented.h:748 /home/tester/vlab/linux/./include/linux/page_ref.h:139 /home/tester/vlab/linux/./include/linux/mm.h:593 /home/tester/vlab/linux/mm/page_alloc.c:4823)
> __vunmap (/home/tester/vlab/linux/mm/vmalloc.c:2303 (discriminator 2))
> ? __asan_load4 (/home/tester/vlab/linux/mm/kasan/generic.c:251)
> ? sysfs_create_bin_file (/home/tester/vlab/linux/fs/sysfs/file.c:537)
> __vfree (/home/tester/vlab/linux/mm/vmalloc.c:2356)
> ? delete_object_full (/home/tester/vlab/linux/mm/kmemleak.c:693)
> vfree (/home/tester/vlab/linux/mm/vmalloc.c:2386)
> ? sysfs_create_bin_file (/home/tester/vlab/linux/fs/sysfs/file.c:537)
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> load_module (/home/tester/vlab/linux/./include/linux/jump_label.h:254 /home/tester/vlab/linux/./include/linux/jump_label.h:264 /home/tester/vlab/linux/./include/trace/events/module.h:31 /home/tester/vlab/linux/kernel/module.c:3927)
> ? kernel_read_file_from_fd (/home/tester/vlab/linux/fs/exec.c:993)
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> __do_sys_finit_module (/home/tester/vlab/linux/kernel/module.c:4019)
> ? sys_finit_module (/home/tester/vlab/linux/kernel/module.c:3995)
> ? __asan_store8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> sys_finit_module (/home/tester/vlab/linux/kernel/module.c:3995)
> handle_syscall (/home/tester/vlab/linux/arch/um/kernel/skas/syscall.c:44)
> userspace (/home/tester/vlab/linux/arch/um/os-Linux/skas/process.c:173 /home/tester/vlab/linux/arch/um/os-Linux/skas/process.c:416)
> ? save_registers (/home/tester/vlab/linux/arch/um/os-Linux/registers.c:18)
> ? arch_prctl (/home/tester/vlab/linux/arch/x86/um/syscalls_64.c:65)
> ? calculate_sigpending (/home/tester/vlab/linux/kernel/signal.c:200)
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> ? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252)
> fork_handler (/home/tester/vlab/linux/arch/um/kernel/process.c:154)
>
> johannes
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
