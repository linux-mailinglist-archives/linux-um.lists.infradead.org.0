Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14E1AF4D3
	for <lists+linux-um@lfdr.de>; Sat, 18 Apr 2020 22:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edEauV3rKO/wrnhOcVqZAUW0Q/E4OCee1t71HZxeyN8=; b=XnWS/b2HrBxWev
	dezNjWpvr3/gJNjQy8JQdY6Cc5yaK7m8vBqz/BCo8Iyb0pfporOJcO4s6+Cd6xLuqla+PplXoHe6W
	eGHo9plMybg0X9I5LGxwdzOkiUK+z4sPlZi6bLhjaacLysLoLj4xJJrqwRFRr6ofMx/dvntM8SfNU
	3zYF8SqAKOPbAcY3u+zA6vTRDKBKCRGGuze9SWHRp+DAUy4lcIAllPOcozT7B7hQzRwBK7sXOpOG0
	2KY0qrvciQhjDN2F9zzWtmnl7QWt+0wwna/9CVRpQi5RBKiCntodzshw0SxdTJsb0pRw1MMjzOAR0
	Xd1Ytt9LSG3wGxMSSrxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtyz-00069n-7Y; Sat, 18 Apr 2020 20:22:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtxB-0004NL-2X
 for linux-um@lists.infradead.org; Sat, 18 Apr 2020 20:20:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so6492842wmk.5
 for <linux-um@lists.infradead.org>; Sat, 18 Apr 2020 13:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XGIhy+u2aeIy2Yn7CXXmbETFux33ENbBve0AwwnOWUA=;
 b=ajwF4hxvSC1PI6Bk2wj33DGrRVwhcg50Fh2Z3O2Lf3v1+V6EeYmdPocxoSCItJd/CG
 VshA9IfaQPJ4/Vqgf/pJzvLfDzEdkO4MKfQdVYIF5SpO+L5RVpdHY26a/FqJehxFLw+A
 L1p3/Zwomr6DzpEvY1n6+zGVs+q4NuPkO7s2D+tkzJgPuxiK754YiIuLtfJ9toKgM7Jx
 amicsza0muUYSbK5ynwnssZcIdwNNkKZsVDyPRxHqdLgAcnWvDzHztaRlQfB2sON6YXM
 VLW99Y0RKrX/Gr8KAd3EIoWnYeORx0z52VxQX3oe4SWT3sGP+Cf4s+/cVF6w494MJc9A
 m9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XGIhy+u2aeIy2Yn7CXXmbETFux33ENbBve0AwwnOWUA=;
 b=XMOp7KcSNCGmFgf767JL9wiAKfXA1YN/fgB0c+67TY3qYRisPHpft1O+JYvjquH5P2
 22C/5dsrErkwBX3lkrxXxjFfprO5+qCKLC09UiWiPeL/+jYShrvqgPqJeeOFRhptLpwm
 NtBkDGdT0/YUdybr2bxFmw+ur10WWJnXqG6ajWwc6EM9TgiwY727LoNz2w9HbeDiOzCQ
 hBFr73uSvrwwt0JWFfN0N5Mh6zH4TdcZXYASxbGOLqlkvS+xF982R7pVaybKvp3t78Ly
 hOfducTzurElrD6+gm3I/zFI4sUYWV7W2K+b+L2U9k4BYRsByBh7j90flD1XdIUsk06h
 kpYQ==
X-Gm-Message-State: AGi0Pua66ArGQwZ45NIFiLUI6TgCsy938ubxPJEyy0mEB6kUEHI08Atz
 eg4vD4VumdJouU6r2W7C5s1BIg==
X-Google-Smtp-Source: APiQypIpj/gI4LC71uUybC6QcQ3CCA6sPVcTkkoE2WQ7LbPrX3D0bZMrmgi7rs7Kg6yURpaz4gekTw==
X-Received: by 2002:a7b:c459:: with SMTP id l25mr9312266wmi.52.1587241239311; 
 Sat, 18 Apr 2020 13:20:39 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:38 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 36/50] um: Add show_stack_loglvl()
Date: Sat, 18 Apr 2020 21:19:30 +0100
Message-Id: <20200418201944.482088-37-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132041_146519_82C0D108 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Richard Weinberger <richard@nod.at>,
 Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jeff Dike <jdike@addtoit.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-um@lists.infradead.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Ingo Molnar <mingo@kernel.org>, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Cc: Jeff Dike <jdike@addtoit.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: linux-um@lists.infradead.org
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/um/kernel/sysrq.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/um/kernel/sysrq.c b/arch/um/kernel/sysrq.c
index c831a1c2eb94..1b54b6431499 100644
--- a/arch/um/kernel/sysrq.c
+++ b/arch/um/kernel/sysrq.c
@@ -17,7 +17,9 @@
 
 static void _print_addr(void *data, unsigned long address, int reliable)
 {
-	pr_info(" [<%08lx>] %s%pS\n", address, reliable ? "" : "? ",
+	const char *loglvl = data;
+
+	printk("%s [<%08lx>] %s%pS\n", loglvl, address, reliable ? "" : "? ",
 		(void *)address);
 }
 
@@ -25,7 +27,8 @@ static const struct stacktrace_ops stackops = {
 	.address = _print_addr
 };
 
-void show_stack(struct task_struct *task, unsigned long *stack)
+void show_stack_loglvl(struct task_struct *task, unsigned long *stack,
+		       const char *loglvl)
 {
 	struct pt_regs *segv_regs = current->thread.segv_regs;
 	int i;
@@ -39,17 +42,22 @@ void show_stack(struct task_struct *task, unsigned long *stack)
 	if (!stack)
 		stack = get_stack_pointer(task, segv_regs);
 
-	pr_info("Stack:\n");
+	printk("%sStack:\n", loglvl);
 	for (i = 0; i < 3 * STACKSLOTS_PER_LINE; i++) {
 		if (kstack_end(stack))
 			break;
 		if (i && ((i % STACKSLOTS_PER_LINE) == 0))
-			pr_cont("\n");
+			printk("%s\n", loglvl);
 		pr_cont(" %08lx", *stack++);
 	}
-	pr_cont("\n");
+	printk("%s\n", loglvl);
+
+	printk("%sCall Trace:\n", loglvl);
+	dump_trace(current, &stackops, (void *)loglvl);
+	printk("%s\n", loglvl);
+}
 
-	pr_info("Call Trace:\n");
-	dump_trace(current, &stackops, NULL);
-	pr_info("\n");
+void show_stack(struct task_struct *task, unsigned long *stack)
+{
+	show_stack_loglvl(task, stack, KERN_INFO);
 }
-- 
2.26.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
