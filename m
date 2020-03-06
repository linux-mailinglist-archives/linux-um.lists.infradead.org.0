Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D165E17B374
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 02:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yR6vHkkPYzgeVy7ZhRjSXZb6gYqU5StHfmIfCxjNU0=; b=cb+mtArFgPSq85
	BXqSOAXH8TM8pployhJ4h8zL6HLwW4fE6RQleDQyhXEy8BpBAyIjCKfXN25qYVTjdzO3V2/kVfRXd
	R6R88YRTtkXbP7DPObFA+W176qMqxQc/YoJZYEXeqXQl8wtGTqVdTq3I8K368CQrK9PjJACkrJmCV
	T32yBFSRJt7iWRQ+MkAddWvzPZsKXFUw6g7u6de54d7qFo6jjHajzhVYAfCITp9l7wrZcoH6Kuj+5
	velMvXa8AkOphhOQs40NpMBdCuBTeWsmSP4LmKRgGxMbBaJaE4JtRVosbeVjBuH08Ua0Z3a6wzauO
	w9sXn+uodPOcZ9OT6sKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1S0-0008O9-16; Fri, 06 Mar 2020 01:06:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Rx-0008Mi-Sg
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 01:06:51 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFC6120848;
 Fri,  6 Mar 2020 01:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583456808;
 bh=MnSx+bRM3bH2XiO0Bs9afQghY0J5GNchXPkSWXLLq9o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P4gn3Onzd39vjbS4WUY4DHugnMU8BK/REwM4+XVaV2bhs81F9FpAFTN4iLyHcS4hg
 3CtL1IEuhYU/zfQ5Plb1Mmdwh1OQfd3aSAgc2/nc8pkE7WCmm/sAk+mfxirK6eCQnA
 EEF4o4/w1/CFEEEMlSmgL5cfdZbYh5MHI+sGC4IM=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Subject: [PATCH net-next 1/7] um: reject unsupported coalescing params
Date: Thu,  5 Mar 2020 17:05:56 -0800
Message-Id: <20200306010602.1620354-2-kuba@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306010602.1620354-1-kuba@kernel.org>
References: <20200306010602.1620354-1-kuba@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_170649_945185_95ACAC26 
X-CRM114-Status: UNSURE (   8.55  )
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

This driver did not previously reject unsupported parameters.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 arch/um/drivers/vector_kern.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 0ff86391f77d..e98304d0219e 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1508,6 +1508,7 @@ static int vector_set_coalesce(struct net_device *netdev,
 }
 
 static const struct ethtool_ops vector_net_ethtool_ops = {
+	.supported_coalesce_params = ETHTOOL_COALESCE_TX_USECS,
 	.get_drvinfo	= vector_net_get_drvinfo,
 	.get_link	= ethtool_op_get_link,
 	.get_ts_info	= ethtool_op_get_ts_info,
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
