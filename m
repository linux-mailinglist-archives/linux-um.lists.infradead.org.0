Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF89EED99B
	for <lists+linux-um@lfdr.de>; Mon,  4 Nov 2019 08:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6E8EduwIHhAS/8hajomgdIuT8W3vvXYA6BMITK4CTPQ=; b=mFqmkEwVMrSx/fHZYTusbNRkJz
	abUjqMtmqfSK2tHLxeCvQu+nmMBVkKrezB1fLT4CsKGcQEdydrRHt0JJyAo/janFhq+5iaDixXYy1
	tNXwzX9UCzuHPY/b2D7iO4cY+OtIhrT0MjXzVTGbSOSD2KmRvmEUeHsJCsBJNJB6WLeIci2NjHyab
	49i32BxPOHIrWTcYxcBAqqjUUrmxqKZ3gkqHvrKTlMvvhi8fk9muDyrwZi1hajM5IyLZ6qruNjlJH
	jNV8N+J4inqWH5hTewuzzwp3Ue+r5qmgLkIbIjyipXbqSvGWJL4opEkN6SHnRQpgV2ck976mLhIRu
	J7rYYsSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWLE-0008PS-A7; Mon, 04 Nov 2019 06:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWJQ-0006mS-KL; Mon, 04 Nov 2019 06:58:07 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9298B222D4;
 Mon,  4 Nov 2019 06:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572850684;
 bh=fDiqm/damFNz7xG0t39R7SwZGjDrTUDgZUjYLDoVD3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q+Z6xFshUx2AHAxU2CUoSUL9VakeQeqWD52XYfrZahAKAuW3kWIK63ryb7UB4hEdl
 /UhYszl3oYbN/ZUAudNB7x9tvq7e1Z4dc6zISzxJo+buffE3+jfiqPphxjBkwhnyUB
 kSjU9tTQVl8nVkizIFuvXIwOMTrNdbxOiGaJrK2w=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v3 09/13] parisc/hugetlb: use pgtable-nopXd instead of
 4level-fixup
Date: Mon,  4 Nov 2019 08:56:23 +0200
Message-Id: <1572850587-20314-10-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572850587-20314-1-git-send-email-rppt@kernel.org>
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_225804_740142_D292795E 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Helge Deller <deller@gmx.de>

Signed-off-by: Helge Deller <deller@gmx.de>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/parisc/mm/hugetlbpage.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/parisc/mm/hugetlbpage.c b/arch/parisc/mm/hugetlbpage.c
index d578809..0e1e212 100644
--- a/arch/parisc/mm/hugetlbpage.c
+++ b/arch/parisc/mm/hugetlbpage.c
@@ -49,6 +49,7 @@ pte_t *huge_pte_alloc(struct mm_struct *mm,
 			unsigned long addr, unsigned long sz)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
@@ -61,7 +62,8 @@ pte_t *huge_pte_alloc(struct mm_struct *mm,
 	addr &= HPAGE_MASK;
 
 	pgd = pgd_offset(mm, addr);
-	pud = pud_alloc(mm, pgd, addr);
+	p4d = p4d_offset(pgd, addr);
+	pud = pud_alloc(mm, p4d, addr);
 	if (pud) {
 		pmd = pmd_alloc(mm, pud, addr);
 		if (pmd)
@@ -74,6 +76,7 @@ pte_t *huge_pte_offset(struct mm_struct *mm,
 		       unsigned long addr, unsigned long sz)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
@@ -82,11 +85,14 @@ pte_t *huge_pte_offset(struct mm_struct *mm,
 
 	pgd = pgd_offset(mm, addr);
 	if (!pgd_none(*pgd)) {
-		pud = pud_offset(pgd, addr);
-		if (!pud_none(*pud)) {
-			pmd = pmd_offset(pud, addr);
-			if (!pmd_none(*pmd))
-				pte = pte_offset_map(pmd, addr);
+		p4d = p4d_offset(pgd, addr);
+		if (!p4d_none(*p4d)) {
+			pud = pud_offset(p4d, addr);
+			if (!pud_none(*pud)) {
+				pmd = pmd_offset(pud, addr);
+				if (!pmd_none(*pmd))
+					pte = pte_offset_map(pmd, addr);
+			}
 		}
 	}
 	return pte;
-- 
2.7.4


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
