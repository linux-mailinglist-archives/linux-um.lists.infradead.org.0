Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B3FCFE01
	for <lists+linux-um@lfdr.de>; Tue,  8 Oct 2019 17:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfAnXVPPdOUmdG1eeqgY4JBQrGCJGdO0EPP32VpQYO8=; b=S9ZuO/EA1+Cy1W
	v+Br/aKuB7ky3NVTqsL/zTaMvKwTY2eQNzARi2SmXZDzZlcyn548stKdQEpOGXyMz9KBkrBuGgZuS
	UOQbL3GQvAE2lsETNefqw0mqQh6CDPePYQLSDhg1fj5qG8fFh9pRCFZzNW1zO4GqMCxOCmYCDrhPe
	+RJO9ggR3X04pHTd7KKI5sBEEBzA67MJFDBnlK0WyrLSWglDKre6FgEA7KXwlXZPHRR16ib2/wvx3
	MsGjRWsGsY+8ONdNUNWBv0W454fge98U8C2fqC+zWf0eZXJ8JcI0xvLkMfN5ENbNPg7SpxBYLVG3/
	Dui3+hYMMEJUVak765Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfq-000405-Nc; Tue, 08 Oct 2019 15:45:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHre7-0001Jk-BZ
 for linux-um@lists.infradead.org; Tue, 08 Oct 2019 15:43:33 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iHre5-00030X-7B; Tue, 08 Oct 2019 17:43:29 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: virtio_uml: disallow modular build
Date: Tue,  8 Oct 2019 17:43:21 +0200
Message-Id: <1570549401-Ia2c524a2c48a33cecd9d956898cebe358a37563d@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084331_440108_83041EE2 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

This driver *can* be a module, but then its parameters (socket path)
are untrusted data from inside the VM, and that isn't allowed. Allow
the code to only be built-in to avoid that.

Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/Kconfig      | 2 +-
 arch/um/drivers/virtio_uml.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index fea5a0d522dc..388096fb45a2 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -337,7 +337,7 @@ config UML_NET_SLIRP
 endmenu
 
 config VIRTIO_UML
-	tristate "UML driver for virtio devices"
+	bool "UML driver for virtio devices"
 	select VIRTIO
 	help
 	  This driver provides support for virtio based paravirtual device
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index fc8c52cff5aa..511f595a3c3d 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -4,12 +4,12 @@
  *
  * Copyright(c) 2019 Intel Corporation
  *
- * This module allows virtio devices to be used over a vhost-user socket.
+ * This driver allows virtio devices to be used over a vhost-user socket.
  *
  * Guest devices can be instantiated by kernel module or command line
  * parameters. One device will be created for each parameter. Syntax:
  *
- *		[virtio_uml.]device=<socket>:<virtio_id>[:<platform_id>]
+ *		virtio_uml.device=<socket>:<virtio_id>[:<platform_id>]
  * where:
  *		<socket>	:= vhost-user socket path to connect
  *		<virtio_id>	:= virtio device id (as in virtio_ids.h)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
