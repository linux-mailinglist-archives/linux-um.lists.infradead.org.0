Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA6311E016
	for <lists+linux-um@lfdr.de>; Fri, 13 Dec 2019 10:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddwFkeEc2lDdc6nu2BZfUHlFqSt85iLdqPdqAF0t8YY=; b=B97FGmbKbmsbUi
	gv8TsdK1QX7MlakB8CoimoABlSdl+SS82S8ulJRAZFQEkDke9VmrCIOfksm+o+wAGK0QbUl9XqRHB
	p+zY/slLjOn8fWjOgrgb3L4hPE/pnqS28rhPTNxSFeXQJUYkwLOQsUPZaQQJG33U00zdEBvLlfdNI
	SRcXRuVGBv291TsnucJ3AwTTjEEIDvJRiwm6KSHV3kuf11kqPeabLEz2/J+Fth3aTJOEBYrbGCxbv
	5NicMbbabJ95l4qgYvJLOvJyOdJ4dwMCAMOd4GjOrTD5kO59NHdjHFurFhDcJmQ7hJAPNLQD9bWXD
	ywZoOPeGpByMmr2qevqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgpW-0004r7-JW; Fri, 13 Dec 2019 09:01:46 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgpT-0004qI-5w
 for linux-um@lists.infradead.org; Fri, 13 Dec 2019 09:01:44 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ifgpN-009XL4-6A; Fri, 13 Dec 2019 10:01:37 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: fix time-travel=inf-cpu with xor/raid6
Date: Fri, 13 Dec 2019 10:01:28 +0100
Message-Id: <20191213100128.04075cf409e9.Id772dc879535c85524c32b81fd392bbbfd515741@changeid>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_010143_219974_4B096D35 
X-CRM114-Status: UNSURE (   9.55  )
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

Today, I erroneously built a time-travel configuration with btrfs
enabled, and noticed it cannot boot in time-travel=inf-cpu mode,
both xor and raid6 speed measurement gets stuck.

For xor, work around it by picking the first algorithm if inf-cpu
mode is enabled.

For raid6, I didn't find such a workaround, so disallow enabling
time-travel mode if RAID6_PQ_BENCHMARK is enabled.

With this, and RAID6_PQ_BENCHMARK disabled, I can boot a kernel
that has btrfs enabled in time-travel=inf-cpu mode.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/Kconfig            | 2 ++
 arch/um/include/asm/Kbuild | 1 -
 arch/um/include/asm/xor.h  | 7 +++++++
 3 files changed, 9 insertions(+), 1 deletion(-)
 create mode 100644 arch/um/include/asm/xor.h

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 2a6d04fcb3e9..a8bf60b5c208 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -188,6 +188,8 @@ config SECCOMP
 config UML_TIME_TRAVEL_SUPPORT
 	bool
 	prompt "Support time-travel mode (e.g. for test execution)"
+	# inf-cpu mode is incompatible with the benchmarking
+	depends on !RAID6_PQ_BENCHMARK
 	help
 	  Enable this option to support time travel inside the UML instance.
 
diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index 398006d27e40..db7d9d4e30d8 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -25,5 +25,4 @@ generic-y += switch_to.h
 generic-y += topology.h
 generic-y += trace_clock.h
 generic-y += word-at-a-time.h
-generic-y += xor.h
 generic-y += kprobes.h
diff --git a/arch/um/include/asm/xor.h b/arch/um/include/asm/xor.h
new file mode 100644
index 000000000000..7a3208c47cfc
--- /dev/null
+++ b/arch/um/include/asm/xor.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/xor.h>
+#include <shared/timer-internal.h>
+
+/* pick an arbitrary one - measuring isn't possible with inf-cpu */
+#define XOR_SELECT_TEMPLATE(x)	\
+	(time_travel_mode == TT_MODE_INFCPU ? &xor_block_8regs : NULL)
-- 
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
