Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8097DE7740
	for <lists+linux-um@lfdr.de>; Mon, 28 Oct 2019 18:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1xgussVkMR/cvThepZ99MWul6qoca7yb/7yRzUc2kQQ=; b=L7gOk4goUZJm+M
	nUBXz/gA8Jg/iGPdVL4MIHzKIoOxoY4oai1zq2RmzgCq19+itX2A/10Kcj65gBcadg1U/b3If6CHM
	Eb4H75LNUW+4ler1WMVrp2NE3u33RHFAKMnyAdtpB1D8pNgBGtVX5xCF8gPQxvMXAeTGvx1WdCxf5
	5TJricwMRBbJBb5FADorulstII5U/5Ar9pEj7gRtOWKO/cVWtzJ3T46NP0Gt9LlvaEFtO/bri7lKj
	jATyuK/V+BDNSp0t9JAhwE7RKebPG6Qs8MqN/y8bbtBB306InH8uDCk9Yyrd0ZXUgPiimGiOsfuZu
	u8CrTP1V7k8eFQAGS8/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8So-0004Wa-LW; Mon, 28 Oct 2019 17:05:54 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8Sm-0004Vu-Cr
 for linux-um@lists.infradead.org; Mon, 28 Oct 2019 17:05:54 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iP8Sj-0008D0-Gx; Mon, 28 Oct 2019 17:05:49 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iP8Sf-0007Cg-TV; Mon, 28 Oct 2019 17:05:47 +0000
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: Entrust re-queue to the upper layers
Date: Mon, 28 Oct 2019 17:05:43 +0000
Message-Id: <20191028170543.27591-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_100552_437324_1DC4BB80 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: axboe@kernel.dk, richard@nod.at, rrs@researchut.com, hch@lst.de,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Fixes crashes due to ubd requeue logic conflicting with the block-mq
one.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/ubd_kern.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 33c1cd6a12ac..3fe2a986f2c4 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -1404,7 +1404,7 @@ static blk_status_t ubd_queue_rq(struct blk_mq_hw_ctx *hctx,
 	spin_unlock_irq(&ubd_dev->lock);
 
 	if (ret < 0)
-		blk_mq_requeue_request(req, true);
+		return BLK_STS_DEV_RESOURCE;
 
 	return res;
 }
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
