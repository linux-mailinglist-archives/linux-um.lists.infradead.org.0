Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0659B050
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 15:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6FgsL12S9BAO4SC76AdUbGMxJWXGZdCJOlI629VqrtQ=; b=uxc+8eSCgBWqcy
	25e/rtrYPpXDmRMl+oedpkmfcAWOkCZqaI21ZgkiMsBVozC4a7MQB6hC9L7F951LB8P9v/LFQ0RuJ
	BwHZiPpURCIB5d3jJhaD+PDKSw8aJqWsvsr01QVLXC+QpiZO89HagQSbfT5f770q2ntjNYEKQfVWd
	SKGHtBIyiMCOYNqRWWgCdITA/l6zXmLpeL7Hy1v7nMjZcWNnmNm/wkyH8ka5p/XukyKg5i0rAQscL
	rj/euqnsYiDp1vWBflMDoNk0W7HVLj5/KnIhheqLzj5vH3Z/jzx9BWxuzsfk5g+VGcNNlwtx0Xv2Y
	EjGEvwmaM4jSRVNFFm5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19Gg-0004ue-LA; Fri, 23 Aug 2019 13:06:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19Gd-0004uH-KJ
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 13:06:12 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i19Gc-0004XD-Aq; Fri, 23 Aug 2019 15:06:10 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: place (soft)irq text with macros
Date: Fri, 23 Aug 2019 15:06:06 +0200
Message-Id: <20190823130606.15951-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060611_662309_8D1F52FE 
X-CRM114-Status: UNSURE (   4.78  )
X-CRM114-Notice: Please train this message.
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Otherwise it gets placed without the start/end markers.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/dyn.lds.S | 2 ++
 arch/um/kernel/uml.lds.S | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index 5568cf882371..f5001481010c 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -70,6 +70,8 @@ SECTIONS
     SCHED_TEXT
     CPUIDLE_TEXT
     LOCK_TEXT
+    IRQENTRY_TEXT
+    SOFTIRQENTRY_TEXT
     *(.fixup)
     *(.stub .text.* .gnu.linkonce.t.*)
     /* .gnu.warning sections are handled specially by elf32.em.  */
diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
index 36b07ec09742..9f21443be2c9 100644
--- a/arch/um/kernel/uml.lds.S
+++ b/arch/um/kernel/uml.lds.S
@@ -31,6 +31,8 @@ SECTIONS
     SCHED_TEXT
     CPUIDLE_TEXT
     LOCK_TEXT
+    IRQENTRY_TEXT
+    SOFTIRQENTRY_TEXT
     *(.fixup)
     /* .gnu.warning sections are handled specially by elf32.em.  */
     *(.gnu.warning)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
