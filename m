Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C33109C2C9
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 11:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URO4tumC0DAVfnqim/D3Co9gUm9EoMI2NHuTMH5K8tg=; b=aVFstpihJD/u59
	7R8g57Udj8QxhSDVhleo5kbsNjeNB2JhAEvdf9f1yb/xGGkE6Zta7M1wFe1mGbW9W+ARz70GH+U1F
	YOkcbEA4ooshyVM9nIvExc6nU0ky6f1Bj67kZyv/CN6TUCqRZ+UT9+MKB50OlbRgy9+Coo678CGyU
	1Qy8Xj2OXISaQE6LGx1yhkV1pB69YVdvWjbwxJ830GefPRGBCW1kTDS78yjRS+kmLMQHhjJcPYSb0
	DlYfj1dyaSMp45RDs5fDQrWo2nvXlgwI2vTQ7HuQWFhk4mjAM4KD7CP1/Be7E6IWvPv0cRPdW+0nx
	7BKCVeqBtyLDAQPRxiWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1pEa-00086s-TV; Sun, 25 Aug 2019 09:54:52 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1pEX-00086Y-71
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 09:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566726887;
 bh=jxE7lq3K0sY1v0CXcnsEJ8dJW42By6msRdhqb+B5OTE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=HWQV7/vyiEdg10vP3Sd2HbVuBds+5HM6+oX1gEF5fzaKiV5DTn2TiD5sVT95OObHM
 BUunAwCoRJBG3+gtF6fNuOhET9NrLNS1A4TIgo+6f0XBx4YtOamm6tSUk0ibswFCyk
 Nsv90YbqFarlteaJMxsm5vMBjSZu/ly+/PGjygA8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx101 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0ME33j-1i0SlV2YRz-00HQKQ; Sun, 25 Aug 2019 11:49:34 +0200
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com
Subject: [PATCH 3/4] Add SPDX headers for files in arch/um/os-Linux
Date: Sun, 25 Aug 2019 10:49:18 +0100
Message-Id: <20190825094919.4731-4-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
References: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nD4Ro3OYvTq47t9eg9Qi4PbYzgp2pECnl9RWyTlHLy6lfMdOsHq
 6DXpu77KoatDBc9ac3Bgc3Inh9H4RQxa6C0arLDIYrW1CDLn7xkK7mvX9TBdJLVAGoXDtih
 bup2qx+rDPfZ2R7nmuNkNQ+bq7nEaUoe6lsDQmSaqi2dUWtqYcFpM4dEwMN/NJBwiSiBIyN
 Kg47qYdEiAR0TtgSEpNEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+SNI2/Yv8tY=:Vc6KDnD3kyNiaiIvqXj+0v
 Umwx4KwaHMWdNunKfzUm1yinJrkXR2YUGWeS9qZhAeUoKLXgXN/AmL1PeRw3haiVgfxAfhrqO
 X4FD1AwPtrSLjaqbnpXMMrWK0hxyiIQTYTVDL/ALGqrj/S4jrD+fH0rYFKZ2xsRMRcwgYVtL4
 L5OAr1e4nedWXx8a+1reCzZkBneOBud5HovGpiz5t/l/UvFFwjJWokSdOU2Cqas3fP2Xe+jgH
 o5qnWGVWsuM0YX3gAtxTuTtbiDK4GKZaT7q6eI4PgHmz8ZPqosmStgXzTBuhvQmF/XrcXa7RR
 23gDwyX51PMIeimw//Q1GtuA137EcOfPNym7urlXoePTKyaWA7acdwAar/lQdmp5okZPfSCsL
 YDY4qjiOQiDp/Z4NMh1lZhY0tdul5EJDWXuG8CYC3GbdC0x0S249SxXj+dST8SAp1JIeiy3yT
 msA/fpRTSf9KapvXkO/o6vNCRBlRosO3AmQfgXHIzorba3CTNx/gLZ8AGfSq/0rkWQ7uzNjLM
 MBhAyuVv3jg3owpnfWkhulnEzwd1ibCqQMpLaPuPauaOZRw9kAZe76KJ6fRtBcY4g2POBORRe
 dJyXTEj1WKKhIM1VeS/Mv8kaRBtgsvKnN6yeqnSYfPYrCHzuJCrzdwKd/ONeqva24R2i2Xqs9
 KAEbiMC0wx4JUepL1rkuvVwh/Kg08BpRpBKGc6K+iC57Aw+kt9+OkatqNjg8yqKH/gWlqu4Dn
 AKvZOBQozAHRs9GiZzeMWyFqDFrdtfNksv+IkaS6C2FJm0BkQ/VLxk9V+u8uTAS0pe/SOBNaF
 11MVc97jymKl56JT/o9/xpnsf8NezC+81bzV0JiUQS9EVOMxjamHXYIXpYCtbQKNCvlgU2nQg
 BTXhizZVHcTSOk6GAtHNiZxV801NvVvVgKaNkq//azceX5eDzVZrxNXomCvKV7CT6FQeEFAwP
 l6GwjeHjBgL5FQlggUC+/jSpejmpxCjeWQ1jnHqqqBZ1SMi7eGeIq5U1xzAnms0nBK2b+UamN
 rtiurCztLnNaSiZGPfjQs4mr04Jdo67wtJuLiGmCuOHYtemrZ1Rwe0dCmxZ5Y3XSLfBM/64gv
 k/Ix5nWpadyxC4Lt8FMeZI+gQjLNhG1GO8teNwXOw2TOc+DuOhy98zGJg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_025449_556152_C70FDC48 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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
 arch/um/os-Linux/Makefile                | 2 +-
 arch/um/os-Linux/drivers/Makefile        | 2 +-
 arch/um/os-Linux/drivers/etap.h          | 2 +-
 arch/um/os-Linux/drivers/ethertap_kern.c | 2 +-
 arch/um/os-Linux/drivers/ethertap_user.c | 2 +-
 arch/um/os-Linux/drivers/tuntap.h        | 2 +-
 arch/um/os-Linux/drivers/tuntap_kern.c   | 2 +-
 arch/um/os-Linux/drivers/tuntap_user.c   | 2 +-
 arch/um/os-Linux/file.c                  | 2 +-
 arch/um/os-Linux/helper.c                | 2 +-
 arch/um/os-Linux/irq.c                   | 2 +-
 arch/um/os-Linux/main.c                  | 2 +-
 arch/um/os-Linux/mem.c                   | 2 +-
 arch/um/os-Linux/process.c               | 2 +-
 arch/um/os-Linux/registers.c             | 2 +-
 arch/um/os-Linux/sigio.c                 | 2 +-
 arch/um/os-Linux/signal.c                | 2 +-
 arch/um/os-Linux/skas/Makefile           | 2 +-
 arch/um/os-Linux/skas/mem.c              | 2 +-
 arch/um/os-Linux/skas/process.c          | 2 +-
 arch/um/os-Linux/start_up.c              | 2 +-
 arch/um/os-Linux/time.c                  | 2 +-
 arch/um/os-Linux/tty.c                   | 2 +-
 arch/um/os-Linux/umid.c                  | 2 +-
 arch/um/os-Linux/util.c                  | 2 +-
 25 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/um/os-Linux/Makefile b/arch/um/os-Linux/Makefile
index 455b500afe97..839915b8c31c 100644
--- a/arch/um/os-Linux/Makefile
+++ b/arch/um/os-Linux/Makefile
@@ -1,6 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
-# Licensed under the GPL
 #

 # Don't instrument UML-specific code
diff --git a/arch/um/os-Linux/drivers/Makefile b/arch/um/os-Linux/drivers/Makefile
index 6c546dc9222b..d79e75f1b69a 100644
--- a/arch/um/os-Linux/drivers/Makefile
+++ b/arch/um/os-Linux/drivers/Makefile
@@ -1,6 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) 2000, 2002 Jeff Dike (jdike@karaya.com)
-# Licensed under the GPL
 #

 ethertap-objs := ethertap_kern.o ethertap_user.o
diff --git a/arch/um/os-Linux/drivers/etap.h b/arch/um/os-Linux/drivers/etap.h
index 54183a679fdd..a475259f90e1 100644
--- a/arch/um/os-Linux/drivers/etap.h
+++ b/arch/um/os-Linux/drivers/etap.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __DRIVERS_ETAP_H
diff --git a/arch/um/os-Linux/drivers/ethertap_kern.c b/arch/um/os-Linux/drivers/ethertap_kern.c
index f424600a583f..3182e759d8de 100644
--- a/arch/um/os-Linux/drivers/ethertap_kern.c
+++ b/arch/um/os-Linux/drivers/ethertap_kern.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 Lennert Buytenhek (buytenh@gnu.org) and
  * James Leu (jleu@mindspring.net).
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  * Copyright (C) 2001 by various other people who didn't put their name here.
- * Licensed under the GPL.
  */

 #include <linux/init.h>
diff --git a/arch/um/os-Linux/drivers/ethertap_user.c b/arch/um/os-Linux/drivers/ethertap_user.c
index 6d4918246ffe..9483021d86dd 100644
--- a/arch/um/os-Linux/drivers/ethertap_user.c
+++ b/arch/um/os-Linux/drivers/ethertap_user.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  * Copyright (C) 2001 Lennert Buytenhek (buytenh@gnu.org) and
  * James Leu (jleu@mindspring.net).
  * Copyright (C) 2001 by various other people who didn't put their name here.
- * Licensed under the GPL.
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/drivers/tuntap.h b/arch/um/os-Linux/drivers/tuntap.h
index 7367354ac8df..e364e42abfc5 100644
--- a/arch/um/os-Linux/drivers/tuntap.h
+++ b/arch/um/os-Linux/drivers/tuntap.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #ifndef __UM_TUNTAP_H
diff --git a/arch/um/os-Linux/drivers/tuntap_kern.c b/arch/um/os-Linux/drivers/tuntap_kern.c
index d9d56e5810fe..adcb6717be6f 100644
--- a/arch/um/os-Linux/drivers/tuntap_kern.c
+++ b/arch/um/os-Linux/drivers/tuntap_kern.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <linux/netdevice.h>
diff --git a/arch/um/os-Linux/drivers/tuntap_user.c b/arch/um/os-Linux/drivers/tuntap_user.c
index db24ce0d09a6..53eb3d508645 100644
--- a/arch/um/os-Linux/drivers/tuntap_user.c
+++ b/arch/um/os-Linux/drivers/tuntap_user.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index f25b110d4e70..453a2273e8c6 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/helper.c b/arch/um/os-Linux/helper.c
index 3f02d4232812..9fa6e4187d4f 100644
--- a/arch/um/os-Linux/helper.c
+++ b/arch/um/os-Linux/helper.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdlib.h>
diff --git a/arch/um/os-Linux/irq.c b/arch/um/os-Linux/irq.c
index 365823010346..d508310ee5e1 100644
--- a/arch/um/os-Linux/irq.c
+++ b/arch/um/os-Linux/irq.c
@@ -1,8 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2017 - Cambridge Greys Ltd
  * Copyright (C) 2011 - 2014 Cisco Systems Inc
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdlib.h>
diff --git a/arch/um/os-Linux/main.c b/arch/um/os-Linux/main.c
index f1fee2b91239..c8a42ecbd7a2 100644
--- a/arch/um/os-Linux/main.c
+++ b/arch/um/os-Linux/main.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/mem.c b/arch/um/os-Linux/mem.c
index e162a95ad7dd..3c1b77474d2d 100644
--- a/arch/um/os-Linux/mem.c
+++ b/arch/um/os-Linux/mem.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/process.c b/arch/um/os-Linux/process.c
index b3e0d40932e1..e52dd37ddadc 100644
--- a/arch/um/os-Linux/process.c
+++ b/arch/um/os-Linux/process.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/registers.c b/arch/um/os-Linux/registers.c
index 2ff8d4fe83c4..2d9270508e15 100644
--- a/arch/um/os-Linux/registers.c
+++ b/arch/um/os-Linux/registers.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2004 PathScale, Inc
  * Copyright (C) 2004 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <errno.h>
diff --git a/arch/um/os-Linux/sigio.c b/arch/um/os-Linux/sigio.c
index 46e762f926eb..d88e9cb739c4 100644
--- a/arch/um/os-Linux/sigio.c
+++ b/arch/um/os-Linux/sigio.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2008 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <unistd.h>
diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
index 75b10235d369..f450147b9711 100644
--- a/arch/um/os-Linux/signal.c
+++ b/arch/um/os-Linux/signal.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Anton Ivanov (aivanov@{brocade.com,kot-begemot.co.uk})
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2004 PathScale, Inc
  * Copyright (C) 2004 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdlib.h>
diff --git a/arch/um/os-Linux/skas/Makefile b/arch/um/os-Linux/skas/Makefile
index d2ea3409e072..c4566e788815 100644
--- a/arch/um/os-Linux/skas/Makefile
+++ b/arch/um/os-Linux/skas/Makefile
@@ -1,6 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) 2002 - 2007 Jeff Dike (jdike@{linux.intel,addtoit}.com)
-# Licensed under the GPL
 #

 obj-y := mem.o process.o
diff --git a/arch/um/os-Linux/skas/mem.c b/arch/um/os-Linux/skas/mem.c
index 35015e3e1e87..c546d16f8dfe 100644
--- a/arch/um/os-Linux/skas/mem.c
+++ b/arch/um/os-Linux/skas/mem.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stddef.h>
diff --git a/arch/um/os-Linux/skas/process.c b/arch/um/os-Linux/skas/process.c
index df4a985716eb..f34a7126aec5 100644
--- a/arch/um/os-Linux/skas/process.c
+++ b/arch/um/os-Linux/skas/process.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2002- 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdlib.h>
diff --git a/arch/um/os-Linux/start_up.c b/arch/um/os-Linux/start_up.c
index 82bf5f8442ba..f79dc338279e 100644
--- a/arch/um/os-Linux/start_up.c
+++ b/arch/um/os-Linux/start_up.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/time.c b/arch/um/os-Linux/time.c
index 6d94ff52362c..432f8e1f55c2 100644
--- a/arch/um/os-Linux/time.c
+++ b/arch/um/os-Linux/time.c
@@ -1,9 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2015 Anton Ivanov (aivanov@{brocade.com,kot-begemot.co.uk})
  * Copyright (C) 2015 Thomas Meyer (thomas@m3y3r.de)
  * Copyright (C) 2012-2014 Cisco Systems
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stddef.h>
diff --git a/arch/um/os-Linux/tty.c b/arch/um/os-Linux/tty.c
index 721d8afa329b..f784db83e026 100644
--- a/arch/um/os-Linux/tty.c
+++ b/arch/um/os-Linux/tty.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdlib.h>
diff --git a/arch/um/os-Linux/umid.c b/arch/um/os-Linux/umid.c
index e261656fe9d7..44def53a11cd 100644
--- a/arch/um/os-Linux/umid.c
+++ b/arch/um/os-Linux/umid.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
diff --git a/arch/um/os-Linux/util.c b/arch/um/os-Linux/util.c
index 8cc8b2617a67..ecf2f390fad2 100644
--- a/arch/um/os-Linux/util.c
+++ b/arch/um/os-Linux/util.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- * Licensed under the GPL
  */

 #include <stdio.h>
--
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
