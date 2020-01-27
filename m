Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5659414ACCA
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 00:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JiuDn9FqgnLv0wKcfOL8a+LuPVXgGprB890ficD4iE=; b=Ys5MmGnNtQOgQB
	Y7ZHBxCObGezNtvZjimvfoKgNQoVsBlzUpEDzXEofax0+YyZ8vl/apkAO9zHeOlXYFSo4W6/PA+bf
	tbgAfcRi15RuFmltSmTKPQkwZzoyU+CB01EnxRaKUUgo3dofRTWJ3h0pEG5LcsKFAGVIFm9fnkgGu
	mlAwi8iK4t3YaF2kobyw7qgnwiD5I97o/NasIOH7exsxBnL24KivWkVA4v3UhyW0SQ5Dp2RtzDLcY
	C9biwGmzgiialUr0TgzxWX0QarPncHWX79c4jV/9mbeEW6c7pLyc2eHO7oTJV8OMCz8QCxGNfZct+
	GYkRtn1hra5CA0gz4Q3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEE4-0007wV-Ja; Mon, 27 Jan 2020 23:55:28 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDR-0006Ak-ON
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 23:54:51 +0000
Received: by mail-pl1-x64a.google.com with SMTP id g5so4619751plq.17
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 15:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=LtaIREjg0GbBNJyJVnqCp3W9hRUEU+wNigeViXWJb/o=;
 b=QJWVurVz83htEHzzAukWZOjRvkslLJAt6RkcCPRQgUwcrrqnp2W42ISvpNSlJqhLYI
 HDzfPU81B/8MhLW3/BOHOTSm3GJr/tMW4jJ1uZjzTbJHZI7r00deF2uuiZE1jDlE3Ujn
 MIMSuULUgAiE5dl8Nrbk0b8EeQoezOApOBHVkrgqe0dU+IightjL6OUCro+mwIxTLbFb
 t2pFhrqSSkm11dR+u1q94/yUiey4cwHOn48bYfK20V0lZ9Glrn/woVo38KYoMyo6/pXm
 Ki9LI1z6JOEkTJvqF9Ngr3gnj3PxZwspaCM9AexVBTeEbEa6NoLses4XF2PhfQahE7g1
 UGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=LtaIREjg0GbBNJyJVnqCp3W9hRUEU+wNigeViXWJb/o=;
 b=TumSuXMPEC3BlYplB9/m0R49HO7CzQbN2+Wn5vmiV/C5tyzgn5Q3NToJIuoFSTxgc6
 fFibW2y88pyb6sW2E2GmbdHaNCD4Q/3S1fpBisdedTrnKxXu3eVq/3w6T91g3fRGXvk7
 ZIiA9/JC/W6qQFQ81z3L43jtoQ5N67mz4mE1N0VK1FlZJ4HS7QOIzn+v0U2k8JgZxYRf
 rXVJ3Ib0ukPoqTtnhK7JxX9V80+2Q0EDXHo8kPR6fJOgNgsEDnnMCeX1cArJ6y5h4K5y
 kgP8h9rxwVn20HsKk+DMQszWeGkITz5eEB/4mSW4Ft+eAhi5LpVIj6mS7S8q7IcqG+yG
 37Yw==
X-Gm-Message-State: APjAAAXCQxHBo6Mpmi1TUMbmC83ycauLdE0bwhLzBJjH+WpHvofJysIn
 L1b1uREnsN4KHRFSzqverbh9Q0hW52/+Uo/fZ8RM4Q==
X-Google-Smtp-Source: APXvYqweRQ8m5hhu1HXuRMedVPc2bAFe5tdPFCvhiapDMmB+s6KJgSZdl7ge+tHS5zEbJYelkAeAJQhRjXaIFteOOxWnoQ==
X-Received: by 2002:a63:234f:: with SMTP id u15mr21895366pgm.88.1580169284558; 
 Mon, 27 Jan 2020 15:54:44 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:52 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 1/5] net: axienet: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 "David S . Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, 
 Andrew Lunn <andrew@lunn.ch>, Robert Hancock <hancock@sedsystems.ca>, 
 Esben Haabendal <esben@geanix.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155449_808072_C486C90F 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
Cc: heidifahim@google.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, davidgow@google.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_XILINX_AXI_EMAC=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.o: in function `axienet_probe':
drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1680: undefined reference to `devm_ioremap_resource'
/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1779: undefined reference to `devm_ioremap_resource'
/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1789: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
