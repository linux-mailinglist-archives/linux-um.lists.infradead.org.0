Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEDA668F1
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 10:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZttJECydCTOnSZd6yjU9YJJ6Rmu2TX8zysYuyfSHd/w=; b=uoG7+XdEMpsTQajJITwHkGAWvr
	JGSTsbau4gcPjFYmHIl65TYHd+byp7IeOKU88vcFOVxBzBK0CWZSk/UMOfh9HLIt1Er0Ry96y2nvR
	NLdeIsNpJ4AZ73ORUtqArnQ4PT9+NUIpUyMxEafLCL7ShhcEG82QE54KIPUTD5h898bjfohPqPI+e
	YNqDTldICUxMQLOrBIMl4RgkcbeM1jfPv4VXFQxgD6dThfmVdHeOX0QXVTIE4il2/PWGg9CmwmVs3
	+Q+EbbYhJH1IoWT3rfaGh/ZZQaANWS4O2iQosY9DZgI+vR1Gi3JAJGShomrxSq/bPehNKUBFlSijT
	hrlBjYVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqmB-0006iN-TR; Fri, 12 Jul 2019 08:19:31 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqm7-0006fz-RT
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 08:19:30 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hlqm5-0007dW-2H; Fri, 12 Jul 2019 08:19:25 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hlqm1-0000qZ-HR; Fri, 12 Jul 2019 09:19:23 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [RESEND PATCHv2 2/3] um: Added support for unix socket transports and
 bess transport
Date: Fri, 12 Jul 2019 09:19:13 +0100
Message-Id: <20190712081914.3074-2-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190712081914.3074-1-anton.ivanov@cambridgegreys.com>
References: <20190712081914.3074-1-anton.ivanov@cambridgegreys.com>
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011928_020997_13B3AE5F 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

This adds support for the UNIX domain socket transports in
general and implements a Netsys::BESS compatible transport
interface.
For details on Netsys::BESS see https://github.com/NetSys/bess

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_transports.c | 11 +++++
 arch/um/drivers/vector_user.c       | 89 ++++++++++++++++++++++++++++++++++++-
 arch/um/drivers/vector_user.h       |  3 ++
 3 files changed, 102 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/vector_transports.c b/arch/um/drivers/vector_transports.c
index 2999f3bd1781..a43310cd84fb 100644
--- a/arch/um/drivers/vector_transports.c
+++ b/arch/um/drivers/vector_transports.c
@@ -465,6 +465,15 @@ static int build_tap_transport_data(struct vector_private *vp)
 }
 
 
+static int build_bess_transport_data(struct vector_private *vp)
+{
+	vp->form_header = NULL;
+	vp->verify_header = NULL;
+	vp->header_size = 0;
+	vp->rx_header_size = 0;
+	return 0;
+}
+
 int build_transport_data(struct vector_private *vp)
 {
 	char *transport = uml_vector_fetch_arg(vp->parsed, "transport");
@@ -479,6 +488,8 @@ int build_transport_data(struct vector_private *vp)
 		return build_tap_transport_data(vp);
 	if (strncmp(transport, TRANS_HYBRID, TRANS_HYBRID_LEN) == 0)
 		return build_hybrid_transport_data(vp);
+	if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
+		return build_bess_transport_data(vp);
 	return 0;
 }
 
diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index af1a1da432ca..4c5228de7f53 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -18,6 +18,7 @@
 #include <fcntl.h>
 #include <sys/types.h>
 #include <sys/socket.h>
+#include <sys/un.h>
 #include <net/ethernet.h>
 #include <netinet/ip.h>
 #include <netinet/ether.h>
@@ -34,7 +35,8 @@
 
 #define ID_GRE 0
 #define ID_L2TPV3 1
-#define ID_MAX 1
+#define ID_BESS 2
+#define ID_MAX 2
 
 #define TOKEN_IFNAME "ifname"
 
@@ -44,8 +46,11 @@
 #define VNET_HDR_FAIL "could not enable vnet headers on fd %d"
 #define TUN_GET_F_FAIL "tapraw: TUNGETFEATURES failed: %s"
 #define L2TPV3_BIND_FAIL "l2tpv3_open : could not bind socket err=%i"
+#define UNIX_BIND_FAIL "unix_open : could not bind socket err=%i"
 #define BPF_ATTACH_FAIL "Failed to attach filter size %d to %d, err %d\n"
 
+#define MAX_UN_LEN 107
+
 /* This is very ugly and brute force lookup, but it is done
  * only once at initialization so not worth doing hashes or
  * anything more intelligent
@@ -266,6 +271,86 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 	return NULL;
 }
 
+static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
+{
+	int fd = -1;
+	int socktype;
+	char *src, *dst;
+	struct vector_fds *result = NULL;
+	struct sockaddr_un *local_addr = NULL, *remote_addr = NULL;
+
+
+	src = uml_vector_fetch_arg(ifspec, "src");
+	dst = uml_vector_fetch_arg(ifspec, "dst");
+	result = uml_kmalloc(sizeof(struct vector_fds), UM_GFP_KERNEL);
+	if (result == NULL) {
+		printk(UM_KERN_ERR "unix open:cannot allocate remote addr");
+		goto unix_cleanup;
+	}
+	remote_addr = uml_kmalloc(sizeof(struct sockaddr_un), UM_GFP_KERNEL);
+	if (remote_addr == NULL) {
+		printk(UM_KERN_ERR "unix open:cannot allocate remote addr");
+		goto unix_cleanup;
+	}
+
+	switch (id) {
+	case ID_BESS:
+		socktype = SOCK_SEQPACKET;
+		if ((src != NULL) && (strlen(src) <= MAX_UN_LEN)) {
+			local_addr = uml_kmalloc(sizeof(struct sockaddr_un), UM_GFP_KERNEL);
+			if (local_addr == NULL) {
+				printk(UM_KERN_ERR "bess open:cannot allocate local addr");
+				goto unix_cleanup;
+			}
+			memcpy(local_addr->sun_path, src, strlen(src));
+		}
+		if ((dst == NULL) && (strlen(dst) > MAX_UN_LEN))
+			goto unix_cleanup;
+		memcpy(remote_addr->sun_path, src, strlen(dst));
+		break;
+	default:
+		printk(KERN_ERR "Unsupported unix socket type\n");
+		return NULL;
+	}
+
+	fd = socket(AF_UNIX, socktype, 0);
+	if (fd == -1) {
+		printk(UM_KERN_ERR
+			"unix open: could not open socket, error = %d",
+			-errno
+		);
+		goto unix_cleanup;
+	}
+	if (local_addr != NULL) {
+		if (bind(fd, (struct sockaddr *) local_addr, sizeof(struct sockaddr_un))) {
+			printk(UM_KERN_ERR UNIX_BIND_FAIL, errno);
+			goto unix_cleanup;
+		}
+	}
+	switch (id) {
+	case ID_BESS:
+		if (connect(fd, remote_addr, sizeof(struct sockaddr_un)) < 0) {
+			printk(UM_KERN_ERR "bess open:cannot connect");
+			goto unix_cleanup;
+		}
+		break;
+	}
+	if (result != NULL) {
+		result->rx_fd = fd;
+		result->tx_fd = fd;
+		result->remote_addr_size = 0;
+		result->remote_addr = remote_addr;
+	}
+	return result;
+unix_cleanup:
+	if (fd >= 0)
+		os_close_file(fd);
+	if (remote_addr != NULL)
+		kfree(remote_addr);
+	if (result != NULL)
+		kfree(result);
+	return NULL;
+}
 
 static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 {
@@ -497,6 +582,8 @@ struct vector_fds *uml_vector_user_open(
 		return user_init_socket_fds(parsed, ID_GRE);
 	if (strncmp(transport, TRANS_L2TPV3, TRANS_L2TPV3_LEN) == 0)
 		return user_init_socket_fds(parsed, ID_L2TPV3);
+	if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
+		return user_init_unix_fds(parsed, ID_BESS);
 	return NULL;
 }
 
diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
index 6bf50cf78ad0..0a13ca9592d1 100644
--- a/arch/um/drivers/vector_user.h
+++ b/arch/um/drivers/vector_user.h
@@ -25,6 +25,9 @@
 #define TRANS_HYBRID "hybrid"
 #define TRANS_HYBRID_LEN strlen(TRANS_HYBRID)
 
+#define TRANS_BESS "bess"
+#define TRANS_BESS_LEN strlen(TRANS_BESS)
+
 #ifndef IPPROTO_GRE
 #define IPPROTO_GRE 0x2F
 #endif
-- 
2.11.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
