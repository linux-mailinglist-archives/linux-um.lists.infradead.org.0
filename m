Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C72B3AF7
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 15:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wr7x82+NTKDCIhDNzpGRYKKJCy+ux3UA9+N2Q5XVuh8=; b=G7xId5CKl8PMTt
	IVmgQPWeKPYAnfqrST+RpUKL06bGekO0qS2u2HAnN+EQH6pizAuwR0KxAisRFBgiURi6xYM9xxbLu
	eU0hTZ24Ni9E4gjKSS/HIffsfTAUgti13fC2FM1KGcKRGNq1HRavCtHRMZfdW7xvc6DmdwXXtE/HK
	viJKowIczrEtF+7G1lEBYuwkwlH28by3q2dJ9KXpzMN7XCuyq2cPTbQ5/rZ+j4jf5VSEuPKua6bD+
	XARVNQsnyOl4uAH3A8uRMUV3wWdsp/QsP5mbl/I+HWNOwXsuxpQFl+lA0MMFhBdFDRHPkgkn/DskM
	xQoQ71yHBBpYTVQtN0/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qiA-0002wS-S8; Mon, 16 Sep 2019 13:06:34 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qi7-0002uh-2U
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 13:06:32 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i9qi5-0002qG-Od; Mon, 16 Sep 2019 15:06:29 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: virtio: remove device on disconnect
Date: Mon, 16 Sep 2019 15:06:26 +0200
Message-Id: <1568639186-I0f2810aee05af27171c2dcd9a495f70397da8b35@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060631_113729_387F5161 
X-CRM114-Status: GOOD (  11.61  )
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

If the connection drops, just remove the device, we don't try
to recover from this right now.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/virtio_uml.c | 57 +++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index fc8c52cff5aa..1705fad4ad8f 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -42,6 +42,13 @@
 #define to_virtio_uml_device(_vdev) \
 	container_of(_vdev, struct virtio_uml_device, vdev)
 
+struct virtio_uml_platform_data {
+	u32 virtio_device_id;
+	const char *socket_path;
+	struct work_struct conn_broken_wk;
+	struct platform_device *pdev;
+};
+
 struct virtio_uml_device {
 	struct virtio_device vdev;
 	struct platform_device *pdev;
@@ -107,12 +114,21 @@ static int vhost_user_recv_header(int fd, struct vhost_user_msg *msg)
 	return full_read(fd, msg, sizeof(msg->header));
 }
 
-static int vhost_user_recv(int fd, struct vhost_user_msg *msg,
+static int vhost_user_recv(struct virtio_uml_device *vu_dev,
+			   int fd, struct vhost_user_msg *msg,
 			   size_t max_payload_size)
 {
 	size_t size;
 	int rc = vhost_user_recv_header(fd, msg);
 
+	if (rc == -ECONNRESET) {
+		struct virtio_uml_platform_data *pdata;
+
+		pdata = vu_dev->pdev->dev.platform_data;
+
+		virtio_break_device(&vu_dev->vdev);
+		schedule_work(&pdata->conn_broken_wk);
+	}
 	if (rc)
 		return rc;
 	size = msg->header.size;
@@ -125,7 +141,7 @@ static int vhost_user_recv_resp(struct virtio_uml_device *vu_dev,
 				struct vhost_user_msg *msg,
 				size_t max_payload_size)
 {
-	int rc = vhost_user_recv(vu_dev->sock, msg, max_payload_size);
+	int rc = vhost_user_recv(vu_dev, vu_dev->sock, msg, max_payload_size);
 
 	if (rc)
 		return rc;
@@ -155,7 +171,7 @@ static int vhost_user_recv_req(struct virtio_uml_device *vu_dev,
 			       struct vhost_user_msg *msg,
 			       size_t max_payload_size)
 {
-	int rc = vhost_user_recv(vu_dev->req_fd, msg, max_payload_size);
+	int rc = vhost_user_recv(vu_dev, vu_dev->req_fd, msg, max_payload_size);
 
 	if (rc)
 		return rc;
@@ -1034,13 +1050,31 @@ static struct device vu_cmdline_parent = {
 static bool vu_cmdline_parent_registered;
 static int vu_cmdline_id;
 
+static int vu_unregister_cmdline_device(struct device *dev, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
+
+	kfree(pdata->socket_path);
+	platform_device_unregister(pdev);
+	return 0;
+}
+
+static void vu_conn_broken(struct work_struct *wk)
+{
+	struct virtio_uml_platform_data *pdata;
+
+	pdata = container_of(wk, struct virtio_uml_platform_data, conn_broken_wk);
+	vu_unregister_cmdline_device(&pdata->pdev->dev, NULL);
+}
+
 static int vu_cmdline_set(const char *device, const struct kernel_param *kp)
 {
 	const char *ids = strchr(device, ':');
 	unsigned int virtio_device_id;
 	int processed, consumed, err;
 	char *socket_path;
-	struct virtio_uml_platform_data pdata;
+	struct virtio_uml_platform_data pdata, *ppdata;
 	struct platform_device *pdev;
 
 	if (!ids || ids == device)
@@ -1079,6 +1113,11 @@ static int vu_cmdline_set(const char *device, const struct kernel_param *kp)
 	err = PTR_ERR_OR_ZERO(pdev);
 	if (err)
 		goto free;
+
+	ppdata = pdev->dev.platform_data;
+	ppdata->pdev = pdev;
+	INIT_WORK(&ppdata->conn_broken_wk, vu_conn_broken);
+
 	return 0;
 
 free:
@@ -1121,16 +1160,6 @@ __uml_help(vu_cmdline_param_ops,
 );
 
 
-static int vu_unregister_cmdline_device(struct device *dev, void *data)
-{
-	struct platform_device *pdev = to_platform_device(dev);
-	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
-
-	kfree(pdata->socket_path);
-	platform_device_unregister(pdev);
-	return 0;
-}
-
 static void vu_unregister_cmdline_devices(void)
 {
 	if (vu_cmdline_parent_registered) {
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
