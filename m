Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B04186D8B
	for <lists+linux-um@lfdr.de>; Mon, 16 Mar 2020 15:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDGCK0y40vnx4x5NPdk5bsafqEfeHx6AxmoLrhSv7X8=; b=ZFcJdYaAiHT30F
	AGVdarINPuwhjwrtKQOM7xH8zjc8pArEfXB8IyXCyo+NpVPM+SLRztLMOOgcrZxYbWg2FwgJPV0R+
	M+W9Rd4doOalAC2BCcKtxn5y6JJzuB4Uz+VHNIfnM07Rw9wP/jKREiqnRENcpqXItqe0JD9OyVVPw
	ov0UAiYvolcCDJxp6ipkNc8PxiJL0+E2lRTwwi2sP+os2i3FdwoYMEt7XhsrsyHOGcpMIgnOjUx46
	qzEq/FFNjsJgy+sngmEW3h8KXrNS/0X4eyVY6mw/c+AGRX9z8fUc+dniktb8ck9lhoQspSwF9EOGz
	XQAK1oS+6sF7Az/BKeaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqwo-0004Bt-2j; Mon, 16 Mar 2020 14:42:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqwi-000455-7O
 for linux-um@lists.infradead.org; Mon, 16 Mar 2020 14:42:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id g2so5603014plo.3
 for <linux-um@lists.infradead.org>; Mon, 16 Mar 2020 07:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M8p0yeIcDDezmi9GbceAY0OPGEypVpr3xgacLi8Ixrk=;
 b=FbBFOHxZVS4/eT17oknt23ldgwClYWRrb2me4lpmyGfjwdEqsIXcGwt8R8yojEnAcT
 aWsQmKEdkj+B96AOdVFSSLv77HKthLpL5PChdOPDPFmiDrKniaFsPuDt72sqpJoWg7ge
 sIBFobDCEzQhlH+SDlaHsJ19gYJhaxRh5Mkm+sfCA7CGag0UUZHu9fSX0IG74JfPUH5u
 Rvtj9v7FDYYRYM95BTlG5cm+5qH+mnjZd6GAZ780TV1xN4TRPlBJd6bSnwZwemNUyF9P
 JP2OgWfNXCDFL32dgIuNCrmW0P06FhqOk1jrHsn5QOzgrc+QHo8833MQTdEeiRpP9qw+
 TEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M8p0yeIcDDezmi9GbceAY0OPGEypVpr3xgacLi8Ixrk=;
 b=Skgf1dnHqSc/5LDrhT27BfBmhsLnlXak2nyEq/DcwcrngSaWsEGC3ycTpKmn5lzZ7T
 brbZvIqjLLhgPnqS7QZEivnw9ogD7C6RXTHmrLko/BcwOR+7FEGq6BZI3NhqdNIYeaDt
 TGJfM2mziQjdEHjfyV2KuWjKj9/GmvrQGEHX4rf0dFRPTtxZ0uCCtzRKPq0RTeBqiXIy
 vE4OYexCqmktZmb0KnYJUKbwFwDRSRWLxLFBph4hgyqmm+51MxRrdVJ80bnMFoaGM0Uy
 w7M/Y0+KfIAzKfn1KEQuvZhG7hXdnD2lkrXDcXBseyAf3jHUcVd85fS6SdwDrTT9mnPi
 kkPg==
X-Gm-Message-State: ANhLgQ2YK45OvCPSdGFKcLjMnvYoKm0jP0YaB7Os0YpcOXiGd4pnqgHh
 u61aim/zRu5wrzMUbNd+pUBu2A==
X-Google-Smtp-Source: ADFU+vt+0qWtNtxxBe5a1CCrXYAs58UnPli9XAxfj21ypYJQF2FNN0jslFB12cV030/A97i1PEhaDQ==
X-Received: by 2002:a17:90a:c301:: with SMTP id
 g1mr25095750pjt.88.1584369743054; 
 Mon, 16 Mar 2020 07:42:23 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.42.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:42:22 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 36/50] um: Add show_stack_loglvl()
Date: Mon, 16 Mar 2020 14:39:02 +0000
Message-Id: <20200316143916.195608-37-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074224_309260_DF2E8134 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
