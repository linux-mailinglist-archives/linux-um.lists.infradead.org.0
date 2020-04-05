Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA5219EDA2
	for <lists+linux-um@lfdr.de>; Sun,  5 Apr 2020 21:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CQ1ryUDo5+ctFbKFCFSoSJcaEKk1Pmvn8QTZD7agQ1o=; b=FoRj0cYQ9r7eLD
	BdvUFPGIh0DpjZHzcbEmI1PpFEfhwueWTP1lleSwTwnPRcGvsoCdRLgKSTq0UMZd9XWnclIaKB1q8
	dVDTPJnV8lUuZdIwaVFTlykESa1rGF2sqVGkGMkHu5Q1zlNItDMRUn9c23I3tBMKWmO01ysVHK1iz
	owuPcM3RoKAOV9cYkQqJc11xKuws5RrhEGdXeZ0gIlDQrOpqA5TteRgS+toNFItie0MwJ0EYKXftp
	mLAP+izFUHhP4m+9IPpJOImX6NrBueoJ2JIOQlKweJFhjUCn3Xnb1HTymGhoXWI0DYHK6dl7gBhBy
	GfW98WdkHZ/wt2PRc/FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLB25-0000yA-T7; Sun, 05 Apr 2020 19:34:13 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLB22-0000wr-8f
 for linux-um@lists.infradead.org; Sun, 05 Apr 2020 19:34:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jLB1w-007Y3L-VV; Sun, 05 Apr 2020 21:34:05 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: fix xor.h include
Date: Sun,  5 Apr 2020 21:33:57 +0200
Message-Id: <20200405213357.b6ce1024b276.I7c370e20580d3122c58df5727ee2d6fb53545576@changeid>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_123410_302354_709EAF33 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Thomas Meyer <thomas@m3y3r.de>, Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Two independent changes here ended up going into the tree
one after another, without a necessary rename, fix that.

Reported-by: Thomas Meyer <thomas@m3y3r.de>
Fixes: f185063bff91 ("um: Move timer-internal.h to non-shared")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/asm/xor.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/include/asm/xor.h b/arch/um/include/asm/xor.h
index 7a3208c47cfc..36b33d62a35d 100644
--- a/arch/um/include/asm/xor.h
+++ b/arch/um/include/asm/xor.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <asm-generic/xor.h>
-#include <shared/timer-internal.h>
+#include <linux/time-internal.h>
 
 /* pick an arbitrary one - measuring isn't possible with inf-cpu */
 #define XOR_SELECT_TEMPLATE(x)	\
-- 
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
