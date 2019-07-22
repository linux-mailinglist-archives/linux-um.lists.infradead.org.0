Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E126FA65
	for <lists+linux-um@lfdr.de>; Mon, 22 Jul 2019 09:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MoqXzIZzY0xCi7o3Y5QWcx4pDpWSo6pCy1PXwZSdcPs=; b=e5HugG/mTNya9OZoq+gRYMaREm
	FQbUgBSDRa3/iVX8SNul8g5A9aqMWFmIjJT9NHMzVbcZakh9LW62Z5PnKGdyNfw1mUIBCxFvNaebI
	+126JZf5eABv+/0cymlgy8XTMqWmC+zZUSZfWUCeMhAEN5jHYIZ7baFBlX7z5d7Y7ekBU/jx5zLRQ
	SbNLxKEaEIKhIaM9gDc1R10aFaIh+hVHcV+MZAV+auMnY3zJbrWiESmCW1f9bOyK7tKQZyWSAPdQX
	zZYLEuDPm+5nQfbSrFOka4atmUEOl0wrOCQ+YJC5EGSm8u+h2ULy838+VfpnKcp3au3Zu2Ic0qESq
	6RU9DsDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSmS-0003QN-Ek; Mon, 22 Jul 2019 07:30:44 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSmO-0003OO-5l
 for linux-um@lists.infradead.org; Mon, 22 Jul 2019 07:30:41 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hpSmM-0001KS-T0; Mon, 22 Jul 2019 07:30:39 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hpSmJ-0005V2-Sd; Mon, 22 Jul 2019 08:30:37 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCHv3 5/5] um: Error handling fixes in vector drivers
Date: Mon, 22 Jul 2019 08:30:25 +0100
Message-Id: <20190722073025.20844-5-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190722073025.20844-1-anton.ivanov@cambridgegreys.com>
References: <20190722073025.20844-1-anton.ivanov@cambridgegreys.com>
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_003040_365151_148DFE09 
X-CRM114-Status: GOOD (  17.09  )
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

With the addition of bess support which uses connection
oriented SEQPACKET sockets the vector routines can now
encounter a "remote end closed the connection" scenario.

This adds handling code to detect it in the TX path and
the legacy RX path. There is no way to detect it in the
vector RX path because that can legitimately return 0
even if the remote end has not closed the connection. As
a result the detection is delayed until the first TX
event after the close.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_kern.c | 37 ++++++++++++++++++++++++++++++++-----
 arch/um/drivers/vector_kern.h |  1 +
 arch/um/drivers/vector_user.c |  4 ++--
 3 files changed, 35 insertions(+), 7 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index e79cd1dcb018..165ee1636598 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -76,6 +76,7 @@ static void vector_eth_configure(int n, struct arglist *def);
 #define DEFAULT_VECTOR_SIZE 64
 #define TX_SMALL_PACKET 128
 #define MAX_IOV_SIZE (MAX_SKB_FRAGS + 1)
+#define MAX_ITERATIONS 64
 
 static const struct {
 	const char string[ETH_GSTRING_LEN];
@@ -418,6 +419,7 @@ static int vector_send(struct vector_queue *qi)
 					if (net_ratelimit())
 						netdev_err(vp->dev, "sendmmsg err=%i\n",
 							result);
+					vp->in_error = true;
 					result = send_len;
 				}
 				if (result > 0) {
@@ -845,6 +847,10 @@ static int vector_legacy_rx(struct vector_private *vp)
 	}
 
 	pkt_len = uml_vector_recvmsg(vp->fds->rx_fd, &hdr, 0);
+	if (pkt_len < 0) {
+		vp->in_error = true;
+		return pkt_len;
+	}
 
 	if (skb != NULL) {
 		if (pkt_len > vp->header_size) {
@@ -891,12 +897,16 @@ static int writev_tx(struct vector_private *vp, struct sk_buff *skb)
 
 	if (iov_count < 1)
 		goto drop;
+
 	pkt_len = uml_vector_writev(
 		vp->fds->tx_fd,
 		(struct iovec *) &iov,
 		iov_count
 	);
 
+	if (pkt_len < 0)
+		goto drop;
+
 	netif_trans_update(vp->dev);
 	netif_wake_queue(vp->dev);
 
@@ -911,6 +921,8 @@ static int writev_tx(struct vector_private *vp, struct sk_buff *skb)
 drop:
 	vp->dev->stats.tx_dropped++;
 	consume_skb(skb);
+	if (pkt_len < 0)
+		vp->in_error = true;
 	return pkt_len;
 }
 
@@ -939,6 +951,9 @@ static int vector_mmsg_rx(struct vector_private *vp)
 	packet_count = uml_vector_recvmmsg(
 		vp->fds->rx_fd, qi->mmsg_vector, qi->max_depth, 0);
 
+	if (packet_count < 0)
+		vp->in_error = true;
+
 	if (packet_count <= 0)
 		return packet_count;
 
@@ -1008,15 +1023,18 @@ static int vector_mmsg_rx(struct vector_private *vp)
 static void vector_rx(struct vector_private *vp)
 {
 	int err;
+	int iter = 0;
 
 	if ((vp->options & VECTOR_RX) > 0)
-		while ((err = vector_mmsg_rx(vp)) > 0)
-			;
+		while (((err = vector_mmsg_rx(vp)) > 0) && (iter < MAX_ITERATIONS))
+			iter++;
 	else
-		while ((err = vector_legacy_rx(vp)) > 0)
-			;
+		while (((err = vector_legacy_rx(vp)) > 0) && (iter < MAX_ITERATIONS))
+			iter++;
 	if ((err != 0) && net_ratelimit())
 		netdev_err(vp->dev, "vector_rx: error(%d)\n", err);
+	if (iter == MAX_ITERATIONS)
+		netdev_err(vp->dev, "vector_rx: device stuck, remote end may have closed the connection\n");
 }
 
 static int vector_net_start_xmit(struct sk_buff *skb, struct net_device *dev)
@@ -1024,6 +1042,13 @@ static int vector_net_start_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct vector_private *vp = netdev_priv(dev);
 	int queue_depth = 0;
 
+	if (vp->in_error) {
+		deactivate_fd(vp->fds->rx_fd, vp->rx_irq);
+		if ((vp->fds->rx_fd != vp->fds->tx_fd) && (vp->tx_irq != 0))
+			deactivate_fd(vp->fds->tx_fd, vp->tx_irq);
+		return NETDEV_TX_BUSY;
+	}
+
 	if ((vp->options & VECTOR_TX) == 0) {
 		writev_tx(vp, skb);
 		return NETDEV_TX_OK;
@@ -1134,6 +1159,7 @@ static int vector_net_close(struct net_device *dev)
 	vp->fds = NULL;
 	spin_lock_irqsave(&vp->lock, flags);
 	vp->opened = false;
+	vp->in_error = false;
 	spin_unlock_irqrestore(&vp->lock, flags);
 	return 0;
 }
@@ -1501,7 +1527,8 @@ static void vector_eth_configure(
 		.transport_data		= NULL,
 		.in_write_poll		= false,
 		.coalesce		= 2,
-		.req_size		= get_req_size(def)
+		.req_size		= get_req_size(def),
+		.in_error		= false
 		});
 
 	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
diff --git a/arch/um/drivers/vector_kern.h b/arch/um/drivers/vector_kern.h
index 0b0a767b9076..684d2e60ad86 100644
--- a/arch/um/drivers/vector_kern.h
+++ b/arch/um/drivers/vector_kern.h
@@ -116,6 +116,7 @@ struct vector_private {
 	bool rexmit_scheduled;
 	bool opened;
 	bool in_write_poll;
+	bool in_error;
 
 	/* ethtool stats */
 
diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index 6dd9b4379507..4e31121246b1 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -619,7 +619,7 @@ int uml_vector_writev(int fd, void *hdr, int iovcount)
 	int n;
 
 	CATCH_EINTR(n = writev(fd, (struct iovec *) hdr,  iovcount));
-	if ((n < 0) && (errno == EAGAIN))
+	if ((n < 0) && ((errno == EAGAIN) || (errno == ENOBUFS)))
 		return 0;
 	if (n >= 0)
 		return n;
@@ -636,7 +636,7 @@ int uml_vector_sendmmsg(
 	int n;
 
 	CATCH_EINTR(n = sendmmsg(fd, (struct mmsghdr *) msgvec, vlen, flags));
-	if ((n < 0) && (errno == EAGAIN))
+	if ((n < 0) && ((errno == EAGAIN) || (errno == ENOBUFS)))
 		return 0;
 	if (n >= 0)
 		return n;
-- 
2.11.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
