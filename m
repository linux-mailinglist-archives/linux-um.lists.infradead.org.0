Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58BCF0C91
	for <lists+linux-um@lfdr.de>; Wed,  6 Nov 2019 04:08:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXYBpQrKQh+7xtz8ovk1vK88ddC2f7QKMc5MvYCjsfk=; b=UECAvS6H6l/MdC
	wKJtRjeOYVus0pW/6rDvEqe9uns3uhCkhi453SUWeCXa/8ugmG9mNE6kp/GN1652vdolz/IlEWUD+
	lBs+Cz6F+cLblhxd09MLEIaxRnHjfjTGE0c9n7upExLTISjLpJz4Jwnt/1QFZ17e4/95pJrMNSGOl
	+ZAQpGnaLh4q5H+WKWnZtM0yNIy8oF9F/MersFUazwCAlhSZmVRK1fOCsq5K0hlkHLpLqVxq471ys
	vkuti8JhidE5QC5pO1g2pgD1yM5ZaBqQL+500OOGzkjBvQ6cL9N7z84EhdTB4L+rRLQmdKFpak/4M
	GbfsU3e8IrHk6C/7aQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBgY-0003oU-Uf; Wed, 06 Nov 2019 03:08:42 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBgE-0003WU-Gu
 for linux-um@lists.infradead.org; Wed, 06 Nov 2019 03:08:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id d29so4377237plj.8
 for <linux-um@lists.infradead.org>; Tue, 05 Nov 2019 19:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LxgbTiejYBo7/1mqSq8S6enB8DpZaW/Z0tH3a73frYE=;
 b=RUsDHnlHj5OX2FkJMl4HO4OTDKo21VNVKxbNBWSkdB54TcJt+mxMTlscvrd0FdCzJH
 ElEUCChqKIdZieoYavAkGeo5IWT1xUUGX6giv1XqYskDqZ/eEYZyRqssdF4TgPsuzSdz
 tQO3kEj39bKSuQhyWb4jfiKIkj+Vxx7XVVCGxgak3n3JVgD1gccGCH71dhHy2fM9ldcD
 0y4109hwl1LU6L1RGNziH643/68eln7xOYBr+0ilFfxgURzcBGDys109fJhZCiEpGneh
 m5tJAOYGThV//35vj/00zrOh7SPMqHxXxVAqmhyBToRD+V40aaUE4tv1GF0q1lG5APGJ
 C24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LxgbTiejYBo7/1mqSq8S6enB8DpZaW/Z0tH3a73frYE=;
 b=F+R9C442C5ZDL6z7lHkfwMB3ysvs6wV7Zrcr6UTgo1Hk+18+wsorlfFJBfcx5YBXgl
 FIxWT+6Y3KwH7oYcMVR4Ll21AM/rEmoGdF7vU+sICcPnR9Z3d5S8v+bOC+BEey9wtLkc
 6TtaXDJxHa6zH7f3WqJjY8r4yJinFH3FYmxmj5qPIFqvqYmDDF0kk2U2z0myubB1doZg
 bZwYbr4MOXSKCBpTYuBnAN/k7qLHHdhaZJbjFmrngurIpRSzX2qxeeBuar7Qwpvwa/cD
 IVMuxd5GwIyL9S16S4yX95KbPKoCkQiCpy/hiK+V2p4NVbB/Vu8+mCvIjACYPi4KQr+X
 pP3Q==
X-Gm-Message-State: APjAAAVFCC37ZxXQUCdJ9LgZsdmWxR+NSbJBtACjtYuKk4mve0Es9c+V
 1vQHDnk2Gymucru3RMuvnJmIJw==
X-Google-Smtp-Source: APXvYqxAMcDnc7INtQXgA05d4KhhN6NCRfKLQwBG0t6uM/nx7dNbrex8NEIZcIlC6qRtK/3rv5h4rw==
X-Received: by 2002:a17:902:6a8a:: with SMTP id
 n10mr192466plk.146.1573009701404; 
 Tue, 05 Nov 2019 19:08:21 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:08:20 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 35/50] um/sysrq: Remove needless variable sp
Date: Wed,  6 Nov 2019 03:05:26 +0000
Message-Id: <20191106030542.868541-36-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190822_588899_82F8A86E 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
