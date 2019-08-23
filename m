Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343BB9AD88
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 12:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9o+v+TX3PMhsYYMTnpJNcnlsj8uutL/oRd5jid0PCJc=; b=TX6OVNYyqvsQhx
	s15zgkXQRNwOMfRONvZ5eShADZopRtoMaenVphsqwtLlpV4MG9L+y5aFiKCO20MgzOCQpIcIcilAa
	KEcaDT/9aLJGVfYlVaCAWuf1q5to1Na72t8W7oob1srp8fRNXa0pSZYYonrvAQ9oqLvHh7yUhpodx
	xsPT7tnnc/p1241AM7Svh5y0143Ao91V8LMij6evMmUyFn2+EaiZFMuUGSUcn/BvAUED8RD8Cmiv+
	d+Qus7i0WqS7ic9tcpGYWrkDCjj89D2MTX8vTNbBZjrzsUU/5cqBabf3i4a2WEd0wIecyWZB+lb23
	CgxW15UXBayWfZm7+Qwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i174x-00054z-JC; Fri, 23 Aug 2019 10:45:59 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i174u-00053W-2E
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 10:45:57 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i174p-0001vM-Kj; Fri, 23 Aug 2019 12:45:51 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 1/4] arch: um: remove sig_info[SIGALRM]
Date: Fri, 23 Aug 2019 12:44:26 +0200
Message-Id: <20190823104429.11047-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034556_105678_5F1699D1 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

This entry is misleading, the actual signal handler is
another one that never uses sig_info.

Also remove the SIGALRM if inside sig_handler() for the
same reason.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/os-Linux/signal.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
index 75b10235d369..35d1b2bc00cb 100644
--- a/arch/um/os-Linux/signal.c
+++ b/arch/um/os-Linux/signal.c
@@ -26,7 +26,6 @@ void (*sig_info[NSIG])(int, struct siginfo *, struct uml_pt_regs *) = {
 	[SIGBUS]	= bus_handler,
 	[SIGSEGV]	= segv_handler,
 	[SIGIO]		= sigio_handler,
-	[SIGALRM]	= timer_handler
 };
 
 static void sig_handler_common(int sig, struct siginfo *si, mcontext_t *mc)
@@ -42,7 +41,7 @@ static void sig_handler_common(int sig, struct siginfo *si, mcontext_t *mc)
 	}
 
 	/* enable signals if sig isn't IRQ signal */
-	if ((sig != SIGIO) && (sig != SIGWINCH) && (sig != SIGALRM))
+	if ((sig != SIGIO) && (sig != SIGWINCH))
 		unblock_signals();
 
 	(*sig_info[sig])(sig, si, &r);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
