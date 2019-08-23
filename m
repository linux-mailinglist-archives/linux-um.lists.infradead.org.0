Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AD69B04B
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 15:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AQ/nmeFOCdOvMMhYHAEHUlszu6fQ0z1Q32aAP/bbmvQ=; b=oLdUTl1f/6oAOv
	f1dG4CDdCJz4dL8uYL6m81BgCUpX1f2t9UO9zwnByuIVb3ZoUTuUGBBElFce8yzCmUhPv4sc7lcdJ
	GGhml9QSTmbjFUhlYtOMWf+VJYYwJUNePSGM6aL5jDIYjaTbGS1V4VnKUSdhq4A3jDfPxfGhOlwTs
	sZCtg21QP75Ozs/5sLNH2D0AAaX9FdnGpaRV+Vtf1qZX2l2aUh8eksgK3Y9DmSQIkXbQPOFPLgcyL
	kH9MZGLdpryJ7MJ2gZPHm9Gy1VG1o3YhqH7euLDUZHUpz3h5hkcB8VyX4+3f1DKAtw17kalGWFap6
	ybU/4/Suh9ThwUqQ6zkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19GP-0004q7-As; Fri, 23 Aug 2019 13:05:57 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19GM-0004pl-G9
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 13:05:56 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i19GJ-0004Wn-JZ; Fri, 23 Aug 2019 15:05:51 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: fix VDSO compiler warning
Date: Fri, 23 Aug 2019 15:05:46 +0200
Message-Id: <20190823130546.15787-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060554_539516_E25A58AA 
X-CRM114-Status: UNSURE (   7.61  )
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

Fix a warning about the function type being wrong.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/x86/um/vdso/um_vdso.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/um/vdso/um_vdso.c b/arch/x86/um/vdso/um_vdso.c
index ac9c02b9d92c..891868756a51 100644
--- a/arch/x86/um/vdso/um_vdso.c
+++ b/arch/x86/um/vdso/um_vdso.c
@@ -47,7 +47,7 @@ time_t __vdso_time(time_t *t)
 
 	return secs;
 }
-int time(time_t *t) __attribute__((weak, alias("__vdso_time")));
+time_t time(time_t *t) __attribute__((weak, alias("__vdso_time")));
 
 long
 __vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
