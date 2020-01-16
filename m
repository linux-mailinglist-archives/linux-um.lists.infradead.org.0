Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B139C13E2AE
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 17:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRGZ4XPIJuMf0HqdbCyFnPKTakR4Z0L0n9N4aVtrPM8=; b=URC8Yy4tKcaIQ1
	LoESVZ5u+bW4YZlwZPmJF7bqBpCmFAO6wPPrbzNiTnrN2SUsotK8qcgEihF3dwyRsaagXGLzqd55j
	3FnLrsf5Ll2qH6FQHT3zXNbnFLh21fdox8USp85+1Ebr7///8hekYms9uxm7w2sX0197hSwqa4vFG
	SCWu5dtghvdYmNQOqfXWhFpq/nyxrfFNBaEjzgUTIcY/RYZi00zj914DeHRObyLwuuXqVSm+WASV1
	hzjGVoRQO6q2gTFUhwVJIzmsZZ154jTcZBHFZLIlDB59Sg/SVRM+BPv3681leHP+CCc4MdtzLRTAB
	6o8qJOgK6S9MfgJwpotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Sf-0005Pu-TV; Thu, 16 Jan 2020 16:57:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8PF-0000go-No
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 16:54:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF286214AF;
 Thu, 16 Jan 2020 16:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193645;
 bh=u9JD3C4YLpxJEKI/OEJ1TDTW/fEAkI4JriQ09cx7GO0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yRFkAxh1nRu99Tgg8wN2y7HgkY9U8bRTAMQCR7FjuROljy9EeeWSo0JtyzEDChhGT
 gna4Jrom3c2SmFzuF9jN25nE5LQD5FWJJCD10SrgDnwk25p+L4tMOjaHn2Abi2eEKg
 Ah6lZ+8ir9OfQ94gajIxOLnntY7LIzKRKeivauKk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 176/205] um: virtio_uml: Disallow modular build
Date: Thu, 16 Jan 2020 11:42:31 -0500
Message-Id: <20200116164300.6705-176-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085405_812867_655EC591 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit bf9f80cf0ccab5f346f7d3cdc445da8fcfe6ce34 ]

This driver *can* be a module, but then its parameters (socket path)
are untrusted data from inside the VM, and that isn't allowed. Allow
the code to only be built-in to avoid that.

Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/drivers/Kconfig      | 2 +-
 arch/um/drivers/virtio_uml.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index fea5a0d522dc..388096fb45a2 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -337,7 +337,7 @@ config UML_NET_SLIRP
 endmenu
 
 config VIRTIO_UML
-	tristate "UML driver for virtio devices"
+	bool "UML driver for virtio devices"
 	select VIRTIO
 	help
 	  This driver provides support for virtio based paravirtual device
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index c5643a59a8c7..179b41ad63ba 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -4,12 +4,12 @@
  *
  * Copyright(c) 2019 Intel Corporation
  *
- * This module allows virtio devices to be used over a vhost-user socket.
+ * This driver allows virtio devices to be used over a vhost-user socket.
  *
  * Guest devices can be instantiated by kernel module or command line
  * parameters. One device will be created for each parameter. Syntax:
  *
- *		[virtio_uml.]device=<socket>:<virtio_id>[:<platform_id>]
+ *		virtio_uml.device=<socket>:<virtio_id>[:<platform_id>]
  * where:
  *		<socket>	:= vhost-user socket path to connect
  *		<virtio_id>	:= virtio device id (as in virtio_ids.h)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
