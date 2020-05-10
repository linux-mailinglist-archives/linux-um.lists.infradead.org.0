Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE7F1CC84D
	for <lists+linux-um@lfdr.de>; Sun, 10 May 2020 09:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkm0nTpgcw/C3WpaJ+PV7QX+lL6rVakn+6bheV+esQ4=; b=YREnzLed0c0bRt
	isqcc0luKH/gszvnQ9AUJsve2ACGgCajnpiTJ3OKHf4mVhcEpN56ZJEdsgfqTeTAXdCF4xkklMiUY
	xbjUj3C+A8MSJfITWGlK/cOm3T0mpagGd2SpBoDrGs7eSA9THBdjkdK1rKQlNV7IkS4VVNrJlGjDe
	oI5ahoFy5z36FDx/XKfwwjKyGSA8zOctGInhOne4gQoK2o2ii7o8pYQq4Vi/pGbtd1/M/SW2UI2YP
	rXTLfnmErx9ZEvsPS6cIU5RNMN9RAmcXib+KZVFwaDgZqgfl2KCNQCtTw3PYu0l6ryLXQoxGPVm/K
	jG5Xgw7NnJaaInj9y+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgph-0001ij-JP; Sun, 10 May 2020 07:57:09 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgny-0007sD-0h; Sun, 10 May 2020 07:55:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 03/31] MIPS: unexport __flush_icache_user_range
Date: Sun, 10 May 2020 09:54:42 +0200
Message-Id: <20200510075510.987823-4-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

__flush_icache_user_range is not used in modular code, so unexport it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/mips/mm/cache.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/mm/cache.c b/arch/mips/mm/cache.c
index 33b409391ddb6..ad6df1cea866f 100644
--- a/arch/mips/mm/cache.c
+++ b/arch/mips/mm/cache.c
@@ -36,7 +36,6 @@ EXPORT_SYMBOL_GPL(flush_icache_range);
 void (*local_flush_icache_range)(unsigned long start, unsigned long end);
 EXPORT_SYMBOL_GPL(local_flush_icache_range);
 void (*__flush_icache_user_range)(unsigned long start, unsigned long end);
-EXPORT_SYMBOL_GPL(__flush_icache_user_range);
 void (*__local_flush_icache_user_range)(unsigned long start, unsigned long end);
 EXPORT_SYMBOL_GPL(__local_flush_icache_user_range);
 
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
