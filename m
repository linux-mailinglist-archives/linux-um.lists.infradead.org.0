Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D47122856
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 11:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQbBG7O2x3dt/SofgfBcXkUNMMLFPYptlqXsj1PJLt4=; b=lMdcrPcUB/eAu2
	UtK31neskySJUd3oKAOzSXZlNaq7goLophKFLA4GGdujItmQbB/OLqXMgvZGXP5eU9UU2OcSV69Ga
	glyJ/GO1a1eeFWBajgGbttXpTIQ56W2TStNvRqtuEjmxRTRgqaJ5ryUBsXnne5pb2ryr0LBnRA8c/
	SbvdtB/9DJxHWxP9TqDPgrRaU03SBL8qS3d/+0nSBB4GXTzggOZQqTCZQBNuTJ3BflhL691NGTgQV
	Z/uoYMUkD5ioijxdo9p5jC5w2qqtcwBoMqw4FOcgMVNcQlcllRTqEMbT7paRyX92eRgOZTi5DfAS+
	fPKc2Kct3ukDLYJMHJ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9nF-0002Zm-FE; Tue, 17 Dec 2019 10:09:29 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9nB-0002Xb-1q
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 10:09:26 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ih9n9-0003ok-Ur; Tue, 17 Dec 2019 10:09:24 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ih9n7-0000uG-6y; Tue, 17 Dec 2019 10:09:22 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH v4 4/9] um: Enable GRO by default when using raw in pcap
 compat mode
Date: Tue, 17 Dec 2019 10:09:08 +0000
Message-Id: <20191217100913.3422-4-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191217100913.3422-1-anton.ivanov@cambridgegreys.com>
References: <20191217100913.3422-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020925_132566_8B1087AB 
X-CRM114-Status: UNSURE (   6.69  )
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
Cc: richard@nod.at, brendanhiggins@google.com,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

GRO is enabled nearly everywhere in Linux nowdays, not having
it on by default results in packet drops across the board.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/vector_kern.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 234081ad4f02..d52c24874f2a 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1717,9 +1717,9 @@ int vector_compat_eth_configure(char *str, int index)
 			       &options[0], &options[1], &mac, NULL);
 
 		if ((mac != NULL) && strlen(mac) > 0)
-			snprintf(tempargs, MAX_COMPAT_ARG, "transport=raw,ifname=%s,mac=%s", ifname, mac);
+			snprintf(tempargs, MAX_COMPAT_ARG, "transport=raw,gro=1,ifname=%s,mac=%s", ifname, mac);
 		else
-			snprintf(tempargs, MAX_COMPAT_ARG, "transport=raw,ifname=%s", ifname);
+			snprintf(tempargs, MAX_COMPAT_ARG, "transport=raw,gro=1,ifname=%s", ifname);
 
 		strcpy(newargs, tempargs);
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
