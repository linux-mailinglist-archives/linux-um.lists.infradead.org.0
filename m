Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FAC130275
	for <lists+linux-um@lfdr.de>; Sat,  4 Jan 2020 14:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVI2C4V4LVs+32udnKIcQK5iX7toL92Ne1YDWiVmpok=; b=il4i1feQ+khNqt
	+GDA+uzPN+F2vLxoZqzc+prxNqEsDs2hMqNSbzxqzyGhrPixzKQ8+Bhn5xvkUrUX2OjscyWfn5FaL
	PaFMgktzSENQFOaovCGTE/vHVUOk7mUJRdzJiipKIXrb3Gk6XR2hl40OSP4f7zm18xgpvgTXdWnif
	NTXCndtTGWBHfWoGsAnRlqfudSljJgiDAk9/57tj/yOL16sZ8SRj0a/UcXjmG/U4Z7/3FCNPaUw1X
	N7j/3v7/eCoCIP9N37jrEGcLFnVcB+IOrCkT2aTOZl5bJ96o1A8zAZR9FVgd3A5TQQQK2W9V3a6tB
	as2qAiuzhpZqG1RHNMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inj5M-0005ZF-Gh; Sat, 04 Jan 2020 13:03:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inj5J-0005Yr-FG
 for linux-um@lists.infradead.org; Sat, 04 Jan 2020 13:03:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so5869378wrm.11
 for <linux-um@lists.infradead.org>; Sat, 04 Jan 2020 05:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jx4SLI4Z9KLYRUbb1SFG68L+fEF+yXR27NZhSzKFTk8=;
 b=ZqwHItTaGb0+q64wIW1e3ynchu1RaPOBaFfyODjRFgo212r8rS7eNTGLlQZQK7/q/w
 iIitPsM1OvU1G92EM+fd/ZSnHDBKZbjnF4raLjZZKrOlHULUgoPeA3Ak+10c8oAqrLyC
 nYzAIZpz7nyADyNpkJIv/X4dFccPwc8vKURED2IQdW0MOy9QMGTYfjzj15pEg8EcmGMU
 I+icVnKNsLMlAnFJa1LHU871ZtH5l0R/ZeFTsWKApE5CJnPAfmcgQBqnzmQZDjX9bQuh
 GZIr3COROkNjPyjaeaY9BK+bzPcG5qNUYK68sZ8Da75at8bRvleqbvQdFbDLyitAAbZU
 dbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jx4SLI4Z9KLYRUbb1SFG68L+fEF+yXR27NZhSzKFTk8=;
 b=EiNLQmeQFJ+5LdM50l0Ye0WcfnWT81414nxNuCxtZJ1gvl5gaV/KJFeXSkxJG9OfJn
 AHL2cigRVsSbV93cSJDjxuftoAw56C+G3KaNCAoLitNF7pA60wLYG9pQKF3l0xlqUvrR
 AWG3ZPWLP8a8C/Icd/v7vGUhmcPo6ljPDUTnmmXG2VyWZ0CjoQZziXoS+KAm5UlmxAz/
 S8oclYF/7r+O0DwAVe84DJfrH6cWEvLYRihlU/mXkXFII7ew8/UotRqMhtf33Nw02+xj
 evADRN9y7/WKeUBdERuNS9G2t8Ooff3wh9qPkwZdeTuDGpqbPTmhq+5qLo65bsJtxmr7
 ZSBA==
X-Gm-Message-State: APjAAAVr7ZL7lV4Xny68zxTvOei7g0PNmI99ah+eTWA0lPUnwffVkoum
 iVrypCynOx036G71qZ0W3el2OCKtqdVfNQ==
X-Google-Smtp-Source: APXvYqzW5AW8mbrFYj0jm5McWGPTxMYPtwOzhTfncOAiDksqp2LtR6eyWR6PaW6sANsNC/oG0vkaQg==
X-Received: by 2002:a5d:6350:: with SMTP id b16mr94761787wrw.132.1578142995287; 
 Sat, 04 Jan 2020 05:03:15 -0800 (PST)
Received: from amanieu-laptop.home ([2a01:cb19:8051:6200:3fe7:84:7f3:e713])
 by smtp.gmail.com with ESMTPSA id z83sm15911096wmg.2.2020.01.04.05.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 05:03:14 -0800 (PST)
From: Amanieu d'Antras <amanieu@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] um: Implement copy_thread_tls
Date: Sat,  4 Jan 2020 13:39:30 +0100
Message-Id: <20200104123928.1048822-1-amanieu@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102172413.654385-1-amanieu@gmail.com>
References: <20200102172413.654385-1-amanieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_050317_537304_C007FD0C 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amanieu[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-um@lists.infradead.org, Amanieu d'Antras <amanieu@gmail.com>,
 stable@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-um@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
---
 arch/um/Kconfig                      | 1 +
 arch/um/include/asm/ptrace-generic.h | 2 +-
 arch/um/kernel/process.c             | 6 +++---
 arch/x86/um/tls_32.c                 | 6 ++----
 arch/x86/um/tls_64.c                 | 7 +++----
 5 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 2a6d04fcb3e9..6f0edd0c0220 100644
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
diff --git a/arch/um/include/asm/ptrace-generic.h b/arch/um/include/asm/ptrace-generic.h
index 81c647ef9c6c..adf91ef553ae 100644
--- a/arch/um/include/asm/ptrace-generic.h
+++ b/arch/um/include/asm/ptrace-generic.h
@@ -36,7 +36,7 @@ extern long subarch_ptrace(struct task_struct *child, long request,
 extern unsigned long getreg(struct task_struct *child, int regno);
 extern int putreg(struct task_struct *child, int regno, unsigned long value);
 
-extern int arch_copy_tls(struct task_struct *new);
+extern int arch_set_tls(struct task_struct *new, unsigned long tls);
 extern void clear_flushed_tls(struct task_struct *task);
 extern int syscall_trace_enter(struct pt_regs *regs);
 extern void syscall_trace_leave(struct pt_regs *regs);
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index 263a8f069133..17045e7211bf 100644
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
@@ -188,7 +188,7 @@ int copy_thread(unsigned long clone_flags, unsigned long sp,
 		 * Set a new TLS for the child thread?
 		 */
 		if (clone_flags & CLONE_SETTLS)
-			ret = arch_copy_tls(p);
+			ret = arch_set_tls(p, tls);
 	}
 
 	return ret;
diff --git a/arch/x86/um/tls_32.c b/arch/x86/um/tls_32.c
index 5bd949da7a4a..ac8eee093f9c 100644
--- a/arch/x86/um/tls_32.c
+++ b/arch/x86/um/tls_32.c
@@ -215,14 +215,12 @@ static int set_tls_entry(struct task_struct* task, struct user_desc *info,
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
diff --git a/arch/x86/um/tls_64.c b/arch/x86/um/tls_64.c
index 3a621e0d3925..ebd3855d9b13 100644
--- a/arch/x86/um/tls_64.c
+++ b/arch/x86/um/tls_64.c
@@ -6,14 +6,13 @@ void clear_flushed_tls(struct task_struct *task)
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
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
