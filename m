Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A818EFEE89
	for <lists+linux-um@lfdr.de>; Sat, 16 Nov 2019 16:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOMM67zQ+BIZdVvYtG7AA+3/cmEwZOPh0+vGnHCtVoI=; b=gwya7SIyWLflVa
	qvhykD45veYkTwpCPJ/y14GFxdnkAUKDqhWeklwm5o3PDwI3CngznF/VAJookB0nwfK0eYkT8/aYP
	xu/L9eJEu6iuTcymVyhMGNFa+LCSlsM19majeA2sgdPC+VphpS7xboFxZxNt60YPI3q7UA3z251Nw
	vn+j/XwoZSiCpcy7mHqetfBVwWjAovbmNoczHcVm+qkuJ2b96BP5FxhiNSjgy5PcM1BeeXEtakSBY
	JdwreOIWzDww8wW5GS8sHm2jcLhuQSTlVxVUaeULV2KREAQ1TIv1HZWEkXe+K+qtgQqZDQOZeZndC
	E2gcG1yB4CwRBm8E/1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0N6-00061p-Pb; Sat, 16 Nov 2019 15:52:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0N3-00060k-Tj
 for linux-um@lists.infradead.org; Sat, 16 Nov 2019 15:52:23 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42E9020728;
 Sat, 16 Nov 2019 15:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573919541;
 bh=dvvlDb/+0VMhtBKkl1moFhh/et82E8jtpyGoaFbPt7I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O7dVi7VI6xUFGv7gJYMn0cvHgj6rKot0LCfaaEfKKpAAEDSOYNdtrHN4ufrI6mITe
 dMDiIlt0g8iRoEfZ4TmAHjN5MlZKwDCr4m++3H+0qHK6rLJw+2xLr8hWudVSP0CO/P
 I1QmPk7cu79HQHcFJqBDgnqD5FXHVTF70zdM9xSo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 56/99] um: Make line/tty semantics use true write
 IRQ
Date: Sat, 16 Nov 2019 10:50:19 -0500
Message-Id: <20191116155103.10971-56-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_075221_979644_B49505B0 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

[ Upstream commit 917e2fd2c53eb3c4162f5397555cbd394390d4bc ]

This fixes a long standing bug where large amounts of output
could freeze the tty (most commonly seen on stdio console).
While the bug has always been there it became more pronounced
after moving to the new interrupt controller.

The line semantics are now changed to have true IRQ write
semantics which should further improve the tty/line subsystem
stability and performance

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/drivers/line.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/drivers/line.c b/arch/um/drivers/line.c
index 62087028a9ce1..d2ad45c101137 100644
--- a/arch/um/drivers/line.c
+++ b/arch/um/drivers/line.c
@@ -260,7 +260,7 @@ static irqreturn_t line_write_interrupt(int irq, void *data)
 	if (err == 0) {
 		spin_unlock(&line->lock);
 		return IRQ_NONE;
-	} else if (err < 0) {
+	} else if ((err < 0) && (err != -EAGAIN)) {
 		line->head = line->buffer;
 		line->tail = line->buffer;
 	}
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
