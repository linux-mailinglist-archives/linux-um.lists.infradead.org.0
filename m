Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D358196855
	for <lists+linux-um@lfdr.de>; Sat, 28 Mar 2020 19:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t6gMAR/FzimrIktr0sfj8HVlJ363++G2YK0yjqubulM=; b=WIiKD7Vm4cR2bB4Bo8DH04RSU
	CsG5C9gt1I6S3mOFhdEGo7mwXWGOHD1qaQ0rXGeRihZgY1iaG7L0kOwPBx3sjDPxSCxtyBCejsMPA
	5D6vV/LNUso790mOeB9ifT2bNxBDK/f5IJoXiYU4eqpT59c8R0GN/AFfe0Onkpfc54X039pHD3seE
	Vqhi9O2LQwSrvR89jU5F8W20qAVrg53Yr6dq/W1yrHFE7v62HRYNVFTFiw5aIvhxIMDLl+eYeYNsn
	GFO4BOY+/NV0/Uj81aGjXzNH0jKtIsYAlun1r1B0G1hEh7HCeffS6wuIf381kgk21IrA8q3bDthtd
	OMZ1DH5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIG4d-0000v0-T0; Sat, 28 Mar 2020 18:20:47 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIG4a-0000uV-Gi
 for linux-um@lists.infradead.org; Sat, 28 Mar 2020 18:20:46 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jIFl6-0005fu-TT; Sat, 28 Mar 2020 18:00:38 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jIFl4-0001g5-Fm; Sat, 28 Mar 2020 18:00:36 +0000
Subject: Re: use-after-free warning on ubd driver
To: Alba Mendez <me@alba.sh>, linux-um@lists.infradead.org
References: <21b6c95a288df7db77e5f9757040162fa5c4cd40.camel@alba.sh>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <7640d0bf-da47-2836-6f98-a43b926300e8@kot-begemot.co.uk>
Date: Sat, 28 Mar 2020 18:00:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <21b6c95a288df7db77e5f9757040162fa5c4cd40.camel@alba.sh>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_112044_556288_59DF7A9C 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 28/03/2020 17:57, Alba Mendez wrote:
> Hello! I'm new to kernel development, so apologies if this is a known
> issue / silly question.
> 
> I'm playing around with UML and I keep getting a use-after-free on
> (apparently?) ubd, see trace below. I can reproduce by starting up the
> kernel with a 100MB device:
> 
> $ fallocate -l 100M blk
> $ ./linux mem=150M ubdb=blk rootfstype=hostfs init=/sbin/bash
> 
> And then, inside:
> $ dd if=/dev/zero of=/dev/ubdb
> 
> Before dd finishes, most of the time I get this trace.
> Is this normal? Kernel is unmodified & built with x86_64_defconfig.
> 
> This seems to have been introduced at ecb0a83e319, but the trace was a
> bit different at that time.
> 
> Kind regards,
> Alba

Can you please send your kernel version and the .config you are using so 
I can reproduce it.
Thanks in advance,


> 
> 
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 0 at lib/refcount.c:28
> refcount_warn_saturate+0x13f/0x141
> refcount_t: underflow; use-after-free.
> Modules linked in:
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc7-01120-g83fd69c93340
> #1
> Stack:
>   603eeef0 602dcddc 00000009 603eef60
>   00000000 6a140380 603eef00 602dce21
>   603eef40 60038105 603eef68 603eef70
> Call Trace:
>   [<60068389>] ? printk+0x0/0x94
>   [<601dfa85>] ? blk_queue_max_discard_sectors+0x0/0xd
>   [<6001d2e6>] show_stack+0x13b/0x155
>   [<602dcddc>] ? dump_stack_print_info+0xdf/0xe8
>   [<602dce21>] dump_stack+0x2a/0x2c
>   [<60038105>] __warn+0xf4/0x11d
>   [<600385bd>] warn_slowpath_fmt+0xd1/0xdf
>   [<601f16e8>] ? __rq_qos_done_bio+0x0/0x2f
>   [<600384ec>] ? warn_slowpath_fmt+0x0/0xdf
>   [<600d1f9b>] ? kmem_cache_free+0x60/0x67
>   [<6007203c>] ? raw_read_seqcount_begin.constprop.0+0x0/0x15
>   [<6002f5aa>] ? os_nsecs+0x1d/0x2b
>   [<601ff8e0>] refcount_warn_saturate+0x13f/0x141
>   [<601e3df1>] refcount_sub_and_test.constprop.0+0x32/0x3a
>   [<601e4a45>] blk_mq_free_request+0xf6/0x112
>   [<601e4b6d>] __blk_mq_end_request+0x10c/0x114
>   [<60028e4e>] ubd_intr+0xb5/0x169
>   [<60069168>] __handle_irq_event_percpu+0x34/0x10c
>   [<6001d3a5>] ? timer_read+0x10/0x1c
>   [<60069266>] handle_irq_event_percpu+0x26/0x69
>   [<600692cf>] handle_irq_event+0x26/0x34
>   [<600692a9>] ? handle_irq_event+0x0/0x34
>   [<6006c783>] ? unmask_irq+0x0/0x37
>   [<6006cde3>] handle_edge_irq+0xbc/0xd6
>   [<60068a87>] generic_handle_irq+0x21/0x29
>   [<6001ba4c>] do_IRQ+0x39/0x54
>   [<6001bb0e>] sigio_handler+0xa7/0x111
>   [<6002ea30>] sig_handler_common+0xa6/0xbc
>   [<6001d40c>] ? timer_handler+0x0/0x48
>   [<6002edb2>] ? block_signals+0x0/0x11
>   [<6002eaa2>] ? timer_real_alarm_handler+0x5c/0x5e
>   [<601fc982>] ? find_next_bit+0x1b/0x1d
>   [<6006fc37>] ? __next_timer_interrupt+0x78/0xd0
>   [<60070b65>] ? arch_local_irq_save+0x22/0x29
>   [<60071422>] ? hrtimer_get_next_event+0x59/0x61
>   [<6002edb2>] ? block_signals+0x0/0x11
>   [<6002ee3f>] unblock_signals+0x7c/0xd7
>   [<600376cd>] ? kernel_thread+0x0/0x4e
>   [<6001c594>] arch_cpu_idle+0x54/0x5b
>   [<6002edb2>] ? block_signals+0x0/0x11
>   [<602ef012>] default_idle_call+0x32/0x34
>   [<6005a29c>] do_idle+0xaa/0x127
>   [<602ec910>] ? schedule+0x99/0xdd
>   [<6005a1f2>] ? do_idle+0x0/0x127
>   [<6005a56d>] cpu_startup_entry+0x1e/0x20
>   [<6005a54f>] ? cpu_startup_entry+0x0/0x20
>   [<6005005f>] ? find_task_by_pid_ns+0x0/0x2d
>   [<602ebe05>] rest_init+0xc2/0xc7
>   [<6002ee9a>] ? get_signals+0x0/0xa
>   [<602e5904>] ? strlen+0x0/0x11
>   [<600016bc>] arch_call_rest_init+0x10/0x12
>   [<60001c7a>] start_kernel+0x5b7/0x5c6
>   [<600035e6>] start_kernel_proc+0x49/0x4d
>   [<60065c27>] ? kmsg_dump_register+0x70/0x78
>   [<6001c05c>] new_thread_handler+0x81/0xb2
>   [<6000359b>] ? kmsg_dumper_stdout_init+0x1a/0x1c
>   [<6001ecb5>] uml_finishsetup+0x54/0x59
> 
> ---[ end trace 521c0be003ad0a13 ]---
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 


-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
