Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B9329F86
	for <lists+linux-um@lfdr.de>; Fri, 24 May 2019 22:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1jvyCYxqMZZRUfL2mMFhm8HEzb/tvIvV9kZUYV7VWic=; b=QJO
	2ylI9dUjn9x3XZ9SvJOYWp48SWUaz1qDVGsaVRWX9tR8jcBs5QCrcb+yhzyOKoiJgg2RI0uS8SWL1
	RcIoBx6ewGiLgCAgTvanMZjsIiMyt4IfE/+gZTmvlTsSOIhm3Qx12SlzSR9WktIwRgk17Z6a3Gza8
	ni1sKg1DdApdc4Yb0lXnoTtd2Lq/dDVERnp4Q6fX3TD7NVpHer1ly3YIkN2c3pCVDIANI7Xh8X1Sg
	/PCl5QLIrUHifppzueR03C7M1F1FIazLzaIlf+EMXXNvxyPYt6JHeutEzL2z2Y2djtL87ij/9tw4R
	4iuzZd0StcBXhbel0nVRJvK535zIdnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGP0-0006b2-1r; Fri, 24 May 2019 20:02:54 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGOx-0006ah-PI
 for linux-um@lists.infradead.org; Fri, 24 May 2019 20:02:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hUGOs-0000Ha-Mc; Fri, 24 May 2019 22:02:47 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: don't garbage collect in deactivate_all_fds()
Date: Fri, 24 May 2019 22:02:44 +0200
Message-Id: <20190524200244.32546-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_130251_822380_FEBE09D2 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: j@w1.fi, Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

My previous commit didn't actually address the whole issue with
lockdep shutdown, I had another local modification that disabled
lockdep but that wasn't sufficient alone, so had to do the other
change.

Another issue remained though - during kfree() we acquire locks
and lockdep tries to annotate those with exactly the same issue
in the other patch - we no longer have "current".

So, just remove the garbage collection. There's no value in it
anyway since we're going to shut down anyway and marking a slab
object as free is now not very useful anymore.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
index d532377f5808..efde1f16c603 100644
--- a/arch/um/kernel/irq.c
+++ b/arch/um/kernel/irq.c
@@ -401,7 +401,7 @@ int deactivate_all_fds(void)
 		);
 		to_free = to_free->next;
 	}
-	garbage_collect_irq_entries();
+	/* don't garbage collect - we can no longer call kfree() here */
 	os_close_epoll_fd();
 	return 0;
 }
-- 
2.17.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
