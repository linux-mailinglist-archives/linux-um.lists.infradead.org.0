Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBC0AC246
	for <lists+linux-um@lfdr.de>; Sat,  7 Sep 2019 00:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bnJ8yx2t+WSGF86fNB2HggBvt7I7prsfdAwj1xjVVwY=; b=rvQKubyKIFtzGs
	Y/q2iSzt+D6sDxPfcEICykn3oIpUei+cu+5zRzzBsF+PnyG7eJLeZqi0G0EPR0jFJb8NJMLnSnVTe
	yTaoquTrRWzGES5ZFWMAybNoZMiqxMjVjRuOKOXpA69a1lZI18ooGKMudGKLUcApc7KR/5722MU7x
	X4BG7kdpBycwxzVfOrO7RGBMqpEteUVR0ySJNI5Ou1av+YPbaKwG4nKvg0iaSdab+AG0k7els8ZQx
	FLUa2DQDrqgGqZw3RXab1HaPBTstiiQoyZl2gJ9yGqTz/wUtm//9byUtYF2mSQavUhYL3c+AE8CCj
	PFweCWgtT7EglBHv6RRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MJX-00020K-3J; Fri, 06 Sep 2019 22:02:43 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MJV-0001zt-7k
 for linux-um@lists.infradead.org; Fri, 06 Sep 2019 22:02:42 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i6MJR-0007Yo-Vl; Sat, 07 Sep 2019 00:02:38 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC] um: have real DMA barriers with virtio
Date: Sat,  7 Sep 2019 00:02:33 +0200
Message-Id: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_150241_272314_CC9A952D 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

When we have virtio enabled, we must have real barriers since we
may be running on an SMP machine (quite likely are, in fact), so
the other process can be on another CPU.

Make the override to compiler barriers depend on !virtio.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/x86/um/asm/barrier.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/x86/um/asm/barrier.h b/arch/x86/um/asm/barrier.h
index eb0654f39fd2..fd90b3c7cba8 100644
--- a/arch/x86/um/asm/barrier.h
+++ b/arch/x86/um/asm/barrier.h
@@ -23,8 +23,16 @@
 
 #endif /* CONFIG_X86_32 */
 
+#if !IS_ENABLED(CONFIG_VIRTIO_UML)
+/*
+ * We can afford to just have compiler barriers here - unless
+ * virtio is enabled, because then we communicate with another
+ * process and (despite being UP internally) cannot assume we
+ * run on a UP system.
+ */
 #define dma_rmb()	barrier()
 #define dma_wmb()	barrier()
+#endif
 
 #include <asm-generic/barrier.h>
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
