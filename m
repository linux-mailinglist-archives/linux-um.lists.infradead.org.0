Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DE21529C3
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 12:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KE6wY51VoS36kQWGDaD2QF3qMUvoEBEClhMDi/YdT5A=; b=OurlD41BjK6w3all1JVu/cmBl
	3u2vuutW9Ic7YGrYx8FbfFDjU9n4hwZrcv4z1mRNk6xEuYL+Xi5LyvxiKlrgE61Iu8O+AwaGwg6zk
	LC0cITNpVhQ4LGHWK30qMd9wWJek6G270n4LstrLm5jwZGTCLNGrAXIX/rLEx+KrpwDLG67JBeb6B
	w/t3SJCdf5zLFBKTQPLnFLm/plWEeH5XpjlB8r5a9VMUxJ5WQWcnS0V2RIMZpetVVh5btb3YwU2yH
	zx1tVi7oIC+Quy4RauQF96Et5fTkl69cb1ACTmoejkAk5AWIq4+W+nux0PqSQVkdBNbAS+WLlE/WW
	3UgtZcV7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izIjf-0002f8-EE; Wed, 05 Feb 2020 11:20:47 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izIjb-0002ea-MJ
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 11:20:45 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izIDa-0000qw-On; Wed, 05 Feb 2020 10:47:39 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1izIDY-0007yU-Dc; Wed, 05 Feb 2020 10:47:38 +0000
Subject: Re: [RFC v3 07/26] um lkl: interrupt support
To: Hajime Tazaki <thehajime@gmail.com>, linux-um@lists.infradead.org
References: <cover.1580882335.git.thehajime@gmail.com>
 <9d6f93f061b2b248c0fa0a7f1530792936f8e7be.1580882335.git.thehajime@gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <800b1132-68df-8c63-5371-015bfc83a511@kot-begemot.co.uk>
Date: Wed, 5 Feb 2020 10:47:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9d6f93f061b2b248c0fa0a7f1530792936f8e7be.1580882335.git.thehajime@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_032043_863900_56E87127 
X-CRM114-Status: GOOD (  28.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 linux-kernel-library@freelists.org, Akira Moroo <retrage01@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 05/02/2020 07:30, Hajime Tazaki wrote:
> From: Octavian Purdila <tavi.purdila@gmail.com>
> 
> Add APIs that allows the host to reserve and free and interrupt number
> and also to trigger an interrupt.
> 
> The trigger operation will simply store the interrupt data in
> queue. The interrupt handler is run later, at the first opportunity it
> has to avoid races with any kernel threads.
> 
> Currently, interrupts are run on the first interrupt enable operation
> if interrupts are disabled and if we are not already in interrupt
> context.
> 
> When triggering an interrupt, it uses GCC's built-in functions for
> atomic memory access to synchronize and simple boolean flags.
> 
> Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
> Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> ---
>   arch/um/lkl/include/asm/irq.h             |  13 ++
>   arch/um/lkl/include/uapi/asm/irq.h        |  36 ++++
>   arch/um/lkl/include/uapi/asm/sigcontext.h |  16 ++
>   arch/um/lkl/kernel/irq.c                  | 193 ++++++++++++++++++++++
>   4 files changed, 258 insertions(+)
>   create mode 100644 arch/um/lkl/include/asm/irq.h
>   create mode 100644 arch/um/lkl/include/uapi/asm/irq.h
>   create mode 100644 arch/um/lkl/include/uapi/asm/sigcontext.h
>   create mode 100644 arch/um/lkl/kernel/irq.c
> 
> diff --git a/arch/um/lkl/include/asm/irq.h b/arch/um/lkl/include/asm/irq.h
> new file mode 100644
> index 000000000000..948fc54cb76c
> --- /dev/null
> +++ b/arch/um/lkl/include/asm/irq.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_LKL_IRQ_H
> +#define _ASM_LKL_IRQ_H
> +
> +#define IRQ_STATUS_BITS		(sizeof(long) * 8)
> +#define NR_IRQS			((int)(IRQ_STATUS_BITS * IRQ_STATUS_BITS))
> +
> +void run_irqs(void);
> +void set_irq_pending(int irq);
> +
> +#include <uapi/asm/irq.h>
> +
> +#endif
> diff --git a/arch/um/lkl/include/uapi/asm/irq.h b/arch/um/lkl/include/uapi/asm/irq.h
> new file mode 100644
> index 000000000000..666628b233eb
> --- /dev/null
> +++ b/arch/um/lkl/include/uapi/asm/irq.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +#ifndef _ASM_UAPI_LKL_IRQ_H
> +#define _ASM_UAPI_LKL_IRQ_H
> +
> +/**
> + * lkl_trigger_irq - generate an interrupt
> + *
> + * This function is used by the device host side to signal its Linux counterpart
> + * that some event happened.
> + *
> + * @irq - the irq number to signal
> + */
> +int lkl_trigger_irq(int irq);
> +
> +/**
> + * lkl_get_free_irq - find and reserve a free IRQ number
> + *
> + * This function is called by the host device code to find an unused IRQ number
> + * and reserved it for its own use.
> + *
> + * @user - a string to identify the user
> + * @returns - and irq number that can be used by request_irq or an negative
> + * value in case of an error
> + */
> +int lkl_get_free_irq(const char *user);
> +
> +/**
> + * lkl_put_irq - release an IRQ number previously obtained with lkl_get_free_irq
> + *
> + * @irq - irq number to release
> + * @user - string identifying the user; should be the same as the one passed to
> + * lkl_get_free_irq when the irq number was obtained
> + */
> +void lkl_put_irq(int irq, const char *name);
> +
> +#endif
> diff --git a/arch/um/lkl/include/uapi/asm/sigcontext.h b/arch/um/lkl/include/uapi/asm/sigcontext.h
> new file mode 100644
> index 000000000000..2f4848843d1d
> --- /dev/null
> +++ b/arch/um/lkl/include/uapi/asm/sigcontext.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +#ifndef _ASM_UAPI_LKL_SIGCONTEXT_H
> +#define _ASM_UAPI_LKL_SIGCONTEXT_H
> +
> +#include <asm/ptrace.h>
> +
> +struct pt_regs {
> +	void *irq_data;
> +};
> +
> +struct sigcontext {
> +	struct pt_regs regs;
> +	unsigned long oldmask;
> +};
> +
> +#endif
> diff --git a/arch/um/lkl/kernel/irq.c b/arch/um/lkl/kernel/irq.c
> new file mode 100644
> index 000000000000..e3b59e46ca50
> --- /dev/null
> +++ b/arch/um/lkl/kernel/irq.c
> @@ -0,0 +1,193 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/kernel.h>
> +#include <linux/init.h>
> +#include <linux/irq.h>
> +#include <linux/hardirq.h>
> +#include <asm/irq_regs.h>
> +#include <linux/sched.h>
> +#include <linux/seq_file.h>
> +#include <linux/tick.h>
> +#include <asm/irqflags.h>
> +#include <asm/host_ops.h>
> +#include <asm/cpu.h>
> +
> +/*
> + * To avoid much overhead we use an indirect approach: the irqs are marked using
> + * a bitmap (array of longs) and a summary of the modified bits is kept in a
> + * separate "index" long - one bit for each sizeof(long). Thus we can support
> + * 4096 irqs on 64bit platforms and 1024 irqs on 32bit platforms.
> + *
> + * Whenever an irq is trigger both the array and the index is updated. To find
> + * which irqs were triggered we first search the index and then the
> + * corresponding part of the arrary.
> + */
> +static unsigned long irq_status[NR_IRQS / IRQ_STATUS_BITS];
> +static unsigned long irq_index_status;
> +
> +static inline unsigned long test_and_clear_irq_index_status(void)
> +{
> +	if (!irq_index_status)
> +		return 0;
> +	return __sync_fetch_and_and(&irq_index_status, 0);
> +}
> +
> +static inline unsigned long test_and_clear_irq_status(int index)
> +{
> +	if (!&irq_status[index])
> +		return 0;
> +	return __sync_fetch_and_and(&irq_status[index], 0);
> +}
> +
> +void set_irq_pending(int irq)
> +{
> +	int index = irq / IRQ_STATUS_BITS;
> +	int bit = irq % IRQ_STATUS_BITS;
> +
> +	__sync_fetch_and_or(&irq_status[index], BIT(bit));
> +	__sync_fetch_and_or(&irq_index_status, BIT(index));
> +}
> +
> +static struct irq_info {
> +	const char *user;
> +} irqs[NR_IRQS];
> +
> +static bool irqs_enabled;
> +
> +static struct pt_regs dummy;
> +
> +static void run_irq(int irq)
> +{
> +	unsigned long flags;
> +	struct pt_regs *old_regs = set_irq_regs((struct pt_regs *)&dummy);
> +
> +	/* interrupt handlers need to run with interrupts disabled */
> +	local_irq_save(flags);
> +	irq_enter();
> +	generic_handle_irq(irq);
> +	irq_exit();
> +	set_irq_regs(old_regs);
> +	local_irq_restore(flags);
> +}
> +
> +/**
> + * This function can be called from arbitrary host threads, so do not
> + * issue any Linux calls (e.g. prink) if lkl_cpu_get() was not issued
> + * before.
> + */
> +int lkl_trigger_irq(int irq)
> +{
> +	int ret;
> +
> +	if (!irq || irq > NR_IRQS)
> +		return -EINVAL;
> +
> +	ret = lkl_cpu_try_run_irq(irq);
> +	if (ret <= 0)
> +		return ret;
> +
> +	/*
> +	 * Since this can be called from Linux context (e.g. lkl_trigger_irq ->
> +	 * IRQ -> softirq -> lkl_trigger_irq) make sure we are actually allowed
> +	 * to run irqs at this point
> +	 */
> +	if (!irqs_enabled) {
> +		set_irq_pending(irq);
> +		lkl_cpu_put();
> +		return 0;
> +	}
> +
> +	run_irq(irq);
> +
> +	lkl_cpu_put();
> +
> +	return 0;

Isn't that just:

	if (irqs_enabled)
		run_irq(irq);
	else
		set_irq_pending(irq);

	lkl_cpu_put();

	return 0;

> +}
> +
> +static inline void for_each_bit(unsigned long word, void (*f)(int, int), int j)
> +{
> +	int i = 0;
> +
> +	while (word) {
> +		if (word & 1)
> +			f(i, j);
> +		word >>= 1;
> +		i++;
> +	}
> +}
> +
> +static inline void deliver_irq(int bit, int index)
> +{
> +	run_irq(index * IRQ_STATUS_BITS + bit);
> +}
> +
> +static inline void check_irq_status(int i, int unused)
> +{
> +	for_each_bit(test_and_clear_irq_status(i), deliver_irq, i);
> +}
> +
> +void run_irqs(void)
> +{
> +	for_each_bit(test_and_clear_irq_index_status(), check_irq_status, 0);
> +}
> +
> +int show_interrupts(struct seq_file *p, void *v)
> +{
> +	return 0;
> +}
> +
> +int lkl_get_free_irq(const char *user)
> +{
> +	int i;
> +	int ret = -EBUSY;
> +
> +	/* 0 is not a valid IRQ */
> +	for (i = 1; i < NR_IRQS; i++) {
> +		if (!irqs[i].user) {
> +			irqs[i].user = user;
> +			irq_set_chip_and_handler(i, &dummy_irq_chip,
> +						 handle_simple_irq);
> +			ret = i;
> +			break;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +void lkl_put_irq(int i, const char *user)
> +{
> +	if (!irqs[i].user || strcmp(irqs[i].user, user) != 0) {
> +		WARN("%s tried to release %s's irq %d", user, irqs[i].user, i);
> +		return;
> +	}
> +
> +	irqs[i].user = NULL;
> +}
> +
> +unsigned long arch_local_save_flags(void)
> +{
> +	return irqs_enabled;
> +}
> +
> +void arch_local_irq_restore(unsigned long flags)
> +{
> +	if (flags == ARCH_IRQ_ENABLED && irqs_enabled == ARCH_IRQ_DISABLED &&
> +	    !in_interrupt())
> +		run_irqs();
> +	irqs_enabled = flags;
> +}
> +
> +void init_IRQ(void)
> +{
> +	int i;
> +
> +	for (i = 0; i < NR_IRQS; i++)
> +		irq_set_chip_and_handler(i, &dummy_irq_chip, handle_simple_irq);
> +
> +	pr_info("lkl: irqs initialized\n");
> +}
> +
> +void cpu_yield_to_irqs(void)
> +{
> +	cpu_relax();
> +}
> 

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
