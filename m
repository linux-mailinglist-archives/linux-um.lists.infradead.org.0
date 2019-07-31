Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398A37CEA0
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 22:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSS+6UiVYbaGwqw6e5F+L3wAiGlV+av70UWJ8Z+iavE=; b=VWORdR4j4Qfd8F
	JzR9t6qynMlfQqaKIQa8yNwP6aiyR0a6k5aHwvQ3AUpNNC2tAyO1Xog1QZcdhniEP1HbB2Xx5pVED
	5V8OSh/UJ9cDhzEvlSSq98DfJKEs5+KdH2855i+qbqcu46CHaiVUfmkEXw9fQ9RRvxs2pioD6hMfp
	lwBG6r+QsfrOm18LY9TNo0/xCpAC2LmC7C/mDbV5GsOa12F2vWOdfeHWhTqKcbmEU3Zr7JatRtll3
	gIT+CXTj/McpNKTSrKN+5xUrPwl7ke6SmcJpvNSlsWyeY1OX69KkhBOGYNhRqdYIRO/xyM/1+X6nd
	ejz2Tot74fQbujMFyctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGT-0006vW-5s; Wed, 31 Jul 2019 20:32:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEZ-0003HG-O4
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 20:30:08 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsvEU-0002AV-GJ; Wed, 31 Jul 2019 22:29:58 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
Date: Wed, 31 Jul 2019 22:29:42 +0200
Message-Id: <20190731202942.29630-2-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731202942.29630-1-johannes@sipsolutions.net>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133004_247290_E50E01E2 
X-CRM114-Status: GOOD (  19.94  )
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

This module allows virtio devices to be used over a vhost-user socket.
To instantiate a device, pass the (list of) device socket(s) to the
kernel or module command line, such as

	virtio_uml.device=/var/uml.socket:1

where the "1" is the device ID, from include/uapi/linux/virtio_ids.h,
i.e. network in this case.

Signed-off-by: Erel Geron <erelx.geron@intel.com>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/Kconfig      |   7 +
 arch/um/drivers/Makefile     |   1 +
 arch/um/drivers/vhost_user.h | 102 ++++
 arch/um/drivers/virtio_uml.c | 905 +++++++++++++++++++++++++++++++++++
 arch/um/include/asm/irq.h    |   5 +-
 arch/um/include/shared/os.h  |   7 +
 arch/um/kernel/ksyms.c       |   4 +
 arch/um/kernel/mem.c         |   1 +
 arch/um/kernel/physmem.c     |   1 +
 arch/um/kernel/um_arch.c     |   1 +
 arch/um/os-Linux/file.c      |  64 +++
 11 files changed, 1096 insertions(+), 2 deletions(-)
 create mode 100644 arch/um/drivers/vhost_user.h
 create mode 100644 arch/um/drivers/virtio_uml.c

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index 2638e46f50cc..fea5a0d522dc 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -335,3 +335,10 @@ config UML_NET_SLIRP
 	  Startup example: "eth0=slirp,FE:FD:01:02:03:04,/usr/local/bin/slirp"
 
 endmenu
+
+config VIRTIO_UML
+	tristate "UML driver for virtio devices"
+	select VIRTIO
+	help
+	  This driver provides support for virtio based paravirtual device
+	  drivers over vhost-user sockets.
diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
index 693319839f69..3edf0a7cfd25 100644
--- a/arch/um/drivers/Makefile
+++ b/arch/um/drivers/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_XTERM_CHAN) += xterm.o xterm_kern.o
 obj-$(CONFIG_UML_WATCHDOG) += harddog.o
 obj-$(CONFIG_BLK_DEV_COW_COMMON) += cow_user.o
 obj-$(CONFIG_UML_RANDOM) += random.o
+obj-$(CONFIG_VIRTIO_UML) += virtio_uml.o
 
 # pcap_user.o must be added explicitly.
 USER_OBJS := fd.o null.o pty.o tty.o xterm.o slip_common.o pcap_user.o vde_user.o vector_user.o
diff --git a/arch/um/drivers/vhost_user.h b/arch/um/drivers/vhost_user.h
new file mode 100644
index 000000000000..2a9829b0782b
--- /dev/null
+++ b/arch/um/drivers/vhost_user.h
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Vhost-user protocol */
+
+#ifndef __VHOST_USER_H__
+#define __VHOST_USER_H__
+
+/* Message flags */
+#define VHOST_USER_FLAG_REPLY		BIT(2)
+/* Feature bits */
+#define VHOST_USER_F_PROTOCOL_FEATURES	30
+/* Protocol feature bits */
+#define VHOST_USER_PROTOCOL_F_CONFIG	9
+/* Vring state index masks */
+#define VHOST_USER_VRING_INDEX_MASK	0xff
+#define VHOST_USER_VRING_POLL_MASK	BIT(8)
+
+/* Supported version */
+#define VHOST_USER_VERSION		1
+/* Supported transport features */
+#define VHOST_USER_SUPPORTED_F		BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)
+/* Supported protocol features */
+#define VHOST_USER_SUPPORTED_PROTOCOL_F	BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG)
+
+enum vhost_user_request {
+	VHOST_USER_GET_FEATURES = 1,
+	VHOST_USER_SET_FEATURES = 2,
+	VHOST_USER_SET_OWNER = 3,
+	VHOST_USER_RESET_OWNER = 4,
+	VHOST_USER_SET_MEM_TABLE = 5,
+	VHOST_USER_SET_LOG_BASE = 6,
+	VHOST_USER_SET_LOG_FD = 7,
+	VHOST_USER_SET_VRING_NUM = 8,
+	VHOST_USER_SET_VRING_ADDR = 9,
+	VHOST_USER_SET_VRING_BASE = 10,
+	VHOST_USER_GET_VRING_BASE = 11,
+	VHOST_USER_SET_VRING_KICK = 12,
+	VHOST_USER_SET_VRING_CALL = 13,
+	VHOST_USER_SET_VRING_ERR = 14,
+	VHOST_USER_GET_PROTOCOL_FEATURES = 15,
+	VHOST_USER_SET_PROTOCOL_FEATURES = 16,
+	VHOST_USER_GET_QUEUE_NUM = 17,
+	VHOST_USER_SET_VRING_ENABLE = 18,
+	VHOST_USER_SEND_RARP = 19,
+	VHOST_USER_NET_SEND_MTU = 20,
+	VHOST_USER_SET_SLAVE_REQ_FD = 21,
+	VHOST_USER_IOTLB_MSG = 22,
+	VHOST_USER_SET_VRING_ENDIAN = 23,
+	VHOST_USER_GET_CONFIG = 24,
+	VHOST_USER_SET_CONFIG = 25,
+};
+
+struct vhost_user_header {
+	u32 request; /* Use enum vhost_user_request */
+	u32 flags;
+	u32 size;
+} __packed;
+
+struct vhost_user_config {
+	u32 offset;
+	u32 size;
+	u32 flags;
+	u8 payload[0]; /* Variable length */
+} __packed;
+
+struct vhost_user_vring_state {
+	u32 index;
+	u32 num;
+} __packed;
+
+struct vhost_user_vring_addr {
+	u32 index;
+	u32 flags;
+	u64 desc, used, avail, log;
+} __packed;
+
+struct vhost_user_mem_region {
+	u64 guest_addr;
+	u64 size;
+	u64 user_addr;
+	u64 mmap_offset;
+} __packed;
+
+struct vhost_user_mem_regions {
+	u32 num;
+	u32 padding;
+	struct vhost_user_mem_region regions[2]; /* Currently supporting 2 */
+} __packed;
+
+union vhost_user_payload {
+	u64 integer;
+	struct vhost_user_config config;
+	struct vhost_user_vring_state vring_state;
+	struct vhost_user_vring_addr vring_addr;
+	struct vhost_user_mem_regions mem_regions;
+};
+
+struct vhost_user_msg {
+	struct vhost_user_header header;
+	union vhost_user_payload payload;
+} __packed;
+
+#endif
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
new file mode 100644
index 000000000000..30eeb907f42a
--- /dev/null
+++ b/arch/um/drivers/virtio_uml.c
@@ -0,0 +1,905 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Virtio vhost-user driver
+ *
+ * Copyright(c) 2019 Intel Corporation
+ *
+ * This module allows virtio devices to be used over a vhost-user socket.
+ *
+ * Guest devices can be instantiated by kernel module or command line
+ * parameters. One device will be created for each parameter. Syntax:
+ *
+ *		[virtio_uml.]device=<socket>:<virtio_id>[:<platform_id>]
+ * where:
+ *		<socket>	:= vhost-user socket path to connect
+ *		<virtio_id>	:= virtio device id (as in virtio_ids.h)
+ *		<platform_id>	:= (optional) platform device id
+ *
+ * example:
+ *		virtio_uml.device=/var/uml.socket:1
+ *
+ * Based on Virtio MMIO driver by Pawel Moll, copyright 2011-2014, ARM Ltd.
+ */
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/virtio.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_ring.h>
+#include <irq_kern.h>
+#include <init.h>
+#include <os.h>
+#include "vhost_user.h"
+
+/* Workaround due to a conflict between irq_user.h and irqreturn.h */
+#ifdef IRQ_NONE
+#undef IRQ_NONE
+#endif
+
+#define MAX_SUPPORTED_QUEUE_SIZE	256
+
+#define to_virtio_uml_device(_vdev) \
+	container_of(_vdev, struct virtio_uml_device, vdev)
+
+struct virtio_uml_device {
+	struct virtio_device vdev;
+	struct platform_device *pdev;
+
+	int sock;
+	u64 features;
+	u64 protocol_features;
+	u8 status;
+};
+
+struct virtio_uml_vq_info {
+	int kick_fd, call_fd;
+	char name[32];
+};
+
+extern unsigned long long physmem_size, highmem;
+
+
+/* Vhost-user protocol */
+
+static int vhost_user_send(struct virtio_uml_device *vu_dev,
+			   struct vhost_user_msg *msg,
+			   int *fds, size_t num_fds)
+{
+	size_t size = sizeof(msg->header) + msg->header.size;
+	int rc;
+
+	msg->header.flags |= VHOST_USER_VERSION;
+	do {
+		rc = os_sendmsg_fds(vu_dev->sock, (void *) msg, size, fds,
+				num_fds);
+	} while (rc == -EINTR);
+	if (rc < 0)
+		return rc;
+	if (rc != size)
+		return -ECOMM;
+	return 0;
+}
+
+static int vhost_user_send_no_payload(struct virtio_uml_device *vu_dev,
+				      u32 request)
+{
+	struct vhost_user_msg msg = {
+		.header.request = request,
+	};
+	return vhost_user_send(vu_dev, &msg, NULL, 0);
+}
+
+static int vhost_user_send_u64(struct virtio_uml_device *vu_dev,
+			       u32 request, u64 value)
+{
+	struct vhost_user_msg msg = {
+		.header.request = request,
+		.header.size = sizeof(msg.payload.integer),
+		.payload.integer = value,
+	};
+
+	return vhost_user_send(vu_dev, &msg, NULL, 0);
+}
+
+static int vhost_user_recv_header(struct virtio_uml_device *vu_dev,
+				  struct vhost_user_msg *msg)
+{
+	size_t size = sizeof(msg->header);
+	int rc;
+
+	do {
+		rc = os_read_file(vu_dev->sock, (void *) msg, size);
+	} while (rc == -EINTR);
+	if (rc != size)
+		return -EPROTO;
+	if (msg->header.flags != (VHOST_USER_FLAG_REPLY | VHOST_USER_VERSION))
+		return -EPROTO;
+	return 0;
+}
+
+static int vhost_user_recv(struct virtio_uml_device *vu_dev,
+			   struct vhost_user_msg *msg,
+			   size_t max_payload_size)
+{
+	size_t size;
+	int rc = vhost_user_recv_header(vu_dev, msg);
+
+	if (rc)
+		return rc;
+	size = msg->header.size;
+	if (size > max_payload_size)
+		return -EPROTO;
+	do {
+		rc = os_read_file(vu_dev->sock, (void *) &msg->payload, size);
+	} while (rc == -EINTR);
+	if (rc != size)
+		return -EPROTO;
+	return 0;
+}
+
+static int vhost_user_recv_u64(struct virtio_uml_device *vu_dev,
+			       u64 *value)
+{
+	struct vhost_user_msg msg;
+	int rc = vhost_user_recv(vu_dev, &msg, sizeof(msg.payload.integer));
+
+	if (rc)
+		return rc;
+	if (msg.header.size != sizeof(msg.payload.integer))
+		return -EPROTO;
+	*value = msg.payload.integer;
+	return 0;
+}
+
+static int vhost_user_set_owner(struct virtio_uml_device *vu_dev)
+{
+	return vhost_user_send_no_payload(vu_dev, VHOST_USER_SET_OWNER);
+}
+
+static int vhost_user_get_features(struct virtio_uml_device *vu_dev,
+				   u64 *features)
+{
+	int rc = vhost_user_send_no_payload(vu_dev, VHOST_USER_GET_FEATURES);
+
+	if (rc)
+		return rc;
+	return vhost_user_recv_u64(vu_dev, features);
+}
+
+static int vhost_user_set_features(struct virtio_uml_device *vu_dev,
+				   u64 features)
+{
+	return vhost_user_send_u64(vu_dev, VHOST_USER_SET_FEATURES, features);
+}
+
+static int vhost_user_get_protocol_features(struct virtio_uml_device *vu_dev,
+					    u64 *protocol_features)
+{
+	int rc = vhost_user_send_no_payload(vu_dev,
+			VHOST_USER_GET_PROTOCOL_FEATURES);
+
+	if (rc)
+		return rc;
+	return vhost_user_recv_u64(vu_dev, protocol_features);
+}
+
+static int vhost_user_set_protocol_features(struct virtio_uml_device *vu_dev,
+					    u64 protocol_features)
+{
+	return vhost_user_send_u64(vu_dev, VHOST_USER_SET_PROTOCOL_FEATURES,
+			protocol_features);
+}
+
+static int vhost_user_init(struct virtio_uml_device *vu_dev)
+{
+	int rc = vhost_user_set_owner(vu_dev);
+
+	if (rc)
+		return rc;
+	rc = vhost_user_get_features(vu_dev, &vu_dev->features);
+	if (rc)
+		return rc;
+
+	if (vu_dev->features & BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)) {
+		rc = vhost_user_get_protocol_features(vu_dev,
+				&vu_dev->protocol_features);
+		if (rc)
+			return rc;
+		vu_dev->protocol_features &= VHOST_USER_SUPPORTED_PROTOCOL_F;
+		rc = vhost_user_set_protocol_features(vu_dev,
+				vu_dev->protocol_features);
+	}
+	return rc;
+}
+
+static int vhost_user_get_config(struct virtio_uml_device *vu_dev,
+				 u32 offset, void *buf, u32 len)
+{
+	u32 cfg_size = offset + len;
+	struct vhost_user_msg *msg;
+	size_t payload_size = sizeof(msg->payload.config) + cfg_size;
+	size_t msg_size = sizeof(msg->header) + payload_size;
+	int rc;
+
+	if (!(vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG)))
+		return -EOPNOTSUPP;
+
+	msg = kzalloc(msg_size, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	msg->header.request = VHOST_USER_GET_CONFIG;
+	msg->header.size = payload_size;
+	msg->payload.config.offset = 0;
+	msg->payload.config.size = cfg_size;
+
+	rc = vhost_user_send(vu_dev, msg, NULL, 0);
+	if (rc)
+		goto error_get;
+	rc = vhost_user_recv(vu_dev, msg, msg_size);
+	if (rc)
+		goto error_get;
+	if (msg->header.size != payload_size ||
+			msg->payload.config.size != cfg_size) {
+		rc = -EPROTO;
+		goto error_get;
+	}
+	memcpy(buf, msg->payload.config.payload + offset, len);
+
+error_get:
+	kfree(msg);
+	return rc;
+}
+
+static int vhost_user_set_config(struct virtio_uml_device *vu_dev,
+				 u32 offset, const void *buf, u32 len)
+{
+	struct vhost_user_msg *msg;
+	size_t payload_size = sizeof(msg->payload.config) + len;
+	size_t msg_size = sizeof(msg->header) + payload_size;
+	int rc;
+
+	if (!(vu_dev->protocol_features &
+			BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG)))
+		return -EOPNOTSUPP;
+
+	msg = kzalloc(msg_size, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	msg->header.request = VHOST_USER_SET_CONFIG;
+	msg->header.size = payload_size;
+	msg->payload.config.offset = offset;
+	msg->payload.config.size = len;
+	memcpy(msg->payload.config.payload, buf, len);
+
+	rc = vhost_user_send(vu_dev, msg, NULL, 0);
+
+	kfree(msg);
+	return rc;
+}
+
+static int vhost_user_init_mem_region(u64 addr, u64 size, int *fd_out,
+				      struct vhost_user_mem_region *region_out)
+{
+	unsigned long long mem_offset;
+	int rc = phys_mapping(addr, &mem_offset);
+
+	if (WARN_ON(rc < 0))
+		return -EFAULT;
+	*fd_out = rc;
+	region_out->guest_addr = addr;
+	region_out->user_addr = addr;
+	region_out->size = size;
+	region_out->mmap_offset = mem_offset;
+
+	rc = phys_mapping(addr + size - 1, &mem_offset);
+	if (WARN_ON(rc != *fd_out))
+		return -EFAULT;
+	return 0;
+}
+
+static int vhost_user_set_mem_table(struct virtio_uml_device *vu_dev)
+{
+	struct vhost_user_msg msg = {
+		.header.request = VHOST_USER_SET_MEM_TABLE,
+		.header.size = sizeof(msg.payload.mem_regions),
+		.payload.mem_regions.num = 1,
+	};
+	int fds[2];
+	int rc = vhost_user_init_mem_region(0, physmem_size, &fds[0],
+			&msg.payload.mem_regions.regions[0]);
+
+	if (rc < 0)
+		return rc;
+	if (highmem) {
+		msg.payload.mem_regions.num++;
+		rc = vhost_user_init_mem_region(__pa(end_iomem), highmem,
+				&fds[1], &msg.payload.mem_regions.regions[1]);
+		if (rc < 0)
+			return rc;
+	}
+
+	return vhost_user_send(vu_dev, &msg, fds, msg.payload.mem_regions.num);
+}
+
+static int vhost_user_set_vring_state(struct virtio_uml_device *vu_dev,
+				      u32 request, u32 index, u32 num)
+{
+	struct vhost_user_msg msg = {
+		.header.request = request,
+		.header.size = sizeof(msg.payload.vring_state),
+		.payload.vring_state.index = index,
+		.payload.vring_state.num = num,
+	};
+
+	return vhost_user_send(vu_dev, &msg, NULL, 0);
+}
+
+static int vhost_user_set_vring_num(struct virtio_uml_device *vu_dev,
+				    u32 index, u32 num)
+{
+	return vhost_user_set_vring_state(vu_dev, VHOST_USER_SET_VRING_NUM,
+			index, num);
+}
+
+static int vhost_user_set_vring_base(struct virtio_uml_device *vu_dev,
+				     u32 index, u32 offset)
+{
+	return vhost_user_set_vring_state(vu_dev, VHOST_USER_SET_VRING_BASE,
+			index, offset);
+}
+
+static int vhost_user_set_vring_addr(struct virtio_uml_device *vu_dev,
+				     u32 index, u64 desc, u64 used, u64 avail,
+				     u64 log)
+{
+	struct vhost_user_msg msg = {
+		.header.request = VHOST_USER_SET_VRING_ADDR,
+		.header.size = sizeof(msg.payload.vring_addr),
+		.payload.vring_addr.index = index,
+		.payload.vring_addr.desc = desc,
+		.payload.vring_addr.used = used,
+		.payload.vring_addr.avail = avail,
+		.payload.vring_addr.log = log,
+	};
+
+	return vhost_user_send(vu_dev, &msg, NULL, 0);
+}
+
+static int vhost_user_set_vring_fd(struct virtio_uml_device *vu_dev,
+				   u32 request, int index, int fd)
+{
+	struct vhost_user_msg msg = {
+		.header.request = request,
+		.header.size = sizeof(msg.payload.integer),
+		.payload.integer = index,
+	};
+
+	if (index & ~VHOST_USER_VRING_INDEX_MASK)
+		return -EINVAL;
+	if (fd < 0) {
+		msg.payload.integer |= VHOST_USER_VRING_POLL_MASK;
+		return vhost_user_send(vu_dev, &msg, NULL, 0);
+	}
+	return vhost_user_send(vu_dev, &msg, &fd, 1);
+}
+
+static int vhost_user_set_vring_call(struct virtio_uml_device *vu_dev,
+				     int index, int fd)
+{
+	return vhost_user_set_vring_fd(vu_dev, VHOST_USER_SET_VRING_CALL,
+			index, fd);
+}
+
+static int vhost_user_set_vring_kick(struct virtio_uml_device *vu_dev,
+				     int index, int fd)
+{
+	return vhost_user_set_vring_fd(vu_dev, VHOST_USER_SET_VRING_KICK,
+			index, fd);
+}
+
+static int vhost_user_set_vring_enable(struct virtio_uml_device *vu_dev,
+				       u32 index, bool enable)
+{
+	if (!(vu_dev->features & BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)))
+		return 0;
+
+	return vhost_user_set_vring_state(vu_dev, VHOST_USER_SET_VRING_ENABLE,
+			index, enable);
+}
+
+
+/* Virtio interface */
+
+static bool vu_notify(struct virtqueue *vq)
+{
+	struct virtio_uml_vq_info *info = vq->priv;
+	int rc;
+
+	do {
+		rc = os_eventfd_write(info->kick_fd, 1);
+	} while (rc == -EINTR);
+	WARN_ON(rc);
+	return !rc;
+}
+
+static irqreturn_t vu_interrupt(int irq, void *opaque)
+{
+	struct virtqueue *vq = opaque;
+	struct virtio_uml_vq_info *info = vq->priv;
+	unsigned long long value;
+	int rc;
+	irqreturn_t ret = IRQ_NONE;
+
+	do {
+		rc = os_eventfd_read(info->call_fd, &value);
+		if (!rc)
+			ret |= vring_interrupt(irq, vq);
+	} while (!rc || rc == -EINTR);
+	WARN_ON(rc != -EAGAIN);
+	return ret;
+}
+
+
+static void vu_get(struct virtio_device *vdev, unsigned offset,
+		   void *buf, unsigned len)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	WARN_ON(vhost_user_get_config(vu_dev, offset, buf, len));
+}
+
+static void vu_set(struct virtio_device *vdev, unsigned offset,
+		   const void *buf, unsigned len)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	WARN_ON(vhost_user_set_config(vu_dev, offset, buf, len));
+}
+
+static u8 vu_get_status(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	return vu_dev->status;
+}
+
+static void vu_set_status(struct virtio_device *vdev, u8 status)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	vu_dev->status = status;
+}
+
+static void vu_reset(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	vu_dev->status = 0;
+}
+
+static void vu_del_vq(struct virtqueue *vq)
+{
+	struct virtio_uml_vq_info *info = vq->priv;
+
+	um_free_irq(VIRTIO_IRQ, vq);
+
+	os_close_file(info->call_fd);
+	os_close_file(info->kick_fd);
+
+	vring_del_virtqueue(vq);
+	kfree(info);
+}
+
+static void vu_del_vqs(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+	struct virtqueue *vq, *n;
+	u64 features;
+
+	/* Note: reverse order as a workaround to a decoding bug in snabb */
+	list_for_each_entry_reverse(vq, &vdev->vqs, list)
+		WARN_ON(vhost_user_set_vring_enable(vu_dev, vq->index, false));
+
+	/* Ensure previous messages have been processed */
+	WARN_ON(vhost_user_get_features(vu_dev, &features));
+
+	list_for_each_entry_safe(vq, n, &vdev->vqs, list)
+		vu_del_vq(vq);
+}
+
+static struct virtqueue *vu_setup_vq(struct virtio_device *vdev,
+				     unsigned index, vq_callback_t *callback,
+				     const char *name, bool ctx)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+	struct platform_device *pdev = vu_dev->pdev;
+	struct virtio_uml_vq_info *info;
+	struct virtqueue *vq;
+	int num = MAX_SUPPORTED_QUEUE_SIZE;
+	int rc;
+	int call_fds[2];
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info) {
+		rc = -ENOMEM;
+		goto error_kzalloc;
+	}
+	snprintf(info->name, sizeof(info->name), "%s.%d-%s", pdev->name,
+			pdev->id, name);
+
+	rc = os_eventfd(0, 0);
+	if (rc < 0)
+		goto error_kick;
+	info->kick_fd = rc;
+
+	/* Use a pipe for call fd, since SIGIO is not supported for eventfd */
+	rc = os_pipe(call_fds, true, true);
+	if (rc < 0)
+		goto error_call;
+	info->call_fd = call_fds[0];
+
+	vq = vring_create_virtqueue(index, num, PAGE_SIZE, vdev, true, true,
+			ctx, vu_notify, callback, info->name);
+	if (!vq) {
+		rc = -ENOMEM;
+		goto error_create;
+	}
+	vq->priv = info;
+	num = virtqueue_get_vring_size(vq);
+
+	rc = um_request_irq(VIRTIO_IRQ, info->call_fd, IRQ_READ, vu_interrupt,
+			IRQF_SHARED, info->name, vq);
+	if (rc)
+		goto error_irq;
+
+	rc = vhost_user_set_vring_num(vu_dev, index, num);
+	if (rc)
+		goto error_setup;
+
+	rc = vhost_user_set_vring_base(vu_dev, index, 0);
+	if (rc)
+		goto error_setup;
+
+	rc = vhost_user_set_vring_call(vu_dev, index, call_fds[1]);
+	if (rc)
+		goto error_setup;
+
+	rc = vhost_user_set_vring_addr(vu_dev, index,
+			virtqueue_get_desc_addr(vq),
+			virtqueue_get_used_addr(vq),
+			virtqueue_get_avail_addr(vq),
+			(u64) -1);
+	if (rc)
+		goto error_setup;
+
+	/* Close unused write end of call fds */
+	os_close_file(call_fds[1]);
+
+	return vq;
+
+error_setup:
+	um_free_irq(VIRTIO_IRQ, vq);
+error_irq:
+	vring_del_virtqueue(vq);
+error_create:
+	os_close_file(call_fds[1]);
+	os_close_file(info->call_fd);
+error_call:
+	os_close_file(info->kick_fd);
+error_kick:
+	kfree(info);
+error_kzalloc:
+	return ERR_PTR(rc);
+}
+
+static int vu_find_vqs(struct virtio_device *vdev, unsigned nvqs,
+		       struct virtqueue *vqs[], vq_callback_t *callbacks[],
+		       const char * const names[], const bool *ctx,
+		       struct irq_affinity *desc)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+	int i, queue_idx, rc;
+	struct virtqueue *vq;
+
+	rc = vhost_user_set_mem_table(vu_dev);
+	if (rc)
+		return rc;
+
+	for (i = 0; i < nvqs; ++i) {
+		if (!names[i]) {
+			vqs[i] = NULL;
+			continue;
+		}
+
+		vqs[i] = vu_setup_vq(vdev, queue_idx++, callbacks[i], names[i],
+				ctx ? ctx[i] : false);
+		if (IS_ERR(vqs[i])) {
+			rc = PTR_ERR(vqs[i]);
+			goto error_setup;
+		}
+	}
+
+	list_for_each_entry(vq, &vdev->vqs, list) {
+		struct virtio_uml_vq_info *info = vq->priv;
+
+		rc = vhost_user_set_vring_kick(vu_dev, vq->index,
+				info->kick_fd);
+		if (rc)
+			goto error_setup;
+
+		rc = vhost_user_set_vring_enable(vu_dev, vq->index, true);
+		if (rc)
+			goto error_setup;
+	}
+
+	return 0;
+
+error_setup:
+	vu_del_vqs(vdev);
+	return rc;
+}
+
+static u64 vu_get_features(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	return vu_dev->features;
+}
+
+static int vu_finalize_features(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+	u64 supported = vdev->features & VHOST_USER_SUPPORTED_F;
+
+	vring_transport_features(vdev);
+	vu_dev->features = vdev->features | supported;
+
+	return vhost_user_set_features(vu_dev, vu_dev->features);
+}
+
+static const char *vu_bus_name(struct virtio_device *vdev)
+{
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	return vu_dev->pdev->name;
+}
+
+static const struct virtio_config_ops virtio_uml_config_ops = {
+	.get = vu_get,
+	.set = vu_set,
+	.get_status = vu_get_status,
+	.set_status = vu_set_status,
+	.reset = vu_reset,
+	.find_vqs = vu_find_vqs,
+	.del_vqs = vu_del_vqs,
+	.get_features = vu_get_features,
+	.finalize_features = vu_finalize_features,
+	.bus_name = vu_bus_name,
+};
+
+
+static void virtio_uml_release_dev(struct device *d)
+{
+	struct virtio_device *vdev =
+			container_of(d, struct virtio_device, dev);
+	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
+
+	os_close_file(vu_dev->sock);
+}
+
+/* Platform device */
+
+struct virtio_uml_platform_data {
+	u32 virtio_device_id;
+	const char *socket_path;
+};
+
+static int virtio_uml_probe(struct platform_device *pdev)
+{
+	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
+	struct virtio_uml_device *vu_dev;
+	int rc;
+
+	if (!pdata)
+		return -EINVAL;
+
+	vu_dev = devm_kzalloc(&pdev->dev, sizeof(*vu_dev), GFP_KERNEL);
+	if (!vu_dev)
+		return -ENOMEM;
+
+	vu_dev->vdev.dev.parent = &pdev->dev;
+	vu_dev->vdev.dev.release = virtio_uml_release_dev;
+	vu_dev->vdev.config = &virtio_uml_config_ops;
+	vu_dev->vdev.id.device = pdata->virtio_device_id;
+	vu_dev->vdev.id.vendor = VIRTIO_DEV_ANY_ID;
+	vu_dev->pdev = pdev;
+
+	do {
+		rc = os_connect_socket(pdata->socket_path);
+	} while (rc == -EINTR);
+	if (rc < 0)
+		return rc;
+	vu_dev->sock = rc;
+
+	rc = vhost_user_init(vu_dev);
+	if (rc)
+		goto error_init;
+
+	platform_set_drvdata(pdev, vu_dev);
+
+	rc = register_virtio_device(&vu_dev->vdev);
+	if (rc)
+		put_device(&vu_dev->vdev.dev);
+	return rc;
+
+error_init:
+	os_close_file(vu_dev->sock);
+	return rc;
+}
+
+static int virtio_uml_remove(struct platform_device *pdev)
+{
+	struct virtio_uml_device *vu_dev = platform_get_drvdata(pdev);
+
+	unregister_virtio_device(&vu_dev->vdev);
+	return 0;
+}
+
+/* Command line device list */
+
+static void vu_cmdline_release_dev(struct device *d)
+{
+}
+
+static struct device vu_cmdline_parent = {
+	.init_name = "virtio-uml-cmdline",
+	.release = vu_cmdline_release_dev,
+};
+
+static bool vu_cmdline_parent_registered;
+static int vu_cmdline_id;
+
+static int vu_cmdline_set(const char *device, const struct kernel_param *kp)
+{
+	const char *ids = strchr(device, ':');
+	unsigned int virtio_device_id;
+	int processed, consumed, err;
+	char *socket_path;
+	struct virtio_uml_platform_data *pdata;
+	struct platform_device *pdev;
+
+	if (!ids || ids == device)
+		return -EINVAL;
+
+	processed = sscanf(ids, ":%u%n:%d%n",
+			&virtio_device_id, &consumed,
+			&vu_cmdline_id, &consumed);
+
+	if (processed < 1 || ids[consumed])
+		return -EINVAL;
+
+	if (!vu_cmdline_parent_registered) {
+		err = device_register(&vu_cmdline_parent);
+		if (err) {
+			pr_err("Failed to register parent device!\n");
+			put_device(&vu_cmdline_parent);
+			return err;
+		}
+		vu_cmdline_parent_registered = true;
+	}
+
+	socket_path = kmemdup_nul(device, ids - device, GFP_KERNEL);
+	if (!socket_path)
+		return -ENOMEM;
+
+	pdata = kzalloc(sizeof(*pdata), GFP_KERNEL);
+	if (!pdata) {
+		err = -ENOMEM;
+		goto error_kzalloc;
+	}
+
+	pdata->virtio_device_id = (u32) virtio_device_id;
+	pdata->socket_path = socket_path;
+
+	pr_info("Registering device virtio-uml.%d id=%d at %s\n",
+			vu_cmdline_id, virtio_device_id, socket_path);
+
+	pdev = platform_device_register_data(&vu_cmdline_parent, "virtio-uml",
+			vu_cmdline_id++, pdata, sizeof(*pdata));
+	err = PTR_ERR_OR_ZERO(pdev);
+	if (err)
+		goto error_register;
+	return 0;
+
+error_register:
+	kfree(pdata);
+error_kzalloc:
+	kfree(socket_path);
+	return err;
+}
+
+static int vu_cmdline_get_device(struct device *dev, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
+	char *buffer = data;
+	unsigned int len = strlen(buffer);
+
+	snprintf(buffer + len, PAGE_SIZE - len, "%s:%d:%d\n",
+			pdata->socket_path, pdata->virtio_device_id, pdev->id);
+	return 0;
+}
+
+static int vu_cmdline_get(char *buffer, const struct kernel_param *kp)
+{
+	buffer[0] = '\0';
+	if (vu_cmdline_parent_registered)
+		device_for_each_child(&vu_cmdline_parent, buffer,
+				vu_cmdline_get_device);
+	return strlen(buffer) + 1;
+}
+
+static const struct kernel_param_ops vu_cmdline_param_ops = {
+	.set = vu_cmdline_set,
+	.get = vu_cmdline_get,
+};
+
+device_param_cb(device, &vu_cmdline_param_ops, NULL, S_IRUSR);
+
+
+static int vu_unregister_cmdline_device(struct device *dev, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
+
+	platform_device_unregister(pdev);
+	kfree(pdata->socket_path);
+	kfree(pdata);
+	return 0;
+}
+
+static void vu_unregister_cmdline_devices(void)
+{
+	if (vu_cmdline_parent_registered) {
+		device_for_each_child(&vu_cmdline_parent, NULL,
+				vu_unregister_cmdline_device);
+		device_unregister(&vu_cmdline_parent);
+		vu_cmdline_parent_registered = false;
+	}
+}
+
+/* Platform driver */
+
+static const struct of_device_id virtio_uml_match[] = {
+	{ .compatible = "virtio,uml", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, virtio_uml_match);
+
+static struct platform_driver virtio_uml_driver = {
+	.probe = virtio_uml_probe,
+	.remove = virtio_uml_remove,
+	.driver = {
+		.name = "virtio-uml",
+		.of_match_table = virtio_uml_match,
+	},
+};
+
+static int __init virtio_uml_init(void)
+{
+	return platform_driver_register(&virtio_uml_driver);
+}
+
+static void __exit virtio_uml_exit(void)
+{
+	platform_driver_unregister(&virtio_uml_driver);
+	vu_unregister_cmdline_devices();
+}
+
+module_init(virtio_uml_init);
+module_exit(virtio_uml_exit);
+__uml_exitcall(virtio_uml_exit);
+
+MODULE_DESCRIPTION("UML driver for vhost-user virtio devices");
+MODULE_LICENSE("GPL");
diff --git a/arch/um/include/asm/irq.h b/arch/um/include/asm/irq.h
index ce7a78c3bcf2..42c6205e2dc4 100644
--- a/arch/um/include/asm/irq.h
+++ b/arch/um/include/asm/irq.h
@@ -17,17 +17,18 @@
 #define TELNETD_IRQ 		12
 #define XTERM_IRQ 		13
 #define RANDOM_IRQ 		14
+#define VIRTIO_IRQ		15
 
 #ifdef CONFIG_UML_NET_VECTOR
 
-#define VECTOR_BASE_IRQ		15
+#define VECTOR_BASE_IRQ		(VIRTIO_IRQ + 1)
 #define VECTOR_IRQ_SPACE	8
 
 #define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ - 1)
 
 #else
 
-#define LAST_IRQ RANDOM_IRQ
+#define LAST_IRQ VIRTIO_IRQ
 
 #endif
 
diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index 4a62ac4251a5..da7ebbe4ebb3 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -36,6 +36,8 @@
 #define OS_LIB_PATH	"/usr/lib/"
 #endif
 
+#define OS_SENDMSG_MAX_FDS 8
+
 /*
  * types taken from stat_file() in hostfs_user.c
  * (if they are wrong here, they are wrong there...).
@@ -176,6 +178,11 @@ extern unsigned os_major(unsigned long long dev);
 extern unsigned os_minor(unsigned long long dev);
 extern unsigned long long os_makedev(unsigned major, unsigned minor);
 extern int os_falloc_punch(int fd, unsigned long long offset, int count);
+extern int os_eventfd(unsigned int initval, int flags);
+extern int os_eventfd_read(int fd, unsigned long long *value);
+extern int os_eventfd_write(int fd, unsigned long long value);
+extern int os_sendmsg_fds(int fd, const void *buf, unsigned int len,
+			  const int *fds, unsigned int fds_num);
 
 /* start_up.c */
 extern void os_early_checks(void);
diff --git a/arch/um/kernel/ksyms.c b/arch/um/kernel/ksyms.c
index 232b22307fdd..f3766889226b 100644
--- a/arch/um/kernel/ksyms.c
+++ b/arch/um/kernel/ksyms.c
@@ -38,6 +38,10 @@ EXPORT_SYMBOL(run_helper);
 EXPORT_SYMBOL(os_major);
 EXPORT_SYMBOL(os_minor);
 EXPORT_SYMBOL(os_makedev);
+EXPORT_SYMBOL(os_eventfd);
+EXPORT_SYMBOL(os_eventfd_read);
+EXPORT_SYMBOL(os_eventfd_write);
+EXPORT_SYMBOL(os_sendmsg_fds);
 
 EXPORT_SYMBOL(add_sigio_fd);
 EXPORT_SYMBOL(ignore_sigio_fd);
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index de58e976b9bc..f256be1d77bd 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -31,6 +31,7 @@ pgd_t swapper_pg_dir[PTRS_PER_PGD];
 
 /* Initialized at boot time, and readonly after that */
 unsigned long long highmem;
+EXPORT_SYMBOL(highmem);
 int kmalloc_ok = 0;
 
 /* Used during early boot */
diff --git a/arch/um/kernel/physmem.c b/arch/um/kernel/physmem.c
index 5bf56af4d5b9..870c80c88a97 100644
--- a/arch/um/kernel/physmem.c
+++ b/arch/um/kernel/physmem.c
@@ -143,6 +143,7 @@ int phys_mapping(unsigned long phys, unsigned long long *offset_out)
 
 	return fd;
 }
+EXPORT_SYMBOL(phys_mapping);
 
 static int __init uml_mem_setup(char *line, int *add)
 {
diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..9de212bf4320 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -113,6 +113,7 @@ static int have_root __initdata = 0;
 
 /* Set in uml_mem_setup and modified in linux_main */
 long long physmem_size = 32 * 1024 * 1024;
+EXPORT_SYMBOL(physmem_size);
 
 static const char *usage_string =
 "User Mode Linux v%s\n"
diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index f25b110d4e70..0c4e0298398d 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -15,6 +15,7 @@
 #include <sys/sysmacros.h>
 #include <sys/un.h>
 #include <sys/types.h>
+#include <sys/eventfd.h>
 #include <os.h>
 
 static void copy_stat(struct uml_stat *dst, const struct stat64 *src)
@@ -620,3 +621,66 @@ int os_falloc_punch(int fd, unsigned long long offset, int len)
 	return n;
 }
 
+int os_eventfd(unsigned int initval, int flags)
+{
+	int fd = eventfd(initval, flags);
+
+	if (fd < 0)
+		return -errno;
+	return fd;
+}
+
+int os_eventfd_read(int fd, unsigned long long *value)
+{
+	eventfd_t val;
+	int err = eventfd_read(fd, &val);
+
+	if (err < 0)
+		return -errno;
+	*value = val;
+	return 0;
+}
+
+int os_eventfd_write(int fd, unsigned long long value)
+{
+	int err = eventfd_write(fd, value);
+
+	if (err < 0)
+		return -errno;
+	return 0;
+}
+
+int os_sendmsg_fds(int fd, const void *buf, unsigned int len, const int *fds,
+		   unsigned int fds_num)
+{
+	struct iovec iov = {
+		.iov_base = (void *) buf,
+		.iov_len = len,
+	};
+	union {
+		char control[CMSG_SPACE(sizeof(*fds) * OS_SENDMSG_MAX_FDS)];
+		struct cmsghdr align;
+	} u;
+	unsigned int fds_size = sizeof(*fds) * fds_num;
+	struct msghdr msg = {
+		.msg_iov = &iov,
+		.msg_iovlen = 1,
+		.msg_control = u.control,
+		.msg_controllen = CMSG_SPACE(fds_size),
+	};
+	struct cmsghdr *cmsg = CMSG_FIRSTHDR(&msg);
+	int err;
+
+	if (fds_num > OS_SENDMSG_MAX_FDS)
+		return -EINVAL;
+	memset(u.control, 0, sizeof(u.control));
+	cmsg->cmsg_level = SOL_SOCKET;
+	cmsg->cmsg_type = SCM_RIGHTS;
+	cmsg->cmsg_len = CMSG_LEN(fds_size);
+	memcpy(CMSG_DATA(cmsg), fds, fds_size);
+	err = sendmsg(fd, &msg, 0);
+
+	if (err < 0)
+		return -errno;
+	return err;
+}
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
