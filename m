Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6B3121056
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 18:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWks74FVU/UAnbc/4Sm2FDOCNaCHh4kriSIWpIiTZqw=; b=JfbNqYsvoJBnGi
	SLcWLV7AotwzP1T3zkGoCLwZpMG0viNa/2ZfBYPk05CxUTII8E9v9FOxjXXG2S4sq6eAD/DCIZ/s1
	gXhQqrTz7OpZJrjy9uHP/GejoLWUk1z5Gvqy0aRiaCrV3pKyuB2KDVKjS1XLDxRWjobQfF6/g2lKA
	KB1QolUB8daq3dwgdYCuA0Ca9VSdbV5S8AMhE73oF2iUyq8eEv6qjf464mXQc4SVFiQ17NmhbY4KC
	pExm+FpzeOE9H+qtRhqKzLu39fXBp1eNfSsBiVvxhT7EW8kNHzDQaGyD37JxBaw6BUbGMKZaOKK6j
	qnkKhDJE3FQISQclGpwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtmT-0001cV-12; Mon, 16 Dec 2019 17:03:37 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtmP-0001ae-AQ
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 17:03:35 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmK-00010s-U6; Mon, 16 Dec 2019 17:03:29 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmH-0003g4-Ad; Mon, 16 Dec 2019 17:03:27 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH v3 2/6] um: vector: Add UCAST and MCAST trasnports
Date: Mon, 16 Dec 2019 17:03:17 +0000
Message-Id: <20191216170321.14056-2-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
References: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_090333_502979_6C52CF14 
X-CRM114-Status: GOOD (  16.15  )
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

Add Unicast "bare" packet and Multicast "bare" packet transports
compatible with legacy QEMU and UML

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/Kconfig             | 21 ++++-----
 arch/um/drivers/vector_kern.c       |  2 +
 arch/um/drivers/vector_transports.c |  8 +++-
 arch/um/drivers/vector_user.c       | 66 +++++++++++++++++++++++++----
 arch/um/drivers/vector_user.h       |  6 +++
 5 files changed, 80 insertions(+), 23 deletions(-)

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index 388096fb45a2..a84b806212a3 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -268,7 +268,7 @@ config UML_NET_VDE
 
 config UML_NET_MCAST
 	bool "Multicast transport"
-	depends on UML_NET
+	depends on UML_NET && UML_NET_VECTOR
 	help
 	  This Multicast User-Mode Linux network transport allows multiple
 	  UMLs (even ones running on different host machines!) to talk to
@@ -293,20 +293,17 @@ config UML_NET_MCAST
 
 config UML_NET_PCAP
 	bool "pcap transport"
-	depends on UML_NET
+	depends on UML_NET && UML_NET_VECTOR
 	help
-	The pcap transport makes a pcap packet stream on the host look
-	like an ethernet device inside UML.  This is useful for making
-	UML act as a network monitor for the host.  You must have libcap
-	installed in order to build the pcap transport into UML.
-
-	  For more information, see
-	  <http://user-mode-linux.sourceforge.net/old/networking.html>  That site
-	  has examples of the UML command line to use to enable this option.
+	 The PCAP transport provides emulation for the old PCAP transport
+	 behaviour using the new VECTOR RAW backend so that any existing
+	 scripts or setups which rely on ethX=pcap still work.
 
-	If you intend to use UML as a network monitor for the host, say
-	Y here.  Otherwise, say N.
+	 It is recommended to use VECTOR RAW directly instead because
+	 it provides a number of options which are otherwise unavailable
+	 via this interface.
 
+	
 config UML_NET_SLIRP
 	bool "SLiRP transport"
 	depends on UML_NET
diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 933adf2009dc..1388f09e09ea 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1708,6 +1708,7 @@ int vector_compat_eth_configure(char *str, int index)
 		kfree(newargs);
 		return -ENOMEM;
 	}
+#ifdef CONFIG_UML_NET_PCAP
 	if (strncmp(str, "pcap", strlen("pcap")) == 0) {
 		char *ifname = NULL, *filter = NULL, *transport = NULL, *mac = NULL;
 		char *options[2] = { NULL, NULL};
@@ -1738,6 +1739,7 @@ int vector_compat_eth_configure(char *str, int index)
 		do_compat = 1;
 
 	}
+#endif
 	if (do_compat) {
 		parsed = uml_parse_vector_ifspec(newargs);
 		vector_eth_configure(index, parsed, true);
diff --git a/arch/um/drivers/vector_transports.c b/arch/um/drivers/vector_transports.c
index 0794d23f07cb..e99d3baec80b 100644
--- a/arch/um/drivers/vector_transports.c
+++ b/arch/um/drivers/vector_transports.c
@@ -465,7 +465,7 @@ static int build_tap_transport_data(struct vector_private *vp)
 }
 
 
-static int build_bess_transport_data(struct vector_private *vp)
+static int build_no_header_transport_data(struct vector_private *vp)
 {
 	vp->form_header = NULL;
 	vp->verify_header = NULL;
@@ -489,7 +489,11 @@ int build_transport_data(struct vector_private *vp)
 	if (strncmp(transport, TRANS_HYBRID, TRANS_HYBRID_LEN) == 0)
 		return build_hybrid_transport_data(vp);
 	if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
-		return build_bess_transport_data(vp);
+		return build_no_header_transport_data(vp);
+	if (strncmp(transport, TRANS_UCAST, TRANS_UCAST_LEN) == 0)
+		return build_no_header_transport_data(vp);
+	if (strncmp(transport, TRANS_MCAST, TRANS_MCAST_LEN) == 0)
+		return build_no_header_transport_data(vp);
 	return 0;
 }
 
diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index c8a11df080d2..59e756df9af9 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -35,7 +35,9 @@
 #define ID_GRE 0
 #define ID_L2TPV3 1
 #define ID_BESS 2
-#define ID_MAX 2
+#define ID_UCAST 3
+#define ID_MCAST 4
+#define ID_MAX 4 
 
 #define TOKEN_IFNAME "ifname"
 
@@ -44,7 +46,7 @@
 
 #define VNET_HDR_FAIL "could not enable vnet headers on fd %d"
 #define TUN_GET_F_FAIL "tapraw: TUNGETFEATURES failed: %s"
-#define L2TPV3_BIND_FAIL "l2tpv3_open : could not bind socket err=%i"
+#define SOCK_BIND_FAIL "socket_open : could not bind socket err=%i"
 #define UNIX_BIND_FAIL "unix_open : could not bind socket err=%i"
 #define BPF_ATTACH_FAIL "Failed to attach filter size %d prog %px to %d, err %d\n"
 #define BPF_DETACH_FAIL "Failed to detach filter size %d prog %px to %d, err %d\n"
@@ -443,7 +445,7 @@ bool uml_tap_enable_vnet_headers(int fd)
 static struct vector_fds *user_init_socket_fds(struct arglist *ifspec, int id)
 {
 	int err = -ENOMEM;
-	int fd = -1, gairet;
+	int fd = -1, gairet, ttl = 1, yes = 1;
 	struct addrinfo srchints;
 	struct addrinfo dsthints;
 	bool v6, udp;
@@ -473,10 +475,10 @@ static struct vector_fds *user_init_socket_fds(struct arglist *ifspec, int id)
 
 	memset(&dsthints, 0, sizeof(dsthints));
 
-	if (v6)
-		dsthints.ai_family = AF_INET6;
-	else
+	if ((!v6) || (id == ID_MCAST))
 		dsthints.ai_family = AF_INET;
+	else
+		dsthints.ai_family = AF_INET6;
 
 	switch (id) {
 	case ID_GRE:
@@ -492,13 +494,18 @@ static struct vector_fds *user_init_socket_fds(struct arglist *ifspec, int id)
 			dsthints.ai_protocol = IPPROTO_L2TP;
 		}
 		break;
+	case ID_UCAST:
+	case ID_MCAST:
+		dsthints.ai_socktype = SOCK_DGRAM;
+		dsthints.ai_protocol = 0;
+		break;
 	default:
 		printk(KERN_ERR "Unsupported socket type\n");
 		return NULL;
 	}
 	memcpy(&srchints, &dsthints, sizeof(struct addrinfo));
 
-	gairet = getaddrinfo(src, srcport, &dsthints, &gairesult);
+	gairet = getaddrinfo(src, srcport, &srchints, &gairesult);
 	if ((gairet != 0) || (gairesult == NULL)) {
 		printk(UM_KERN_ERR
 			"socket_open : could not resolve src, error = %s",
@@ -515,12 +522,50 @@ static struct vector_fds *user_init_socket_fds(struct arglist *ifspec, int id)
 		);
 		goto cleanup;
 	}
+	if (id == ID_MCAST) {
+		value = uml_vector_fetch_arg(ifspec, "ttl");
+		if (value != NULL) {
+			ttl = strtol((const char *) value, NULL, 10);
+			if ((ttl < 1) || (ttl > 255))
+				ttl = 1;
+		}
+		if (setsockopt(fd, SOL_IP, IP_MULTICAST_TTL, &ttl, sizeof(ttl)) < 0) {
+			err = -errno;
+			printk(UM_KERN_ERR "umcast_open: IP_MULTICAST_TTL "
+			       "failed, error = %d\n", errno);
+			goto cleanup;
+		}
+		if (setsockopt(fd, SOL_IP, IP_MULTICAST_LOOP, &yes, sizeof(yes)) < 0) {
+			err = -errno;
+			printk(UM_KERN_ERR "umcast_open: IP_MULTICAST_LOOP "
+			       "failed, error = %d\n", errno);
+			goto cleanup;
+		}
+	}
 	if (bind(fd,
 		(struct sockaddr *) gairesult->ai_addr,
 		gairesult->ai_addrlen)) {
-		printk(UM_KERN_ERR L2TPV3_BIND_FAIL, errno);
+		printk(UM_KERN_ERR SOCK_BIND_FAIL, errno);
 		goto cleanup;
 	}
+	if (id == ID_MCAST) {
+		struct ip_mreq mreq;
+
+		mreq.imr_multiaddr = ((struct sockaddr_in *) gairesult->ai_addr)->sin_addr;
+		mreq.imr_interface.s_addr = 0;
+		if (setsockopt(fd, SOL_IP, IP_ADD_MEMBERSHIP, &mreq, sizeof(mreq)) < 0) {
+			err = -errno;
+			printk(UM_KERN_ERR "umcast_open: IP_ADD_MEMBERSHIP "
+			       "failed, error = %d\n", errno);
+			printk(UM_KERN_ERR "There appears not to be a "
+			       "multicast-capable network interface on the "
+			       "host.\n");
+			printk(UM_KERN_ERR "eth0 should be configured in order "
+			       "to use the multicast transport.\n");
+			goto cleanup;
+		}
+
+	}
 
 	if (gairesult != NULL)
 		freeaddrinfo(gairesult);
@@ -594,6 +639,10 @@ struct vector_fds *uml_vector_user_open(
 		return user_init_socket_fds(parsed, ID_L2TPV3);
 	if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
 		return user_init_unix_fds(parsed, ID_BESS);
+	if (strncmp(transport, TRANS_UCAST, TRANS_UCAST_LEN) == 0)
+		return user_init_socket_fds(parsed, ID_UCAST);
+	if (strncmp(transport, TRANS_MCAST, TRANS_MCAST_LEN) == 0)
+		return user_init_socket_fds(parsed, ID_MCAST);
 	return NULL;
 }
 
@@ -775,4 +824,3 @@ void *uml_vector_user_bpf(char *filename)
 	kfree(bpf_prog);
 	return NULL;
 }
-
diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
index a4acfebd28d5..3b05850a9c46 100644
--- a/arch/um/drivers/vector_user.h
+++ b/arch/um/drivers/vector_user.h
@@ -28,6 +28,12 @@
 #define TRANS_BESS "bess"
 #define TRANS_BESS_LEN strlen(TRANS_BESS)
 
+#define TRANS_UCAST "ucast"
+#define TRANS_UCAST_LEN strlen(TRANS_UCAST)
+
+#define TRANS_MCAST "mcast"
+#define TRANS_MCAST_LEN strlen(TRANS_MCAST)
+
 #define DEFAULT_BPF_LEN 6
 
 #ifndef IPPROTO_GRE
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
