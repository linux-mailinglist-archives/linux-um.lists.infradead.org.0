Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BE8AEC25
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNbuJWxfjshuKkbFcXiqNr87GUwCvvwRu+QArsWLj7E=; b=ncUkIVdOzThndd
	neylVIrw1+AGhEyy1FXFVEfcGtK1A8YeQlDLkNHshh+MGErn0oOcN8qcBVcR4qx+PkmiqDZBEhovJ
	naGAvrU23NXx+/9wnUQU6K27p8xrnp/Uqu87ujw2sc4nRP3sYw2fRBcyAZad/d104TcSe07slyRuV
	SmrwSIjAy7kH62LDP09Ndn3UDv20woubmWz2xDfu/iJnKj014t+GbjekLdgbpLMcFbBgz4thQ31ex
	VU8wp5oSulcm1b0yLqP12hp7yCS4vjJ5ZAY3pxq53e4ubmB40EFI/xACXOIDGvxkqCkKcSM9PcWHG
	ONhOFuBcRrcetS5/4Cdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gWf-0007QX-EO; Tue, 10 Sep 2019 13:49:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gWX-0007JD-RG
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:49:39 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i7gWW-0006dl-Bz; Tue, 10 Sep 2019 15:49:36 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v3 1/5] um: don't use generic barrier.h
Date: Tue, 10 Sep 2019 15:49:26 +0200
Message-Id: <1568123305-I95235a4f9e6929241afd5150f1ceceb45f5e28af@changeid>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910134930.22688-1-johannes@sipsolutions.net>
References: <20190910134930.22688-1-johannes@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064938_018740_11A2CD83 
X-CRM114-Status: UNSURE (   8.43  )
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

UML has its own platform-specific barrier.h under arch/x86/um/,
which should get used. Fix the build system to use it, and then
fix the barrier.h to actually compile.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
I'm debugging some odd stuff with virtio, and the next patch is to
remove dma_rmb/dma_wmb from this, or at least make them conditional
on virtio support, since if we have virtio support we really need
memory barriers there, not just compiler barriers.
.
At least in theory. My problem isn't actually fixed by this.
---
 arch/um/include/asm/Kbuild | 1 -
 arch/x86/um/asm/barrier.h  | 9 +--------
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index b352ed09260e..398006d27e40 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-generic-y += barrier.h
 generic-y += bpf_perf_event.h
 generic-y += bug.h
 generic-y += compat.h
diff --git a/arch/x86/um/asm/barrier.h b/arch/x86/um/asm/barrier.h
index f31e5d903161..eb0654f39fd2 100644
--- a/arch/x86/um/asm/barrier.h
+++ b/arch/x86/um/asm/barrier.h
@@ -2,14 +2,7 @@
 #ifndef _ASM_UM_BARRIER_H_
 #define _ASM_UM_BARRIER_H_
 
-#include <asm/asm.h>
-#include <asm/segment.h>
-#include <asm/cpufeatures.h>
-#include <asm/cmpxchg.h>
-#include <asm/nops.h>
-
-#include <linux/kernel.h>
-#include <linux/irqflags.h>
+#include <asm/alternative.h>
 
 /*
  * Force strict CPU ordering.
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
