Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C954F16A744
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 14:26:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WsTqLT916YB7YtFqsNEc3u1ZPrmYqWeXNNeW0V0QZGY=; b=kuPISurKNDCeJj
	s9NeX26UlxYE7kyTziVY4XC3IDZCE+EW1LrGtezutffIOGiEDhj8LSrVPEtfI8w1YjJmrWLIUK1h3
	5YUOCM6cmgrhn14LCJO2lEhuRsezOdLExSKtLxrf5c7syBsK4bOokq3xHAsu3koOpSclvoRd644C8
	g2iSNIEML7D2YlvmqKyoHCj5bOyTz/XvOh2T7rw08Z8al90FiNXZZjqIvmv6TJweKaPk8W1oljiJi
	WqIIx7Jv6m2v/OGfQKLeiQcX2ogwscLgJYyx8Gbj3F2xoTAuunMfCh67X8X7LTk6KPkCJSYUQgMba
	JrtEOgvTKMO2C6OkA8uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DkT-0004Ln-0n; Mon, 24 Feb 2020 13:26:13 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DkQ-0004LG-4D
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 13:26:11 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6DkI-0005jE-6t; Mon, 24 Feb 2020 13:26:06 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6Dk9-0000Yj-0t; Mon, 24 Feb 2020 13:25:57 +0000
From: anton.ivanov@cambridgegreys.com
To: netdev@vger.kernel.org, virtualization@lists.linux-foundation.org,
 linux-um@lists.infradead.org
Subject: [PATCH v3] virtio: Work around frames incorrectly marked as gso
Date: Mon, 24 Feb 2020 13:25:50 +0000
Message-Id: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_052610_169292_8CBD6EF4 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: jasowang@redhat.com, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 eric.dumazet@gmail.com, mst@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Some of the locally generated frames marked as GSO which
arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
fragments (data_len = 0) and length significantly shorter
than the MTU (752 in my experiments).

This is observed on raw sockets reading off vEth interfaces
in all 4.x and 5.x kernels. The frames are reported as
invalid, while they are in fact gso-less frames.

The easiest way to reproduce is to connect a User Mode
Linux instance to the host using the vector raw transport
and a vEth interface. Vector raw uses recvmmsg/sendmmsg
with virtio headers on af_packet sockets. When running iperf
between the UML and the host, UML regularly complains about
EINVAL return from recvmmsg.

This patch marks the vnet header as non-GSO instead of
reporting it as invalid.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 include/linux/virtio_net.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/virtio_net.h b/include/linux/virtio_net.h
index 0d1fe9297ac6..2c99c752cb20 100644
--- a/include/linux/virtio_net.h
+++ b/include/linux/virtio_net.h
@@ -98,10 +98,11 @@ static inline int virtio_net_hdr_from_skb(const struct sk_buff *skb,
 					  bool has_data_valid,
 					  int vlan_hlen)
 {
+	struct skb_shared_info *sinfo = skb_shinfo(skb);
+
 	memset(hdr, 0, sizeof(*hdr));   /* no info leak */
 
-	if (skb_is_gso(skb)) {
-		struct skb_shared_info *sinfo = skb_shinfo(skb);
+	if (skb_is_gso(skb) && sinfo->gso_type) {
 
 		/* This is a hint as to how much should be linear. */
 		hdr->hdr_len = __cpu_to_virtio16(little_endian,
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
