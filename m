Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB22A11EDC
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 17:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=888WX6MWaiorz/1ResEeHNneQSARNRHDCCuDSIsBc74=; b=U4KxDDvDAlIzU2aKZAUQU2M0tR
	fpKIRM+6Sn0dHWpXwA4Bn4Vu01VA3BWSgQ+2GJUibKLNetPo2iCyhGyyBw28yasCWA22BJOWcdz3+
	ArFHG8OG92GEJTWvbXVZ153ZbI+u9+tUtcEvZVNlMOHf89Fjyz3wFmLlO688PjoU5v5Ql3YI072H2
	/THvx/CtwvgsR8XJwRJ/KopYgnSb5SvWyWm/Tb3fCD5vfEXzxccC0PbyE4xwaL4U+eWu8snEA1f8B
	G0GjkgpIM8314ENykVkaQbP6zd1YwxpCLTZM7QPSukftSghXmmOH9QC5Chudhczd929r9S9meq79G
	EImUrOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDuQ-0004Km-HD; Thu, 02 May 2019 15:46:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDu6-0003G9-Im
 for linux-um@bombadil.infradead.org; Thu, 02 May 2019 15:45:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:References:In-Reply-To:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/leJoppBbu58KfkuaC8uSH1NOeb3DKSZGT2KpEsXBa4=; b=kyZHkwVpA6EQh7o9GR+MRq741
 YdcSt6q4yv1DQoEXBt82M9d8DtsuG5GmhkYx1FDEDFvUtpiLtvr4VxqGJ7f5YF+KDfHA7YK9oSM01
 jPRw/YvPBzRcYBolTpN/KmEtPoSEw1PmayTfUMqvxanMiAXHFTR9ExzNd8VI7Rxwz0hVrTQX6zhQK
 MSZ4lWNPoKBqAfigmai0Kke2i9MUBfo9v+pxcDPtTVpkXDOvCGHqaCVrUHMKqPE1gvjxJk4B6qteD
 P3kL3THrUwTxIoqpIzqVD8tVo4GztmAls5VE9kHxZ6jOFYuW7kuvCXqS6H09ugYhVj0qsY4uVnfL5
 vDenoHjXQ==;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDel-0002lo-FP
 for linux-um@lists.infradead.org; Thu, 02 May 2019 15:29:57 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FSaNC129883
 for <linux-um@lists.infradead.org>; Thu, 2 May 2019 11:29:54 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81j5waf3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 11:29:54 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-um@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:29:50 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:29:41 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FTe3a53215466
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:29:40 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 617B852052;
 Thu,  2 May 2019 15:29:40 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id C91C15204F;
 Thu,  2 May 2019 15:29:35 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:29:34 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 09/15] nds32: switch to generic version of pte allocation
Date: Thu,  2 May 2019 18:28:36 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050215-0012-0000-0000-000003179C5E
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0013-0000-0000-000021500C32
Message-Id: <1556810922-20248-10-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_162955_725517_B1952491 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The nds32 implementation of pte_alloc_one_kernel() differs from the generic
in the use of __GFP_RETRY_MAYFAIL flag, which is removed after the
conversion.

The nds32 version of pte_alloc_one() missed the call to pgtable_page_ctor()
and also used __GFP_RETRY_MAYFAIL. Switching it to use generic
__pte_alloc_one() for the PTE page allocation ensures that page table
constructor is run and the user page tables are allocated with
__GFP_ACCOUNT.

The conversion to the generic version of pte_free_kernel() removes the NULL
check for pte.

The pte_free() version on nds32 is identical to the generic one and can be
simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/nds32/include/asm/pgalloc.h | 31 ++++---------------------------
 1 file changed, 4 insertions(+), 27 deletions(-)

diff --git a/arch/nds32/include/asm/pgalloc.h b/arch/nds32/include/asm/pgalloc.h
index 3c5fee5..954696c 100644
--- a/arch/nds32/include/asm/pgalloc.h
+++ b/arch/nds32/include/asm/pgalloc.h
@@ -9,6 +9,9 @@
 #include <asm/tlbflush.h>
 #include <asm/proc-fns.h>
 
+#define __HAVE_ARCH_PTE_ALLOC_ONE
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 /*
  * Since we have only two-level page tables, these are trivial
  */
@@ -22,22 +25,11 @@ extern void pgd_free(struct mm_struct *mm, pgd_t * pgd);
 
 #define check_pgt_cache()		do { } while (0)
 
-static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	pte_t *pte;
-
-	pte =
-	    (pte_t *) __get_free_page(GFP_KERNEL | __GFP_RETRY_MAYFAIL |
-				      __GFP_ZERO);
-
-	return pte;
-}
-
 static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
 {
 	pgtable_t pte;
 
-	pte = alloc_pages(GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_ZERO, 0);
+	pte = __pte_alloc_one(mm, GFP_PGTABLE_USER);
 	if (pte)
 		cpu_dcache_wb_page((unsigned long)page_address(pte));
 
@@ -45,21 +37,6 @@ static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
 }
 
 /*
- * Free one PTE table.
- */
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t * pte)
-{
-	if (pte) {
-		free_page((unsigned long)pte);
-	}
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
-{
-	__free_page(pte);
-}
-
-/*
  * Populate the pmdp entry with a pointer to the pte.  This pmd is part
  * of the mm address space.
  *
-- 
2.7.4


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
