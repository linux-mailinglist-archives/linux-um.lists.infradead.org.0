Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65676121051
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 18:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+4NNtHlpKXdcMYyhvY9MaO0+Kfkzn2z/ToGyf8RaHo=; b=BsuZgZzl+2/Iw3
	wq7/AO/oy7i2trwbUWSKDg1i+cB0bi1nV1P9yL7DDGElnKiOml4OT7XvPS1nnZxxfr8aLoLAmRQSM
	VGyr90iMJ2zHtIQkEcNXR45XD+Zh7t+8Uw4rTDLRGpDG1kzpB700fCoiUlDabuSdAD2KdkwRdTD40
	c4Xhg/QptQUMw6OatVw8s6QotGbHn977S9nftrUZLkC+Y6XoTpheUD+wsv2cGmyYHAYvQjNhCQcf3
	W5yhEri2plOKCB5KeHbP72a+GzEPDwxpVUpCMBgSKuk8lJfp6X4X3B8L6Y83ciV+iGIoYABBJU4fy
	RjttTbNQwz0b4D5Kuz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtmU-0001dY-Gu; Mon, 16 Dec 2019 17:03:38 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtmR-0001bs-CG
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 17:03:36 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmQ-000119-8F; Mon, 16 Dec 2019 17:03:34 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmN-0003g4-C4; Mon, 16 Dec 2019 17:03:33 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH v3 5/6] um: vector: Add dynamic tap interfaces and scripting
Date: Mon, 16 Dec 2019 17:03:20 +0000
Message-Id: <20191216170321.14056-5-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
References: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_090335_412407_6FAEF5CB 
X-CRM114-Status: GOOD (  15.19  )
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

In order to be compatible with the existing tap driver
we need to be able to allocate a tap on the fly and tear it
down once we are done with it.

We also need to be able to add that interface to a bridge.
Instead of backwards compatibility with the old UML options
and net helper behaviour this patch introduces semantics
identical to qemu ifup scripts.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_user.c | 57 +++++++++++++++++++++++++++++------
 1 file changed, 48 insertions(+), 9 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index 59e756df9af9..ea79887f1c9b 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -40,6 +40,7 @@
 #define ID_MAX 4 
 
 #define TOKEN_IFNAME "ifname"
+#define TOKEN_SCRIPT "script"
 
 #define TRANS_RAW "raw"
 #define TRANS_RAW_LEN strlen(TRANS_RAW)
@@ -53,6 +54,9 @@
 
 #define MAX_UN_LEN 107
 
+static const char padchar[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
+static const char *template = "tapXXXXXX";
+
 /* This is very ugly and brute force lookup, but it is done
  * only once at initialization so not worth doing hashes or
  * anything more intelligent
@@ -189,16 +193,21 @@ static int create_raw_fd(char *iface, int flags, int proto)
 	return err;
 }
 
+
 static struct vector_fds *user_init_tap_fds(struct arglist *ifspec)
 {
-	int fd = -1;
+	int fd = -1, i;
 	char *iface;
 	struct vector_fds *result = NULL;
+	bool dynamic = false;
+	char dynamic_ifname[IFNAMSIZ];
+	char *argv[] = {"/bin/sh", NULL, NULL, NULL};
 
 	iface = uml_vector_fetch_arg(ifspec, TOKEN_IFNAME);
 	if (iface == NULL) {
-		printk(UM_KERN_ERR "uml_tap: failed to parse interface spec\n");
-		goto tap_cleanup;
+		dynamic = true;
+		iface = dynamic_ifname;
+		srand(getpid());
 	}
 
 	result = uml_kmalloc(sizeof(struct vector_fds), UM_GFP_KERNEL);
@@ -212,14 +221,30 @@ static struct vector_fds *user_init_tap_fds(struct arglist *ifspec)
 	result->remote_addr_size = 0;
 
 	/* TAP */
+	do {
+		if (dynamic) {
+			strcpy(iface, template);
+			for (i = 0; i < strlen(iface); i++) {
+				if (iface[i] == 'X') {
+					iface[i] = padchar[rand() % strlen(padchar)];
+				}
+			}
+		}
+		fd = create_tap_fd(iface);
+		if ((fd < 0) && (!dynamic)) {
+			printk(UM_KERN_ERR "uml_tap: failed to create tun interface\n");
+			goto tap_cleanup;
+		}
+		result->tx_fd = fd;
+		result->rx_fd = fd;
+	} while (fd < 0);
 
-	fd = create_tap_fd(iface);
-	if (fd < 0) {
-		printk(UM_KERN_ERR "uml_tap: failed to create tun interface\n");
-		goto tap_cleanup;
+	argv[1] = uml_vector_fetch_arg(ifspec, TOKEN_SCRIPT);
+	if (argv[1]) {
+		argv[2] = iface;
+		run_helper(NULL, NULL, argv);
 	}
-	result->tx_fd = fd;
-	result->rx_fd = fd;
+
 	return result;
 tap_cleanup:
 	printk(UM_KERN_ERR "user_init_tap: init failed, error %d", fd);
@@ -232,6 +257,7 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 {
 	char *iface;
 	struct vector_fds *result = NULL;
+	char *argv[2];
 
 	iface = uml_vector_fetch_arg(ifspec, TOKEN_IFNAME);
 	if (iface == NULL) {
@@ -265,6 +291,12 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 			"uml_tap: failed to create paired raw socket: %i\n", result->rx_fd);
 		goto hybrid_cleanup;
 	}
+
+	argv[0] = uml_vector_fetch_arg(ifspec, TOKEN_SCRIPT);
+	if (argv[0]) {
+		argv[1] = iface;
+		run_helper(NULL, NULL, argv);
+	}
 	return result;
 hybrid_cleanup:
 	printk(UM_KERN_ERR "user_init_hybrid: init failed");
@@ -359,6 +391,7 @@ static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 	int err = -ENOMEM;
 	char *iface;
 	struct vector_fds *result = NULL;
+	char *argv[2];
 
 	iface = uml_vector_fetch_arg(ifspec, TOKEN_IFNAME);
 	if (iface == NULL)
@@ -392,6 +425,11 @@ static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 		result->remote_addr = NULL;
 		result->remote_addr_size = 0;
 	}
+	argv[0] = uml_vector_fetch_arg(ifspec, TOKEN_SCRIPT);
+	if (argv[0]) {
+		argv[1] = iface;
+		run_helper(NULL, NULL, argv);
+	}
 	return result;
 raw_cleanup:
 	printk(UM_KERN_ERR "user_init_raw: init failed, error %d", err);
@@ -643,6 +681,7 @@ struct vector_fds *uml_vector_user_open(
 		return user_init_socket_fds(parsed, ID_UCAST);
 	if (strncmp(transport, TRANS_MCAST, TRANS_MCAST_LEN) == 0)
 		return user_init_socket_fds(parsed, ID_MCAST);
+
 	return NULL;
 }
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
