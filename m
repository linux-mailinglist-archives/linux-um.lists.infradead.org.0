Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23FA10C21F
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 03:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kLN0mrFaqMuHUrR4gpF84xZLJagM5z6T/4OVWGyBc+Q=; b=DWqrBYyMNBZTZO
	ZzLNKPZKW1eD8i3EgAHq0HxuLF6rnehJEy2jfBqKMF89JRaS8EK2QHjNAcYlKXN0Fk7B1AzaunLt+
	cU4sxDItU0f2y/Q8F7PpANJepzT8jwbGtpA5SVaxuW/CQJlCJl2lDJkje/YDNn2wul5QilObIA7Pr
	ust2gA3HhEc+uucuWf05dCDWM5yvoHRNUeM2nNozQW7ECU+JE0Va9Lt4tzxoeD9+827tvaDPntymF
	8NlKbb25TQ3t/7OoiB7kWShFgwXrtHcsDGX1fcCeJ0589teyx+2OCBc+in1Nq+uENEO6snc713oqT
	SnDz4IwpJLyHwBM3DI6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9A3-0001G0-Kt; Thu, 28 Nov 2019 02:04:03 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9A0-0001DQ-NB
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 02:04:02 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 266E1405FE787B313E56;
 Thu, 28 Nov 2019 10:03:50 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Thu, 28 Nov 2019 10:03:42 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 "Anton Ivanov" <anton.ivanov@cambridgegreys.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau
 <kafai@fb.com>, Song Liu <songliubraving@fb.com>
Subject: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
Date: Thu, 28 Nov 2019 02:01:47 +0000
Message-ID: <20191128020147.191893-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_180400_935269_9434FFA4 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-um@lists.infradead.org,
 bpf@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

A spin lock is taken here so we should use GFP_ATOMIC.

Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 arch/um/drivers/vector_kern.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 92617e16829e..6ff0065a271d 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1402,7 +1402,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
 		kfree(vp->bpf->filter);
 		vp->bpf->filter = NULL;
 	} else {
-		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
+		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
 		if (vp->bpf == NULL) {
 			netdev_err(dev, "failed to allocate memory for firmware\n");
 			goto flash_fail;
@@ -1414,7 +1414,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
 	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
 		goto flash_fail;
 
-	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
+	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_ATOMIC);
 	if (!vp->bpf->filter)
 		goto free_buffer;




_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
