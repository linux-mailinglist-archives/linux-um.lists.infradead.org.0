Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3003312285D
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 11:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA3KS4WSkA+0yOigGT5UC7GR4rk9sYXBSKnsUeBzLRE=; b=MYEPwfI7hblMB3
	cElXoJ/JyvdDiwVXLbSpdmWgVwFa0oS2/Y6Wfl2bzTMWMcu1nakzFXcGtx9vBmAEwHyTTcM2wwGi2
	KmuitP9AOkowCK8vr2QgHLNpjWB6Icf9QAD+yCU9kiesJ3Vu7ZCSAcyWuihY48g6WQiFE6pDr+/FB
	MCPQfiulJJWvt9xz4iGWSO5hzDPNv8pT1fsWL36qGfqymRIkist1WPwgZjgrz1xnEdkZUbDCo9KLj
	J5c+3fG4nV69PyV4zywhq2ep8kYyITGX0lpHEPxemXtlgiTXc9k+7DVmvlAG0pdvzW9inttjPBF/o
	JCQdICODaUK9K6nTHszA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9nM-0002eV-P7; Tue, 17 Dec 2019 10:09:36 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9nJ-0002cL-Bi
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 10:09:35 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ih9nI-0003pC-3X; Tue, 17 Dec 2019 10:09:32 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ih9nF-0000uG-1h; Tue, 17 Dec 2019 10:09:30 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH v4 8/9] um: Add daemon transport to vector subsystem
Date: Tue, 17 Dec 2019 10:09:12 +0000
Message-Id: <20191217100913.3422-8-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191217100913.3422-1-anton.ivanov@cambridgegreys.com>
References: <20191217100913.3422-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020933_529273_EE5481C9 
X-CRM114-Status: GOOD (  17.65  )
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
Cc: richard@nod.at, brendanhiggins@google.com,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Adds a transport compatible with the old uml_switch from
uml-utilities package to the vector subsystem.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/Kconfig       |   2 +-
 arch/um/drivers/vector_kern.c |   4 ++
 arch/um/drivers/vector_user.c | 110 ++++++++++++++++++++++++++++++++--
 arch/um/drivers/vector_user.h |   4 ++
 4 files changed, 115 insertions(+), 5 deletions(-)

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index 7362ac9953fc..2369bdf4be91 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -152,7 +152,7 @@ config UML_NET_TUNTAP
 	depends on UML_NET
 	help
 	  The UML TUN/TAP network transport allows a UML instance to exchange
-	  packets with the host over a TUN/TAP device. 
+	  packets with the host over a TUN/TAP device.
 
 	  To use this transport, your host kernel must have support for TUN/TAP
 	  devices, either built-in or as a module.
diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 224db8833b8e..aba2dc634f44 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1187,6 +1187,10 @@ static int vector_net_close(struct net_device *dev)
 		os_close_file(vp->fds->rx_fd);
 		vp->fds->rx_fd = -1;
 	}
+	if (vp->fds->control_fd > 0) {
+		os_close_file(vp->fds->control_fd);
+		vp->fds->control_fd = -1;
+	}
 	if (vp->fds->tx_fd > 0) {
 		os_close_file(vp->fds->tx_fd);
 		vp->fds->tx_fd = -1;
diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index ab01c194fba5..20c3bb22a211 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -25,6 +25,7 @@
 #include <linux/if_packet.h>
 #include <sys/wait.h>
 #include <sys/uio.h>
+#include <sys/time.h>
 #include <linux/virtio_net.h>
 #include <netdb.h>
 #include <stdlib.h>
@@ -37,7 +38,8 @@
 #define ID_BESS 2
 #define ID_UCAST 3
 #define ID_MCAST 4
-#define ID_MAX 4
+#define ID_DAEMON 5
+#define ID_MAX 5
 
 #define TOKEN_IFNAME "ifname"
 #define TOKEN_SCRIPT "script"
@@ -57,6 +59,18 @@
 static const char padchar[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 static const char *template = "tapXXXXXX";
 
+enum request_type { REQ_NEW_CONTROL };
+
+#define SWITCH_MAGIC 0xfeedface
+
+struct request_v3 {
+	uint32_t magic;
+	uint32_t version;
+	enum request_type type;
+	struct sockaddr_un sock;
+};
+
+
 /* This is very ugly and brute force lookup, but it is done
  * only once at initialization so not worth doing hashes or
  * anything more intelligent
@@ -217,6 +231,7 @@ static struct vector_fds *user_init_tap_fds(struct arglist *ifspec)
 	}
 	result->rx_fd = -1;
 	result->tx_fd = -1;
+	result->control_fd = -1;
 	result->remote_addr = NULL;
 	result->remote_addr_size = 0;
 
@@ -272,6 +287,7 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 	}
 	result->rx_fd = -1;
 	result->tx_fd = -1;
+	result->control_fd = -1;
 	result->remote_addr = NULL;
 	result->remote_addr_size = 0;
 
@@ -305,21 +321,35 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 	return NULL;
 }
 
+#define SWITCH_VERSION 3
+
 static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
 {
-	int fd = -1;
+	int fd = -1, n;
 	int socktype;
 	char *src, *dst;
 	struct vector_fds *result = NULL;
-	struct sockaddr_un *local_addr = NULL, *remote_addr = NULL;
+	struct sockaddr_un *local_addr = NULL, *remote_addr = NULL, *control_addr = NULL;
+	struct request_v3 req;
+	struct {
+		char zero;
+		int pid;
+		int usecs;
+	} name;
+	struct timeval tv;
 
 	src = uml_vector_fetch_arg(ifspec, "src");
 	dst = uml_vector_fetch_arg(ifspec, "dst");
+
+	if (dst == NULL)
+		dst = "/tmp/uml.ctl";
+
 	result = uml_kmalloc(sizeof(struct vector_fds), UM_GFP_KERNEL);
 	if (result == NULL) {
 		printk(UM_KERN_ERR "unix open:cannot allocate remote addr");
 		goto unix_cleanup;
 	}
+	result->control_fd = -1;
 	remote_addr = uml_kmalloc(sizeof(struct sockaddr_un), UM_GFP_KERNEL);
 	if (remote_addr == NULL) {
 		printk(UM_KERN_ERR "unix open:cannot allocate remote addr");
@@ -327,6 +357,62 @@ static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
 	}
 
 	switch (id) {
+	case ID_DAEMON:
+		name.zero = 0;
+		name.pid = os_getpid();
+		gettimeofday(&tv, NULL);
+		name.usecs = tv.tv_usec;
+
+		local_addr = uml_kmalloc(sizeof(struct sockaddr_un), UM_GFP_KERNEL);
+		if (local_addr == NULL) {
+			printk(UM_KERN_ERR "daemon open:cannot allocate local addr");
+			goto unix_cleanup;
+		}
+		local_addr->sun_family = AF_UNIX;
+		memcpy(local_addr->sun_path, &name, sizeof(name));
+
+		result->control_fd = socket(AF_UNIX, SOCK_STREAM, 0);
+		if (result->control_fd < 0) {
+			printk(UM_KERN_ERR
+				"unix open: could not open socket, error = %d",
+				-errno
+			);
+			goto unix_cleanup;
+		}
+		if (strlen(dst) <= MAX_UN_LEN) {
+			control_addr = uml_kmalloc(sizeof(struct sockaddr_un), UM_GFP_KERNEL);
+			if (control_addr == NULL) {
+				printk(UM_KERN_ERR "daemon open:cannot allocate control addr");
+				goto unix_cleanup;
+			}
+			control_addr->sun_family = AF_UNIX;
+			memcpy(control_addr->sun_path, dst, strlen(dst) + 1);
+		}
+
+		if (connect(result->control_fd, (struct sockaddr *) control_addr, sizeof(*control_addr)) < 0) {
+			printk(UM_KERN_ERR "daemon_open : control connect failed, " "errno = %d\n", -errno);
+			goto unix_cleanup;
+		}
+		req.magic = SWITCH_MAGIC;
+		req.version = SWITCH_VERSION;
+		req.type = REQ_NEW_CONTROL;
+		req.sock = *local_addr;
+
+		n = write(result->control_fd, &req, sizeof(req));
+		if (n != sizeof(req)) {
+			printk(UM_KERN_ERR "daemon_open : control setup request "
+			       "failed, err = %d\n", -errno);
+			goto unix_cleanup;
+		}
+		n = read(result->control_fd, remote_addr, sizeof(struct sockaddr_un));
+		if (n != sizeof(struct sockaddr_un)) {
+			printk(UM_KERN_ERR "daemon_open : read of data socket failed, "
+			       "err = %d\n", -errno);
+			goto unix_cleanup;
+		}
+		socktype = SOCK_DGRAM;
+
+		break;
 	case ID_BESS:
 		socktype = SOCK_SEQPACKET;
 		if ((src != NULL) && (strlen(src) <= MAX_UN_LEN)) {
@@ -374,14 +460,27 @@ static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
 	result->tx_fd = fd;
 	result->remote_addr_size = sizeof(struct sockaddr_un);
 	result->remote_addr = remote_addr;
+
+	if (control_addr != NULL)
+		kfree(control_addr);
+	if (local_addr != NULL)
+		kfree(local_addr);
+
 	return result;
 unix_cleanup:
 	if (fd >= 0)
 		os_close_file(fd);
 	if (remote_addr != NULL)
 		kfree(remote_addr);
-	if (result != NULL)
+	if (control_addr != NULL)
+		kfree(control_addr);
+	if (local_addr != NULL)
+		kfree(local_addr);
+	if (result != NULL) {
+		if (result->control_fd > 0)
+			close(result->control_fd);
 		kfree(result);
+	}
 	return NULL;
 }
 
@@ -422,6 +521,7 @@ static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 	if (result != NULL) {
 		result->rx_fd = rxfd;
 		result->tx_fd = txfd;
+		result->control_fd = -1;
 		result->remote_addr = NULL;
 		result->remote_addr_size = 0;
 	}
@@ -677,6 +777,8 @@ struct vector_fds *uml_vector_user_open(
 		return user_init_socket_fds(parsed, ID_L2TPV3);
 	if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
 		return user_init_unix_fds(parsed, ID_BESS);
+	if (strncmp(transport, TRANS_DAEMON, TRANS_DAEMON_LEN) == 0)
+		return user_init_unix_fds(parsed, ID_DAEMON);
 	if (strncmp(transport, TRANS_UCAST, TRANS_UCAST_LEN) == 0)
 		return user_init_socket_fds(parsed, ID_UCAST);
 	if (strncmp(transport, TRANS_MCAST, TRANS_MCAST_LEN) == 0)
diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
index 3b05850a9c46..590ece585929 100644
--- a/arch/um/drivers/vector_user.h
+++ b/arch/um/drivers/vector_user.h
@@ -34,6 +34,9 @@
 #define TRANS_MCAST "mcast"
 #define TRANS_MCAST_LEN strlen(TRANS_MCAST)
 
+#define TRANS_DAEMON "daemon"
+#define TRANS_DAEMON_LEN strlen(TRANS_MCAST)
+
 #define DEFAULT_BPF_LEN 6
 
 #ifndef IPPROTO_GRE
@@ -71,6 +74,7 @@ struct vector_fds {
 	int tx_fd;
 	void *remote_addr;
 	int remote_addr_size;
+	int control_fd;
 };
 
 #define VECTOR_READ	1
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
