Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A21C3CEA
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 18:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ZQ8eEuC0iebG/mLpEh+xtArIYIBt+jhI6y7G3F5Q7g=; b=GBEeYA52DJNoi6
	TpMZQkGa0l7WOGXUssMzFodPDtbE6VUsmUWp1blZ109DNlad2ScHXnnJkgRxFmHxV0I405lOHE04R
	G4tU5wvIHQL31yhkK6w7LjLxKJM7+PM5NR+81P9mFthXSkCJfcYbChlW5/Dd+ig9Pdbm0Nd6UPNNJ
	ClasggiC1JeIdfscmWH6f2Y+1yfaBUtI4fGDGC1uGSJD0Ab9JYI4vulJvTjhQUOhdKtMmbFePkzOP
	B1ZQ01iMNWha0E2DAPmK3vpC4uUSNXCgDOnFMWN3A9oHFYsagc6AMih4HS+Z8ubLufM71z40P3VhF
	IBhTW57FkFaRrDe/AqwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLRK-0006FN-9W; Tue, 01 Oct 2019 16:55:54 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLRG-0006Dv-9W
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 16:55:52 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFLRA-0007Bt-MY; Tue, 01 Oct 2019 16:55:45 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFLR5-0000tf-Lr; Tue, 01 Oct 2019 17:55:42 +0100
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: [PATCH v2] um: Loadable BPF "Firmware" for vector drivers
Date: Tue,  1 Oct 2019 17:55:37 +0100
Message-Id: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_095550_471137_4D2ECA6A 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

All vector drivers now allow a BPF program to be loaded and
associated with the RX socket in the host kernel.

1. The program can be loaded as an extra kernel command line
option to any of the drivers.

2. The program can also be loaded as "firmware", using the
ethtool flash option. It is possible to turn this facility
on or off using a command line option.

A simplistic wrapper for generating the BPF firmware for the raw
socket driver out of a tcpdump/libpcap filter expression can be
found at: https://github.com/kot-begemot-uk/uml_vector_utilities/

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_kern.c | 102 +++++++++++++++++++++++++++++++---
 arch/um/drivers/vector_kern.h |   8 ++-
 arch/um/drivers/vector_user.c |  94 +++++++++++++++++++++++++------
 arch/um/drivers/vector_user.h |   8 ++-
 4 files changed, 183 insertions(+), 29 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index af27d5c41776..14966b4bddfd 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2017 - Cambridge Greys Limited
+ * Copyright (C) 2017 - 2019 Cambridge Greys Limited
  * Copyright (C) 2011 - 2014 Cisco Systems Inc
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  * Copyright (C) 2001 Lennert Buytenhek (buytenh@gnu.org) and
@@ -21,6 +21,9 @@
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/interrupt.h>
+#include <linux/firmware.h>
+#include <linux/fs.h>
+#include <uapi/linux/filter.h>
 #include <init.h>
 #include <irq_kern.h>
 #include <irq_user.h>
@@ -128,6 +131,16 @@ static int get_mtu(struct arglist *def)
 	return ETH_MAX_PACKET;
 }
 
+static char *get_bpf_file(struct arglist *def)
+{
+	return uml_vector_fetch_arg(def, "bpffile");
+}
+
+static bool get_bpf_flash(struct arglist *def)
+{
+	return uml_vector_fetch_arg(def, "bpfflash") != NULL;
+}
+
 static int get_depth(struct arglist *def)
 {
 	char *mtu = uml_vector_fetch_arg(def, "depth");
@@ -176,6 +189,7 @@ static int get_transport_options(struct arglist *def)
 	int vec_rx = VECTOR_RX;
 	int vec_tx = VECTOR_TX;
 	long parsed;
+	int result = 0;
 
 	if (vector != NULL) {
 		if (kstrtoul(vector, 10, &parsed) == 0) {
@@ -186,14 +200,16 @@ static int get_transport_options(struct arglist *def)
 		}
 	}
 
+	if (get_bpf_flash(def))
+		result = VECTOR_BPF_FLASH;
 
 	if (strncmp(transport, TRANS_TAP, TRANS_TAP_LEN) == 0)
-		return 0;
+		return result;
 	if (strncmp(transport, TRANS_HYBRID, TRANS_HYBRID_LEN) == 0)
-		return (vec_rx | VECTOR_BPF);
+		return (result | vec_rx | VECTOR_BPF);
 	if (strncmp(transport, TRANS_RAW, TRANS_RAW_LEN) == 0)
-		return (vec_rx | vec_tx | VECTOR_QDISC_BYPASS);
-	return (vec_rx | vec_tx);
+		return (result | vec_rx | vec_tx | VECTOR_QDISC_BYPASS);
+	return (result | vec_rx | vec_tx);
 }
 
 
@@ -1139,6 +1155,8 @@ static int vector_net_close(struct net_device *dev)
 	}
 	tasklet_kill(&vp->tx_poll);
 	if (vp->fds->rx_fd > 0) {
+		if (vp->bpf)
+			uml_vector_detach_bpf(vp->fds->rx_fd, vp->bpf);
 		os_close_file(vp->fds->rx_fd);
 		vp->fds->rx_fd = -1;
 	}
@@ -1146,7 +1164,10 @@ static int vector_net_close(struct net_device *dev)
 		os_close_file(vp->fds->tx_fd);
 		vp->fds->tx_fd = -1;
 	}
+	if (vp->bpf != NULL)
+		kfree(vp->bpf->filter);
 	kfree(vp->bpf);
+	vp->bpf = NULL;
 	kfree(vp->fds->remote_addr);
 	kfree(vp->transport_data);
 	kfree(vp->header_rxbuffer);
@@ -1196,6 +1217,8 @@ static int vector_net_open(struct net_device *dev)
 	vp->opened = true;
 	spin_unlock_irqrestore(&vp->lock, flags);
 
+	vp->bpf = uml_vector_user_bpf(get_bpf_file(vp->parsed));
+
 	vp->fds = uml_vector_user_open(vp->unit, vp->parsed);
 
 	if (vp->fds == NULL)
@@ -1267,8 +1290,11 @@ static int vector_net_open(struct net_device *dev)
 		if (!uml_raw_enable_qdisc_bypass(vp->fds->rx_fd))
 			vp->options |= VECTOR_BPF;
 	}
-	if ((vp->options & VECTOR_BPF) != 0)
-		vp->bpf = uml_vector_default_bpf(vp->fds->rx_fd, dev->dev_addr);
+	if (((vp->options & VECTOR_BPF) != 0) && (vp->bpf == NULL))
+		vp->bpf = uml_vector_default_bpf(dev->dev_addr);
+
+	if (vp->bpf != NULL)
+		uml_vector_attach_bpf(vp->fds->rx_fd, vp->bpf);
 
 	netif_start_queue(dev);
 
@@ -1347,6 +1373,62 @@ static void vector_net_get_drvinfo(struct net_device *dev,
 	strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 }
 
+/*
+ * We cannot use the firmware.c loader API here because this is not a module
+ *  and we do not have a proper device structure to pass to it as required
+ *  by the firmware API
+ */
+
+static int vector_net_load_bpf_flash(struct net_device *dev,
+				struct ethtool_flash *efl)
+{
+	struct vector_private *vp = netdev_priv(dev);
+	struct vector_device *vdevice;
+	const struct firmware *fw;
+
+	if (vp->options && VECTOR_BPF_FLASH == 0) {
+		netdev_err(dev, "loading firmware not permitted: %s\n", efl->data);
+		return -1;
+	}
+
+	if (vp->bpf != NULL) {
+		uml_vector_detach_bpf(vp->fds->rx_fd, vp->bpf);
+		kfree(vp->bpf->filter);
+		vp->bpf->filter = NULL;
+	} else {
+		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
+		if (vp->bpf == NULL) {
+			netdev_err(dev, "failed to allocate memory for firmware\n");
+			goto flash_fail;
+		}
+	}
+
+	vdevice = find_device(vp->unit);
+
+	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
+		goto flash_fail;
+
+	vp->bpf->filter = kmalloc(fw->size, GFP_KERNEL);
+	if (!vp->bpf->filter)
+		goto free_buffer;
+
+	memcpy(vp->bpf->filter, fw->data, fw->size);
+	release_firmware(fw);
+
+	vp->bpf->len = fw->size / sizeof(struct sock_filter);
+	return uml_vector_attach_bpf(vp->fds->rx_fd, vp->bpf);
+
+free_buffer:
+	release_firmware(fw);
+
+flash_fail:
+	if (vp->bpf != NULL)
+		kfree(vp->bpf->filter);
+	kfree(vp->bpf);
+	vp->bpf = NULL;
+	return -1;
+}
+
 static void vector_get_ringparam(struct net_device *netdev,
 				struct ethtool_ringparam *ring)
 {
@@ -1424,6 +1506,7 @@ static const struct ethtool_ops vector_net_ethtool_ops = {
 	.get_ethtool_stats = vector_get_ethtool_stats,
 	.get_coalesce	= vector_get_coalesce,
 	.set_coalesce	= vector_set_coalesce,
+	.flash_device	= vector_net_load_bpf_flash,
 };
 
 
@@ -1528,8 +1611,9 @@ static void vector_eth_configure(
 		.in_write_poll		= false,
 		.coalesce		= 2,
 		.req_size		= get_req_size(def),
-		.in_error		= false
-		});
+		.in_error		= false,
+		.bpf			= NULL
+	});
 
 	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
 	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
diff --git a/arch/um/drivers/vector_kern.h b/arch/um/drivers/vector_kern.h
index 684d2e60ad86..e30003a54366 100644
--- a/arch/um/drivers/vector_kern.h
+++ b/arch/um/drivers/vector_kern.h
@@ -29,10 +29,13 @@
 #define VECTOR_TX (1 << 1)
 #define VECTOR_BPF (1 << 2)
 #define VECTOR_QDISC_BYPASS (1 << 3)
+#define VECTOR_BPF_FLASH (1 << 4)
 
 #define ETH_MAX_PACKET 1500
 #define ETH_HEADER_OTHER 32 /* just in case someone decides to go mad on QnQ */
 
+#define MAX_FILTER_PROG (2 << 16)
+
 struct vector_queue {
 	struct mmsghdr *mmsg_vector;
 	void **skbuff_vector;
@@ -118,10 +121,13 @@ struct vector_private {
 	bool in_write_poll;
 	bool in_error;
 
+	/* guest allowed to use ethtool flash to load bpf */
+	bool bpf_via_flash;
+
 	/* ethtool stats */
 
 	struct vector_estats estats;
-	void *bpf;
+	struct sock_fprog *bpf;
 
 	char user[0];
 };
diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index f92e05ad145f..b602bbf399fe 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -46,7 +46,8 @@
 #define TUN_GET_F_FAIL "tapraw: TUNGETFEATURES failed: %s"
 #define L2TPV3_BIND_FAIL "l2tpv3_open : could not bind socket err=%i"
 #define UNIX_BIND_FAIL "unix_open : could not bind socket err=%i"
-#define BPF_ATTACH_FAIL "Failed to attach filter size %d to %d, err %d\n"
+#define BPF_ATTACH_FAIL "Failed to attach filter size %d prog %px to %d, err %d\n"
+#define BPF_DETACH_FAIL "Failed to detach filter size %d prog %px to %d, err %d\n"
 
 #define MAX_UN_LEN 107
 
@@ -660,31 +661,44 @@ int uml_vector_recvmmsg(
 	else
 		return -errno;
 }
-int uml_vector_attach_bpf(int fd, void *bpf, int bpf_len)
+int uml_vector_attach_bpf(int fd, void *bpf)
 {
-	int err = setsockopt(fd, SOL_SOCKET, SO_ATTACH_FILTER, bpf, bpf_len);
+	struct sock_fprog *prog = bpf;
+
+	int err = setsockopt(fd, SOL_SOCKET, SO_ATTACH_FILTER, bpf, sizeof(struct sock_fprog));
 
 	if (err < 0)
-		printk(KERN_ERR BPF_ATTACH_FAIL, bpf_len, fd, -errno);
+		printk(KERN_ERR BPF_ATTACH_FAIL, prog->len, prog->filter, fd, -errno);
 	return err;
 }
 
-#define DEFAULT_BPF_LEN 6
+int uml_vector_detach_bpf(int fd, void *bpf)
+{
+	struct sock_fprog *prog = bpf;
 
-void *uml_vector_default_bpf(int fd, void *mac)
+	int err = setsockopt(fd, SOL_SOCKET, SO_DETACH_FILTER, bpf, sizeof(struct sock_fprog));
+	if (err < 0)
+		printk(KERN_ERR BPF_DETACH_FAIL, prog->len, prog->filter, fd, -errno);
+	return err;
+}
+void *uml_vector_default_bpf(void *mac)
 {
 	struct sock_filter *bpf;
 	uint32_t *mac1 = (uint32_t *)(mac + 2);
 	uint16_t *mac2 = (uint16_t *) mac;
-	struct sock_fprog bpf_prog = {
-		.len = 6,
-		.filter = NULL,
-	};
+	struct sock_fprog *bpf_prog;
 
+	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
+	if (bpf_prog) {
+		bpf_prog->len = DEFAULT_BPF_LEN;
+		bpf_prog->filter = NULL;
+	} else {
+		return NULL;
+	}
 	bpf = uml_kmalloc(
 		sizeof(struct sock_filter) * DEFAULT_BPF_LEN, UM_GFP_KERNEL);
 	if (bpf != NULL) {
-		bpf_prog.filter = bpf;
+		bpf_prog->filter = bpf;
 		/* ld	[8] */
 		bpf[0] = (struct sock_filter){ 0x20, 0, 0, 0x00000008 };
 		/* jeq	#0xMAC[2-6] jt 2 jf 5*/
@@ -697,12 +711,58 @@ void *uml_vector_default_bpf(int fd, void *mac)
 		bpf[4] = (struct sock_filter){ 0x6, 0, 0, 0x00000000 };
 		/* ret	#0x40000 */
 		bpf[5] = (struct sock_filter){ 0x6, 0, 0, 0x00040000 };
-		if (uml_vector_attach_bpf(
-			fd, &bpf_prog, sizeof(struct sock_fprog)) < 0) {
-			kfree(bpf);
-			bpf = NULL;
-		}
+	} else {
+		kfree(bpf_prog);
+		bpf_prog = NULL;
 	}
-	return bpf;
+	printk(KERN_ERR "Using default bpf");
+	return bpf_prog;
 }
 
+/* Note - this function requires a valid mac being passed as an arg */
+
+void *uml_vector_user_bpf(char *filename)
+{
+	struct sock_filter *bpf;
+	struct sock_fprog *bpf_prog;
+	struct stat statbuf;
+	int res, ffd = -1;
+
+	if (filename == NULL)
+		return NULL;
+
+	if (stat(filename, &statbuf) < 0) {
+		printk(KERN_ERR "Error %d reading bpf file", -errno);
+		return false;
+	}
+	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
+	if (bpf_prog != NULL) {
+		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
+		bpf_prog->filter = NULL;
+	}
+	ffd = os_open_file(filename, of_read(OPENFLAGS()), 0);
+	if (ffd < 0) {
+		printk(KERN_ERR "Error %d opening bpf file", -errno);
+		goto bpf_failed;
+	}
+	bpf = uml_kmalloc(statbuf.st_size, UM_GFP_KERNEL);
+	if (bpf == NULL) {
+		printk(KERN_ERR "Failed to allocate bpf buffer");
+		goto bpf_failed;
+	}
+	bpf_prog->filter = bpf;
+	res = os_read_file(ffd, bpf, statbuf.st_size);
+	if (res < statbuf.st_size) {
+		printk(KERN_ERR "Failed to read bpf program %s, error %d", filename, res);
+		kfree(bpf);
+		goto bpf_failed;
+	}
+	os_close_file(ffd);
+	printk(KERN_ERR "Successfully read bpf program %s, size %d", filename, res);
+	return bpf_prog;
+bpf_failed:
+	if (ffd > 0)
+		os_close_file(ffd);
+	kfree(bpf_prog);
+	return NULL;
+}
diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
index 0a13ca9592d1..18dafa59299f 100644
--- a/arch/um/drivers/vector_user.h
+++ b/arch/um/drivers/vector_user.h
@@ -28,6 +28,8 @@
 #define TRANS_BESS "bess"
 #define TRANS_BESS_LEN strlen(TRANS_BESS)
 
+#define DEFAULT_BPF_LEN 6
+
 #ifndef IPPROTO_GRE
 #define IPPROTO_GRE 0x2F
 #endif
@@ -95,8 +97,10 @@ extern int uml_vector_recvmmsg(
 	unsigned int vlen,
 	unsigned int flags
 );
-extern void *uml_vector_default_bpf(int fd, void *mac);
-extern int uml_vector_attach_bpf(int fd, void *bpf, int bpf_len);
+extern void *uml_vector_default_bpf(void *mac);
+extern void *uml_vector_user_bpf(char *filename);
+extern int uml_vector_attach_bpf(int fd, void *bpf);
+extern int uml_vector_detach_bpf(int fd, void *bpf);
 extern bool uml_raw_enable_qdisc_bypass(int fd);
 extern bool uml_raw_enable_vnet_headers(int fd);
 extern bool uml_tap_enable_vnet_headers(int fd);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
