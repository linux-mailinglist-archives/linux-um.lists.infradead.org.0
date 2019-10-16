Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF700D936C
	for <lists+linux-um@lfdr.de>; Wed, 16 Oct 2019 16:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=im7/Hv5Gohk7PLvvyBcBXh2m8sWofS8dDV22nuqwJ7U=; b=g84IGnOtvlN8+/
	NvrNJrDqM3qDgDTHXP1A6/+ASJoaDOQW6sOLYUyKuvU3+dxEXQ97M39M4aWDPEdNTgA81o3YkORp1
	2EaSDvjISNYUN1oZhnMSolFlwzQ0QgpPM7wgGa3LaG7zYDjeHh2AXg303EdYm+iwqYycGqddeVaLP
	+3JcetMWiWtPA4hRAUpOL//EBI9sLqWijaAFwCN0xAZc9ijzEHlCW6FrpktQzOy08vAIhT3wSfTEq
	ksdKNEDDqFkNzxPjJWyAZcaY5kMLljWmGgU40sFjkZ6NJIPVbGQEDGoi0luc5EGCEOskYg5qt6LPp
	zUTmaVuPw+0fe0pk91Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKk3I-0007vz-7z; Wed, 16 Oct 2019 14:13:24 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKk3F-0007kL-12
 for linux-um@lists.infradead.org; Wed, 16 Oct 2019 14:13:22 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKk3B-0006xC-93; Wed, 16 Oct 2019 14:13:17 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKk38-00046G-F3; Wed, 16 Oct 2019 15:13:16 +0100
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: Add back support for extra userspace libraries
Date: Wed, 16 Oct 2019 15:13:12 +0100
Message-Id: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_071321_071263_76E3FEA8 
X-CRM114-Status: UNSURE (   8.75  )
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 938962@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

PCAP and VDE network transports require linking with userspace
libraries. The current build system has no means of passing these
as arguments.

This patch adds a script to expand the library list for linking
for these transports as well as any future driver that needs to
rely on additional libraries on the userspace side.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/scripts/extra-libs.sh | 10 ++++++++++
 scripts/link-vmlinux.sh       |  4 +++-
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 arch/um/scripts/extra-libs.sh

diff --git a/arch/um/scripts/extra-libs.sh b/arch/um/scripts/extra-libs.sh
new file mode 100644
index 000000000000..0592485e0675
--- /dev/null
+++ b/arch/um/scripts/extra-libs.sh
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+# This file should be included from link-vmlinux, not executed!!!
+
+if [ "${CONFIG_UML_NET_VDE}" = "y" ] ; then
+	UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lvde -lvdeplug"
+fi
+if [ "${CONFIG_UML_NET_PCAP}" = "y" ] ; then
+	UML_EXTRA_LIBS="$UML_EXTRA_LIBS -lpcap"
+fi
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 06495379fcd8..15f9e5096da0 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -90,11 +90,13 @@ vmlinux_link()
 			-Wl,--end-group				\
 			${@}"
 
+		. arch/um/scripts/extra-libs.sh
+
 		${CC} ${CFLAGS_vmlinux}				\
 			-o ${output}				\
 			-Wl,-T,${lds}				\
 			${objects}				\
-			-lutil -lrt -lpthread
+			-lutil -lrt -lpthread ${UML_EXTRA_LIBS}
 		rm -f linux
 	fi
 }
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
