Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFE11AF4D2
	for <lists+linux-um@lfdr.de>; Sat, 18 Apr 2020 22:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEeCEyX3I1EG5sXNmQmXRwyyE1dB1OpQnea9BzsQTOo=; b=n+tByjmOcQ39AW
	xMVzx2MZQKoK8ypWzvWMCTc7mpEBV/nFV3lti/PRFym7MvKgnT9xyaWiFkqn1rTUE3++7URz8VSF9
	Mn6qw9UhPecaJz7pjMWuHQ5kGJ3ihyYSG71+ZIqGerzor0Qg2zcI2cPqhMDXj59/s9RIfApSCJTZs
	bjQ56WDxBg9XAz+wfZmKFpc2NOBeGXapnRvH8C+mC5DrJbCeZAdF7AhOGi44HKlKwAS89juPAKBuJ
	eaPq16MhwIccOvZNzRz11dF2CfW7S/TFBOpfZqL3Gad32J/BtY6WTyqFQv8uCMiI1penMaFuFMxw7
	7LaTUpW1tjrYLPnIYMqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtyx-00068Z-SS; Sat, 18 Apr 2020 20:22:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtxA-0004Ld-50
 for linux-um@lists.infradead.org; Sat, 18 Apr 2020 20:20:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so7164389wrs.6
 for <linux-um@lists.infradead.org>; Sat, 18 Apr 2020 13:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=34+/2L5UqZgBD/IEOPObgtOlHcvjMeH49/BCWrNQFRQ=;
 b=lYVr5Q6mYH8AmVq6OU4YmLn8RUAV3sQNQXlFRdBPQ07PHMpbjiwy0oPX7HOR8exvUd
 K9vI3EpW9zUjMOTsBLsypCukIXcBvw0KV0kAyVnVxe49XUTSf9V91PrnlJbUoftl8RHd
 ARVKZ8KqpFVPRF+mhM63SLNVvgRW8Ok783XZXHljhyBtcNCcTA4BMJzvhkPFNoizrRSh
 dbi72HKv7TuWpZR7MuL4WIP3ZusAf/OvzMKc9K6GZi2xzvJ4kX7QsOwlFeG0Nhs2LGFX
 bTS1b9rt+h+Q9g6Jh5c1VaDJDnk4g36hJhHm0prLcPci4Y96aYFx+mEU7TQOYLam0Xmy
 v7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=34+/2L5UqZgBD/IEOPObgtOlHcvjMeH49/BCWrNQFRQ=;
 b=VH0iZDQlvfFlMN+vHAwo4C9EDWEMdYoZ+ls7/gw0cTDDXXYkBTmOgK5/ktaVu82nLn
 OSeowCu7Sg5FTNviW5havwYteKLioi9VE78rQTGVwMhQBU5X56J7ldMWdpgZrZ9av5mD
 r4Ko+/DIdbJ7woYZsX3BktXHjrYrxANGOkXg0kwknNY7jM5U0LbQ+1gDE2azVkp2vhp0
 VVz05+yOfHntbYpOsIIty0bf+EX6kAf9SSJnoMrnZzL9p4X7N/cYOP+C6dz7xu7Unu6z
 cYeoP19f8viYlYQvj+DEds+sY5VMOvzxmaDqENQyuz/dDOYu6N84WkU521p6iRV7lzAX
 hF+w==
X-Gm-Message-State: AGi0Puab/cr/aJwuzjgv11a1JZnuEKqqDpDmgRpG3C0H09ph+xL8CZUY
 ++S0GQ+0uTAktp7aUwXZi1zJJQ==
X-Google-Smtp-Source: APiQypLM6PDfnzjDMeuJBxiNPqjL1kTWX8NkLTX0CVmTpUvmG3a5IKcijZ0Abw7if66VU3/X6gD8Fg==
X-Received: by 2002:adf:f9c6:: with SMTP id w6mr10555302wrr.341.1587241237870; 
 Sat, 18 Apr 2020 13:20:37 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:37 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 35/50] um/sysrq: Remove needless variable sp
Date: Sat, 18 Apr 2020 21:19:29 +0100
Message-Id: <20200418201944.482088-36-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132040_278321_BD0D0982 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

`sp' is a needless excercise here.

Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Cc: Jeff Dike <jdike@addtoit.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: linux-um@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/um/kernel/sysrq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/um/kernel/sysrq.c b/arch/um/kernel/sysrq.c
index c71b5ef7ea8c..c831a1c2eb94 100644
--- a/arch/um/kernel/sysrq.c
+++ b/arch/um/kernel/sysrq.c
@@ -27,7 +27,6 @@ static const struct stacktrace_ops stackops = {
 
 void show_stack(struct task_struct *task, unsigned long *stack)
 {
-	unsigned long *sp = stack;
 	struct pt_regs *segv_regs = current->thread.segv_regs;
 	int i;
 
@@ -38,10 +37,9 @@ void show_stack(struct task_struct *task, unsigned long *stack)
 	}
 
 	if (!stack)
-		sp = get_stack_pointer(task, segv_regs);
+		stack = get_stack_pointer(task, segv_regs);
 
 	pr_info("Stack:\n");
-	stack = sp;
 	for (i = 0; i < 3 * STACKSLOTS_PER_LINE; i++) {
 		if (kstack_end(stack))
 			break;
-- 
2.26.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
