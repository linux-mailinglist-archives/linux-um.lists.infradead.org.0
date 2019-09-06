Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D5BAC241
	for <lists+linux-um@lfdr.de>; Fri,  6 Sep 2019 23:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4c6vlmvJ4z9AgYFLbLEVhccHm5PeRSfBF6TXPnAGZA8=; b=ofbCjSz6YqFzef
	/XB6nJXxYF7RA1p5wTLudVuF2WkxOy1HUpJLwtokgScT9TVbbcEhxhSz4Bg4w+BZIwrhzMvcDk58l
	2qUbfAHxpgI+ijXKdsInnnJx/ysxWsODXwqd8JXXP8bNCrn6hh8iu55AfTCWTK47kWkt/nrx8aaiU
	TITELIDvyOO9UYaqW6ScMwRy/VHgjNwvgZA/5CN0nHu+au8upmu7xJwhPtc1oqx4DEYqn6uX7Nk/G
	66PvWvJp+OuD3L0r/5QCgcKkxaVg7tJelfveCM6RV9ip3D/E9ev/U1Day1mSGXWfNmH5vlrdPPpTI
	w4T5Wsc1eJOXheQOURhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MGB-0000hA-1h; Fri, 06 Sep 2019 21:59:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MG8-0000gr-JJ
 for linux-um@lists.infradead.org; Fri, 06 Sep 2019 21:59:13 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i6MG3-0007N3-Bv; Fri, 06 Sep 2019 23:59:07 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC] um: don't use generic barrier.h
Date: Fri,  6 Sep 2019 23:58:50 +0200
Message-Id: <1567807130-I95235a4f9e6929241afd5150f1ceceb45f5e28af@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_145912_646676_594FFA8F 
X-CRM114-Status: UNSURE (   7.77  )
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

UML has its own platform-specific barrier.h under arch/x86/um/,
which should get used. Fix the build system to use it, and then
fix the barrier.h to actually compile.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
I'm debugging some odd stuff with virtio, and the next patch is to
remove dma_rmb/dma_wmb from this, or at least make them conditional
on virtio support, since if we have virtio support we really need
memory barriers there, not just compiler barriers.

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
