Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C946FB4F37
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GDBbAhqdOmHexP8EsEnOp+sy16jRJ4UqUk0UNABHy4=; b=JoQwkSnmsza+LM
	R3889uocvKYZjZSMNg5V+ehAbtLvyY+aVSIH5pHTPZrMM3HlZKvPZTAen5MUGd70zGXOYtVzaF9a7
	t6iLZJNW0btAjWx41bt+k6yx27aDC98jNz0dXQW9eCIziUhThf35kAuGHeZnXjv14WMAjIyrsyW5G
	wXxf5CRk1OHezH6Es344HaRy9URTdqT9o0ThrePgCw6jJWBBMZjOX3uzDtnVPkqLlkq3b6iVYdq6t
	4K30BvJkogH8C+NNfcn9DDAiE4qF4OmjxV9hZRURbLS1ol7u8CvNIbXQbB74ET/5lZyearWDlTvOq
	/xLX5eNFU13dfgO6EPHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADYz-0003DP-E4; Tue, 17 Sep 2019 13:30:37 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADYv-0003CV-3s
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:30:35 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iADYs-0005GC-HD; Tue, 17 Sep 2019 15:30:30 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC v3 1/2] um: virtio: implement
 VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS
Date: Tue, 17 Sep 2019 15:29:43 +0200
Message-Id: <1568726354-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917132943.20102-1-johannes@sipsolutions.net>
References: <20190917132943.20102-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063033_174710_A86FB2F0 
X-CRM114-Status: GOOD (  16.79  )
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

We'll prefer this feature, under the assumption that only a
few (simulation) devices will ever support it, since it's not
very efficient.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/vhost_user.h | 12 +++--
 arch/um/drivers/virtio_uml.c | 85 ++++++++++++++++++++++++++++--------
 2 files changed, 75 insertions(+), 22 deletions(-)

diff --git a/arch/um/drivers/vhost_user.h b/arch/um/drivers/vhost_user.h
index 45ff5ea22fea..ffa6b632d70e 100644
--- a/arch/um/drivers/vhost_user.h
+++ b/arch/um/drivers/vhost_user.h
@@ -10,9 +10,10 @@
 /* Feature bits */
 #define VHOST_USER_F_PROTOCOL_FEATURES	30
 /* Protocol feature bits */
-#define VHOST_USER_PROTOCOL_F_REPLY_ACK		3
-#define VHOST_USER_PROTOCOL_F_SLAVE_REQ		5
-#define VHOST_USER_PROTOCOL_F_CONFIG		9
+#define VHOST_USER_PROTOCOL_F_REPLY_ACK			3
+#define VHOST_USER_PROTOCOL_F_SLAVE_REQ			5
+#define VHOST_USER_PROTOCOL_F_CONFIG			9
+#define VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS	13
 /* Vring state index masks */
 #define VHOST_USER_VRING_INDEX_MASK	0xff
 #define VHOST_USER_VRING_POLL_MASK	BIT(8)
@@ -24,7 +25,8 @@
 /* Supported protocol features */
 #define VHOST_USER_SUPPORTED_PROTOCOL_F	(BIT_ULL(VHOST_USER_PROTOCOL_F_REPLY_ACK) | \
 					 BIT_ULL(VHOST_USER_PROTOCOL_F_SLAVE_REQ) | \
-					 BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG))
+					 BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG) | \
+					 BIT_ULL(VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS))
 
 enum vhost_user_request {
 	VHOST_USER_GET_FEATURES = 1,
@@ -52,12 +54,14 @@ enum vhost_user_request {
 	VHOST_USER_SET_VRING_ENDIAN = 23,
 	VHOST_USER_GET_CONFIG = 24,
 	VHOST_USER_SET_CONFIG = 25,
+	VHOST_USER_VRING_KICK = 34,
 };
 
 enum vhost_user_slave_request {
 	VHOST_USER_SLAVE_IOTLB_MSG = 1,
 	VHOST_USER_SLAVE_CONFIG_CHANGE_MSG = 2,
 	VHOST_USER_SLAVE_VRING_HOST_NOTIFIER_MSG = 3,
+	VHOST_USER_SLAVE_VRING_CALL = 4,
 };
 
 struct vhost_user_header {
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index d47dcdc212aa..23ed359618a7 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -57,6 +57,7 @@ struct virtio_uml_device {
 	struct virtio_device vdev;
 	struct platform_device *pdev;
 
+	spinlock_t sock_lock;
 	int sock, req_fd;
 	u64 features;
 	u64 protocol_features;
@@ -192,6 +193,7 @@ static int vhost_user_send(struct virtio_uml_device *vu_dev,
 			   int *fds, size_t num_fds)
 {
 	size_t size = sizeof(msg->header) + msg->header.size;
+	unsigned long flags;
 	bool request_ack;
 	int rc;
 
@@ -210,24 +212,28 @@ static int vhost_user_send(struct virtio_uml_device *vu_dev,
 	if (request_ack)
 		msg->header.flags |= VHOST_USER_FLAG_NEED_REPLY;
 
+	spin_lock_irqsave(&vu_dev->sock_lock, flags);
 	rc = full_sendmsg_fds(vu_dev->sock, msg, size, fds, num_fds);
 	if (rc < 0)
-		return rc;
+		goto out;
 
 	if (request_ack) {
 		uint64_t status;
 
 		rc = vhost_user_recv_u64(vu_dev, &status);
 		if (rc)
-			return rc;
+			goto out;
 
 		if (status) {
 			vu_err(vu_dev, "slave reports error: %llu\n", status);
-			return -EIO;
+			rc = -EIO;
+			goto out;
 		}
 	}
 
-	return 0;
+out:
+	spin_unlock_irqrestore(&vu_dev->sock_lock, flags);
+	return rc;
 }
 
 static int vhost_user_send_no_payload(struct virtio_uml_device *vu_dev,
@@ -327,6 +333,7 @@ static void vhost_user_reply(struct virtio_uml_device *vu_dev,
 static irqreturn_t vu_req_interrupt(int irq, void *data)
 {
 	struct virtio_uml_device *vu_dev = data;
+	struct virtqueue *vq;
 	int response = 1;
 	struct {
 		struct vhost_user_msg msg;
@@ -346,6 +353,15 @@ static irqreturn_t vu_req_interrupt(int irq, void *data)
 		virtio_config_changed(&vu_dev->vdev);
 		response = 0;
 		break;
+	case VHOST_USER_SLAVE_VRING_CALL:
+		virtio_device_for_each_vq((&vu_dev->vdev), vq) {
+			if (vq->index == msg.msg.payload.vring_state.index) {
+				response = 0;
+				vring_interrupt(0 /* ignored */, vq);
+				break;
+			}
+		}
+		break;
 	case VHOST_USER_SLAVE_IOTLB_MSG:
 		/* not supported - VIRTIO_F_IOMMU_PLATFORM */
 	case VHOST_USER_SLAVE_VRING_HOST_NOTIFIER_MSG:
@@ -692,6 +708,15 @@ static bool vu_notify(struct virtqueue *vq)
 	const uint64_t n = 1;
 	int rc;
 
+	if (info->kick_fd < 0) {
+		struct virtio_uml_device *vu_dev;
+
+		vu_dev = to_virtio_uml_device(vq->vdev);
+
+		return vhost_user_set_vring_state(vu_dev, VHOST_USER_VRING_KICK,
+						  vq->index, 0) == 0;
+	}
+
 	do {
 		rc = os_write_file(info->kick_fd, &n, sizeof(n));
 	} while (rc == -EINTR);
@@ -757,10 +782,13 @@ static void vu_del_vq(struct virtqueue *vq)
 {
 	struct virtio_uml_vq_info *info = vq->priv;
 
-	um_free_irq(VIRTIO_IRQ, vq);
+	if (info->call_fd >= 0) {
+		um_free_irq(VIRTIO_IRQ, vq);
+		os_close_file(info->call_fd);
+	}
 
-	os_close_file(info->call_fd);
-	os_close_file(info->kick_fd);
+	if (info->kick_fd >= 0)
+		os_close_file(info->kick_fd);
 
 	vring_del_virtqueue(vq);
 	kfree(info);
@@ -790,6 +818,15 @@ static int vu_setup_vq_call_fd(struct virtio_uml_device *vu_dev,
 	int call_fds[2];
 	int rc;
 
+	/* no call FD needed/desired in this case */
+	if (vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS) &&
+	    vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_SLAVE_REQ)) {
+		info->call_fd = -1;
+		return 0;
+	}
+
 	/* Use a pipe for call fd, since SIGIO is not supported for eventfd */
 	rc = os_pipe(call_fds, true, true);
 	if (rc < 0)
@@ -846,10 +883,15 @@ static struct virtqueue *vu_setup_vq(struct virtio_device *vdev,
 	vq->priv = info;
 	num = virtqueue_get_vring_size(vq);
 
-	rc = os_eventfd(0, 0);
-	if (rc < 0)
-		goto error_kick;
-	info->kick_fd = rc;
+	if (vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS)) {
+		info->kick_fd = -1;
+	} else {
+		rc = os_eventfd(0, 0);
+		if (rc < 0)
+			goto error_kick;
+		info->kick_fd = rc;
+	}
 
 	rc = vu_setup_vq_call_fd(vu_dev, vq);
 	if (rc)
@@ -874,10 +916,13 @@ static struct virtqueue *vu_setup_vq(struct virtio_device *vdev,
 	return vq;
 
 error_setup:
-	um_free_irq(VIRTIO_IRQ, vq);
-	os_close_file(info->call_fd);
+	if (info->call_fd >= 0) {
+		um_free_irq(VIRTIO_IRQ, vq);
+		os_close_file(info->call_fd);
+	}
 error_call:
-	os_close_file(info->kick_fd);
+	if (info->kick_fd >= 0)
+		os_close_file(info->kick_fd);
 error_kick:
 	vring_del_virtqueue(vq);
 error_create:
@@ -916,10 +961,12 @@ static int vu_find_vqs(struct virtio_device *vdev, unsigned nvqs,
 	list_for_each_entry(vq, &vdev->vqs, list) {
 		struct virtio_uml_vq_info *info = vq->priv;
 
-		rc = vhost_user_set_vring_kick(vu_dev, vq->index,
-					       info->kick_fd);
-		if (rc)
-			goto error_setup;
+		if (info->kick_fd >= 0) {
+			rc = vhost_user_set_vring_kick(vu_dev, vq->index,
+						       info->kick_fd);
+			if (rc)
+				goto error_setup;
+		}
 
 		rc = vhost_user_set_vring_enable(vu_dev, vq->index, true);
 		if (rc)
@@ -1016,6 +1063,8 @@ static int virtio_uml_probe(struct platform_device *pdev)
 		return rc;
 	vu_dev->sock = rc;
 
+	spin_lock_init(&vu_dev->sock_lock);
+
 	rc = vhost_user_init(vu_dev);
 	if (rc)
 		goto error_init;
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
