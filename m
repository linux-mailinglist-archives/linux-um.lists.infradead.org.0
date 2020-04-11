Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC171A52E1
	for <lists+linux-um@lfdr.de>; Sat, 11 Apr 2020 18:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9kLmKflqTqBik1KWk0pjz33tGOBC7EkMMK4tGqk2OHs=; b=n5Y7jDB3sI+804
	Ui7hONZCFNdffpD526aFEU1ypKgaYvSUN8FSQt1vAGyFMB4c1HBHj1Kr/asQ/sU3vMgxk1N+kTw0s
	hkB/ZZ+3oWNab+pCGLB7tHmP/By6ANbu+yY78yttSib0sl33tpEn0r2UZ9JwStvleHYXSbvkNzVgU
	THHZOh4/72JEsVFyX5OIS9lXyAnIs9PpnJX1K3R2DIwB+gbQaBrrmN7h6l/Q2/zHZXleUTxi9YOHT
	/Eb1bYpeCCJlqYta75h3AB+aXLOwN8rBFWTHNKyLKFMsdhTgH7QGNftNUNrcH2DZju8G7+5J1Wt+R
	VCXcxuxYj4oGlVxFLt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNJ1V-0004Xv-5i; Sat, 11 Apr 2020 16:30:25 +0000
Received: from smtprelay0011.hostedemail.com ([216.40.44.11]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNJ1S-0004XM-Hj
 for linux-um@lists.infradead.org; Sat, 11 Apr 2020 16:30:23 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 4C7DB49960C;
 Sat, 11 Apr 2020 16:30:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3740:3865:3867:3868:3870:4321:5007:10004:10400:10848:11026:11658:11914:12043:12297:12555:12760:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21795:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: grain43_59ae7ef96930e
X-Filterd-Recvd-Size: 1570
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Sat, 11 Apr 2020 16:30:16 +0000 (UTC)
Message-ID: <ba7b958fda7c42e10fded7b158e892e2dfb06494.camel@perches.com>
Subject: [trivial PATCH] um virtio: Neaten vu_err macro definition
From: Joe Perches <joe@perches.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Date: Sat, 11 Apr 2020 09:28:08 -0700
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_093022_647522_8496A973 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.11 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Erel Geron <erelx.geron@intel.com>, linux-um@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Defining a macro with ... and __VA_ARGS__ (without ##) can cause
compilation errors if a macro use does not have additional args.

Add ## to __VA_ARGS__ in the macro definition.

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/um/drivers/virtio_uml.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index be54d3..351aee5 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -74,7 +74,7 @@ struct virtio_uml_vq_info {
 
 extern unsigned long long physmem_size, highmem;
 
-#define vu_err(vu_dev, ...)	dev_err(&(vu_dev)->pdev->dev, __VA_ARGS__)
+#define vu_err(vu_dev, ...)	dev_err(&(vu_dev)->pdev->dev, ##__VA_ARGS__)
 
 /* Vhost-user protocol */
 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
