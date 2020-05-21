Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D841DD12E
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUfRx2mJQ7kSxl5F4+Lr1s4+K0kd66JbpBqOOxjdU5Y=; b=PBS1KAmVZDGDvU
	ncLc/5FVr85zex5TKfFW5dr2GGrAsZAALKSHuO28Au7Y7m2no1PEhm19L+ycY0AD4ddq3a4EPNuHD
	/ME7OJhh2B362feZC4cyWr1dWFe72hdvsGs0qW7szv941KGFe6vyyQCgMFyBUsEI6kLW/U6WGuw5m
	l6qs0mNZx3ekJpiFURGAMXUocjfALh1xeI0DiqjtXp09hNbjnf2Hs2tYfZoXwvWlCst4YVrVzjmGo
	gI0i+oUi3+S4+A+pDGGA8Oe33Os4sSbGt94AufpTxBKxKEEuuHCXaGgjSwRAdLHE88UHcQb7JiTKk
	ttqHFHFsnX+WEBGXGQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2c-0004J1-NX; Thu, 21 May 2020 15:23:26 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2T-0004B4-Q6; Thu, 21 May 2020 15:23:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 05/23] maccess: update the top of file comment
Date: Thu, 21 May 2020 17:22:43 +0200
Message-Id: <20200521152301.2587579-6-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521152301.2587579-1-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

This file now also contains several helpers for accessing user memory.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 747581ac50dc9..65880ba2ca376 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Access kernel memory without faulting.
+ * Access kernel or user memory without faulting.
  */
 #include <linux/export.h>
 #include <linux/mm.h>
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
