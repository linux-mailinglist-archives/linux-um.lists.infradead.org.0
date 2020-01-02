Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FAD12E7A4
	for <lists+linux-um@lfdr.de>; Thu,  2 Jan 2020 15:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7jg1Pw3mShzoYppfh1p9ihU6koE0N/H95sc32fz6+g=; b=qSnKPO+Qu/OZgc
	PzLIc9kE57QNtX9SGAhTjwponeM1gSQ6BQxbK4zRnMwJIWGgbWs0z0fHWYZlOlrc4uBcCp1aH2ZGa
	SahF0cMd8NzjcHaS/PnEAD3l2ThOMNlpKkReZaE09iSqWDJbFct6p0N1nZ2ps+rZVSBY+P9z1BhCg
	Hag4UEyJdhxyGTqPZpJHMeJZ2btsPXLrzKIodSxBdkTJPFqVO2PdX96DAPHy9GEwpH3jVr2X5smDn
	Fm/PoB1GMW2ZjUAs5c5ovpH93zkjF8lU86w5ArAnHYkBJJdVo3k8RkzgsnZJIuBvNQHHvpYo251pm
	XQfhpk5wCcLFWOIErBHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1w0-0003W3-VC; Thu, 02 Jan 2020 14:58:48 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in1vx-0003VY-Ug
 for linux-um@lists.infradead.org; Thu, 02 Jan 2020 14:58:47 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M433w-1in1vY3uwi-0003Hv; Thu, 02 Jan 2020 15:58:21 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [PATCH v3 05/22] compat_ioctl: ubd, aoe: use blkdev_compat_ptr_ioctl
Date: Thu,  2 Jan 2020 15:55:23 +0100
Message-Id: <20200102145552.1853992-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20200102145552.1853992-1-arnd@arndb.de>
References: <20200102145552.1853992-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8p6BJLwWlOj4GvZq2jwHiMBi4e9jJiHHbTeRXtMc/ApbEdKhklc
 gKlW1NaJh90o2mvhxJRo47hmvCzaB15auzhfRK08JSJldtXQK+TFAbQnCnVZulkj5SogMn4
 LfbZdloSdsbQbAhiQeotT/ZakSv8yylow0e+EApZlUEBrIppF2EzpE6WOgmXG/gLywQZxZx
 rjT/qfDnsWHma4CB8nMaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MrbTKH9MBv8=:tGOIcVKUd15dl5QCSnQhWi
 l92uQbcHjmyxlz3mrYVH+VEzMKjGo99LlZCaa00Cs9CW/8c1yR4TqOnAqtq2cyyTm7BydkDN3
 M1oQrb3D0yzJNz2qT5vhX3uAaH9ELre7mNJf1lFrEaltKs9LrMdgZRFSTBKHTv0XwHoIhlFrK
 iAfucu65aHNau9imkICR//naYpZqEe9oJQsmFCqqC/NXNoZoEy0HdLC/zwDzcJxQr++0Ql1w7
 OmyB01FdKfIB+dNOl9q4mUPgwSCJ2FF8GOI7rLsVEajQ3twqYGU532orIIbPP579kpe+vW6Wd
 0UTU50Gqjbi3Rdb7hQIOoPue8RDQlEMCADDW1tijPnR+7ds73XPy+g8cy3nK1lgTPGntDwN4U
 w9nzLdHkPHMEbkIxd7zHVKlkHwJecfUC9u9xk4Y8PDzsJVnuVkSthxgVpw5j2b1lT7QAzLA3p
 MEBPOADTWWZwQjSFNVx4yflFSY0A+SzaTL7NlPJYWlyciQyUDWeKi3+wD5GIvBAi4GKCNRwL3
 zWoZHo9QzmA2vj8e5m5I6i+17omfJdbjOcb8IJKcPC0vF7ZnuMluOIRnSvlSOJ2Dhc4xk8+qx
 DpCnZNOjGxjAAQOT/1dsbvbJD4T7byudIqLDyiiYxeZ5RIiZeHk0Vl/p0hK8pn06oKk1ZSIMb
 dW+VDrNJlVEVt21k5K7jrzRxpAY0n0AF41TdhraKf3lagtDcva/ON8ug0sirgQiezEBvcovUr
 pMDACkpS3KTrz8X6yZpRQlhYjuCAKlBRv8D8gk3191Z52wetwpvcQSfgE7bszS0A1ItxITQlj
 n5szWhlnByKP4I8KStDZLS1PXM/QlWPFNuHICr8hjXvzl7SKGhsHGE1BmVHcWsG6s8qFFncjK
 iNE5bzoy6IW09u5hSBow==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_065846_279888_E5BDD3D3 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>, Justin Sanders <justin@coraid.com>,
 Arnd Bergmann <arnd@arndb.de>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 Daniel Walter <dwalter@google.com>, Alex Dewar <alex.dewar@gmx.co.uk>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

These drivers implement the HDIO_GET_IDENTITY and CDROMVOLREAD ioctl
commands, which are compatible between 32-bit and 64-bit user space and
traditionally handled by compat_blkdev_driver_ioctl().

As a prerequisite to removing that function, make both drivers use
blkdev_compat_ptr_ioctl() as their .compat_ioctl callback.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/um/drivers/ubd_kern.c | 1 +
 drivers/block/aoe/aoeblk.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 6627d7c30f37..582eb5b1f09b 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -113,6 +113,7 @@ static const struct block_device_operations ubd_blops = {
         .open		= ubd_open,
         .release	= ubd_release,
         .ioctl		= ubd_ioctl,
+        .compat_ioctl	= blkdev_compat_ptr_ioctl,
 	.getgeo		= ubd_getgeo,
 };
 
diff --git a/drivers/block/aoe/aoeblk.c b/drivers/block/aoe/aoeblk.c
index bd19f8af950b..7b32fb673375 100644
--- a/drivers/block/aoe/aoeblk.c
+++ b/drivers/block/aoe/aoeblk.c
@@ -329,6 +329,7 @@ static const struct block_device_operations aoe_bdops = {
 	.open = aoeblk_open,
 	.release = aoeblk_release,
 	.ioctl = aoeblk_ioctl,
+	.compat_ioctl = blkdev_compat_ptr_ioctl,
 	.getgeo = aoeblk_getgeo,
 	.owner = THIS_MODULE,
 };
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
