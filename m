Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F082DE83F3
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 10:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NVBowEab4Qp69CX1eBwuorC8cxFjOop2k1ZAI76cFIQ=; b=FVhXGVq9kXwsF0
	3PKNSV0tSVcrpm8zcIgVtk9SKJ7PNPnGkyT3ooeuCI2qoJYhD5JrtgUG/V0KMoR8syjWrCjqmVy5e
	vhyXO9Vi99asf7sZ00br+vaX1bQlPaocgvYIAiNjJQT4/iauuh0r0uHV4BdY0k3KQa4BVaFzkmdJl
	aF1+u24wuStZAEJNNmr5B+vndfyAFTCKVyeuuCg4JhR1gaU4CxnvXKtqCYrR41m9Q35KyklFStTJ2
	vvZQzoOD2AfiuTBbFPWPaa9FPkcXDYhuCWf+RlnH4JXArZ0Pii36gFIpuDQQhjew2664RxqHvluft
	moHXUrftc8oUdvx9Bpbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNZT-0000xa-7e; Tue, 29 Oct 2019 09:13:47 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNZR-0000wD-1i
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 09:13:46 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iPNZM-00048S-N4; Tue, 29 Oct 2019 09:13:40 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iPNZJ-0000q5-3w; Tue, 29 Oct 2019 09:13:38 +0000
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: [PATCH v2] um: Entrust re-queue to the upper layers
Date: Tue, 29 Oct 2019 09:13:34 +0000
Message-Id: <20191029091334.3095-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_021345_091041_0E1CE2A0 
X-CRM114-Status: UNSURE (   8.06  )
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
Cc: axboe@kernel.dk, rrs@researchut.com, richard@nod.at, stable@vger.kernel.org,
 hch@lst.de, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Fixes crashes due to ubd requeue logic conflicting with the block-mq
logic. Crash is reproducible in 5.0 - 5.3.

Fixes: 53766defb8c860a47e2a965f5b4b05ed2848e2d0
Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/ubd_kern.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 33c1cd6a12ac..40ab9ad7aa96 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -1403,8 +1403,12 @@ static blk_status_t ubd_queue_rq(struct blk_mq_hw_ctx *hctx,
 
 	spin_unlock_irq(&ubd_dev->lock);
 
-	if (ret < 0)
-		blk_mq_requeue_request(req, true);
+	if (ret < 0) {
+		if (ret == -ENOMEM)
+			res = BLK_STS_RESOURCE;
+		else
+			res = BLK_STS_DEV_RESOURCE;
+	}
 
 	return res;
 }
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
