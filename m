Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F8313A4F8
	for <lists+linux-um@lfdr.de>; Tue, 14 Jan 2020 11:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNt1i0NNCLrBdnZtrATTmcN4lBUMMb6Es6sVii4ncxQ=; b=a+IdmrrgvF3zVD
	CbrZYfCGWUsaedd8FFx/GFtXlU1trplCyjD3NHSgx2EJf8Ei7g/tvt5MX+VWVnpj1Ta66bQ2SuDSX
	z5nr7qT8hGsuH5TGGNyaMddjlrBjsux9N8l/zoH8aH3mu/MBBn21rVyMLh70Q3Tl8DIOkHxZZ/Mug
	s/oMlw6QqqGXReSaV6OHOnx2sJSd71KP+HmrI2Z07slAUKc5UI46s+jHgqWzzAsqhRdHtN0/JFWXJ
	Wxr9o/GxBSEss2vq99TPM6aTosds797kQvzsPDL1n2FObvvYItIJoYw0szSdRJ3iwG9qB28md2GWa
	z/QukPMgPJl3kn4o6mLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJ5o-000610-DP; Tue, 14 Jan 2020 10:06:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJ5i-0005xk-8S
 for linux-um@lists.infradead.org; Tue, 14 Jan 2020 10:06:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8176F24672;
 Tue, 14 Jan 2020 10:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578996389;
 bh=FkcS2BdMEXIokPkWULH/aGT00OXhvGq1WKC6EOCQqfc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HFZbSJW8hNnwmZVw7ntbo32WbOF8G0aL5rlrwoPd9ylcRsbuXDzCT3KVXgzUJjFQA
 dBAmR0WCwS0J1UAzWE0P4/ElfYnGPFnEiu3aXz2Kr7/+PhP9FOoovcP8uq95g1mqxi
 DB9Di4v7919AquLZq1lKYHthpcZ83DE3//PxDk3c=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.4 64/78] um: Implement copy_thread_tls
Date: Tue, 14 Jan 2020 11:01:38 +0100
Message-Id: <20200114094402.012253565@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114094352.428808181@linuxfoundation.org>
References: <20200114094352.428808181@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_020630_355945_FA8AED6A 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-um@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Amanieu dAntras <amanieu@gmail.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Amanieu d'Antras <amanieu@gmail.com>

commit 457677c70c7672a4586b0b8abc396cc1ecdd376d upstream.

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-um@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
Link: https://lore.kernel.org/r/20200104123928.1048822-1-amanieu@gmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/um/Kconfig                      |    1 +
 arch/um/include/asm/ptrace-generic.h |    2 +-
 arch/um/kernel/process.c             |    6 +++---
 arch/x86/um/tls_32.c                 |    6 ++----
 arch/x86/um/tls_64.c                 |    7 +++----
 5 files changed, 10 insertions(+), 12 deletions(-)

--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -14,6 +14,7 @@ config UML
 	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DEBUG_BUGVERBOSE
+	select HAVE_COPY_THREAD_TLS
 	select GENERIC_IRQ_SHOW
 	select GENERIC_CPU_DEVICES
 	select GENERIC_CLOCKEVENTS
--- a/arch/um/include/asm/ptrace-generic.h
+++ b/arch/um/include/asm/ptrace-generic.h
@@ -36,7 +36,7 @@ extern long subarch_ptrace(struct task_s
 extern unsigned long getreg(struct task_struct *child, int regno);
 extern int putreg(struct task_struct *child, int regno, unsigned long value);
 
-extern int arch_copy_tls(struct task_struct *new);
+extern int arch_set_tls(struct task_struct *new, unsigned long tls);
 extern void clear_flushed_tls(struct task_struct *task);
 extern int syscall_trace_enter(struct pt_regs *regs);
 extern void syscall_trace_leave(struct pt_regs *regs);
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -153,8 +153,8 @@ void fork_handler(void)
 	userspace(&current->thread.regs.regs, current_thread_info()->aux_fp_regs);
 }
 
-int copy_thread(unsigned long clone_flags, unsigned long sp,
-		unsigned long arg, struct task_struct * p)
+int copy_thread_tls(unsigned long clone_flags, unsigned long sp,
+		unsigned long arg, struct task_struct * p, unsigned long tls)
 {
 	void (*handler)(void);
 	int kthread = current->flags & PF_KTHREAD;
@@ -188,7 +188,7 @@ int copy_thread(unsigned long clone_flag
 		 * Set a new TLS for the child thread?
 		 */
 		if (clone_flags & CLONE_SETTLS)
-			ret = arch_copy_tls(p);
+			ret = arch_set_tls(p, tls);
 	}
 
 	return ret;
--- a/arch/x86/um/tls_32.c
+++ b/arch/x86/um/tls_32.c
@@ -215,14 +215,12 @@ static int set_tls_entry(struct task_str
 	return 0;
 }
 
-int arch_copy_tls(struct task_struct *new)
+int arch_set_tls(struct task_struct *new, unsigned long tls)
 {
 	struct user_desc info;
 	int idx, ret = -EFAULT;
 
-	if (copy_from_user(&info,
-			   (void __user *) UPT_SI(&new->thread.regs.regs),
-			   sizeof(info)))
+	if (copy_from_user(&info, (void __user *) tls, sizeof(info)))
 		goto out;
 
 	ret = -EINVAL;
--- a/arch/x86/um/tls_64.c
+++ b/arch/x86/um/tls_64.c
@@ -6,14 +6,13 @@ void clear_flushed_tls(struct task_struc
 {
 }
 
-int arch_copy_tls(struct task_struct *t)
+int arch_set_tls(struct task_struct *t, unsigned long tls)
 {
 	/*
 	 * If CLONE_SETTLS is set, we need to save the thread id
-	 * (which is argument 5, child_tid, of clone) so it can be set
-	 * during context switches.
+	 * so it can be set during context switches.
 	 */
-	t->thread.arch.fs = t->thread.regs.regs.gp[R8 / sizeof(long)];
+	t->thread.arch.fs = tls;
 
 	return 0;
 }



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
