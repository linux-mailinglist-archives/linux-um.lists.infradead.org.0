Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2814AAEC4D
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pi9Bh6aoljwMdlGM6cA9mCOw9fXbcJ+hrdEAaEZ3wUY=; b=j43To/EAGQ3Op7
	A+f4elfJX+WFuwoZB4CkIShyRfu8yQv9f9GYfs4+uguj38g6r4nUiaM5521D5CcVrJckN+QwYx7gO
	R3lRanlBk4cE/35/jKwnVRtYX460MhlhGL0hCLhh3GvvqvM5XxsTbviOe/d8p93oOSU+3dQu/HE0B
	Cj5vlYkPv7gWmvbgBVAJQC7Gtbb8ors3ZtdBtCYWPL5DMHrSynofOobajilqYwtrjVPSMjYHTOZdy
	nbHQRF9kiU1j2huyTE+sgYePQZkhQnmyqMFjyW3h0JCTHlfc7z/tXsfOWhBkPIl3FGIAJ4r6TH+Cc
	qusAZgTAZmgWKZhqmFXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gYU-00013q-9a; Tue, 10 Sep 2019 13:51:38 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gYR-00011E-0N
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:51:36 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7gYP-0006jF-Gn; Tue, 10 Sep 2019 15:51:33 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v4 2/5] um: use real DMA barriers
Date: Tue, 10 Sep 2019 15:51:26 +0200
Message-Id: <1568123461-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910135129.23095-1-johannes@sipsolutions.net>
References: <20190910135129.23095-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_065135_045634_E33E7F9A 
X-CRM114-Status: UNSURE (   6.39  )
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
