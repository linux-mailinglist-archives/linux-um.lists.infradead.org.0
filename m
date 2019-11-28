Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4466510CE08
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 18:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EuhEv1x50djiGr/uXyvct3EQ4qMcZ8poo/JAWSrkSbE=; b=pXboqNQb8NVamK
	L7k3inTHYqnZnQ+K5ckiI7/J+/4MIk4EBIpd9+NBmcLMzEjIqw8l2csCCwr6H10/vskJgc0deSxhm
	WE7QMuu533rp1/jUrCQv9m1ikrzuKlx6rrNkYWnMbcYsVD4+aEGVZbnH2hos+3sGEtqO9Z7TJx6U8
	vfoBNg7s1GajjvJ8vq8d5lWqlg0TA5gA7GgAo9ZVrIa00TbCCpSwJ+FY56XHEPU7L7BdzwtbSgesC
	wFUUYa4TVBDA3NHDe92CjJkvFkHPJ4UtQf4eRBouGa2X7ZKKMg20vjkrQKJmibGmjQg9mgybyahT9
	vb9Yc7PtCbjcIOC1Cqvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNq6-0003YS-MJ; Thu, 28 Nov 2019 17:44:26 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNq4-0003Y6-DF
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 17:44:25 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaNq0-0007Yx-TF; Thu, 28 Nov 2019 17:44:21 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaNpx-000189-2a; Thu, 28 Nov 2019 17:44:18 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH] um: vector: fix BPF loading in vector drivers
Date: Thu, 28 Nov 2019 17:44:05 +0000
Message-Id: <20191128174405.4244-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_094424_443921_63BCB150 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: songliubraving@fb.com, daniel@iogearbox.net, richard@nod.at,
 kernel-janitors@vger.kernel.org, ast@kernel.org, weiyongjun1@huawei.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org, kafai@fb.com,
 dan.carpenter@oracle.com, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

This fixes a possible hang in bpf firmware loading in the
UML vector io drivers due to use of GFP_KERNEL while holding
a spinlock.

Based on a prposed fix by weiyongjun1@huawei.com and suggestions for
improving it by dan.carpenter@oracle.com

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_kern.c | 38 ++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 92617e16829e..dbbc6e850fdd 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1387,6 +1387,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
 	struct vector_private *vp = netdev_priv(dev);
 	struct vector_device *vdevice;
 	const struct firmware *fw;
+	void *new_filter;
 	int result = 0;
 
 	if (!(vp->options & VECTOR_BPF_FLASH)) {
@@ -1394,6 +1395,15 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
 		return -1;
 	}
 
+	vdevice = find_device(vp->unit);
+
+	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
+		return -1;
+
+	new_filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
+	if (!new_filter)
+		goto free_buffer;
+
 	spin_lock(&vp->lock);
 
 	if (vp->bpf != NULL) {
@@ -1402,41 +1412,33 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
 		kfree(vp->bpf->filter);
 		vp->bpf->filter = NULL;
 	} else {
-		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
+		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
 		if (vp->bpf == NULL) {
 			netdev_err(dev, "failed to allocate memory for firmware\n");
-			goto flash_fail;
+			goto apply_flash_fail;
 		}
 	}
 
-	vdevice = find_device(vp->unit);
-
-	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
-		goto flash_fail;
-
-	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
-	if (!vp->bpf->filter)
-		goto free_buffer;
-
+	vp->bpf->filter = new_filter;
 	vp->bpf->len = fw->size / sizeof(struct sock_filter);
-	release_firmware(fw);
 
 	if (vp->opened)
 		result = uml_vector_attach_bpf(vp->fds->rx_fd, vp->bpf);
 
 	spin_unlock(&vp->lock);
 
-	return result;
-
-free_buffer:
 	release_firmware(fw);
 
-flash_fail:
+	return result;
+
+apply_flash_fail:
 	spin_unlock(&vp->lock);
-	if (vp->bpf != NULL)
+	if (vp->bpf)
 		kfree(vp->bpf->filter);
 	kfree(vp->bpf);
-	vp->bpf = NULL;
+
+free_buffer:
+	release_firmware(fw);
 	return -1;
 }
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
