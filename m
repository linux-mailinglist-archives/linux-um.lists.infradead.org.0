Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70DD1EE359
	for <lists+linux-um@lfdr.de>; Thu,  4 Jun 2020 13:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VhbLzxY8HjdkyirxqCYmovkKU8EGvOnIwJdi4Ui0MV0=; b=l0bHSF3NPyGV2Q
	llt6xjBtp55YRsQoVh/y5q/gUfSlAeZIRX7Aa7sSQh68aw+GhURH/kXGf5koif8pGHx/z+pWtSt/p
	91pU4w5sNXUIdfN4JYx2oQkvDutOephpL0AhKxeioGxPfBEfiRghl+Q7DdFjI5tggTaJ4I0AYQrZn
	+imubL/PkOBb78twPcMaaylSgumeOSPLw+XWZrkSLaKOdsD0VnwFy6rMGADzxxrdVKXbiwz0iQbCt
	Cmp34Vf2zL5LAADqxi2a9Gvv2SPnah+K5uxCyAwvGUjYcMUOaZSI0gCztRiXL1Mk94mDS7OnJlqGC
	jQAf+0Fxylcy92QSbTGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgny8-0002kC-Dw; Thu, 04 Jun 2020 11:23:32 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgny5-0002Yj-5c
 for linux-um@lists.infradead.org; Thu, 04 Jun 2020 11:23:30 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jgny0-009HpX-2U; Thu, 04 Jun 2020 13:23:24 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: change sigio_spinlock to a mutex
Date: Thu,  4 Jun 2020 13:23:17 +0200
Message-Id: <20200604132317.75a2f85a7e52.Ifa9c62fa63625d4685383003e6a5d6c27d7b4e45@changeid>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_042329_207319_A61512F7 
X-CRM114-Status: UNSURE (   8.56  )
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Lockdep complains at boot:

=============================
[ BUG: Invalid wait context ]
5.7.0-05093-g46d91ecd597b #98 Not tainted
-----------------------------
swapper/1 is trying to lock:
0000000060931b98 (&desc[i].request_mutex){+.+.}-{3:3}, at: __setup_irq+0x11d/0x623
other info that might help us debug this:
context-{4:4}
1 lock held by swapper/1:
 #0: 000000006074fed8 (sigio_spinlock){+.+.}-{2:2}, at: sigio_lock+0x1a/0x1c
stack backtrace:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0-05093-g46d91ecd597b #98
Stack:
 7fa4fab0 6028dfd1 0000002a 6008bea5
 7fa50700 7fa50040 7fa4fac0 6028e016
 7fa4fb50 6007f6da 60959c18 00000000
Call Trace:
 [<60023a0e>] show_stack+0x13b/0x155
 [<6028e016>] dump_stack+0x2a/0x2c
 [<6007f6da>] __lock_acquire+0x515/0x15f2
 [<6007eb50>] lock_acquire+0x245/0x273
 [<6050d9f1>] __mutex_lock+0xbd/0x325
 [<6050dc76>] mutex_lock_nested+0x1d/0x1f
 [<6008e27e>] __setup_irq+0x11d/0x623
 [<6008e8ed>] request_threaded_irq+0x169/0x1a6
 [<60021eb0>] um_request_irq+0x1ee/0x24b
 [<600234ee>] write_sigio_irq+0x3b/0x76
 [<600383ca>] sigio_broken+0x146/0x2e4
 [<60020bd8>] do_one_initcall+0xde/0x281

Because we hold sigio_spinlock and then get into requesting
an interrupt with a mutex.

Change the spinlock to a mutex to avoid that.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/sigio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/kernel/sigio.c b/arch/um/kernel/sigio.c
index 10c99e058fca..d1cffc2a7f21 100644
--- a/arch/um/kernel/sigio.c
+++ b/arch/um/kernel/sigio.c
@@ -35,14 +35,14 @@ int write_sigio_irq(int fd)
 }
 
 /* These are called from os-Linux/sigio.c to protect its pollfds arrays. */
-static DEFINE_SPINLOCK(sigio_spinlock);
+static DEFINE_MUTEX(sigio_mutex);
 
 void sigio_lock(void)
 {
-	spin_lock(&sigio_spinlock);
+	mutex_lock(&sigio_mutex);
 }
 
 void sigio_unlock(void)
 {
-	spin_unlock(&sigio_spinlock);
+	mutex_unlock(&sigio_mutex);
 }
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
