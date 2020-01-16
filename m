Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC3F13E871
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 18:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAjZn9fSuk5moFZ8jXcjE4s9QIhlak9MC1ayf3rMStU=; b=TA1+27ot86FIUN
	a4JUxD5GP1moMMkpQQ/XHbgBSI+AfNlom/lN4Qr0S5nMC9UFpOQRLlnsM6W7iF4zP97am/Iw06guy
	NZEH3tteroLdWvKqZZvanu2tQDPHv1+sLaMnNrr9AprQOisGBARKIgHsJ5PrBLU6t3awlnieBi/mv
	m34bhiZBLS30z3UhZ+Hn4hzhZJO8cv8D6vF4ZVd7tppeOj0Y1p3xTgZfC7ssCA59PHxwzJxNFzb/m
	Ouu+Hd9Q0yKbNbOLDEBDlgg2bm06U+eH/2OF1552Qf8PJcbxK6pOa0hGh+MmoVlKB46ic/y+Dq0zz
	im2F3ZexCgX1XY9BquhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is90S-00020d-HJ; Thu, 16 Jan 2020 17:32:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8e8-000221-IY
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 17:09:43 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1029B205F4;
 Thu, 16 Jan 2020 17:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194567;
 bh=YCE3P0Dt8ru4cxQvKA45tn/Skbj37sq/a/SFLEu/yZ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o5Xj3Fsgn9Usm155x5HeiPYccik/Nnh75lcG6Kd74FY1s5bLWLTjW8rJakCxKoEgv
 SVHW6Wun1DJVn+Dvfs2w8M2B63Sm1BlTDWeAuTMLb8efEdITindF0a8QDV2BsOqguB
 EPm65d2uTjiclCrC6guD9Dj6WM31mK9i2Wb1KlfY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 446/671] um: Fix IRQ controller regression on
 console read
Date: Thu, 16 Jan 2020 12:01:24 -0500
Message-Id: <20200116170509.12787-183-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090928_951284_96C414FE 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jouni Malinen <j@w1.fi>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Johannes Berg <johannes.berg@intel.com>,
 Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Jouni Malinen <j@w1.fi>

[ Upstream commit bebe4681d0e7e1be2608282dc86645728bc7f623 ]

The conversion of UML to use epoll based IRQ controller claimed that
clone_one_chan() can safely call um_free_irq() while starting to ignore
the delay_free_irq parameter that explicitly noted that the IRQ cannot
be freed because this is being called from chan_interrupt(). This
resulted in free_irq() getting called in interrupt context ("Trying to
free IRQ 6 from IRQ context!").

Fix this by restoring previously used delay_free_irq processing.

Fixes: ff6a17989c08 ("Epoll based IRQ controller")
Signed-off-by: Jouni Malinen <j@w1.fi>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/drivers/chan_kern.c | 52 +++++++++++++++++++++++++++++++------
 arch/um/kernel/irq.c        |  4 +++
 2 files changed, 48 insertions(+), 8 deletions(-)

diff --git a/arch/um/drivers/chan_kern.c b/arch/um/drivers/chan_kern.c
index 05588f9466c7..13ba195f9c9c 100644
--- a/arch/um/drivers/chan_kern.c
+++ b/arch/um/drivers/chan_kern.c
@@ -171,19 +171,55 @@ int enable_chan(struct line *line)
 	return err;
 }
 
+/* Items are added in IRQ context, when free_irq can't be called, and
+ * removed in process context, when it can.
+ * This handles interrupt sources which disappear, and which need to
+ * be permanently disabled.  This is discovered in IRQ context, but
+ * the freeing of the IRQ must be done later.
+ */
+static DEFINE_SPINLOCK(irqs_to_free_lock);
+static LIST_HEAD(irqs_to_free);
+
+void free_irqs(void)
+{
+	struct chan *chan;
+	LIST_HEAD(list);
+	struct list_head *ele;
+	unsigned long flags;
+
+	spin_lock_irqsave(&irqs_to_free_lock, flags);
+	list_splice_init(&irqs_to_free, &list);
+	spin_unlock_irqrestore(&irqs_to_free_lock, flags);
+
+	list_for_each(ele, &list) {
+		chan = list_entry(ele, struct chan, free_list);
+
+		if (chan->input && chan->enabled)
+			um_free_irq(chan->line->driver->read_irq, chan);
+		if (chan->output && chan->enabled)
+			um_free_irq(chan->line->driver->write_irq, chan);
+		chan->enabled = 0;
+	}
+}
+
 static void close_one_chan(struct chan *chan, int delay_free_irq)
 {
+	unsigned long flags;
+
 	if (!chan->opened)
 		return;
 
-    /* we can safely call free now - it will be marked
-     *  as free and freed once the IRQ stopped processing
-     */
-	if (chan->input && chan->enabled)
-		um_free_irq(chan->line->driver->read_irq, chan);
-	if (chan->output && chan->enabled)
-		um_free_irq(chan->line->driver->write_irq, chan);
-	chan->enabled = 0;
+	if (delay_free_irq) {
+		spin_lock_irqsave(&irqs_to_free_lock, flags);
+		list_add(&chan->free_list, &irqs_to_free);
+		spin_unlock_irqrestore(&irqs_to_free_lock, flags);
+	} else {
+		if (chan->input && chan->enabled)
+			um_free_irq(chan->line->driver->read_irq, chan);
+		if (chan->output && chan->enabled)
+			um_free_irq(chan->line->driver->write_irq, chan);
+		chan->enabled = 0;
+	}
 	if (chan->ops->close != NULL)
 		(*chan->ops->close)(chan->fd, chan->data);
 
diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
index 6b7f3827d6e4..2753718d31b9 100644
--- a/arch/um/kernel/irq.c
+++ b/arch/um/kernel/irq.c
@@ -21,6 +21,8 @@
 #include <irq_user.h>
 
 
+extern void free_irqs(void);
+
 /* When epoll triggers we do not know why it did so
  * we can also have different IRQs for read and write.
  * This is why we keep a small irq_fd array for each fd -
@@ -100,6 +102,8 @@ void sigio_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
 			}
 		}
 	}
+
+	free_irqs();
 }
 
 static int assign_epoll_events_to_irq(struct irq_entry *irq_entry)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
