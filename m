Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA31E8734A
	for <lists+linux-um@lfdr.de>; Fri,  9 Aug 2019 09:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/rJPbHJCP7cmjRCrrGvgO7iFVn0e9eO31Wyv6sSs4uo=; b=eHOb46uail9LO2TDE1f34Ayfyo
	ltxt8s2RNddAqInJBAmqKCTqZVM2XPfbod745QMv4sSWFpekXqYt47OhfpnZfeRetVtLU6ExqYCge
	1m40ni8kJ31fNfc1mOwsV81mjxazjzvdeNzRxHiee9YR9+wX+23ThjCWZ9hjrny/VVHtSIm664EgI
	L7HpoczVl2OcVQ1x5MWn+6AXTxc52doEMf+eWiQuLMgcbVKZXuKYYi34jCBtAn+ckbYaaDUExoIkB
	HeDI0ivu8fIxKQcCAj/AE1WLIXJZ0+pFogXG/wDH0U0RgfJVLm3jVedGFN+i5EHBRm5MRxrr843tf
	E00BTfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzVr-00021x-98; Fri, 09 Aug 2019 07:40:35 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzVo-00020M-LL
 for linux-um@lists.infradead.org; Fri, 09 Aug 2019 07:40:33 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzVn-0006ot-Fv; Fri, 09 Aug 2019 07:40:31 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzVk-0003ns-PQ; Fri, 09 Aug 2019 08:40:30 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCHv4 3/4] um: Add checks to mtu parameter parsing
Date: Fri,  9 Aug 2019 08:40:19 +0100
Message-Id: <20190809074020.14351-4-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809074020.14351-1-anton.ivanov@cambridgegreys.com>
References: <20190809074020.14351-1-anton.ivanov@cambridgegreys.com>
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_004032_837539_264F8BD7 
X-CRM114-Status: UNSURE (   9.95  )
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Adds a sanity check to the parsing of mtu command line param

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_kern.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 8fa094770965..45ec9bc2430f 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -121,7 +121,8 @@ static int get_mtu(struct arglist *def)
 
 	if (mtu != NULL) {
 		if (kstrtoul(mtu, 10, &result) == 0)
-			return result;
+			if ((result < (1 << 16) - 1) && (result >= 576))
+				return result;
 	}
 	return ETH_MAX_PACKET;
 }
-- 
2.11.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
