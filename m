Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCBB116B61
	for <lists+linux-um@lfdr.de>; Mon,  9 Dec 2019 11:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y/3GHZAtjgWV/TCAmfEE3vsVPBs+QgmE9sqm6Je1dCg=; b=KvKQlhN8QZVmYp
	OvkwI/ggbNAwVOEe/z4Dgn7S+nPJvk+r1HhwZ5jYNaaMjoUaSGmTlhyri+/82jTgqVQhcPQovIuJV
	L6ipj8CCqTFmqRRk6FciOo2UvOGP1E3S7xMiC2C9c7vUOR073/zDFH5LW+olDZW8IQty6BIvBsICT
	5JyqBv9EofzFJZ5Dt0NlDk0OjmQ7ELZYTlnHO0nSlAc+QJVFCSThFK8AowwZQwuhZVuJBgSxHtb5a
	2AbkRL1U0BcmAD/F6aZJQztdvKEuuJbmULxhzgjTdJF9TgyP1s7ACBKSsgOuV/AHRJzLYJlDBkAM9
	b6FV8kr0+ytA9fntXVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGai-0001jR-Ek; Mon, 09 Dec 2019 10:48:36 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGaf-0001iy-Kz
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 10:48:35 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieGab-0006Zn-PX; Mon, 09 Dec 2019 10:48:29 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieGaY-0004SA-Th; Mon, 09 Dec 2019 10:48:28 +0000
From: anton.ivanov@cambridgegreys.com
To: netdev@vger.kernel.org
Subject: [PATCH] virtio: Work around frames incorrectly marked as gso
Date: Mon,  9 Dec 2019 10:48:24 +0000
Message-Id: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_024833_685547_50322B8B 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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
Cc: jasowang@redhat.com, virtualization@lists.linux-foundation.org,
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 mst@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Some of the frames marked as GSO which arrive at
virtio_net_hdr_from_skb() have no GSO_TYPE, no
fragments (data_len = 0) and length significantly shorter
than the MTU (752 in my experiments).

This is observed on raw sockets reading off vEth interfaces
in all 4.x and 5.x kernels I tested.

These frames are reported as invalid while they are in fact
gso-less frames.

This patch marks the vnet header as no-GSO for them instead
of reporting it as invalid.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 include/linux/virtio_net.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/linux/virtio_net.h b/include/linux/virtio_net.h
index 0d1fe9297ac6..d90d5cff1b9a 100644
--- a/include/linux/virtio_net.h
+++ b/include/linux/virtio_net.h
@@ -112,8 +112,12 @@ static inline int virtio_net_hdr_from_skb(const struct sk_buff *skb,
 			hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV4;
 		else if (sinfo->gso_type & SKB_GSO_TCPV6)
 			hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV6;
-		else
-			return -EINVAL;
+		else {
+			if (skb->data_len == 0)
+				hdr->gso_type = VIRTIO_NET_HDR_GSO_NONE;
+			else
+				return -EINVAL;
+		}
 		if (sinfo->gso_type & SKB_GSO_TCP_ECN)
 			hdr->gso_type |= VIRTIO_NET_HDR_GSO_ECN;
 	} else
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
