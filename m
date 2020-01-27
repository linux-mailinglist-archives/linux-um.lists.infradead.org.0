Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453C214ACCC
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 00:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U42DNqcF26ootWyP8f3rFPSKUsoHLaiLtysOEXjOhH4=; b=lOFY58ftYRY1j3
	AFwpDkQWTQN7ZPhbYqLq7L7XYsInAGMakrOFz74e4TWe/G3BV0gH+0OaLKKjEmdnxXxW1lp7QDpkY
	XYWjVxgzd2AK1BXMpY5yEI6cc4k2fdS2Xl/FUa+hP83d7QXc8zBpNUGFLQ8AYwXyJauXbC41sugba
	kixc+nQaQF6oKIlDi9VjdPXcYMRTB3+ajHzDpzoj/AANROqnZiFAmxJppV5AGavbBic4TKhfwDfI2
	IVFiGYCwgjU5BcVJIk6BAxLw1MnLKColBIpq00129WJ7SPLk4VygxGo6+EVdDlaEFEJdukEKLS1CY
	CXXArWCausFPBwfvCm6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEE6-0007yw-Hd; Mon, 27 Jan 2020 23:55:30 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDh-0006Wc-7y
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 23:55:06 +0000
Received: by mail-pj1-x104a.google.com with SMTP id d22so300903pjz.0
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 15:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ucQuwz+ateoZojufeFLUV/0W67kgVJ9nWifeRmz8AWM=;
 b=KBKzWyUUHIv589qlPCBsMyl4G75Cdl9ZtQT2ZcSWfLN2zsnFPBiVMLhD+cIxQ0j4+7
 BWqbEh7Oc2cx2JEO9hRHO92oxhBjVRTVG87myH+hOSwgh7LBLGYnbpVrNWgMKDSd1suV
 nkdB43feEGUSaOb0bPoeIfI49WzPkBamwuOJUM8EfcC4oHnq2qHqP3ltV52xobkbemdm
 jPCywjIXMQqfjX/1Qk39lxDMAjOtZScL2N7q5fLrQwvl0ect6ZsH9tYmdaH55MpVup3v
 VLxk0r2ia9Sv77I8bAwgwo4pQd/fuObfaocRP5rEQLm7o+0Ib3mcUY6oAMOWaspYye1m
 WhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ucQuwz+ateoZojufeFLUV/0W67kgVJ9nWifeRmz8AWM=;
 b=Y+1sOTySqOAz611hnN8/uRUtnlva+4mLV66xVbsOqfJXYERP+Ry3R66IDRnRShNmU/
 1p5KVmZ75NJGsilNTyH2n6OX8mviMd4mRLUNStKKsAV4A3RIafz6l/CvBAi1k/JSaALY
 E9kQ5bbp3iTqvGNvrIi9zEykOZEN9gf/vAKLMN7O5CfKscTPZywHYOorOCzXjlNzrqc2
 W9Gk3ya/3AANhgxSpjEcsA1QryLQlg4sr9Y83XcnN/ElicrYbKTnrnFBYlbVuPSPsO0O
 cyR9ciFHghFcJw88teF6ztfJLATSHDjTK8PB7qx7H86CaFFgqXE43k5iCc7AqSHSsDlc
 KAow==
X-Gm-Message-State: APjAAAV5STQq6wvNOAG7L9/HvlnEiMulgnqxzzLnnq4guZUvfvrFMp5m
 TI1Udb9eeONNrkqa10tX6wXxfB0+uIv9Xn8N8/17pA==
X-Google-Smtp-Source: APXvYqzNkd8uO2qnBeczoimrL08h0KoxDWD4kdWRR2C1yxKMCQiZ3I6T3wZ3EM2PaeqKwjCpbd3NIGFQllyGGiXdm+suog==
X-Received: by 2002:a63:3191:: with SMTP id
 x139mr21666824pgx.368.1580169303480; 
 Mon, 27 Jan 2020 15:55:03 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:54 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-4-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 3/5] reset: intel: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155505_343376_4E71745B 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_RESET_INTEL_GW=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

/usr/bin/ld: drivers/reset/reset-intel-gw.o: in function `intel_reset_probe':
drivers/reset/reset-intel-gw.c:185: undefined reference to `devm_platform_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index a19bd303f31a9..d9efbfd296463 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -74,7 +74,7 @@ config RESET_IMX7
 
 config RESET_INTEL_GW
 	bool "Intel Reset Controller Driver"
-	depends on OF
+	depends on OF && HAS_IOMEM
 	select REGMAP_MMIO
 	help
 	  This enables the reset controller driver for Intel Gateway SoCs.
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
