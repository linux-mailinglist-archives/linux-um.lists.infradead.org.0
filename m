Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F21308A9
	for <lists+linux-um@lfdr.de>; Sun,  5 Jan 2020 16:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5Umzex/LQ6gdPGbgw0YHEsrWklZTZRFJfiXth30+lE=; b=jSpLPQzTHLR+dT
	qrBDhxiwSangk8OV/uHOwt1slGUOkHGeqLtmlU6kwTDUAVMWsikIfjN239vH4OsYU/xAVn/fPDF4L
	+vD1aghfG1S6mENprna/xWWehmyTEtXUvy3PmrjCDDn2gj6Mfaz8TKGrT1iPRZ4MIGoEBBNYidno2
	zrcPNrZ+IBIxnfEwl0aZHtixpx9tc+2iYEHDAm/jkmLS+B8aZBJVMsZ9m4GSGeXo6t0WWblzuvgWy
	PgyRitir8gr7liKGTg07giMGnlDnlufxmUImaZbliH6RvumCljlVyoBr8HH0D51qb/lfXKp6uk43k
	e6PyuD5TZQqRNGaa7Vsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io7h3-0007DQ-Mo; Sun, 05 Jan 2020 15:19:53 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io7gz-0007CW-Q5
 for linux-um@lists.infradead.org; Sun, 05 Jan 2020 15:19:51 +0000
Received: from [172.58.27.182] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1io7gm-0007Dg-Hn; Sun, 05 Jan 2020 15:19:37 +0000
Date: Sun, 5 Jan 2020 16:19:30 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] um: Implement copy_thread_tls
Message-ID: <20200105151928.qrmhnwer3r5ffc77@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200104123928.1048822-1-amanieu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104123928.1048822-1-amanieu@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_071949_981707_E4935FF3 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: stable@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 01:39:30PM +0100, Amanieu d'Antras wrote:
> This is required for clone3 which passes the TLS value through a
> struct rather than a register.
> 
> Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> Cc: linux-um@lists.infradead.org
> Cc: <stable@vger.kernel.org> # 5.3.x

Thanks. I'm picking this up as part of the copy_thread_tls() series.
(Leaving the patch in tact so people can Ack right here if they want to.)
If I could get an Ack from one of the maintainers that would be great;
see
https://lore.kernel.org/lkml/20200102172413.654385-1-amanieu@gmail.com
for more context.

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

> ---
>  arch/um/Kconfig                      | 1 +
>  arch/um/include/asm/ptrace-generic.h | 2 +-
>  arch/um/kernel/process.c             | 6 +++---
>  arch/x86/um/tls_32.c                 | 6 ++----
>  arch/x86/um/tls_64.c                 | 7 +++----
>  5 files changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 2a6d04fcb3e9..6f0edd0c0220 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -14,6 +14,7 @@ config UML
>  	select HAVE_FUTEX_CMPXCHG if FUTEX
>  	select HAVE_DEBUG_KMEMLEAK
>  	select HAVE_DEBUG_BUGVERBOSE
> +	select HAVE_COPY_THREAD_TLS
>  	select GENERIC_IRQ_SHOW
>  	select GENERIC_CPU_DEVICES
>  	select GENERIC_CLOCKEVENTS
> diff --git a/arch/um/include/asm/ptrace-generic.h b/arch/um/include/asm/ptrace-generic.h
> index 81c647ef9c6c..adf91ef553ae 100644
> --- a/arch/um/include/asm/ptrace-generic.h
> +++ b/arch/um/include/asm/ptrace-generic.h
> @@ -36,7 +36,7 @@ extern long subarch_ptrace(struct task_struct *child, long request,
>  extern unsigned long getreg(struct task_struct *child, int regno);
>  extern int putreg(struct task_struct *child, int regno, unsigned long value);
>  
> -extern int arch_copy_tls(struct task_struct *new);
> +extern int arch_set_tls(struct task_struct *new, unsigned long tls);
>  extern void clear_flushed_tls(struct task_struct *task);
>  extern int syscall_trace_enter(struct pt_regs *regs);
>  extern void syscall_trace_leave(struct pt_regs *regs);
> diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
> index 263a8f069133..17045e7211bf 100644
> --- a/arch/um/kernel/process.c
> +++ b/arch/um/kernel/process.c
> @@ -153,8 +153,8 @@ void fork_handler(void)
>  	userspace(&current->thread.regs.regs, current_thread_info()->aux_fp_regs);
>  }
>  
> -int copy_thread(unsigned long clone_flags, unsigned long sp,
> -		unsigned long arg, struct task_struct * p)
> +int copy_thread_tls(unsigned long clone_flags, unsigned long sp,
> +		unsigned long arg, struct task_struct * p, unsigned long tls)
>  {
>  	void (*handler)(void);
>  	int kthread = current->flags & PF_KTHREAD;
> @@ -188,7 +188,7 @@ int copy_thread(unsigned long clone_flags, unsigned long sp,
>  		 * Set a new TLS for the child thread?
>  		 */
>  		if (clone_flags & CLONE_SETTLS)
> -			ret = arch_copy_tls(p);
> +			ret = arch_set_tls(p, tls);
>  	}
>  
>  	return ret;
> diff --git a/arch/x86/um/tls_32.c b/arch/x86/um/tls_32.c
> index 5bd949da7a4a..ac8eee093f9c 100644
> --- a/arch/x86/um/tls_32.c
> +++ b/arch/x86/um/tls_32.c
> @@ -215,14 +215,12 @@ static int set_tls_entry(struct task_struct* task, struct user_desc *info,
>  	return 0;
>  }
>  
> -int arch_copy_tls(struct task_struct *new)
> +int arch_set_tls(struct task_struct *new, unsigned long tls)
>  {
>  	struct user_desc info;
>  	int idx, ret = -EFAULT;
>  
> -	if (copy_from_user(&info,
> -			   (void __user *) UPT_SI(&new->thread.regs.regs),
> -			   sizeof(info)))
> +	if (copy_from_user(&info, (void __user *) tls, sizeof(info)))
>  		goto out;
>  
>  	ret = -EINVAL;
> diff --git a/arch/x86/um/tls_64.c b/arch/x86/um/tls_64.c
> index 3a621e0d3925..ebd3855d9b13 100644
> --- a/arch/x86/um/tls_64.c
> +++ b/arch/x86/um/tls_64.c
> @@ -6,14 +6,13 @@ void clear_flushed_tls(struct task_struct *task)
>  {
>  }
>  
> -int arch_copy_tls(struct task_struct *t)
> +int arch_set_tls(struct task_struct *t, unsigned long tls)
>  {
>  	/*
>  	 * If CLONE_SETTLS is set, we need to save the thread id
> -	 * (which is argument 5, child_tid, of clone) so it can be set
> -	 * during context switches.
> +	 * so it can be set during context switches.
>  	 */
> -	t->thread.arch.fs = t->thread.regs.regs.gp[R8 / sizeof(long)];
> +	t->thread.arch.fs = tls;
>  
>  	return 0;
>  }
> -- 
> 2.24.1
> 

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
