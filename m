Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081B611BCFF
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 20:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/O9ubW3gjBv/BoDeq05RrPMyYAMAB8zE+9HunMNp40=; b=ad0wDbCppErLKZ
	kolICxv3Kn2fJDcpuAirw6cdd1/GhDNTH9V42qG3eSfGwbZXka/5MuBfmESQl8z0g1Spj3PHT+y0S
	Eg5JiOlyWHo/GMgWnflqnbix7W9g2x0RGvuPuIzYzPOcNRLQTzTUOk55U5MEI7T8wjWv4crWZ3HuW
	ZhAypPDi2Bz9DjnNlUoBXAzVdbXpqpQAXQTtT2+ckeavifE7ogYLGfvA+GjKDk9HBF3YefjE3xggC
	XEX+1eKQPwFxIgER5QGH7GStyXPyR/FofifXa3OuDSAkMuCn5wdW3PtjFH7wi+KGDU4OpapoOUQEV
	Lu8ck9BiUWQL+pi+cJeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7fZ-0005FO-Qq; Wed, 11 Dec 2019 19:29:09 +0000
Received: from mail-ua1-x949.google.com ([2607:f8b0:4864:20::949])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7eh-0004Jh-Es
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 19:28:19 +0000
Received: by mail-ua1-x949.google.com with SMTP id 14so6461917uar.20
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 11:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RQFDo13VZRdiKwc/pVrHKJHbLovklfvTM/XI87MZyHc=;
 b=hk5XU7cUaCcQ0Nde+eT5cb/6qwUvOjqFutXP7PRicgzyIGfK7KSbsZII98DfGIn2FW
 dtQymELG0GrhacSnYHQp3RHByaT46VfTyG6tnTl4Jsk836X8X+fyiDg1vDM0umT5oppm
 UgVIqhFFhkz4LTwJvtJFgchjlga2R0OupRlXvw3oko/W+1K9fRHoYDgICYr3QjciF1hv
 60PjkiTLGt5xA3chP4Yx0vIchU/ZZ3iaMRNuguxvUHnFe1WEFaZso9+eBFcxLjuV0NVZ
 /07928V8wcKVNcx4O0aZhvCWDioa2HlcD1rankvFdc0518jUklNNTHG92Y9KtstUiOND
 P6JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RQFDo13VZRdiKwc/pVrHKJHbLovklfvTM/XI87MZyHc=;
 b=p4m8idRu6CU6N6owHqBSF2UFYXsK6f9bHUlpoNB4C0TDP7FP0aTU1NWEI8hvIa2hKy
 qCu2GMEPQ8vy4giNB+abo2+tLzs3umjOTd0PNBBNRDxVOWu7e90RIe+ozH/kibTObnkl
 ttqSp32/pD0ZDSTXQ7YlLT2G+xEnAlUINvhO18QZnP0twunvCNrAqB5lji7Gt0YUIqas
 fkv5VDObCv9QEPU3LkuMziJ8wuEbcuSDthyM00qgTlnHHUfFMkov87CFowMWcIR69OcH
 t6APBapFTN4MPqMaz96vgG8Sfn32iCeTK24u8Ux6PHkHYzQbxgeojlrKDt6zh1zuLsNV
 1gKw==
X-Gm-Message-State: APjAAAVHqrpeIRi6xbNTkEVMYHb9bF+wZemeGJltmhqPk91cNmedbJux
 3U8L1U7dQOKWn9ST/a3ZVHeHWGoPSlUYmEm4O3Eu2w==
X-Google-Smtp-Source: APXvYqxn1i43i48Jqfr6hVocDDO1DiINGbV0G5JeKpjCv8KvGUu2v9FiOXP9TMA8RDO8XOUYwG4WIpJMJNZpSQ90pHgIUg==
X-Received: by 2002:a1f:6103:: with SMTP id v3mr5185450vkb.60.1576092492825;
 Wed, 11 Dec 2019 11:28:12 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:38 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-4-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 3/7] net: axienet: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 "David S. Miller" <davem@davemloft.net>, Michal Simek <michal.simek@xilinx.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112815_583180_EBC65759 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:949 listed in]
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
Cc: linux-um@lists.infradead.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel@vger.kernel.org, davidgow@google.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_XILINX_AXI_EMAC=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.o: in function `axienet_probe':
drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1680: undefined reference to `devm_ioremap_resource'
ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1779: undefined reference to `devm_ioremap_resource'
ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1789: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/net/ethernet/xilinx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
index 6304ebd8b5c69..b1a285e693756 100644
--- a/drivers/net/ethernet/xilinx/Kconfig
+++ b/drivers/net/ethernet/xilinx/Kconfig
@@ -25,6 +25,7 @@ config XILINX_EMACLITE
 
 config XILINX_AXI_EMAC
 	tristate "Xilinx 10/100/1000 AXI Ethernet support"
+	depends on HAS_IOMEM
 	select PHYLINK
 	---help---
 	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
