Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15586165966
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 09:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFaBbBenKtSmP7U0pABFAK19CtUMQOnX8qYdTC/gWCw=; b=OXOZUSncaMsRSl
	n9i1/cIypMdQFvA9ONnsjnvTUKIUdVbMTOn+9s0fDc2S09MqK4PGt8/+FWK1KzGOzjvicxs5QO8WR
	TiN25fiiUkuLim1VC9EzsqBvSdzWSAid6R2FP/3SrWy2QLlXswEGhlcQKDGfB8nNMzW7fKucJ+yWz
	goVBtubwuWRXwkV+Ksm3p8K3DEsDqB9iVHoecrdIMlvFaF3GNs8YNsR5jOt5cnl1zK5R0AzbBpq0c
	npwGkhfvRPvOq9MB3c0C9z/wXSCXst4ra/otIAzlW6VswQrnY+Z3PHgqH/bJanqlOHRasaZsNLvdz
	zvIWsxKwOk7FsTWWjAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hNp-0003R8-JQ; Thu, 20 Feb 2020 08:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hNn-0003QW-I1
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 08:40:32 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 984B624654;
 Thu, 20 Feb 2020 08:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582188031;
 bh=bc08eycBbPAZ93zn/eoQGXx+O3pOBslmn3d5qofuI0s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KqGUk2/u6MQKqIh/DqjxqmBej6o8wMI/lMG0pvXkmUH1hIBbcLWSwVF/6AQIpGtBp
 Ketad8hoCA8eD7druqebwBZuEjyqi62+kUN6Q5Y6t8VWwupnw5A7a46Xl43Zzb2ZBP
 VeWhxXIIoO0t+DVe2TOkF96SAIo1Op2peWWwAvmU=
From: Leon Romanovsky <leon@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 1/2] um: Don't overwrite ethtool driver version
Date: Thu, 20 Feb 2020 10:40:13 +0200
Message-Id: <20200220084014.238768-2-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200220084014.238768-1-leon@kernel.org>
References: <20200220084014.238768-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_004031_614540_2273A568 
X-CRM114-Status: UNSURE (   8.99  )
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


In-tree drivers don't need to manage internal version because
they are aligned to the global Linux kernel version, which is
reported by default with "ethtool -i".

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 arch/um/drivers/net_kern.c    | 1 -
 arch/um/drivers/vector_kern.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
index 35ebeebfc1a8..af07733c2dc8 100644
--- a/arch/um/drivers/net_kern.c
+++ b/arch/um/drivers/net_kern.c
@@ -266,7 +266,6 @@ static void uml_net_get_drvinfo(struct net_device *dev,
 				struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
-	strlcpy(info->version, "42", sizeof(info->version));
 }

 static const struct ethtool_ops uml_net_ethtool_ops = {
diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 0ff86391f77d..9693dfca7651 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -46,7 +46,6 @@


 #define DRIVER_NAME "uml-vector"
-#define DRIVER_VERSION "01"
 struct vector_cmd_line_arg {
 	struct list_head list;
 	int unit;
@@ -1378,7 +1377,6 @@ static void vector_net_get_drvinfo(struct net_device *dev,
 				struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 }

 static int vector_net_load_bpf_flash(struct net_device *dev,
--
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
