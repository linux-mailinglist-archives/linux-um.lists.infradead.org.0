Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8A71816A1
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 12:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7dqoOezZAxxk2LcWLEGVEipFWVZDVdjVd0QkuBOnUY=; b=kq7WX+9B1j5VaF
	UQbcbulu0P14YGhv7PaXCP7PC00GU7bADiCzypGj2SKptd64qknRhJe57yCFl5/2cGq4J+AJyQXvz
	057l+FYeN2DEKubwH7qQHQ9cZ4B4cLWdin2q6uTSDUwMTOxEgt8gxIJBs3/6vzr3j3QUzL9k7MkVm
	eG6c4ukMaqqNHedTiSKNVnWvfJ8rwUA7OJ7FQ0q0xCWzN/8/hO/eDYRpZddX19nbm7VKT9gZJy4D5
	hV+1zYGICiRM5FozgaB0jJOWGpqAXeg5fojIXAbdlRo+9SzRxGvDtSLVqUPl6jBzD/QrO3v8WyicM
	pXUnhCvOzFfYoyQ8ug3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzOH-0003Rh-AY; Wed, 11 Mar 2020 11:19:09 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzOA-0003Qf-CM
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 11:19:07 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jBzO2-0019K5-FE; Wed, 11 Mar 2020 12:18:54 +0100
Message-ID: <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>, Jeff Dike
 <jdike@addtoit.com>,  Richard Weinberger <richard@nod.at>,
 anton.ivanov@cambridgegreys.com, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>, Brendan Higgins
 <brendanhiggins@google.com>, David Gow <davidgow@google.com>
Date: Wed, 11 Mar 2020 12:18:53 +0100
In-Reply-To: <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 (sfid-20200306_010352_481400_662BF174)
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_041905_955697_7A0B4969 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 11:32 +0100, Johannes Berg wrote:
> 
> I do see issues with modules though, e.g. 
> https://p.sipsolutions.net/1a2df5f65d885937.txt
> 
> where we seem to get some real confusion when lockdep is storing the
> stack trace??
> 
> And https://p.sipsolutions.net/9a97e8f68d8d24b7.txt, where something
> convinces ASAN that an address is a user address (it might even be
> right?) and it disallows kernel access to it?

I can work around both of these by not freeing the original module copy
in kernel/module.c:

        /* Get rid of temporary copy. */
//      free_copy(info);

but I really have no idea why we get this in the first place?

Another interesting data point is that it never happens on the first
module.

Also, I've managed to get a report like this:

Memory state around the buggy address:
 000000007106cf00: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
 000000007106cf80: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
>000000007106d000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
                   ^
 000000007106d080: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
 000000007106d100: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b


which indicates that something's _really_ off with the KASAN shadow?


Ohhh ...

$ gdb -p ...
(gdb) p/x task_size
$1 = 0x7fc0000000
(gdb) p/x __end_of_fixed_addresses
$2 = 0x0
(gdb) p/x end_iomem
$3 = 0x70000000
(gdb) p/x __va_space

#define TASK_SIZE (task_size)
#define FIXADDR_TOP        (TASK_SIZE - 2 * PAGE_SIZE)

#define FIXADDR_START      (FIXADDR_TOP - FIXADDR_SIZE)
#define FIXADDR_SIZE       (__end_of_fixed_addresses << PAGE_SHIFT)

#define VMALLOC_END       (FIXADDR_START-2*PAGE_SIZE)

#define MODULES_VADDR   VMALLOC_START
#define MODULES_END       VMALLOC_END
#define VMALLOC_START ((end_iomem + VMALLOC_OFFSET) & ~(VMALLOC_OFFSET-1))
#define VMALLOC_OFFSET  (__va_space)
#define __va_space (8*1024*1024)


So from that, it would look like the UML vmalloc area is from
0x  70800000 all the way to
0x7fbfffc000, which obviously clashes with the KASAN_SHADOW_OFFSET being
just 0x7fff8000.


I'm guessing that basically the module loading overwrote the kasan
shadow then?

I tried changing it

 config KASAN_SHADOW_OFFSET
        hex
        depends on KASAN
-       default 0x7fff8000
+       default 0x8000000000


and also put a check in like this:

+++ b/arch/um/kernel/um_arch.c
@@ -13,6 +13,7 @@
 #include <linux/sched.h>
 #include <linux/sched/task.h>
 #include <linux/kmsg_dump.h>
+#include <linux/kasan.h>
 
 #include <asm/pgtable.h>
 #include <asm/processor.h>
@@ -267,9 +268,11 @@ int __init linux_main(int argc, char **argv)
        /*
         * TASK_SIZE needs to be PGDIR_SIZE aligned or else exit_mmap craps
         * out
         */
        task_size = host_task_size & PGDIR_MASK;
 
+       if (task_size > KASAN_SHADOW_OFFSET)
+               panic("KASAN shadow offset must be bigger than task size");


but now I just crash accessing the shadow even though it was mapped fine?


Pid: 504, comm: modprobe Tainted: G           O      5.5.0-rc6-00009-g09462ab4014b-dirty
RIP:  
RSP: 000000006d68fa90  EFLAGS: 00010202
RAX: 000000800e0210cd RBX: 000000007010866f RCX: 00000000601a9777
RDX: 000000800e0210ce RSI: 0000000000000004 RDI: 000000007010866c
RBP: 000000006d68faa0 R08: 000000800e0210cd R09: 0000000060041432
R10: 000000800e0210ce R11: 0000000000000001 R12: 000000800e0210cd
R13: 0000000000000000 R14: 0000000000000001 R15: 00000000601c2e82
Kernel panic - not syncing: Kernel mode fault at addr 0x800e0210cd, ip 0x601c332b
CPU: 0 PID: 504 Comm: modprobe Tainted: G           O      5.5.0-rc6-00009-g09462ab4014b-dirty #24
Stack:
601c2f89 70108638 6d68fab0 601c1209
6d68fad0 601a9777 6cf2b240 7317f000
6d68fb40 601a2ae9 6f15b118 00000001
Call Trace:
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
__kasan_check_write (/home/tester/vlab/linux/mm/kasan/common.c:102) 
__free_pages (/home/tester/vlab/linux/./arch/x86/include/asm/atomic.h:125 /home/tester/vlab/linux/./include/asm-generic/atomic-instrumented.h:748 /home/tester/vlab/linux/./include/linux/page_ref.h:139 /home/tester/vlab/linux/./include/linux/mm.h:593 /home/tester/vlab/linux/mm/page_alloc.c:4823) 
__vunmap (/home/tester/vlab/linux/mm/vmalloc.c:2303 (discriminator 2)) 
? __asan_load4 (/home/tester/vlab/linux/mm/kasan/generic.c:251) 
? sysfs_create_bin_file (/home/tester/vlab/linux/fs/sysfs/file.c:537) 
__vfree (/home/tester/vlab/linux/mm/vmalloc.c:2356) 
? delete_object_full (/home/tester/vlab/linux/mm/kmemleak.c:693) 
vfree (/home/tester/vlab/linux/mm/vmalloc.c:2386) 
? sysfs_create_bin_file (/home/tester/vlab/linux/fs/sysfs/file.c:537) 
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
load_module (/home/tester/vlab/linux/./include/linux/jump_label.h:254 /home/tester/vlab/linux/./include/linux/jump_label.h:264 /home/tester/vlab/linux/./include/trace/events/module.h:31 /home/tester/vlab/linux/kernel/module.c:3927) 
? kernel_read_file_from_fd (/home/tester/vlab/linux/fs/exec.c:993) 
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
__do_sys_finit_module (/home/tester/vlab/linux/kernel/module.c:4019) 
? sys_finit_module (/home/tester/vlab/linux/kernel/module.c:3995) 
? __asan_store8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
sys_finit_module (/home/tester/vlab/linux/kernel/module.c:3995) 
handle_syscall (/home/tester/vlab/linux/arch/um/kernel/skas/syscall.c:44) 
userspace (/home/tester/vlab/linux/arch/um/os-Linux/skas/process.c:173 /home/tester/vlab/linux/arch/um/os-Linux/skas/process.c:416) 
? save_registers (/home/tester/vlab/linux/arch/um/os-Linux/registers.c:18) 
? arch_prctl (/home/tester/vlab/linux/arch/x86/um/syscalls_64.c:65) 
? calculate_sigpending (/home/tester/vlab/linux/kernel/signal.c:200) 
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
? __asan_load8 (/home/tester/vlab/linux/mm/kasan/generic.c:252) 
fork_handler (/home/tester/vlab/linux/arch/um/kernel/process.c:154) 

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
