Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B390911BCF4
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 20:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmiDZUflBAYq2oHzMOTgmoLANhZAvtgX5zMcsdaRIwo=; b=SZBjgUFzT9d3av
	eySeXrprTGRVbxiYs6LYZhGjOiOmE93AcYHMDpByWYbbUgU1t8rGyY4uIKcoDdy0cbiZC4mredfLB
	GihO2Z+lLER4REWKoGMoXevE3wMZD5yWwn/6XRao5OnUA3571vNZtFT2mSUhnVPmm/9mq3X9ICtPd
	GXI71XEXqGmrpx0e35YfUe3w2W7gbuJ5TQSMEwJOLK9tZj+hFYO076kOtUx6HsirIOYh4EtKJSlMZ
	CBDtiuS8B+t+sNh3lMbhrh7XJDaSLfJMfM7om6e8oBhqQYfdfIIbc2Q0fuL1ptt/1zEaVnvcYmS3P
	jqzjkOp/5UAXgTinUNjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7f0-0004e1-1k; Wed, 11 Dec 2019 19:28:34 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7eb-0004Cz-Gi
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 19:28:10 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id b2so7806vke.8
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 11:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=FFYsrl0I4BK8yz9gxBX4VqimpZj53+CX6IzmsB+i61g=;
 b=qjhzPdRkkjH8hezi0iexmvjJfx5lLROsOSgkPxJ0VzJbXxQ/PyflgClhibaTHjBnXh
 m0IF7aG7MoDk/irhKDTOLa/QCUQHReSY3y/iCe2JiJg/NfKW7zgnRw5Uxwqx40t73YLI
 L9TjMcmos2iq+x6f0ASaDj7IvtjyU/OQFwt+AEML3/ZJa0dE3KErVccwMCq+NhjnfSK8
 U3v5wJBmhLrXkHV8XIeZmTjmTf3c2QNJsnCYskZTUotp1LV3et1W+MlhpR0xw5neG4Cw
 ZQUp0OS9LTZ7CtgsV0ulfIoLBGTpEsXW3aKAnZF+9E/HnFFcYp+OouxsCAw+iDf/Tjnj
 Ge8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=FFYsrl0I4BK8yz9gxBX4VqimpZj53+CX6IzmsB+i61g=;
 b=gJ4rPlxUhnvttKK87MoknaRQSuMngsDQkrzop/1rwidx7CxCmBOMELcFR82MBdtSfG
 XvMr1QEPEUM2NuMug/vsF5v86Wqq8m3sbgne9m1IlQMkS/x/Uurew+krvMpxvubVedgg
 go7cXNGNp0YnYr4cEhjxmxtLOq+asP2Ibzb6H0j086M0M+6jN98mbr9qdE3d7TaMFA1f
 yDI8lQWW1A44x8griqhmV3PVL6QfK0rcZbF4AR58g/kwFXtyKfk/hSpBsU56shIz7+Sw
 rlSXA7c92qQAhZZi/h3LFwXoHwytNgu1gR2e/GHH1iYaqZApOg8lGiMkESgDrAenOOil
 N9Og==
X-Gm-Message-State: APjAAAVB1rWTlDlubBmKDr2v+RLCcmgtlXWb4hckBlIZpvngutKWl3ly
 DTpAyDji3dp9DbiEm5IQjJzr08+uWI3qT87E0/AIUQ==
X-Google-Smtp-Source: APXvYqxZTtO++CKtLp5UsNMBbAFmJ3Okf55RGHBmvJd6qKXUpN1TYKd0d0hxF/Yg3QQDsrfpHrxUF7ZEfSVuhxirr9ljlg==
X-Received: by 2002:a1f:4193:: with SMTP id o141mr5037148vka.19.1576092487771; 
 Wed, 11 Dec 2019 11:28:07 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:36 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 1/7] pinctrl: equilibrium: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112809_583985_A3C02596 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
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
 linux-kernel@vger.kernel.org, davidgow@google.com, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_PINCTRL_EQUILIBRIUM=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/pinctrl/pinctrl-equilibrium.o: in function `eqbr_pinctrl_probe':
drivers/pinctrl/pinctrl-equilibrium.c:908: undefined reference to `devm_platform_ioremap_resource'
ld: drivers/pinctrl/pinctrl-equilibrium.c:223: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the CONFIG_HAS_IOMEM=y dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/pinctrl/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 3bfbf2ff6e2bd..2c0b30477f7d0 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -422,6 +422,7 @@ config PINCTRL_TB10X
 
 config PINCTRL_EQUILIBRIUM
 	tristate "Generic pinctrl and GPIO driver for Intel Lightning Mountain SoC"
+	depends on HAS_IOMEM
 	select PINMUX
 	select PINCONF
 	select GPIOLIB
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
