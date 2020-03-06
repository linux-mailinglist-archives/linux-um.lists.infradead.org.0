Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B0B17B37C
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 02:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l98TQVOpyTAEw9cOCBN4TnctnbYqVJvQAcAgC+Z9FtA=; b=AL5ZoMM6a2/4gi
	3EoOuc96Nsk9D2p7pN4CzLxhTWdfFE+z1gTWUhBGqeNlmKMf/WdJcEmxpwfXgheTCXfL8X7WxElkA
	lRkDBNXUTMLQAS2AfoxjSvvCkmym2ZgblbqGcxZn8vIRGoeHbWiniSkyy8/FbcZTcLzFsy6n/Cekm
	mPnKLseTHyUvQBH9IZLVp5xkdqK8RQTouEcAzCGXMyHBn+9OxXL7ekroBtoAHihSYTfyI9hdz6CoB
	Cfv3akhhNShfvOrfjFgwau8+Jalr9amHF/xMHxu8wwUbhOv8CIkklRwj3HMmEb1sItH88RBG9Xbje
	OJHsXhoJiwz6Ti1JNxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1S4-0008RW-3a; Fri, 06 Mar 2020 01:06:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1S1-0008Ov-Aj
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 01:06:54 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EFC22146E;
 Fri,  6 Mar 2020 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583456813;
 bh=T6cn0wHytPI/i5tO/aLymuIVcVVaOSY4AMgguxIiZ6g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ss6+rX3vSW20OZ+dJk5Jy601slJGsh4cB8F5Jwqec3EJ+RxT9LNNHRZ4lZ9wbYFMN
 sjL/Gh1OS5xLhDggS0VzUabXakN8H5Xv97uoMglIbDdRe9/4nnhtDtu+BHkKX8tygj
 39cfUWrpF0482oyY5S3yizG4DVsAlXJQuuj3VBiA=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Subject: [PATCH net-next 5/7] vmxnet3: let core reject the unsupported
 coalescing parameters
Date: Thu,  5 Mar 2020 17:06:00 -0800
Message-Id: <20200306010602.1620354-6-kuba@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306010602.1620354-1-kuba@kernel.org>
References: <20200306010602.1620354-1-kuba@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_170653_383384_2940DF5D 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mkubecek@suse.cz, doshir@vmware.com, pv-drivers@vmware.com,
 jasowang@redhat.com, edumazet@google.com, anton.ivanov@cambridgegreys.com,
 merez@codeaurora.org, leon@kernel.org, linux-rdma@vger.kernel.org,
 richard@nod.at, jgg@ziepe.ca, dledford@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, hayeswang@realtek.com, jdike@addtoit.com,
 linux-um@lists.infradead.org, kvalo@codeaurora.org,
 GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Set ethtool_ops->supported_coalesce_params to let
the core reject unsupported coalescing parameters.

This driver correctly rejects all unsupported parameters.
As a side effect of these changes the error code for
unsupported params changes from EINVAL to EOPNOTSUPP.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/vmxnet3/vmxnet3_ethtool.c | 24 +++---------------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c b/drivers/net/vmxnet3/vmxnet3_ethtool.c
index 1e4b9ba70983..6528940ce5f3 100644
--- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
+++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
@@ -780,27 +780,6 @@ vmxnet3_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec)
 	if (!VMXNET3_VERSION_GE_3(adapter))
 		return -EOPNOTSUPP;
 
-	if (ec->rx_coalesce_usecs_irq ||
-	    ec->rx_max_coalesced_frames_irq ||
-	    ec->tx_coalesce_usecs ||
-	    ec->tx_coalesce_usecs_irq ||
-	    ec->tx_max_coalesced_frames_irq ||
-	    ec->stats_block_coalesce_usecs ||
-	    ec->use_adaptive_tx_coalesce ||
-	    ec->pkt_rate_low ||
-	    ec->rx_coalesce_usecs_low ||
-	    ec->rx_max_coalesced_frames_low ||
-	    ec->tx_coalesce_usecs_low ||
-	    ec->tx_max_coalesced_frames_low ||
-	    ec->pkt_rate_high ||
-	    ec->rx_coalesce_usecs_high ||
-	    ec->rx_max_coalesced_frames_high ||
-	    ec->tx_coalesce_usecs_high ||
-	    ec->tx_max_coalesced_frames_high ||
-	    ec->rate_sample_interval) {
-		return -EINVAL;
-	}
-
 	if ((ec->rx_coalesce_usecs == 0) &&
 	    (ec->use_adaptive_rx_coalesce == 0) &&
 	    (ec->tx_max_coalesced_frames == 0) &&
@@ -891,6 +870,9 @@ vmxnet3_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec)
 }
 
 static const struct ethtool_ops vmxnet3_ethtool_ops = {
+	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS |
+				     ETHTOOL_COALESCE_MAX_FRAMES |
+				     ETHTOOL_COALESCE_USE_ADAPTIVE_RX,
 	.get_drvinfo       = vmxnet3_get_drvinfo,
 	.get_regs_len      = vmxnet3_get_regs_len,
 	.get_regs          = vmxnet3_get_regs,
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
