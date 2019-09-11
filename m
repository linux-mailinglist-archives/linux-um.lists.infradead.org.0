Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42008AFD1C
	for <lists+linux-um@lfdr.de>; Wed, 11 Sep 2019 14:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pi9Bh6aoljwMdlGM6cA9mCOw9fXbcJ+hrdEAaEZ3wUY=; b=ScZ7H9Kl0Tl0M8
	rxXX++Cszpf1FJMo6/h13fL2sbETmMbPcVpqL+4rCL2LuyjeKwG1D6iMPQ+N2YRuU+nklVfwd4sSL
	/IBpOXap0080B5UwggTQdcGxXobFehZSzwxtpQ+o2Q5MtiBQBjjpRVKPRvqANdmCfM1sBD9ooXKsx
	M158IBRyCDLJOzj/GoAPYAjnhPYhJJ1dPnmaCd75m6agNhHENZX/Ky178QHf0Sc6gFRUkHaD/IXT6
	PtaMb5aNwuxwXfIdGhs1rTwUfupbOsfuEOrF4cc0TUoQWYb1XxMsyrR3gXdLPR7f3Xql4mE0DGvF2
	TfxzvFaligmMQKR//WfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i825s-0003KU-F7; Wed, 11 Sep 2019 12:51:32 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i825n-0003Hi-V4
 for linux-um@lists.infradead.org; Wed, 11 Sep 2019 12:51:29 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i825m-0007ON-47; Wed, 11 Sep 2019 14:51:26 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v5 2/5] um: use real DMA barriers
Date: Wed, 11 Sep 2019 14:51:19 +0200
Message-Id: <1568206252-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190911125122.20772-1-johannes@sipsolutions.net>
References: <20190911125122.20772-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_055128_101721_46F6DEE3 
X-CRM114-Status: UNSURE (   6.52  )
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
