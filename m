Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FB6F0C92
	for <lists+linux-um@lfdr.de>; Wed,  6 Nov 2019 04:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwXHt1U2cQkNTgpuhNbHjDA/o63iL7DaHZ9+wacnQz0=; b=hDXkvdHndzB9GN
	L72zp+HALeTK1fd7mqav5D+jeE6z6XbZJ1xyF4R1tPTOWiXBmsinZeyXDlVcCZYKrwLXzg6DSP1hk
	pJFrDLQvRjmMgMu2e+YHU7AF0kXH1oZvZmus+nRVUKbM5y4eaIzpd86QKAvXlumddfZ6/3KldAnI2
	AGlWwrCakpXARtqiArkesAvT77caNzq7Zy18bzr38QHbEp9ln0+Cx8bW+p7cHLku46FdA/CEVa7IA
	i63+kQX5OF7Wnp23MnNKqofSc+RnJQzRdCDGEUf+biouTMPsVSGrjWpecPpJqyqVSu7U0aZSU5G3r
	UMQ73gwKXTu1XWLMCe2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBgZ-0003pT-Nq; Wed, 06 Nov 2019 03:08:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBgI-0003Zl-5B
 for linux-um@lists.infradead.org; Wed, 06 Nov 2019 03:08:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id 3so17717512pfb.10
 for <linux-um@lists.infradead.org>; Tue, 05 Nov 2019 19:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P3KAk4JFoRkmJY5UYpiE9Ad5UYmzG6Av2SQ7Rw3IXDc=;
 b=dGYz6wv+PceywAO0mjiAaPM4I4bawDqWfU0ekn7Khp2ckO0xcUgC6siNIdOcsLrIJa
 CwNbiBvkxpIeOwrQG0ige6I0s0ZUJZJXCCn0XLM9SL05aboewYqMvzrLYy474/QrUgPX
 HSe32vbj8VdIN4wjowemksP8tv+Z4nMKtzvqmJct24falWE7rbEDc0MB/qPr1yReKu4m
 cZSNYjqbdGQJsEhjsiC3YA5jp766XNhrQ2J8Ba7zdsJncLXScFm8v8WL1R1+JfRuozuX
 ope2lbXxPUS1ru6xuoqxDO4VZENci0YUGSCH27LJrKvs2uF0SGZDLU2Dg/bPb4M7os2A
 o/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P3KAk4JFoRkmJY5UYpiE9Ad5UYmzG6Av2SQ7Rw3IXDc=;
 b=iYGT8Tn5EIsmlbY9/ZcvqTZ0BchseVIznEmMJRO72Hj/EEBYIuHGrsqwrCbA6CAQn3
 Gbhdv94ALrJeSiFD8ekeHobcGhCqBWAHzfXEkpz3wKxnyhWpKaFJqYPQWmTE9NUXIbZZ
 Ns4j40Y37+Ph36l1n/crRpgAA9VjQvvwZwZPNqEfy13SzQMZ67qIsQPXoCbidgRWOET6
 j7R1ZPOb14XbNiCRqRjezaYbmmBLzUe9fz5aW3rYLyr4VqPyQMmDErQw6gXbSGFNnjW2
 vN7UPSuZsSGXL64WlEVmzm/QvBLUXPDxttldUJhbBCZx9Ijn66OPv7npqHKNVY5QL6NF
 846A==
X-Gm-Message-State: APjAAAVviAyvD4KqjDeSx2HCiigOt9tKspWpQMkfroXFBEd3EMg0aY0S
 uK9QGSqo7CfKfXRvGLdVqvAcUw==
X-Google-Smtp-Source: APXvYqzdoADpYOilv6zYZDLM1SN3kH63KqdGum7CjWRsWYBdHmb16/bpBc5NmIQ9TPPC/7aTNfzH4g==
X-Received: by 2002:a17:90a:340c:: with SMTP id
 o12mr657765pjb.18.1573009705238; 
 Tue, 05 Nov 2019 19:08:25 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:08:24 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 36/50] um: Add show_stack_loglvl()
Date: Wed,  6 Nov 2019 03:05:27 +0000
Message-Id: <20191106030542.868541-37-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190826_356342_E3028018 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
