Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD89C9C2C4
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 11:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sez4kgP8IG2ZXOTjQnGHwNkM7UfEzRlo4TDKNi04qGA=; b=b0M+CcXEIDVWVp
	7xmy0C+L+eJUjVOnCFqxjc1rMS9dLIUEanyP7ugW4SuRLOFzIjqBxD3TZJulHMjSJAeHHAFSePRgw
	MJiA2B7Aj6TOTMQv6PkJg9+ymFsuWZvQ8Lrua76hoiB032xLAa7EsCc6Fo84s35dNNyTi2Le/Z9go
	wSw9PLai8i7LEsdR7efqZ8HjGapL0r0M8Gz0B2ZYyXTUCJZYNnwTRx1+I284L9EqHZLa55cpH4x9W
	DuGlhTl65GLGBRVg5d+NGGEp9H+lgXfkpPedY6y5j5QiDz8Lq41XW9fBtNY+Rden0mW1RhQXAtI/D
	2NnnVCmawfTYsSLJbPnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1p9s-0006hu-6C; Sun, 25 Aug 2019 09:50:00 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1p9m-0006gd-Sh
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 09:49:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566726575;
 bh=12JG/zbI6hfq4NAMOSZHOunCsNPbBMiTlzvrkGdEwkw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FeQNjNgGYtvjC/1SnpPJiMS1dUjie18ZUypP8htakIWCVwiWePRjcX+KkFMUKLvla
 Y6s1vCE8UO1AqATVeEiJKpiI9f3vaB7WsUK5MbN+HXRFWoPioQ1E0zF9hixohYhnxq
 sip7ZbXjil4ZQifrcBIEQ6PgBkDXiuu7q57jvPg8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx101 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0LjeWC-1idLl90MPY-00beGD; Sun, 25 Aug 2019 11:49:35 +0200
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com
Subject: [PATCH 4/4] Add SPDX headers for files in arch/um/include
Date: Sun, 25 Aug 2019 10:49:19 +0100
Message-Id: <20190825094919.4731-5-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
References: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZISJ07dTEo7gxrcSr6M77jl/FKKF7+iAKONRyp4mdVbgdRNeXP8
 a8qmiR5QbzSVkFKgw8M1iIKQkY7p5O/5+PXFLrza1EUzwtfMBePW/ruin+iExx3finUpBDa
 kiU0/fYjBPoTD+ONnMJ/BQbSpQr27k+eEDtKC5FIVMpBtGalhYClixKRqXrX7UDCCC3oBPr
 92T7rI04tlTFMQOArnnyQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AAEHhDNc/Ys=:6g1ksMq6zgLhOERiS7Obel
 VdMQyP5Ro/3uIsmp2OtloAlHhmqQNmbah4R2siw/dhvHAhtMuK5IFqqKo/NNcmFLhx7ModbNd
 lMffMnHIknmrn+7jG5GqdY+Cfe8JpOl0B9mBIbes1cSz+nqhHweWvmJOL04QMiGGnAop2hqHa
 A9guxGIafKlZdzeOopHRThQ6m60QZaxfuW12OBzjr4PAkyVAUlJ4k4MkwvenpQkUToroHb+y0
 h8nvDkiQs8801tHJDjtTCiawfKy/ECrnwyZzM6NnbqF2S1zU8BzZ/uiPsDxCT8GKMSNwWzbl9
 k8lOLx7QerftrEHLJXvbYzvuIfzJlOFIqafG5MKA8tdSP+kno53ig0aXVmPmNb7Hwn0yMv+pr
 W70kXnhHF7J/BDcrWscTZ1WpBcXx4sZJQ/4CgrN/pNKrq1rZKvihJOe9jgdIZFa6RXiFR98XF
 AL9OP1GgcNTPRRuNXiHNUvMq8Li9zC5lcYPJkxYLu5w9Vyy84G1bVgi18n4QYmZwivcn73lTG
 RngorCfpstdZdV4e+PQ0iEWU0pn9b4RwunM4ZgXm0qXEAUfWkU4ium18YuCUcj8TnVOgPhPMu
 6aCvTspYPm6l8FsHrUrFtIMyaXmElkr4k+KJAtfAe7GN3kRqzHm1m1+4SdTD6rVqwNmNfzzdP
 1ll39D+rM4jWwXn4nB+CSJWOz2Ccsfo/qlK5X3hp4o/w1DHB+Gwg8S4s/CB6hIHVrYc/SVDsN
 0BN59m9ZnYie8XDNjlznMCEkwsOtwqJLLfTyDMp0dwaJSGWSbdfjMYHnV0W9AZv4DojkPO6R4
 ysV637F0tDgMqjCX96FXZdEJeuNACCoezqSriRUy1QL1GuO1IRIpnSavKyv3XA4FtRixOOxjY
 P49njI+BEWPZAv2keBcSlO/WQebgAZXHji+agEhSo9f6gd4kFaDUjGeCJYaDAkqzZu0uMSaK1
 +oCWM+CpA+UxUm6Xo87QSS7K+c9x4eMsITs9sLczloNwdjKreLdIKLElOe2mhGwTd1QgTsAjr
 UQmMCzxhQ97c+ZMa71tQVg2DHIQUCb7nm2pZC9ww80GjDPuWe/UzDlcdNSQfkqun7vqE92xg1
 vxkxxgVVLzmzROA0IjYMi5NKotFZU9zArkvbP4gNikMmdwe/YywLVh87w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_024955_232976_8D707329 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alex Dewar <alex.dewar@gmx.co.uk>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Convert files to use SPDX header. All files are licensed under the GPLv2.

Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>
---
 arch/um/include/asm/kmap_types.h        | 2 +-
 arch/um/include/asm/mmu.h               | 2 +-
 arch/um/include/asm/mmu_context.h       | 2 +-
 arch/um/include/asm/page.h              | 2 +-
 arch/um/include/asm/pgalloc.h           | 2 +-
 arch/um/include/asm/pgtable-2level.h    | 2 +-
 arch/um/include/asm/pgtable-3level.h    | 2 +-
 arch/um/include/asm/pgtable.h           | 2 +-
 arch/um/include/asm/processor-generic.h | 2 +-
 arch/um/include/asm/ptrace-generic.h    | 2 +-
 arch/um/include/asm/thread_info.h       | 2 +-
 arch/um/include/asm/tlbflush.h          | 2 +-
 arch/um/include/asm/uaccess.h           | 2 +-
 arch/um/include/shared/arch.h           | 2 +-
 arch/um/include/shared/as-layout.h      | 2 +-
 arch/um/include/shared/elf_user.h       | 2 +-
 arch/um/include/shared/frame_kern.h     | 2 +-
 arch/um/include/shared/irq_kern.h       | 2 +-
 arch/um/include/shared/irq_user.h       | 2 +-
 arch/um/include/shared/kern.h           | 2 +-
 arch/um/include/shared/kern_util.h      | 2 +-
 arch/um/include/shared/mem.h            | 2 +-
 arch/um/include/shared/net_kern.h       | 2 +-
 arch/um/include/shared/net_user.h       | 2 +-
 arch/um/include/shared/os.h             | 2 +-
 arch/um/include/shared/ptrace_user.h    | 2 +-
 arch/um/include/shared/registers.h      | 2 +-
 arch/um/include/shared/sigio.h          | 2 +-
 arch/um/include/shared/skas/mm_id.h     | 2 +-
 arch/um/include/shared/skas/skas.h      | 2 +-
 arch/um/include/shared/skas/stub-data.h | 2 +-
 arch/um/include/shared/timer-internal.h | 2 +-
 arch/um/include/shared/um_malloc.h      | 2 +-
 arch/um/include/shared/user.h           | 2 +-
 34 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/um/include/asm/kmap_types.h b/arch/um/include/asm/kmap_types.h
index 2e0a6b1d8300..b0bd12de1d23 100644
--- a/arch/um/include/asm/kmap_types.h
+++ b/arch/um/include/asm/kmap_types.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __UM_KMAP_TYPES_H
diff --git a/arch/um/include/asm/mmu.h b/arch/um/include/asm/mmu.h
index da705448590f..5b072aba5b65 100644
--- a/arch/um/include/asm/mmu.h
+++ b/arch/um/include/asm/mmu.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __ARCH_UM_MMU_H
diff --git a/arch/um/include/asm/mmu_context.h b/arch/um/include/asm/mmu_context.h
index 00cefd33afdd..5aee0626e390 100644
--- a/arch/um/include/asm/mmu_context.h
+++ b/arch/um/include/asm/mmu_context.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_MMU_CONTEXT_H
diff --git a/arch/um/include/asm/page.h b/arch/um/include/asm/page.h
index f878bec23576..95af12e82a32 100644
--- a/arch/um/include/asm/page.h
+++ b/arch/um/include/asm/page.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2003 Jeff Dike (jdike@addtoit.com)
  * Copyright 2003 PathScale, Inc.
- * Licensed under the GPL
  */

 #ifndef __UM_PAGE_H
diff --git a/arch/um/include/asm/pgalloc.h b/arch/um/include/asm/pgalloc.h
index 2a3860b5fd56..881e76da1938 100644
--- a/arch/um/include/asm/pgalloc.h
+++ b/arch/um/include/asm/pgalloc.h
@@ -1,8 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000, 2001, 2002 Jeff Dike (jdike@karaya.com)
  * Copyright 2003 PathScale, Inc.
  * Derived from include/asm-i386/pgalloc.h and include/asm-i386/pgtable.h
- * Licensed under the GPL
  */

 #ifndef __UM_PGALLOC_H
diff --git a/arch/um/include/asm/pgtable-2level.h b/arch/um/include/asm/pgtable-2level.h
index 179c0ea87a0c..32b3d26a7109 100644
--- a/arch/um/include/asm/pgtable-2level.h
+++ b/arch/um/include/asm/pgtable-2level.h
@@ -1,8 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000, 2001, 2002 Jeff Dike (jdike@karaya.com)
  * Copyright 2003 PathScale, Inc.
  * Derived from include/asm-i386/pgtable.h
- * Licensed under the GPL
  */

 #ifndef __UM_PGTABLE_2LEVEL_H
diff --git a/arch/um/include/asm/pgtable-3level.h b/arch/um/include/asm/pgtable-3level.h
index c4d876dfb9ac..9812269fefc9 100644
--- a/arch/um/include/asm/pgtable-3level.h
+++ b/arch/um/include/asm/pgtable-3level.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright 2003 PathScale Inc
  * Derived from include/asm-i386/pgtable.h
- * Licensed under the GPL
  */

 #ifndef __UM_PGTABLE_3LEVEL_H
diff --git a/arch/um/include/asm/pgtable.h b/arch/um/include/asm/pgtable.h
index b377df76cc28..e4d3ed980d82 100644
--- a/arch/um/include/asm/pgtable.h
+++ b/arch/um/include/asm/pgtable.h
@@ -1,8 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  * Copyright 2003 PathScale, Inc.
  * Derived from include/asm-i386/pgtable.h
- * Licensed under the GPL
  */

 #ifndef __UM_PGTABLE_H
diff --git a/arch/um/include/asm/processor-generic.h b/arch/um/include/asm/processor-generic.h
index b58b746d3f2c..afd9b267cf81 100644
--- a/arch/um/include/asm/processor-generic.h
+++ b/arch/um/include/asm/processor-generic.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_PROCESSOR_GENERIC_H
diff --git a/arch/um/include/asm/ptrace-generic.h b/arch/um/include/asm/ptrace-generic.h
index 5ab20620fc97..81c647ef9c6c 100644
--- a/arch/um/include/asm/ptrace-generic.h
+++ b/arch/um/include/asm/ptrace-generic.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_PTRACE_GENERIC_H
diff --git a/arch/um/include/asm/thread_info.h b/arch/um/include/asm/thread_info.h
index 4eecd960ee8c..4c19ce4c49f1 100644
--- a/arch/um/include/asm/thread_info.h
+++ b/arch/um/include/asm/thread_info.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_THREAD_INFO_H
diff --git a/arch/um/include/asm/tlbflush.h b/arch/um/include/asm/tlbflush.h
index 614f2c091178..a5bda890390d 100644
--- a/arch/um/include/asm/tlbflush.h
+++ b/arch/um/include/asm/tlbflush.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_TLBFLUSH_H
diff --git a/arch/um/include/asm/uaccess.h b/arch/um/include/asm/uaccess.h
index cc00fc50768f..fe66d659acad 100644
--- a/arch/um/include/asm/uaccess.h
+++ b/arch/um/include/asm/uaccess.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Jeff Dike (jdike@karaya.com)
  * Copyright (C) 2015 Richard Weinberger (richard@nod.at)
- * Licensed under the GPL
  */

 #ifndef __UM_UACCESS_H
diff --git a/arch/um/include/shared/arch.h b/arch/um/include/shared/arch.h
index 4f46abda060d..880ee42a3329 100644
--- a/arch/um/include/shared/arch.h
+++ b/arch/um/include/shared/arch.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __ARCH_H__
diff --git a/arch/um/include/shared/as-layout.h b/arch/um/include/shared/as-layout.h
index ca1843e1df15..5f286ef2721b 100644
--- a/arch/um/include/shared/as-layout.h
+++ b/arch/um/include/shared/as-layout.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __START_H__
diff --git a/arch/um/include/shared/elf_user.h b/arch/um/include/shared/elf_user.h
index 53516b637272..fd461ee40c05 100644
--- a/arch/um/include/shared/elf_user.h
+++ b/arch/um/include/shared/elf_user.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2004 Fujitsu Siemens Computers GmbH
  * Author: Bodo Stroesser <bstroesser@fujitsu-siemens.com>
- * Licensed under the GPL
  */

 #ifndef __ELF_USER_H__
diff --git a/arch/um/include/shared/frame_kern.h b/arch/um/include/shared/frame_kern.h
index a5cde5c433b4..ed952ac661ca 100644
--- a/arch/um/include/shared/frame_kern.h
+++ b/arch/um/include/shared/frame_kern.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __FRAME_KERN_H_
diff --git a/arch/um/include/shared/irq_kern.h b/arch/um/include/shared/irq_kern.h
index e05bd667de15..7cd1a10c6244 100644
--- a/arch/um/include/shared/irq_kern.h
+++ b/arch/um/include/shared/irq_kern.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2001, 2002 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __IRQ_KERN_H__
diff --git a/arch/um/include/shared/irq_user.h b/arch/um/include/shared/irq_user.h
index e7242a0ae489..107751dce153 100644
--- a/arch/um/include/shared/irq_user.h
+++ b/arch/um/include/shared/irq_user.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __IRQ_USER_H__
diff --git a/arch/um/include/shared/kern.h b/arch/um/include/shared/kern.h
index 6cd01240bbf0..3a9c75a8413c 100644
--- a/arch/um/include/shared/kern.h
+++ b/arch/um/include/shared/kern.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __KERN_H__
diff --git a/arch/um/include/shared/kern_util.h b/arch/um/include/shared/kern_util.h
index 35ab97e4bb9b..ccafb62e8cce 100644
--- a/arch/um/include/shared/kern_util.h
+++ b/arch/um/include/shared/kern_util.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __KERN_UTIL_H__
diff --git a/arch/um/include/shared/mem.h b/arch/um/include/shared/mem.h
index 5cd40e99e8d5..4862c91d4213 100644
--- a/arch/um/include/shared/mem.h
+++ b/arch/um/include/shared/mem.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __MEM_H__
diff --git a/arch/um/include/shared/net_kern.h b/arch/um/include/shared/net_kern.h
index 40442b98b173..a87be13c5b87 100644
--- a/arch/um/include/shared/net_kern.h
+++ b/arch/um/include/shared/net_kern.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_NET_KERN_H
diff --git a/arch/um/include/shared/net_user.h b/arch/um/include/shared/net_user.h
index 3dabbe128e40..1b0531769a5e 100644
--- a/arch/um/include/shared/net_user.h
+++ b/arch/um/include/shared/net_user.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_NET_USER_H__
diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index 4a62ac4251a5..b335b6bc3fd6 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -1,8 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2015 Anton Ivanov (aivanov@{brocade.com,kot-begemot.co.uk})
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __OS_H__
diff --git a/arch/um/include/shared/ptrace_user.h b/arch/um/include/shared/ptrace_user.h
index 56b2f284b108..95455e8996e7 100644
--- a/arch/um/include/shared/ptrace_user.h
+++ b/arch/um/include/shared/ptrace_user.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __PTRACE_USER_H__
diff --git a/arch/um/include/shared/registers.h b/arch/um/include/shared/registers.h
index a74449b5b0e3..0c50fa6e8a55 100644
--- a/arch/um/include/shared/registers.h
+++ b/arch/um/include/shared/registers.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2004 PathScale, Inc
- * Licensed under the GPL
  */

 #ifndef __REGISTERS_H
diff --git a/arch/um/include/shared/sigio.h b/arch/um/include/shared/sigio.h
index 434f1a9ae4b3..8fe8f57c05de 100644
--- a/arch/um/include/shared/sigio.h
+++ b/arch/um/include/shared/sigio.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __SIGIO_H__
diff --git a/arch/um/include/shared/skas/mm_id.h b/arch/um/include/shared/skas/mm_id.h
index 48dd0989ddaa..4337b4ced095 100644
--- a/arch/um/include/shared/skas/mm_id.h
+++ b/arch/um/include/shared/skas/mm_id.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2005 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __MM_ID_H
diff --git a/arch/um/include/shared/skas/skas.h b/arch/um/include/shared/skas/skas.h
index 911f3c45ad1f..c93d2cbc8f32 100644
--- a/arch/um/include/shared/skas/skas.h
+++ b/arch/um/include/shared/skas/skas.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __SKAS_H
diff --git a/arch/um/include/shared/skas/stub-data.h b/arch/um/include/shared/skas/stub-data.h
index 13f404e1262b..6b01d97a9386 100644
--- a/arch/um/include/shared/skas/stub-data.h
+++ b/arch/um/include/shared/skas/stub-data.h
@@ -1,8 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*

  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2005 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #ifndef __STUB_DATA_H
diff --git a/arch/um/include/shared/timer-internal.h b/arch/um/include/shared/timer-internal.h
index 9991ec2371e4..f386e838dc12 100644
--- a/arch/um/include/shared/timer-internal.h
+++ b/arch/um/include/shared/timer-internal.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 - 2014 Cisco Systems
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __TIMER_INTERNAL_H__
diff --git a/arch/um/include/shared/um_malloc.h b/arch/um/include/shared/um_malloc.h
index 6395fef6b69b..13da93284c2c 100644
--- a/arch/um/include/shared/um_malloc.h
+++ b/arch/um/include/shared/um_malloc.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2005 Paolo 'Blaisorblade' Giarrusso <blaisorblade@yahoo.it>
- * Licensed under the GPL
  */

 #ifndef __UM_MALLOC_H__
diff --git a/arch/um/include/shared/user.h b/arch/um/include/shared/user.h
index 4cff19f6207a..e793e4212f0a 100644
--- a/arch/um/include/shared/user.h
+++ b/arch/um/include/shared/user.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __USER_H__
--
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
