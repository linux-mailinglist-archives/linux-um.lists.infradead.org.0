Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6D6B6C62
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 21:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Sixp2tREarXDcaHHCAIyN6Six4EOWYiQZX7/h+jFMM=; b=mn7GL1IzD8oLiV
	JZfbBvK7GxDSxGWWOGA73K3q9cC8SFckXN8diUAmZNBjUdDfjEdoxb3+lZn/wvD/ozqGJ6cyNcSGr
	K/ZZ5w8ghIaBRIKs9MNE5WrExneTHe2UUcgNx6Rvt/+D+bj9e9i3ojM/ysni8JXvrqStH58TeNocc
	5wS80r1FEPORNqHQpBTQNSbhtzrFCgsXNTNdX/ANueILg8ovZAfMSxXvVgkocV+LHMsv4IeBMjCaF
	8QZQzyta7VCl6wAV69igzj4oXszsz3bj7JvUk171+hqrexew8Vgm6fZfvOOFXeP/8I/Xxm2Emvqu7
	NcmyNgrtnSVUr5L5ZKXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAfYu-0007hO-F0; Wed, 18 Sep 2019 19:24:24 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfYq-0007gx-NA
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 19:24:22 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iAfYm-0003i5-Cj; Wed, 18 Sep 2019 21:24:16 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v3] um: virtio: remove device on disconnect
Date: Wed, 18 Sep 2019 21:24:13 +0200
Message-Id: <1568834653-I0f2810aee05af27171c2dcd9a495f70397da8b35@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_122420_753417_CFF67917 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
v3:
 * fix for errors happening before we even register the virtio device
---
 arch/um/drivers/virtio_uml.c | 64 +++++++++++++++++++++++++-----------
 1 file changed, 45 insertions(+), 19 deletions(-)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index a2d9b3347945..c7f9cd3b4039 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -46,6 +46,13 @@
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
@@ -54,6 +61,7 @@ struct virtio_uml_device {
 	u64 features;
 	u64 protocol_features;
 	u8 status;
+	u8 registered:1;
 };
 
 struct virtio_uml_vq_info {
@@ -111,12 +119,21 @@ static int vhost_user_recv_header(int fd, struct vhost_user_msg *msg)
 	return full_read(fd, msg, sizeof(msg->header));
 }
 
-static int vhost_user_recv(int fd, struct vhost_user_msg *msg,
+static int vhost_user_recv(struct virtio_uml_device *vu_dev,
+			   int fd, struct vhost_user_msg *msg,
 			   size_t max_payload_size)
 {
 	size_t size;
 	int rc = vhost_user_recv_header(fd, msg);
 
+	if (rc == -ECONNRESET && vu_dev->registered) {
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
@@ -129,7 +146,7 @@ static int vhost_user_recv_resp(struct virtio_uml_device *vu_dev,
 				struct vhost_user_msg *msg,
 				size_t max_payload_size)
 {
-	int rc = vhost_user_recv(vu_dev->sock, msg, max_payload_size);
+	int rc = vhost_user_recv(vu_dev, vu_dev->sock, msg, max_payload_size);
 
 	if (rc)
 		return rc;
@@ -159,7 +176,7 @@ static int vhost_user_recv_req(struct virtio_uml_device *vu_dev,
 			       struct vhost_user_msg *msg,
 			       size_t max_payload_size)
 {
-	int rc = vhost_user_recv(vu_dev->req_fd, msg, max_payload_size);
+	int rc = vhost_user_recv(vu_dev, vu_dev->req_fd, msg, max_payload_size);
 
 	if (rc)
 		return rc;
@@ -972,11 +989,6 @@ static void virtio_uml_release_dev(struct device *d)
 
 /* Platform device */
 
-struct virtio_uml_platform_data {
-	u32 virtio_device_id;
-	const char *socket_path;
-};
-
 static int virtio_uml_probe(struct platform_device *pdev)
 {
 	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
@@ -1014,6 +1026,7 @@ static int virtio_uml_probe(struct platform_device *pdev)
 	rc = register_virtio_device(&vu_dev->vdev);
 	if (rc)
 		put_device(&vu_dev->vdev.dev);
+	vu_dev->registered = 1;
 	return rc;
 
 error_init:
@@ -1043,13 +1056,31 @@ static struct device vu_cmdline_parent = {
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
@@ -1088,6 +1119,11 @@ static int vu_cmdline_set(const char *device, const struct kernel_param *kp)
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
@@ -1130,16 +1166,6 @@ __uml_help(vu_cmdline_param_ops,
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
