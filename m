Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003301D5252
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 16:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1gh1xCbPMDBporXvsrEZUXbROICJnEuWFEJLHm1Aws=; b=FwXyoNNApLDpYF
	gVSrtDB/NvMBaOvIP8adfK5UnToeHqhXG1YUNSPq67D2BkIRGJ5Et5hVCwWGbNVXtlPFKgpWX21KK
	OarYbjqnq0uKJm+1v/QpuwTzfHbrJQSf8ivEkzdv83fhDm+B8wbHboMIVAlHInS03SM9ecDTtTWAI
	Ea6ViQlf4Yys2ev0Qw05eR3CgkHGZhisJYA5lU5B3J/SXk2ISfmykkVHiLkHOGwIE6pt+aGvbDZAZ
	tGAjb9GS+wC0Th1DEYPLQy5wkRW0O/o2TPbISOyXcFkHrUFbM9fYQH8TEMhMBZt8H7FUfIfL3ezrP
	AkhPzZ3+Bj7zKnrHrD5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbci-0003ke-9I; Fri, 15 May 2020 14:47:40 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbTN-000582-8B; Fri, 15 May 2020 14:38:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 24/29] m68k: implement flush_icache_user_range
Date: Fri, 15 May 2020 16:36:41 +0200
Message-Id: <20200515143646.3857579-25-hch@lst.de>
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Rename the current flush_icache_range to flush_icache_user_range as
per commit ae92ef8a4424 ("PATCH] flush icache in correct context") there
seems to be an assumption that it operates on user addresses.  Add a
flush_icache_range around it that for now is a no-op.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/m68k/include/asm/cacheflush_mm.h | 2 ++
 arch/m68k/mm/cache.c                  | 7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/m68k/include/asm/cacheflush_mm.h b/arch/m68k/include/asm/cacheflush_mm.h
index 95376bf84faa5..1ac55e7b47f01 100644
--- a/arch/m68k/include/asm/cacheflush_mm.h
+++ b/arch/m68k/include/asm/cacheflush_mm.h
@@ -257,6 +257,8 @@ static inline void __flush_page_to_ram(void *vaddr)
 extern void flush_icache_user_page(struct vm_area_struct *vma, struct page *page,
 				    unsigned long addr, int len);
 extern void flush_icache_range(unsigned long address, unsigned long endaddr);
+extern void flush_icache_user_range(unsigned long address,
+		unsigned long endaddr);
 
 static inline void copy_to_user_page(struct vm_area_struct *vma,
 				     struct page *page, unsigned long vaddr,
diff --git a/arch/m68k/mm/cache.c b/arch/m68k/mm/cache.c
index 99057cd5ff7f1..7915be3a09712 100644
--- a/arch/m68k/mm/cache.c
+++ b/arch/m68k/mm/cache.c
@@ -73,7 +73,7 @@ static unsigned long virt_to_phys_slow(unsigned long vaddr)
 
 /* Push n pages at kernel virtual address and clear the icache */
 /* RZ: use cpush %bc instead of cpush %dc, cinv %ic */
-void flush_icache_range(unsigned long address, unsigned long endaddr)
+void flush_icache_user_range(unsigned long address, unsigned long endaddr)
 {
 	if (CPU_IS_COLDFIRE) {
 		unsigned long start, end;
@@ -104,6 +104,11 @@ void flush_icache_range(unsigned long address, unsigned long endaddr)
 			      : "di" (FLUSH_I));
 	}
 }
+
+void flush_icache_range(unsigned long address, unsigned long endaddr)
+{
+	flush_icache_user_range(address, endaddr);
+}
 EXPORT_SYMBOL(flush_icache_range);
 
 void flush_icache_user_page(struct vm_area_struct *vma, struct page *page,
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
