Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFF19C2CA
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 11:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+i4hKT7QdmpY1AuUIbI+PCkzQl4orfKoig66NV9m9c=; b=beRZsOJPtrExrv
	y1njoroGMcrHGh+xGOPcYw92bYmiRu647tN8zqaKAkCu7JWH3Y2ub5VB/jDE9BaG3vuBp+Xb+p2mR
	5Rm2UfV45ggaIH8S+Rj+6J3SDPGEwyN86IUwGq3PYZDXgbgSxIAiLTohY26sgjnSEl+XLR3ZuO+RR
	/uTwBMwIR2JCI2ZCO3Htfv4nUQmA8eC7oBXpyFLCJReyjGVhQ4CUD1ztj9d6l4YreslGrerTfAQjC
	hm7HiksBKaOkVRiib5rovDICUoipCwRK1woosC9LbCJNlwID0jww9ugkfRf6sFEM8m0Jo+bbWLdQw
	vrtT/0Hx4RJk9HF1iSkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1pEe-00087o-3w; Sun, 25 Aug 2019 09:54:56 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1pEa-00086q-HP
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 09:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566726888;
 bh=wpwm/h/PX1MnCTShhML6CeEYozu3QtCCMLvyGcBw568=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QN3F4W/lZe7gZp1j5Jn8zZwLWdJ/a3u4cXSkQwePbmHFOMQsN2H26l8vU1vtEjGy/
 x2r9Q1JUiQGUNvFFGG5yGc5POzBo8TiQkogE/5W32YoyNyKDD7xoDIqe5A8lOCKszg
 DfcRI43M+Yp4wnB+51AxjGoVt3+rsFt11cfGhi9Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx101 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0MIQlv-1i4qUD0RVX-004F3C; Sun, 25 Aug 2019 11:49:34 +0200
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com
Subject: [PATCH 2/4] Add SPDX headers to files in arch/um/kernel/
Date: Sun, 25 Aug 2019 10:49:17 +0100
Message-Id: <20190825094919.4731-3-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
References: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
MIME-Version: 1.0
X-Provags-ID: V03:K1:CMoK15bXW2tAeWWbI7abeZUPMoPMseLv5FL+evXjltYb9O0hE+H
 So1z1gkjng5z2Vx6mGmmN5yfIkAa+ah63lhXPmNIFGulFS3EzKvjzacDYsiaOT0Jv/7+VYS
 3PXXQhTbmbRaGs5o+3KU54P6fizbMwD6sB+dIdRo3GcKSZBiICkxivyBlgsv2+1terDY5HY
 Nl4iz1MJunuJW1IpK6fIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m4HonM63AC0=:0pY5OZebjN8EdULy7U/n6u
 lVfWR07wyx6IVZ4xBJX71mcsBdzzEmZuxYIBQn/2AobG9T3PiuJzhdBn6OHUzMqi7wYJOVCBP
 s0YpIjf24palbpM88JvWwFOoBT67FRRplEE5z33xxOGPbdSEhGKbVVtGh6JYdAfeefJe0Ekd5
 iC1BSXGFzW0A0rg5eKwsuIgR9yZ+VpbAm9aEY7U/BNF/pyoZfVTEWG+6GrItVkh7YtonF2Mzi
 nlcZ8epmFzO5xzERq9M5SJI7RI0l0edQSzUZR1u9b6CGTu49JwJoZhWmOddk1029ksIZOM1+2
 8aDfUw1reP8KwZzSXQgE8ALepwoJZyktmB7mRuWEd5aCmc6ELYaAjAibAVeWxitJiAgZH0U1M
 8+CyUYzXBrG2XW+I3la1o3uRnYaVdjHhE7Xfi4ZPmkK8FFWDuP9lwX2fL0ELWhAJJF8QxUqHq
 oeCKwxqLWJmXjpRPUuW+AJ11l+GSYp/29O74t4lS9IcbAsnaotBZohMbEVoFkEEAhhtc252VY
 qYYjdP3grAEkneHYjF9R7JL02+Vf6oKC01N93pjNbZRErr1fM0M7DAtSqbrXJKoaKMdRoZsab
 hYCNf9la7YEsxaVX5s1hRoqBpq8bRafPElIrDSCgO2XH9VM5JJJjvVe5tJOkX7G1hD919farB
 ueWc643Z8etiGRO8iuEUatSV1EhpRQI5diFznyq3jZFURy7P9w1Ur28TKIGv6vapnXp3fjVq9
 o+L9rs168zk670sEfpLD7Y1E2S6eMXaYFsxklMqkVzVmyPjjm/tPLAAj0s5AKB5x6rTTWiAWd
 dZlhEe2IU5miD6EVoyPJufEhk7A4y6weMMh1oEzyYrIsMGhVbJJUKjjbEZw2+lKf0flMhkvVN
 wJcrahbam7ZytYo1lB7GF7zqRNq/u39KLdC+P105iR0egWlej91CswZCE+60HPUkcHnoTe/5k
 ZwYukpL4LlXNfFwFZLnh/JT0pne4y5aDRag6pW2LfKrJUeMAOgKcb0d3NsCG5eQDvn2j/4PO+
 KxIvspxx4UowEpxWyiORUJS6+IGjxSWVHaGeEou27u/9hw3oLqzahyUjGEPAMe33yfKFZFAHJ
 VesgNS0TAR4QEHS2ufzSZeZI99bDOYf2vLWxXSTTwhhcyty9c7OPOSSUQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_025452_876470_C99E39FF 
X-CRM114-Status: UNSURE (   8.08  )
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

Convert files to use SPDX header. All files are licensed under the
GPLv2.

Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>
---
 arch/um/kernel/Makefile       | 2 +-
 arch/um/kernel/config.c.in    | 4 ++--
 arch/um/kernel/exec.c         | 2 +-
 arch/um/kernel/exitcode.c     | 2 +-
 arch/um/kernel/gmon_syms.c    | 2 +-
 arch/um/kernel/gprof_syms.c   | 2 +-
 arch/um/kernel/initrd.c       | 2 +-
 arch/um/kernel/irq.c          | 2 +-
 arch/um/kernel/ksyms.c        | 2 +-
 arch/um/kernel/mem.c          | 2 +-
 arch/um/kernel/physmem.c      | 2 +-
 arch/um/kernel/process.c      | 2 +-
 arch/um/kernel/ptrace.c       | 2 +-
 arch/um/kernel/reboot.c       | 2 +-
 arch/um/kernel/sigio.c        | 2 +-
 arch/um/kernel/signal.c       | 2 +-
 arch/um/kernel/skas/Makefile  | 2 +-
 arch/um/kernel/skas/clone.c   | 2 +-
 arch/um/kernel/skas/mmu.c     | 2 +-
 arch/um/kernel/skas/process.c | 2 +-
 arch/um/kernel/skas/syscall.c | 2 +-
 arch/um/kernel/skas/uaccess.c | 2 +-
 arch/um/kernel/syscall.c      | 2 +-
 arch/um/kernel/time.c         | 2 +-
 arch/um/kernel/tlb.c          | 2 +-
 arch/um/kernel/trap.c         | 2 +-
 arch/um/kernel/um_arch.c      | 2 +-
 arch/um/kernel/umid.c         | 2 +-
 28 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/um/kernel/Makefile b/arch/um/kernel/Makefile
index 2f36d515762e..97fae04912a0 100644
--- a/arch/um/kernel/Makefile
+++ b/arch/um/kernel/Makefile
@@ -1,6 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux,intel}.com)
-# Licensed under the GPL
 #

 # Don't instrument UML-specific code; without this, we may crash when
diff --git a/arch/um/kernel/config.c.in b/arch/um/kernel/config.c.in
index 972bf1659564..3ece3c3b31cc 100644
--- a/arch/um/kernel/config.c.in
+++ b/arch/um/kernel/config.c.in
@@ -1,6 +1,6 @@
-/*
+// SPDX-License-Identifier: GPL-2.0
+/*
  * Copyright (C) 2002 Jeff Dike (jdike@karaya.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/kernel/exec.c b/arch/um/kernel/exec.c
index 783b9247161f..e8fd5d540b05 100644
--- a/arch/um/kernel/exec.c
+++ b/arch/um/kernel/exec.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/stddef.h>
diff --git a/arch/um/kernel/exitcode.c b/arch/um/kernel/exitcode.c
index 546302e3b7fb..369fd844e195 100644
--- a/arch/um/kernel/exitcode.c
+++ b/arch/um/kernel/exitcode.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/ctype.h>
diff --git a/arch/um/kernel/gmon_syms.c b/arch/um/kernel/gmon_syms.c
index f138a4a0db99..9361a8eb9bf1 100644
--- a/arch/um/kernel/gmon_syms.c
+++ b/arch/um/kernel/gmon_syms.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/module.h>
diff --git a/arch/um/kernel/gprof_syms.c b/arch/um/kernel/gprof_syms.c
index 74ddb44288a3..84d536908775 100644
--- a/arch/um/kernel/gprof_syms.c
+++ b/arch/um/kernel/gprof_syms.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/module.h>
diff --git a/arch/um/kernel/initrd.c b/arch/um/kernel/initrd.c
index 1dcd310cb34d..c1981ffb7179 100644
--- a/arch/um/kernel/initrd.c
+++ b/arch/um/kernel/initrd.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/init.h>
diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
index efde1f16c603..f4d01192d39f 100644
--- a/arch/um/kernel/irq.c
+++ b/arch/um/kernel/irq.c
@@ -1,8 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2017 - Cambridge Greys Ltd
  * Copyright (C) 2011 - 2014 Cisco Systems Inc
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  * Derived (i.e. mostly copied) from arch/i386/kernel/irq.c:
  *	Copyright (C) 1992, 1998 Linus Torvalds, Ingo Molnar
  */
diff --git a/arch/um/kernel/ksyms.c b/arch/um/kernel/ksyms.c
index 232b22307fdd..74f70aa4efde 100644
--- a/arch/um/kernel/ksyms.c
+++ b/arch/um/kernel/ksyms.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/module.h>
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index de58e976b9bc..76bc02abf362 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/stddef.h>
diff --git a/arch/um/kernel/physmem.c b/arch/um/kernel/physmem.c
index 5bf56af4d5b9..f6800892de7d 100644
--- a/arch/um/kernel/physmem.c
+++ b/arch/um/kernel/physmem.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/module.h>
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index 6bede7888fc2..4fa071e7446f 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Anton Ivanov (aivanov@{brocade.com,kot-begemot.co.uk})
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  * Copyright 2003 PathScale, Inc.
- * Licensed under the GPL
  */

 #include <linux/stddef.h>
diff --git a/arch/um/kernel/ptrace.c b/arch/um/kernel/ptrace.c
index da1e96b1ec3e..b425f47bddbb 100644
--- a/arch/um/kernel/ptrace.c
+++ b/arch/um/kernel/ptrace.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/audit.h>
diff --git a/arch/um/kernel/reboot.c b/arch/um/kernel/reboot.c
index 71f3e9217cf2..48c0610d506e 100644
--- a/arch/um/kernel/reboot.c
+++ b/arch/um/kernel/reboot.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/sched/signal.h>
diff --git a/arch/um/kernel/sigio.c b/arch/um/kernel/sigio.c
index 3fb6a4041ed6..10c99e058fca 100644
--- a/arch/um/kernel/sigio.c
+++ b/arch/um/kernel/sigio.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{linux.intel,addtoit}.com)
- * Licensed under the GPL
  */

 #include <linux/interrupt.h>
diff --git a/arch/um/kernel/signal.c b/arch/um/kernel/signal.c
index 57acbd67d85d..2dfe342f455e 100644
--- a/arch/um/kernel/signal.c
+++ b/arch/um/kernel/signal.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/module.h>
diff --git a/arch/um/kernel/skas/Makefile b/arch/um/kernel/skas/Makefile
index 5bd3edfcfedf..f3d494a4fd9b 100644
--- a/arch/um/kernel/skas/Makefile
+++ b/arch/um/kernel/skas/Makefile
@@ -1,6 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
-# Licensed under the GPL
 #

 obj-y := clone.o mmu.o process.o syscall.o uaccess.o
diff --git a/arch/um/kernel/skas/clone.c b/arch/um/kernel/skas/clone.c
index 0f25d41b1031..bfb70c456b30 100644
--- a/arch/um/kernel/skas/clone.c
+++ b/arch/um/kernel/skas/clone.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <signal.h>
diff --git a/arch/um/kernel/skas/mmu.c b/arch/um/kernel/skas/mmu.c
index 29e7f5f9f188..c41d39dafcc3 100644
--- a/arch/um/kernel/skas/mmu.c
+++ b/arch/um/kernel/skas/mmu.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/mm.h>
diff --git a/arch/um/kernel/skas/process.c b/arch/um/kernel/skas/process.c
index d4dbf08722d6..6f65c90a7760 100644
--- a/arch/um/kernel/skas/process.c
+++ b/arch/um/kernel/skas/process.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/init.h>
diff --git a/arch/um/kernel/skas/syscall.c b/arch/um/kernel/skas/syscall.c
index 44bb10785075..f574b1856bc6 100644
--- a/arch/um/kernel/skas/syscall.c
+++ b/arch/um/kernel/skas/syscall.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/kernel.h>
diff --git a/arch/um/kernel/skas/uaccess.c b/arch/um/kernel/skas/uaccess.c
index bd3cb694322c..3236052f20e6 100644
--- a/arch/um/kernel/skas/uaccess.c
+++ b/arch/um/kernel/skas/uaccess.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/err.h>
diff --git a/arch/um/kernel/syscall.c b/arch/um/kernel/syscall.c
index 35f7047bdebc..eed54c53fbbb 100644
--- a/arch/um/kernel/syscall.c
+++ b/arch/um/kernel/syscall.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/file.h>
diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
index 234757233355..8c55e67e0b2e 100644
--- a/arch/um/kernel/time.c
+++ b/arch/um/kernel/time.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Anton Ivanov (aivanov@{brocade.com,kot-begemot.co.uk})
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2012-2014 Cisco Systems
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/clockchips.h>
diff --git a/arch/um/kernel/tlb.c b/arch/um/kernel/tlb.c
index 45f739bf302f..b7eaf655635c 100644
--- a/arch/um/kernel/tlb.c
+++ b/arch/um/kernel/tlb.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/mm.h>
diff --git a/arch/um/kernel/trap.c b/arch/um/kernel/trap.c
index 58fe36856182..e62296c66c95 100644
--- a/arch/um/kernel/trap.c
+++ b/arch/um/kernel/trap.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/mm.h>
diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..8ae067de3d5d 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/delay.h>
diff --git a/arch/um/kernel/umid.c b/arch/um/kernel/umid.c
index 10bf4aca529f..8031a038eb58 100644
--- a/arch/um/kernel/umid.c
+++ b/arch/um/kernel/umid.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <asm/errno.h>
--
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
