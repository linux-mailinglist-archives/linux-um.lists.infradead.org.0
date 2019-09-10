Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F46AEC26
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pi9Bh6aoljwMdlGM6cA9mCOw9fXbcJ+hrdEAaEZ3wUY=; b=dw4K4IcMYeDznz
	Zbx//vrSF59vDKs3wiCjezeEb0f8zQTLdeA7xskt4tqVNAQ3kA262JtlcrzesLtg+ie2POeOALSz6
	inMOgaoFLQkP2r+S2eWb7dm4gIHJ2jkvO4xXW31MXEcliE2et5Loh6Vp4g1FBcXcVuVs/eLCRmXQE
	0NVuK/rlrRWRiocrJEB993MYRa3hDhdWSuyGoe9os1vI4dPfqH98Jwi0yfWlAtrhQcduEA8df6C5/
	L595XtF2atFvbv4KQhAA8uEgL6MZ8FAQ7oXszfHeTF3s6No9qouHJ56+w3+gvPKJOhKtxxaiTKryv
	oqPOAYbk980b3xf8ZmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gWg-0007Rn-7G; Tue, 10 Sep 2019 13:49:46 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gWY-0007Ja-7q
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:49:39 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7gWW-0006dl-KJ; Tue, 10 Sep 2019 15:49:36 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v3 2/5] um: use real DMA barriers
Date: Tue, 10 Sep 2019 15:49:27 +0200
Message-Id: <1568123305-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910134930.22688-1-johannes@sipsolutions.net>
References: <20190910134930.22688-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064938_431134_AD7922BC 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

When we have virtio enabled, we must have real barriers since we
may be running on an SMP machine (quite likely are, in fact), so
the other process can be on another CPU.

Since in any other case we don't really use DMA barriers, remove
their override completely so real barriers will get used. In the
future we might need them for other cases as well.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/x86/um/asm/barrier.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/x86/um/asm/barrier.h b/arch/x86/um/asm/barrier.h
index eb0654f39fd2..165be7f9a964 100644
--- a/arch/x86/um/asm/barrier.h
+++ b/arch/x86/um/asm/barrier.h
@@ -23,9 +23,6 @@
 
 #endif /* CONFIG_X86_32 */
 
-#define dma_rmb()	barrier()
-#define dma_wmb()	barrier()
-
 #include <asm-generic/barrier.h>
 
 #endif
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
