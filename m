Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0311BE30
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 21:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7jg1Pw3mShzoYppfh1p9ihU6koE0N/H95sc32fz6+g=; b=IrvE92HmJpZSfI
	bS1BlE2Vseo3gS4yvCm0cmPxd5HYpqpahIhsOTo1DPWvxs5+0WOhZxP7wihE1fKtgSgQzGMTEuE0n
	OOYf8kOoiFJv1jcaJklX8qF7YAY5K86CA4tU8fNFh7/1xOmaFoS26oqob7FKDMDP8gqcXvobyhbau
	QU6ijF/KbLsJPIH2krxzINm/C3boIydtzmgWR3AtaeXtS2yjHrStcS17tq+kFoSmBTP7eqDhho24s
	9/qOlgjawaWc6jMMD1MAIxxur4M7HUF7Q/13S/5iErkXR55Gp3gou/wOp5SNyffiC1LJX3sabB11Z
	p32LO+zWRS3icbGlSHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8ru-00070f-0G; Wed, 11 Dec 2019 20:45:58 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8rq-0006zb-JN
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 20:45:56 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N0o7f-1hkohk3wnd-00wiOe; Wed, 11 Dec 2019 21:45:10 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Jens Axboe <axboe@kernel.dk>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Justin Sanders <justin@coraid.com>
Subject: [PATCH 07/24] compaT_ioctl: ubd, aoe: use blkdev_compat_ptr_ioctl
Date: Wed, 11 Dec 2019 21:42:41 +0100
Message-Id: <20191211204306.1207817-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191211204306.1207817-1-arnd@arndb.de>
References: <20191211204306.1207817-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gy8z+YAlxaJ9blvRYgmlwoOjM5ATVorSryFF8QdI4xwnfePEif2
 ZPqNZhXPZ2zKjqu+nHu5cY9UbimuPi3idKRpKUHXeFhUocrdiKGZl1/ztl9P/tv6FzJ/PhQ
 QfZ8OcX0GLkWwfNM3Vvs0xduPX27a2+KLP8a3SGV7HE9F75Njm6oBeKzUmFnAvHr12Ec8N9
 5gn9BVCoxS5wHBp8wOO0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pGK6m1crKsA=:gSjJQpNokt5OeOSFQeubXS
 DhaKLPBBb6EV6alKwS18pbLZRwhjKMomynM6uF1IwkqUjosaLsZM5+fPzPTj8qcCy3o/bvOwH
 ak7ENd0/P9BEOfygvkRK/sXam/1u76ZTGCHaowaE3HMgWdLm9nqlluqoXOTs/Fd2bujikB0Is
 AmWz+dOLA7fovKnGj+0oVpPptqiYyDbtX/GSGi7EqN6K5gmr1HrDHd+tj1ZSC08UdOlCGZGCu
 IwBvuLdlgsdnEWnEV3tmDNgqWm4Ttd9r5m30tPJLnByHL83pkyWR0Z4L4vI7JqnEYy44gTLb0
 IMwp1vEBhGRws4JPpInvZbQ+0MvlDuk20B8fxUByf4ihqvnZi7FWnJ7Q39NR8oWoTNONmqm64
 9SCQaclMLWn9UYQypRTiJfpbR1eLtANQTZOMCSTZZ8C717vegRMJtsSM7d8yySarspbydIClD
 NIU7HCCBp+OZ/j2z0MHerIfJ++Q5nY22EAdBnqLN7Z9Faswsn6mOj9S3cio22FmZkwoKtmJwH
 FzaZEi/of2JEyPSYXrmUEKDgQxOEj+obRUPtt9kogZRoE2aFCnUj5dfZT6qgwCZVdsxo998PC
 dCZmerXpuxR4YytniK67YdDWyX1RXOrapkFwk+rBwcRMAE7HMAFRAblqF4l1SeLuYK7QHfgx+
 +3+QmrVkplwr1i0Nkn0I+bNKP0/Tfc4BP0Rr1c8cfvERunmo/gbQumMgI98O+9FPHPabF3g5m
 iB33cvRo47XAQc1md8dzuy9DuqR4oNh/yFNLdzDwNFrp+74V1cGw7aGxXXpPZPNQpYFwUAu0y
 uaWmDUA6OYy4cA2yP5Ia24bfQsCYvmIeIdnTNcaMMsQsAwh/3ObdpFUTbiYn44CScMJmpYMEH
 9z/m1cveMeFXPF7tB5tA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_124554_931737_FC654994 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 Daniel Walter <dwalter@google.com>, Alex Dewar <alex.dewar@gmx.co.uk>
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
