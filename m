Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF991D525D
	for <lists+linux-um@lfdr.de>; Fri, 15 May 2020 16:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuPOF+uNSXC/HPNWJQmXYOwv5eRe5QjD7ZPhSIipb0M=; b=XO2/frTjq00We/
	GxS0c60YB84HQZVzXp6d2raxJ3Y302SQ6KDIjjsmrwWBFKEEHIjgdmDv2gbVTeeo8Zzc3/vbqWlCC
	g9XgeWLp84g6eEtoDocPRu1zVFRZO+lCA8sYa9rcbcobaObgaSk6rcgVW8AmXaRXnzvV58NMd4F/k
	SDUeiTGOUhKyc3C0fgwFYOOfhWxGHy+ruJGabe7dlYqYSBRHaF0GoiJPGQWb1b/2rxQpOHFI/Ry2b
	LC4em87dScpusJ0v7OUGCkbatfxMfVoGs2v3qI+r5p4DIN2eEu3sHa+l1Z/uWQglJi3As3WQZRarJ
	BJ2xf2LM71VQP+sP8Eqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbd5-0004Cv-Kk; Fri, 15 May 2020 14:48:03 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbTb-0005KV-FH; Fri, 15 May 2020 14:38:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 29/29] module: move the set_fs hack for flush_icache_range to
 m68k
Date: Fri, 15 May 2020 16:36:46 +0200
Message-Id: <20200515143646.3857579-30-hch@lst.de>
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

flush_icache_range generally operates on kernel addresses, but for some
reason m68k needed a set_fs override.  Move that into the m68k code
insted of keeping it in the module loader.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/m68k/mm/cache.c | 4 ++++
 kernel/module.c      | 8 --------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/m68k/mm/cache.c b/arch/m68k/mm/cache.c
index 7915be3a09712..5ecb3310e8745 100644
--- a/arch/m68k/mm/cache.c
+++ b/arch/m68k/mm/cache.c
@@ -107,7 +107,11 @@ void flush_icache_user_range(unsigned long address, unsigned long endaddr)
 
 void flush_icache_range(unsigned long address, unsigned long endaddr)
 {
+	mm_segment_t old_fs = get_fs();
+
+	set_fs(KERNEL_DS);
 	flush_icache_user_range(address, endaddr);
+	set_fs(old_fs);
 }
 EXPORT_SYMBOL(flush_icache_range);
 
diff --git a/kernel/module.c b/kernel/module.c
index 646f1e2330d2b..b1673ed49594f 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -3312,12 +3312,6 @@ static int check_module_license_and_versions(struct module *mod)
 
 static void flush_module_icache(const struct module *mod)
 {
-	mm_segment_t old_fs;
-
-	/* flush the icache in correct context */
-	old_fs = get_fs();
-	set_fs(KERNEL_DS);
-
 	/*
 	 * Flush the instruction cache, since we've played with text.
 	 * Do it before processing of module parameters, so the module
@@ -3329,8 +3323,6 @@ static void flush_module_icache(const struct module *mod)
 				   + mod->init_layout.size);
 	flush_icache_range((unsigned long)mod->core_layout.base,
 			   (unsigned long)mod->core_layout.base + mod->core_layout.size);
-
-	set_fs(old_fs);
 }
 
 int __weak module_frob_arch_sections(Elf_Ehdr *hdr,
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
