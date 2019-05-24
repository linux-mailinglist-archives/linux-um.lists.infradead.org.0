Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F729F2A
	for <lists+linux-um@lfdr.de>; Fri, 24 May 2019 21:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iD23wUEzGz0UAHFvDeqnGOo9Whe7D69l9J0UvvLvWcE=; b=ma8
	zPNNBQNyYXysyklw1TmX5XcD30ReSmOMm4M7LgAl43pzjRobRajzRX4pxoYVDahsJ2RQSSsGXO4yd
	kmqkCLXWMIH1ulRVazEzVKjxrvtQOnJfi76U8A+kInr50m3TzYylDmsfzNwwHgJMintJzO6B/Xx3O
	sh2+jbJz+SWDBAx4/PvWVQoLcjFioyzyGwzfWwptZx2laBJKNxbEp+vtLm2b3gxArRiyPl41HvCe+
	H/G7UJ78rcin/DatUQSnRy+EAHzcFd29HuBHpJoA9h9VilAMnqrZsPLJmsNKB4ifA+XzCuWW7CZM1
	k9p8Cz6qO9YNd6AbCYl2crEOrZVKqlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUG0P-0006m9-92; Fri, 24 May 2019 19:37:29 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUG0L-0006lX-QY
 for linux-um@lists.infradead.org; Fri, 24 May 2019 19:37:27 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hUG0C-0007jV-5P; Fri, 24 May 2019 21:37:16 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: remove locking in deactivate_all_fds()
Date: Fri, 24 May 2019 21:37:00 +0200
Message-Id: <20190524193700.13500-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_123725_852382_DA7F4710 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: j@w1.fi, Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Not only does the locking contradict the comment, and as
the comment says is pointless and actually harmful (all
the actual OS threads have exited already), but it also
causes crashes when lockdep is enabled, because calling
into the spinlock calls into lockdep, which then tries
to determine the current task, which no longer exists.

Remove the locking to let UML shut down cleanly in case
lockdep is enabled.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/irq.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
index b40dac71e25b..d532377f5808 100644
--- a/arch/um/kernel/irq.c
+++ b/arch/um/kernel/irq.c
@@ -384,10 +384,8 @@ EXPORT_SYMBOL(deactivate_fd);
  */
 int deactivate_all_fds(void)
 {
-	unsigned long flags;
 	struct irq_entry *to_free;
 
-	spin_lock_irqsave(&irq_lock, flags);
 	/* Stop IO. The IRQ loop has no lock so this is our
 	 * only way of making sure we are safe to dispose
 	 * of all IRQ handlers
@@ -404,7 +402,6 @@ int deactivate_all_fds(void)
 		to_free = to_free->next;
 	}
 	garbage_collect_irq_entries();
-	spin_unlock_irqrestore(&irq_lock, flags);
 	os_close_epoll_fd();
 	return 0;
 }
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
