Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807AE115E
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgrsWeOUVzNfTBtP1pIuBnW94Jg6wwgFXgF26bHZXSk=; b=uDaZafLlThcbQS
	1HSXstQkDkriv9HjtiBrSCUgZtklzodjhBgMxMpliDkFrs11P7IzDYEQqdREyRDW/JGe2AVpx+STf
	eRCyZDFlTu3rBlOyJ/q5P52suOQVK3S+SiaWLPEM9VL0gZJK/gB2Var6eGtRDHXBEU9qIMW8EGqsM
	7J2xLt4USetWOjtIRdt9zGChPMkjoPK3X/VtPgO6KbvUgR65vOIBjkoTeivy2RPMsVAitUSn0vaY6
	E4rP0kreBU3Oba8QjjtN+HgT4kHNOwFn+oim5a+MH2FRdVoKDmlcmpcLO/8inthV8OxpGPEEYKPCu
	vCrliMlKED9Tq5Y37EWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8ki-0001dV-4a; Wed, 23 Oct 2019 05:00:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ke-00016d-5T
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id c13so908114pfp.5
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3F06MzQIR+OxFJBk2+wcrGjKmrtynZhaVo4Yb9Zu54U=;
 b=hSl/wR95xtHzUHlEER+qUfkzVzdhbSFgD2EtDYtxC0ehjSOXJBeXy8oyLw+vzmvxv5
 sUq4jTjrv+c0yX4ZhQV4f80i9qxDwPj/Mz693s4OaPMQPDUl5CIyZP8355preUkwTMUi
 i/jHzX9DMRy0LaNePgvszRG7R0ncWVftils7mxpz43nX8BVFG8q5xpxgbOgjDhJBIZ0S
 TwOnQtKM6g0YJvisI8+Dwt3OFyVg+8jt8v8o6Meng/vhUYxJ1rPWyCm2jdv9LjS7araW
 uon3FCwaP48I4VmDZbbOs/iYL+koWHh459R4+EQ2uFN0B6xd04JcVU/RSvbe6ibWjKO2
 y+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3F06MzQIR+OxFJBk2+wcrGjKmrtynZhaVo4Yb9Zu54U=;
 b=AX4GEOspz8aLkJuk3EaNHLlSwk2FUWkT6WJMTHDCPCUIahj9Hf1E36kj/mly+Z8mjw
 t0tVqC2RhCznINv3L1ArRN+Ul3iPOyy9xeakYECI6Jz5njKZlOBLcYSPhB2Is3oSYkCi
 Zb0HA6KY6GGR4TRswR45pnz3EW+N7s9CK/IkUf9uIpFdo9slnBzcqSZFf6/wFgOYWmS+
 wrgTNLtPPnlEmTnNOcj4tH0065p2Gpc/PFHY4T7ZXxCcLAulBSKw/wHToekiuzXyz7De
 ZMrWUy0fp26e8+Ggc70OATQC1g7Kh2hkP71RDijVBKEbUozs0UnleL/V5LHw1Sd/31OZ
 bb5A==
X-Gm-Message-State: APjAAAUmAFYFzVZyxKuMmfG5Lpc9g2pYcZO6wifbtqU3GO5oKq8yGOYg
 W/vyc5SguKbD7+u4lu0L4X96mVDOPWH6/g==
X-Google-Smtp-Source: APXvYqz9G46uM2M058HlsqZWt0Cyb33dKTNUkszmg8PRHwXwxyCl2eg7vL4noszhSeWH4PrmCvDwCg==
X-Received: by 2002:a65:504b:: with SMTP id k11mr7732803pgo.13.1571806802887; 
 Tue, 22 Oct 2019 22:00:02 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id d22sm22169517pfq.168.2019.10.22.22.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:02 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 728DB201995806; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 10/47] lkl: memory mapped I/O support
Date: Wed, 23 Oct 2019 13:37:44 +0900
Message-Id: <d4be93d569944b9e0d3052bcc12b981b0fa1894d.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220004_217606_F2F22DE9 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

All memory mapped I/O access is redirected to the host via the
iomem_access host operation. The host can setup the memory mapped I/O
region via the ioremap operation.

This allows the host to implement support for various devices, such as
block or network devices.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/io.h | 104 +++++++++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/io.h

diff --git a/arch/um/lkl/include/asm/io.h b/arch/um/lkl/include/asm/io.h
new file mode 100644
index 000000000000..33d4e1a7feb2
--- /dev/null
+++ b/arch/um/lkl/include/asm/io.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_LKL_IO_H
+#define _ASM_LKL_IO_H
+
+#include <asm/bug.h>
+#include <asm/host_ops.h>
+
+#define __raw_readb __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	int ret;
+	u8 value;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 0);
+	WARN(ret, "error reading iomem %p", addr);
+
+	return value;
+}
+
+#define __raw_readw __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	int ret;
+	u16 value;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 0);
+	WARN(ret, "error reading iomem %p", addr);
+
+	return value;
+}
+
+#define __raw_readl __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	int ret;
+	u32 value;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 0);
+	WARN(ret, "error reading iomem %p", addr);
+
+	return value;
+}
+
+#ifdef CONFIG_64BIT
+#define __raw_readq __raw_readq
+static inline u64 __raw_readq(const volatile void __iomem *addr)
+{
+	int ret;
+	u64 value;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 0);
+	WARN(ret, "error reading iomem %p", addr);
+
+	return value;
+}
+#endif /* CONFIG_64BIT */
+
+#define __raw_writeb __raw_writeb
+static inline void __raw_writeb(u8 value, volatile void __iomem *addr)
+{
+	int ret;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 1);
+	WARN(ret, "error writing iomem %p", addr);
+}
+
+#define __raw_writew __raw_writew
+static inline void __raw_writew(u16 value, volatile void __iomem *addr)
+{
+	int ret;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 1);
+	WARN(ret, "error writing iomem %p", addr);
+}
+
+#define __raw_writel __raw_writel
+static inline void __raw_writel(u32 value, volatile void __iomem *addr)
+{
+	int ret;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 1);
+	WARN(ret, "error writing iomem %p", addr);
+}
+
+#ifdef CONFIG_64BIT
+#define __raw_writeq __raw_writeq
+static inline void __raw_writeq(u64 value, volatile void __iomem *addr)
+{
+	int ret;
+
+	ret = lkl_ops->iomem_access(addr, &value, sizeof(value), 1);
+	WARN(ret, "error writing iomem %p", addr);
+}
+#endif /* CONFIG_64BIT */
+
+#define ioremap ioremap
+static inline void __iomem *ioremap(phys_addr_t offset, size_t size)
+{
+	return (void __iomem *)lkl_ops->ioremap(offset, size);
+}
+
+#include <asm-generic/io.h>
+
+#endif /* _ASM_LKL_IO_H */
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
