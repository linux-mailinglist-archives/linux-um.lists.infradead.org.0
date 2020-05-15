Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB211D50EF
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 16:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3xCHilUk/ml7iNMPk0k48JgBrxirc/qxUUhuDA/xPw=; b=gv+ciNDoOHKL6V
	wwRVzRPPtk3QPmtF+pzUGFoeHPgn4hafJ4AlontoLefmLUsHkeMoOrbT1a5a/G3RVu7o//GXQeBEr
	BkkJNAqMn+HUzPys38qsZyjbRvBVsYK3CrOzz7gg3J5X6qQTzsb4x2dQa+/ztm8kUn6fkl47eQYBY
	/vBDQQm2sM0M9Enh4NWki7aoTCRm0cbv4bXs6fNGWFP4fOUNVq/ijiC8UDa0er2rCZ4IrvH5rc+lY
	4bfD8q7n5YCXJ8jMvRYPYaTfQnH585JRUWs1PEtH/R4Dm1bLUFDIgvesreB5hHKpYSu+q/eoZNRZ6
	GqHesOA7GW1kolg3NyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbUo-0006hk-H0; Fri, 15 May 2020 14:39:30 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSK-0003qc-Oh; Fri, 15 May 2020 14:36:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 03/29] powerpc: unexport flush_icache_user_range
Date: Fri, 15 May 2020 16:36:20 +0200
Message-Id: <20200515143646.3857579-4-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
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

flush_icache_user_range is only used by copy_to_user_page, which is
only used by core VM code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/mm/mem.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 041ed7cfd341a..f0d1bf0a8e14f 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -587,7 +587,6 @@ void flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
 	flush_icache_range(maddr, maddr + len);
 	kunmap(page);
 }
-EXPORT_SYMBOL(flush_icache_user_range);
 
 /*
  * System memory should not be in /proc/iomem but various tools expect it
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
