Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BB4106199
	for <lists+linux-um@lfdr.de>; Fri, 22 Nov 2019 06:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+zboJGXFpwbItVegqqv1OdPQQuboInh3qlgpBkL9JY=; b=lLBsh3fusLBdfV
	JT1QkZD0gkckwZjH/lwPSaTrTqCkTGU+5qqXz/oOG8rDUWojQpOohY8Ob7XPT6Bqw5Px0taWEE5EU
	fVoJfoW0uOg/2xXb9QGkwjEpvch1NcqfGVgR0kAFG0kZ0dv6K0tfqPEVwjq9sF7nPYzctGeF1oVik
	Rgg8Gv1GI6PoFvAZwlBSEl/cDLe4Zynj1WtTTLomcMPgaM6zuk9yMgCA406KdqbwWfCX3ggx99Op0
	Xq0nJ8G9aVG7oBIFG1KDJkAisRHRTjgYVB/9bCmTh2PGoBX1DkxwqOzJh+qABl6D+OpghNH6wcVzg
	rVs3bdKjp/FvXxVEvbYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1xW-0002D6-6U; Fri, 22 Nov 2019 05:58:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1rH-0003Ld-7c
 for linux-um@lists.infradead.org; Fri, 22 Nov 2019 05:51:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39A752072D;
 Fri, 22 Nov 2019 05:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401912;
 bh=89gxeJGzthezn63gW8QWdpmf0myFbNkTNKcj5J4kHOA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k8yU9nyO2MCMRRYUq1qfTlMQZKQcIT7fxnAheWoNGxHVkzoZgS4xWOeNcDRcQWyh9
 2dDZ2cZlvV4DNMPmC8ne4RPmAZC19OJwBTgdY6c+1Lh0agdQdv8tLnMGYzz1gSdOY7
 55dhWb0SJ5Q5EPvx0skzz9sLWjCwAgfic3WizAAY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 143/219] um: Include sys/uio.h to have writev()
Date: Fri, 22 Nov 2019 00:47:55 -0500
Message-Id: <20191122054911.1750-136-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215155_489939_7B7104B6 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

[ Upstream commit 0053102a869f1b909904b1b85ac282e2744deaab ]

sys/uio.h gives us writev(), otherwise the build might fail on
some systems.

Fixes: 49da7e64f33e ("High Performance UML Vector Network Driver")
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/drivers/vector_user.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index 4d6a78e31089f..00c4c2735a5f7 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -30,6 +30,7 @@
 #include <stdlib.h>
 #include <os.h>
 #include <um_malloc.h>
+#include <sys/uio.h>
 #include "vector_user.h"
 
 #define ID_GRE 0
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
