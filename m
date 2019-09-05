Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D06AAAC60
	for <lists+linux-um@lfdr.de>; Thu,  5 Sep 2019 21:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FjkSB4uHILjWar3VIJ7BqDwuuiC2CYktlClISzob2o=; b=mHrwfvidXf8o+J
	KaGu0tBBitYwLiEkuvuNZsmQ/Fb/Zby8q9afUxoY7ip/K+YrFO8+Lr7StcV848qEji6frKCL5WP5P
	K26HSNtdk2MfUtWBS92YfiTSCvBdTp/xWBZOTP3telOqD4Qmsgx86dVvzFFk11UQjBa5tjEicuJUD
	AOsM8w+qtaFo7fLuKgd7RjmHUddZomfBbnTOLZGqDydLvVzLN6cN1ucn/V5dDbhPgc9Zxxv6rd6Op
	qIOqXQQeNIMM/kzxbuJE0GqvSAs6x57IG5tBADbyYaeHjasm9W6nlJ/ehTu0h7nR2pSlEEtWM99Si
	gmDO0rmLG0OrOMdXeFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5xmM-0006xk-FP; Thu, 05 Sep 2019 19:50:50 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5xmI-0006wU-I6
 for linux-um@lists.infradead.org; Thu, 05 Sep 2019 19:50:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i5xmG-0003HG-5T; Thu, 05 Sep 2019 21:50:44 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v2 2/2] um: virtio: implement VHOST_USER_PROTOCOL_F_REPLY_ACK
Date: Thu,  5 Sep 2019 21:50:38 +0200
Message-Id: <1567713038-Iff9fc2b625929a3a2189e82a1356b689878825da@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1567713038-I2fd1049a09368398124caa2a4e132f0b6ebde347@changeid>
References: <1567713038-I2fd1049a09368398124caa2a4e132f0b6ebde347@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_125046_771558_B091ECA4 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

Implement the VHOST_USER_PROTOCOL_F_REPLY_ACK extension for both
slave requests (previous patch) where we have to reply and our
own requests where it helps understand if the slave failed.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/vhost_user.h |  5 +-
 arch/um/drivers/virtio_uml.c | 97 +++++++++++++++++++++++++++++-------
 2 files changed, 84 insertions(+), 18 deletions(-)

diff --git a/arch/um/drivers/vhost_user.h b/arch/um/drivers/vhost_user.h
index 8aee9919581e..45ff5ea22fea 100644
--- a/arch/um/drivers/vhost_user.h
+++ b/arch/um/drivers/vhost_user.h
@@ -6,9 +6,11 @@
 
 /* Message flags */
 #define VHOST_USER_FLAG_REPLY		BIT(2)
+#define VHOST_USER_FLAG_NEED_REPLY	BIT(3)
 /* Feature bits */
 #define VHOST_USER_F_PROTOCOL_FEATURES	30
 /* Protocol feature bits */
+#define VHOST_USER_PROTOCOL_F_REPLY_ACK		3
 #define VHOST_USER_PROTOCOL_F_SLAVE_REQ		5
 #define VHOST_USER_PROTOCOL_F_CONFIG		9
 /* Vring state index masks */
@@ -20,7 +22,8 @@
 /* Supported transport features */
 #define VHOST_USER_SUPPORTED_F		BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)
 /* Supported protocol features */
-#define VHOST_USER_SUPPORTED_PROTOCOL_F	(BIT_ULL(VHOST_USER_PROTOCOL_F_SLAVE_REQ) | \
+#define VHOST_USER_SUPPORTED_PROTOCOL_F	(BIT_ULL(VHOST_USER_PROTOCOL_F_REPLY_ACK) | \
+					 BIT_ULL(VHOST_USER_PROTOCOL_F_SLAVE_REQ) | \
 					 BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG))
 
 enum vhost_user_request {
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index a12c36520cbe..6897ff015802 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -163,30 +163,64 @@ static int vhost_user_recv_req(struct virtio_uml_device *vu_dev,
 	if (rc)
 		return rc;
 
-	if (msg->header.flags != VHOST_USER_VERSION)
+	if ((msg->header.flags & ~VHOST_USER_FLAG_NEED_REPLY) !=
+			VHOST_USER_VERSION)
 		return -EPROTO;
 
 	return 0;
 }
 
 static int vhost_user_send(struct virtio_uml_device *vu_dev,
-			   struct vhost_user_msg *msg,
+			   bool need_response, struct vhost_user_msg *msg,
 			   int *fds, size_t num_fds)
 {
 	size_t size = sizeof(msg->header) + msg->header.size;
+	bool request_ack;
+	int rc;
 
 	msg->header.flags |= VHOST_USER_VERSION;
-	return full_sendmsg_fds(vu_dev->sock, msg, size, fds, num_fds);
+
+	/*
+	 * The need_response flag indicates that we already need a response,
+	 * e.g. to read the features. In these cases, don't request an ACK as
+	 * it is meaningless. Also request an ACK only if supported.
+	 */
+	request_ack = !need_response;
+	if (!(vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_REPLY_ACK)))
+		request_ack = false;
+
+	if (request_ack)
+		msg->header.flags |= VHOST_USER_FLAG_NEED_REPLY;
+
+	rc = full_sendmsg_fds(vu_dev->sock, msg, size, fds, num_fds);
+	if (rc < 0)
+		return rc;
+
+	if (request_ack) {
+		uint64_t status;
+
+		rc = vhost_user_recv_u64(vu_dev, &status);
+		if (rc)
+			return rc;
+
+		if (status) {
+			vu_err(vu_dev, "slave reports error: %llu\n", status);
+			return -EIO;
+		}
+	}
+
+	return 0;
 }
 
 static int vhost_user_send_no_payload(struct virtio_uml_device *vu_dev,
-				      u32 request)
+				      bool need_response, u32 request)
 {
 	struct vhost_user_msg msg = {
 		.header.request = request,
 	};
 
-	return vhost_user_send(vu_dev, &msg, NULL, 0);
+	return vhost_user_send(vu_dev, need_response, &msg, NULL, 0);
 }
 
 static int vhost_user_send_no_payload_fd(struct virtio_uml_device *vu_dev,
@@ -196,7 +230,7 @@ static int vhost_user_send_no_payload_fd(struct virtio_uml_device *vu_dev,
 		.header.request = request,
 	};
 
-	return vhost_user_send(vu_dev, &msg, &fd, 1);
+	return vhost_user_send(vu_dev, false, &msg, &fd, 1);
 }
 
 static int vhost_user_send_u64(struct virtio_uml_device *vu_dev,
@@ -208,18 +242,19 @@ static int vhost_user_send_u64(struct virtio_uml_device *vu_dev,
 		.payload.integer = value,
 	};
 
-	return vhost_user_send(vu_dev, &msg, NULL, 0);
+	return vhost_user_send(vu_dev, false, &msg, NULL, 0);
 }
 
 static int vhost_user_set_owner(struct virtio_uml_device *vu_dev)
 {
-	return vhost_user_send_no_payload(vu_dev, VHOST_USER_SET_OWNER);
+	return vhost_user_send_no_payload(vu_dev, false, VHOST_USER_SET_OWNER);
 }
 
 static int vhost_user_get_features(struct virtio_uml_device *vu_dev,
 				   u64 *features)
 {
-	int rc = vhost_user_send_no_payload(vu_dev, VHOST_USER_GET_FEATURES);
+	int rc = vhost_user_send_no_payload(vu_dev, true,
+					    VHOST_USER_GET_FEATURES);
 
 	if (rc)
 		return rc;
@@ -235,7 +270,7 @@ static int vhost_user_set_features(struct virtio_uml_device *vu_dev,
 static int vhost_user_get_protocol_features(struct virtio_uml_device *vu_dev,
 					    u64 *protocol_features)
 {
-	int rc = vhost_user_send_no_payload(vu_dev,
+	int rc = vhost_user_send_no_payload(vu_dev, true,
 			VHOST_USER_GET_PROTOCOL_FEATURES);
 
 	if (rc)
@@ -250,9 +285,32 @@ static int vhost_user_set_protocol_features(struct virtio_uml_device *vu_dev,
 				   protocol_features);
 }
 
+static void vhost_user_reply(struct virtio_uml_device *vu_dev,
+			     struct vhost_user_msg *msg, int response)
+{
+	struct vhost_user_msg reply = {
+		.payload.integer = response,
+	};
+	size_t size = sizeof(reply.header) + sizeof(reply.payload.integer);
+	int rc;
+
+	reply.header = msg->header;
+	reply.header.flags &= ~VHOST_USER_FLAG_NEED_REPLY;
+	reply.header.flags |= VHOST_USER_FLAG_REPLY;
+	reply.header.size = sizeof(reply.payload.integer);
+
+	rc = full_sendmsg_fds(vu_dev->req_fd, &reply, size, NULL, 0);
+
+	if (rc)
+		vu_err(vu_dev,
+		       "sending reply to slave request failed: %d (size %zu)\n",
+		       rc, size);
+}
+
 static irqreturn_t vu_req_interrupt(int irq, void *data)
 {
 	struct virtio_uml_device *vu_dev = data;
+	int response = 1;
 	struct {
 		struct vhost_user_msg msg;
 		u8 extra_payload[512];
@@ -269,6 +327,7 @@ static irqreturn_t vu_req_interrupt(int irq, void *data)
 	switch (msg.msg.header.request) {
 	case VHOST_USER_SLAVE_CONFIG_CHANGE_MSG:
 		virtio_config_changed(&vu_dev->vdev);
+		response = 0;
 		break;
 	case VHOST_USER_SLAVE_IOTLB_MSG:
 		/* not supported - VIRTIO_F_IOMMU_PLATFORM */
@@ -279,6 +338,9 @@ static irqreturn_t vu_req_interrupt(int irq, void *data)
 		       msg.msg.header.request);
 	}
 
+	if (msg.msg.header.flags & VHOST_USER_FLAG_NEED_REPLY)
+		vhost_user_reply(vu_dev, &msg.msg, response);
+
 	return IRQ_HANDLED;
 }
 
@@ -371,7 +433,7 @@ static void vhost_user_get_config(struct virtio_uml_device *vu_dev,
 	msg->payload.config.offset = 0;
 	msg->payload.config.size = cfg_size;
 
-	rc = vhost_user_send(vu_dev, msg, NULL, 0);
+	rc = vhost_user_send(vu_dev, true, msg, NULL, 0);
 	if (rc) {
 		vu_err(vu_dev, "sending VHOST_USER_GET_CONFIG failed: %d\n",
 		       rc);
@@ -422,7 +484,7 @@ static void vhost_user_set_config(struct virtio_uml_device *vu_dev,
 	msg->payload.config.size = len;
 	memcpy(msg->payload.config.payload, buf, len);
 
-	rc = vhost_user_send(vu_dev, msg, NULL, 0);
+	rc = vhost_user_send(vu_dev, false, msg, NULL, 0);
 	if (rc)
 		vu_err(vu_dev, "sending VHOST_USER_SET_CONFIG failed: %d\n",
 		       rc);
@@ -473,7 +535,8 @@ static int vhost_user_set_mem_table(struct virtio_uml_device *vu_dev)
 			return rc;
 	}
 
-	return vhost_user_send(vu_dev, &msg, fds, msg.payload.mem_regions.num);
+	return vhost_user_send(vu_dev, false, &msg, fds,
+			       msg.payload.mem_regions.num);
 }
 
 static int vhost_user_set_vring_state(struct virtio_uml_device *vu_dev,
@@ -486,7 +549,7 @@ static int vhost_user_set_vring_state(struct virtio_uml_device *vu_dev,
 		.payload.vring_state.num = num,
 	};
 
-	return vhost_user_send(vu_dev, &msg, NULL, 0);
+	return vhost_user_send(vu_dev, false, &msg, NULL, 0);
 }
 
 static int vhost_user_set_vring_num(struct virtio_uml_device *vu_dev,
@@ -517,7 +580,7 @@ static int vhost_user_set_vring_addr(struct virtio_uml_device *vu_dev,
 		.payload.vring_addr.log = log,
 	};
 
-	return vhost_user_send(vu_dev, &msg, NULL, 0);
+	return vhost_user_send(vu_dev, false, &msg, NULL, 0);
 }
 
 static int vhost_user_set_vring_fd(struct virtio_uml_device *vu_dev,
@@ -533,9 +596,9 @@ static int vhost_user_set_vring_fd(struct virtio_uml_device *vu_dev,
 		return -EINVAL;
 	if (fd < 0) {
 		msg.payload.integer |= VHOST_USER_VRING_POLL_MASK;
-		return vhost_user_send(vu_dev, &msg, NULL, 0);
+		return vhost_user_send(vu_dev, false, &msg, NULL, 0);
 	}
-	return vhost_user_send(vu_dev, &msg, &fd, 1);
+	return vhost_user_send(vu_dev, false, &msg, &fd, 1);
 }
 
 static int vhost_user_set_vring_call(struct virtio_uml_device *vu_dev,
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
