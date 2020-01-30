Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5123B14E311
	for <lists+linux-um@lfdr.de>; Thu, 30 Jan 2020 20:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r8GzGUzhWui2Fsa3UXK3wn7Jd3YwcZlLii5mrm+XoXk=; b=Eb/
	p9bWVdrxCajVTXtyhbS7GHyhqob4z4zLkBLJck7LhpNRe3Urk62SOM5XJdSjYjGUIluhCvHUADXAw
	vIdL02PAeHE6Y+BXz/AZ9QWoWs1Y8y0RraK6J5AGSGFXG3xFtTJaqIinwo1LDdTVAnjkjM3eXAN1z
	U6+XWLf4WKWcSus1q805vh2VgOO69Xc4TGoPzNuD7E3a/zU9a1GrBeU54wCGpFIrFf29D9hAlhe/h
	tkpeGlblcuZJYWPBbRkA/JGyKaEd/C+7+aHF66AeTMxBA/Tc9laFJLdyjQZoRpqi3EwTVJPhzok1q
	vKNnOnZcHIeh2tt7/I4zLSiZSBEaq7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFOd-0002c3-1I; Thu, 30 Jan 2020 19:22:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFOa-0002bl-8u
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 19:22:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19D26205F4;
 Thu, 30 Jan 2020 19:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580412151;
 bh=fr+r1JFKwTNHUZAlTHUgAmBUgo5GF6Vj/doAxVu5rqg=;
 h=From:To:Cc:Subject:Date:From;
 b=JbYeKvXcGD1dWDYC/V36ABinagP1DJ+J9e9MclGDhtvsSB7JfsdTGMv7jW+RKkN7p
 gaamCRKnr1suSZkgVZFouBNW6d+fGDVvSmCt3hkv0uUJzMO1+eQIhdndiqkuYEatx6
 XMhDWjAUxOmUdzhTOrKE3R+Hx/r5TJlrWzReBInA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] um: configs: Cleanup CONFIG_IOSCHED_CFQ
Date: Thu, 30 Jan 2020 20:22:26 +0100
Message-Id: <20200130192226.2776-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_112232_333195_79295743 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CONFIG_IOSCHED_CFQ is since commit f382fb0bcef4 ("block: remove legacy
IO schedulers").

The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
previously choosing the latter.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/um/configs/i386_defconfig   | 2 +-
 arch/um/configs/x86_64_defconfig | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/configs/i386_defconfig b/arch/um/configs/i386_defconfig
index 73e98bb57bf5..fb51bd206dbe 100644
--- a/arch/um/configs/i386_defconfig
+++ b/arch/um/configs/i386_defconfig
@@ -26,7 +26,7 @@ CONFIG_SLAB=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-CONFIG_IOSCHED_CFQ=m
+CONFIG_IOSCHED_BFQ=m
 CONFIG_SSL=y
 CONFIG_NULL_CHAN=y
 CONFIG_PORT_CHAN=y
diff --git a/arch/um/configs/x86_64_defconfig b/arch/um/configs/x86_64_defconfig
index 3281d7600225..477b87317424 100644
--- a/arch/um/configs/x86_64_defconfig
+++ b/arch/um/configs/x86_64_defconfig
@@ -24,7 +24,7 @@ CONFIG_SLAB=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-CONFIG_IOSCHED_CFQ=m
+CONFIG_IOSCHED_BFQ=m
 CONFIG_SSL=y
 CONFIG_NULL_CHAN=y
 CONFIG_PORT_CHAN=y
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
