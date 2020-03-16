Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B163C186D8C
	for <lists+linux-um@lfdr.de>; Mon, 16 Mar 2020 15:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAsxjiP6deIOks1edQDMj6zN+6q8cv5p78B3hdJQc8U=; b=QhWhQ/PONO5yiE
	Z6ZbGt0CJM/q746in9CC0Ru1JqD+qAeU+Do/7RjZVdwRccWKMNyCIvT9woohdE0qYEMiY7DS7DwDt
	X23LAAN4vgCYifznrIgEtF/4l6SNb6qK9lADLboN0uo61Ihra+dXbEg+XcGjsYaPYbBTGCDASu/Rv
	GCdNW839juJfYL/o+y3W1B40k52MoJ6Cn4lVabWcBWvi5pP+CPw1J4EIYZMMaXDPhzIcSWar9zvGB
	oqbf1xG0bT6X5O/XJqzjfdoCBN/Cq3DMeYQStaIfR+TxAZI2rqZ1qWSSANFc+/OUqvQc38pWbm+4e
	Sj2IUjnhDZtYzXPt9r3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqwm-0004AI-L8; Mon, 16 Mar 2020 14:42:28 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqwc-0003yW-Qk
 for linux-um@lists.infradead.org; Mon, 16 Mar 2020 14:42:20 +0000
Received: by mail-pj1-x1043.google.com with SMTP id mq3so8826152pjb.0
 for <linux-um@lists.infradead.org>; Mon, 16 Mar 2020 07:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2WuROG7p9xDXrDUoQmG0UFQkyt5AI2QC9GLLPwUWwUk=;
 b=ie6XMNLrZLpp5pcj+BVZDJ72LWYVqbHhlW0828D0/mPHBOnmjfQF3VKXCZiIzICs5R
 9HKirNYcJ89fGuZEPkn0x37FUK9ItKTmo3J42PXpMkTMwhKBUuQkOFAr9+diJOW3Whrq
 gRDLavz6TiymVV85bRVdYMUCFip+ei/I8H7y9+Qq1/9vbxOBH+vdvEytxZd0ZDX2iMTd
 ZQ4J2jyFBXmqKlEWfYekIkxZp8kLFkWsONqmbpcIKvV9JpvnDHNX/SsEvk65L4gNWZ31
 vtAfbZzC3BGBRUoSXiLoOiAAdO6+ezS9/gpcUm/073xe9/sO2tJWoEz1qJYOUUm38VFP
 tVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2WuROG7p9xDXrDUoQmG0UFQkyt5AI2QC9GLLPwUWwUk=;
 b=bYce2Bdb/Yb0pSkNqEDZKUm1YO+ZPv89vWb9+GpCzyZ5gi3tSuBZ2HWZhMx+aNOPUK
 2R4utHTCHD+Lq79lRLrEMM/1UaGPWas3ExdxtZbdnUoVjGBw+yEHfBDRYzrQlI27vAHA
 X6ZVuhsKHG8079tGS6q6JFnVxTRkQeZ4/taKaFk1Cz/AH2QXcZqpivjDxaxOL+U3AlcT
 JKbek79SDPMHhsIMXiPgVjnNi6/cRIixK+ghf+gXzJarME+QcBlQROODkiTBhC9lXKmU
 ix53DANeHqaMDi6fDuiSZQoBXQlr+8oc8M68PJUJFSPw+BRmcyt6IG5MbvBya6Uo1JfU
 jvCw==
X-Gm-Message-State: ANhLgQ0yRUWt69XANGa1UXhB9IvWiayBYtO4/xb7RLuuQ4F4XGa+nOUR
 csK7tnMbZ+A7qmYhwnuy8hFY1g==
X-Google-Smtp-Source: ADFU+vtDwRfD1spfik9No8awM5gOWgWPwX1SkirikXB9ACrvcvRlcbGJOGLtvB6BzYEUvynLZB4ccQ==
X-Received: by 2002:a17:90b:1997:: with SMTP id
 mv23mr5926595pjb.84.1584369737997; 
 Mon, 16 Mar 2020 07:42:17 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:42:17 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 35/50] um/sysrq: Remove needless variable sp
Date: Mon, 16 Mar 2020 14:39:01 +0000
Message-Id: <20200316143916.195608-36-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074218_888246_45B962B4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
