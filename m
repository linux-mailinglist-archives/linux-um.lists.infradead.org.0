Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECADBB3B06
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 15:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1YBd09SlqZRcoMtAJ5PLKirZdcvrmnYodeDuPXCVbk=; b=HJIsIjoSMIM09K
	++qjmv1Z1W3WvndVi46dDoQ05GOpIrZPSDmfnaVuB53dQK7Bj8NCO5PyKwEsqewspThtzfa9KY/eL
	K+dGmrpSJT1IwiWgAVTL6HRxqcPtsRYRHawZKUgBtJ/BiYkWeTq+q4XHlsfo+y4qYQg0u4+WBHt0F
	dWiJZ23qeyTTtFodG8keM/AxDEo7z8V937LYxrbUHV+vrLbj01mVy+9ztmadeWRZ8AA1lEg/AUpJv
	sFqIO4vbWcXsKJWG0Mnkx+FSCS5ckvffR+chTs+s6bDz+ECy9WWMTTHPXTGN/+c1ww33KZPPmxkVl
	V4tangPptR/WzHjQHcLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qm2-0004VK-1M; Mon, 16 Sep 2019 13:10:34 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qlr-0004Nz-Pb
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 13:10:25 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i9qlq-0002zJ-Dq; Mon, 16 Sep 2019 15:10:22 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC 2/3] um: virtio: wrap irq request/free functions
Date: Mon, 16 Sep 2019 15:10:17 +0200
Message-Id: <1568639418-Idb5cc482e329c30eff3b4f53e5f86d60cb078738@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1568639418-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
References: <1568639418-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_061023_900376_09524839 
X-CRM114-Status: UNSURE (   9.04  )
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

For the time-travel=virtio patch, we need some different
logic here - just split out the refactoring to make the
review easier.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/virtio_uml.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index f25bcd147c6b..c23129b1c220 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -373,6 +373,20 @@ static irqreturn_t vu_req_interrupt(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int vu_request_irq(struct virtio_uml_device *vu_dev,
+			  int fd, irq_handler_t handler,
+			  const char *name, void *data)
+{
+	return um_request_irq(VIRTIO_IRQ, fd, IRQ_READ, handler,
+			      IRQF_SHARED, name, data);
+}
+
+static void vu_free_irq(struct virtio_uml_device *vu_dev,
+			int fd, void *data)
+{
+	um_free_irq(VIRTIO_IRQ, data);
+}
+
 static int vhost_user_init_slave_req(struct virtio_uml_device *vu_dev)
 {
 	int rc, req_fds[2];
@@ -383,8 +397,7 @@ static int vhost_user_init_slave_req(struct virtio_uml_device *vu_dev)
 		return rc;
 	vu_dev->req_fd = req_fds[0];
 
-	rc = um_request_irq(VIRTIO_IRQ, vu_dev->req_fd, IRQ_READ,
-			    vu_req_interrupt, IRQF_SHARED,
+	rc = vu_request_irq(vu_dev, vu_dev->req_fd, vu_req_interrupt,
 			    vu_dev->pdev->name, vu_dev);
 	if (rc)
 		goto err_close;
@@ -397,7 +410,7 @@ static int vhost_user_init_slave_req(struct virtio_uml_device *vu_dev)
 	goto out;
 
 err_free_irq:
-	um_free_irq(VIRTIO_IRQ, vu_dev);
+	vu_free_irq(vu_dev, vu_dev->req_fd, vu_dev);
 err_close:
 	os_close_file(req_fds[0]);
 out:
@@ -771,10 +784,11 @@ static void vu_reset(struct virtio_device *vdev)
 
 static void vu_del_vq(struct virtqueue *vq)
 {
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vq->vdev);
 	struct virtio_uml_vq_info *info = vq->priv;
 
 	if (info->call_fd >= 0) {
-		um_free_irq(VIRTIO_IRQ, vq);
+		vu_free_irq(vu_dev, info->call_fd, vq);
 		os_close_file(info->call_fd);
 	}
 
@@ -824,8 +838,8 @@ static int vu_setup_vq_call_fd(struct virtio_uml_device *vu_dev,
 		return rc;
 
 	info->call_fd = call_fds[0];
-	rc = um_request_irq(VIRTIO_IRQ, info->call_fd, IRQ_READ,
-			    vu_interrupt, IRQF_SHARED, info->name, vq);
+	rc = vu_request_irq(vu_dev, info->call_fd, vu_interrupt,
+			    info->name, vq);
 	if (rc)
 		goto close_both;
 
@@ -836,7 +850,7 @@ static int vu_setup_vq_call_fd(struct virtio_uml_device *vu_dev,
 	goto out;
 
 release_irq:
-	um_free_irq(VIRTIO_IRQ, vq);
+	vu_free_irq(vu_dev, info->call_fd, vq);
 close_both:
 	os_close_file(call_fds[0]);
 out:
@@ -908,7 +922,7 @@ static struct virtqueue *vu_setup_vq(struct virtio_device *vdev,
 
 error_setup:
 	if (info->call_fd >= 0) {
-		um_free_irq(VIRTIO_IRQ, vq);
+		vu_free_irq(vu_dev, info->call_fd, vq);
 		os_close_file(info->call_fd);
 	}
 error_call:
@@ -1015,7 +1029,7 @@ static void virtio_uml_release_dev(struct device *d)
 
 	/* might not have been opened due to not negotiating the feature */
 	if (vu_dev->req_fd >= 0) {
-		um_free_irq(VIRTIO_IRQ, vu_dev);
+		vu_free_irq(vu_dev, vu_dev->req_fd, vu_dev);
 		os_close_file(vu_dev->req_fd);
 	}
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
