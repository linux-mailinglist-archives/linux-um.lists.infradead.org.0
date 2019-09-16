Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0320AB3AF5
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 15:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0bc91JXN9ybKOPccEl26GJPoAM9f18CgLS94K/qqQ+U=; b=Ob0wgmNhDV6KnG
	UqaR9bP2AHUs4oWLqIkY5psRuAPYqjRZT0+EeKNdzTzgp07WGLmm7vx6f2EbVLIVcu5i+zbuocgMu
	/bWzrkn49n504Mch5JsOKOsigtYzNlWdf5S2Sex6y1SKFzxU/1pMg0PBhdWb4Cp8D6eJ9ghg797s2
	p0caABxzvph5sLbc9BDiFgZ5D6bIg/ZepuzpdvHc+A1SmO7ZSmIwKyW9bKdPovo3ZAk+i09JBlayA
	08O2hHVbrll9H8Xy1UctEgQuYNq/ko7yln7RCdfZtIowxC5qdbno5iRy9d3QIUBvq8i4J+TTGppTW
	jo8DT6HLE33merSuRDPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qi6-0002tJ-Aa; Mon, 16 Sep 2019 13:06:30 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qhv-0002nG-IQ
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 13:06:20 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i9qhu-0002pm-6q; Mon, 16 Sep 2019 15:06:18 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: export uml_reserved
Date: Mon, 16 Sep 2019 15:06:14 +0200
Message-Id: <1568639174-I89491153563c5836b17475c319aeeb3582a7b5e3@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060619_698306_00463054 
X-CRM114-Status: UNSURE (   7.28  )
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

We need this symbol now, in case the virtio_uml driver
is a module, as it needs to know how much memory was
reserved to not advertise that to the device.

Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/um_arch.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index 0f40eccbd759..474790b146c3 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -102,6 +102,7 @@ unsigned long uml_physmem;
 EXPORT_SYMBOL(uml_physmem);
 
 unsigned long uml_reserved; /* Also modified in mem_init */
+EXPORT_SYMBOL(uml_reserved);
 unsigned long start_vm;
 unsigned long end_vm;
 
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
