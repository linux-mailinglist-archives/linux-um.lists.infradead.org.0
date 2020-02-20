Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CEB165967
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 09:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=381Ni+yNGNzpoTZ76dDlaGXkIe/j5MeCd6TfDNPGxUA=; b=jMUtDHC/T9kccq
	uxPzgXMV70cZS66RO/RROVVgnCetqXQ9HZUnphaOBpJDkxpOhUUm07h3jO3cDC1xDJnxvAzcigM1G
	YOlfLCvNUEUc2M466lIgj++JXErIm0hyg3HglgDM39XVYTZFFOpO0suz1AHVED7IAC5HqvgaWsJ0n
	aHe8POR84SS6wkiqzO3RvzdkOpIk4fb+U2CrikvbjTZZYa5blULGCG2d284zjfYPYsB+VFZjqVNG0
	2Ab/oERUea5K2ixGdWboInJHj7BAvZbFljPxLJac2HHpH+1zbqkxvw6hIF3yRUpa9hV8wDf2DyAh7
	zTIe0KFgk4iZXToCUVow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hNt-0003SM-P6; Thu, 20 Feb 2020 08:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hNr-0003Rm-30
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 08:40:36 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20EB824656;
 Thu, 20 Feb 2020 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582188034;
 bh=nFwCJ4W+jf3Y1aORyKGLVZYhoBnX6FnF/9OkEHekQ1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VEWKf6cqKs9Pe/hNeZAwfr5Rs2SfEYkaMVYmS0RcVhQBNoNX7pd0pO9vHEyiNECx5
 doztwbD8LiiNgaY8YMvMTbm+GYGgFUq+SOBzlbSGeqsmqqQgzGVaQYfUvLVKyaqnFF
 +o3VDVfQf6fTM1/X3tIj9d/3x3043holIUStNs1M=
From: Leon Romanovsky <leon@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 2/2] um: Delete never executed timer
Date: Thu, 20 Feb 2020 10:40:14 +0200
Message-Id: <20200220084014.238768-3-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200220084014.238768-1-leon@kernel.org>
References: <20200220084014.238768-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_004035_152250_C01F60F5 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>


The "#ifdef undef" construction effectively disabled the timer.
It causes to the fact that this timer did nothing, so delete it.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 arch/um/drivers/net_kern.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
index af07733c2dc8..1802cf4ef5a5 100644
--- a/arch/um/drivers/net_kern.c
+++ b/arch/um/drivers/net_kern.c
@@ -274,17 +274,6 @@ static const struct ethtool_ops uml_net_ethtool_ops = {
 	.get_ts_info	= ethtool_op_get_ts_info,
 };

-static void uml_net_user_timer_expire(struct timer_list *t)
-{
-#ifdef undef
-	struct uml_net_private *lp = from_timer(lp, t, tl);
-	struct connection *conn = &lp->user;
-
-	dprintk(KERN_INFO "uml_net_user_timer_expire [%p]\n", conn);
-	do_connect(conn);
-#endif
-}
-
 void uml_net_setup_etheraddr(struct net_device *dev, char *str)
 {
 	unsigned char *addr = dev->dev_addr;
@@ -455,7 +444,6 @@ static void eth_configure(int n, void *init, char *mac,
 		  .add_address 		= transport->user->add_address,
 		  .delete_address  	= transport->user->delete_address });

-	timer_setup(&lp->tl, uml_net_user_timer_expire, 0);
 	spin_lock_init(&lp->lock);
 	memcpy(lp->mac, dev->dev_addr, sizeof(lp->mac));

--
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
