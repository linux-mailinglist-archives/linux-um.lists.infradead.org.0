Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C848F7CEA3
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 22:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v7t7A4T1gdkQIquUVwdUKW85xaJ/M9xXGzmMI9mXYnE=; b=ZNA0lkYAr/XyU+
	jVm+LR+9lBrVoDu0PsbZ71VeSqavtx90k9eWVRj1y5W10WPk5d8FV0c5KUaCy3up0J3ckXu0zofWv
	bcrBElZMB+z/dnjXSnY36SR8h+yKYEcIpK5ILq14FSDgHVki+62NQvxHA/Y2VlXl4MMZrsMgrCJfW
	Wp62bVekHNkgeiraE7n4BWU/ONQCd48RGwECzKcaPTIMLn8+KCzPhoHU4njlu1KkGoQJ1SYTV6pPV
	rTfbfCqHWi2b5lSO520rXIoL2h/JMsY4apxXnK1anZ8fQyEavzy8l5F5P25PsdRSqF8EBOsJFAiB/
	MwuHqo1Rcry0nZliXvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGo-0007SP-WB; Wed, 31 Jul 2019 20:32:23 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvF6-00058l-Rx
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 20:30:39 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsvF4-0002Cp-Hq; Wed, 31 Jul 2019 22:30:35 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC] um: virtio: Workaround for using virtio_net with snabb
Date: Wed, 31 Jul 2019 22:30:30 +0200
Message-Id: <20190731203030.29821-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133037_003079_A6F92E21 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Erel Geron <erelx.geron@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Erel Geron <erelx.geron@intel.com>

Workaround a crash of snabb when using virtio_uml.

Signed-off-by: Erel Geron <erelx.geron@intel.com>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/virtio_uml.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index 30eeb907f42a..9c1308f56b93 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -31,6 +31,10 @@
 #include <os.h>
 #include "vhost_user.h"
 
+/* TODO for the workaround in vhost_user_init */
+#include <linux/virtio_ids.h>
+#include <linux/virtio_net.h>
+
 /* Workaround due to a conflict between irq_user.h and irqreturn.h */
 #ifdef IRQ_NONE
 #undef IRQ_NONE
@@ -200,6 +204,11 @@ static int vhost_user_init(struct virtio_uml_device *vu_dev)
 	if (rc)
 		return rc;
 
+	/* TODO workaround for some implementations */
+	if (vu_dev->vdev.id.device == VIRTIO_ID_NET)
+		vu_dev->features &= ~BIT_ULL(VIRTIO_NET_F_CTRL_VQ) &
+				~BIT_ULL(VIRTIO_NET_F_MQ);
+
 	if (vu_dev->features & BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)) {
 		rc = vhost_user_get_protocol_features(vu_dev,
 				&vu_dev->protocol_features);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
