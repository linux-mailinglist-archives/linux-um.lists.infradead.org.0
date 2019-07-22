Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912116FA64
	for <lists+linux-um@lfdr.de>; Mon, 22 Jul 2019 09:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qLfHdx0CgJjLP2jifHqyreAjFa6uWyBNNbChY7L+pcM=; b=azfO0DikO2ZB4z6xPmiN0xPQDc
	1xTmJ6f3Xdt0ddATsO89b40IDzE2jJy5Nh/7M8VkoxQ2SQEG3/N+MOvyO07fSE0D+XoT69OOETu7v
	sv90KYRhcfntOd9St1U68Df51qgL/PZZ585DO9S8SwWEQZFFXv5uh2X+8M0/wrjNRxuf2PWe5AKYP
	uL4ZuE4nkXL7Kc4prQmu0VoXwVTZmp//8jqs6NFz5jeE1KY0E9pera8kCf6typfLbPcDdlljrGHdh
	MeCo1dYonQFWBZbVGoeOlMrtWHDInXEkM6prcgIffsTnXtdeZeUqB00ovfRCuIwKQZB1wLuV3oCUQ
	WSpmqPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSmS-0003Q0-1c; Mon, 22 Jul 2019 07:30:44 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSmM-0003Nl-2G
 for linux-um@lists.infradead.org; Mon, 22 Jul 2019 07:30:40 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hpSmK-0001KM-Sm; Mon, 22 Jul 2019 07:30:36 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hpSmI-0005V2-3e; Mon, 22 Jul 2019 08:30:35 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCHv3 4/5] um: Fix off by one error in IRQ enumeration
Date: Mon, 22 Jul 2019 08:30:24 +0100
Message-Id: <20190722073025.20844-4-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190722073025.20844-1-anton.ivanov@cambridgegreys.com>
References: <20190722073025.20844-1-anton.ivanov@cambridgegreys.com>
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_003038_235616_34F14DFA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Fix an off-by-one in IRQ enumeration

Reported by: Dana Johnson <djohns042@gmail.com>
Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/include/asm/irq.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/include/asm/irq.h b/arch/um/include/asm/irq.h
index 49ed3e35b35a..ce7a78c3bcf2 100644
--- a/arch/um/include/asm/irq.h
+++ b/arch/um/include/asm/irq.h
@@ -23,7 +23,7 @@
 #define VECTOR_BASE_IRQ		15
 #define VECTOR_IRQ_SPACE	8
 
-#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ)
+#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ - 1)
 
 #else
 
-- 
2.11.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
