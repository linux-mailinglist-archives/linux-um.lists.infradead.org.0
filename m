Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBACF3F2A
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Akpb5uXVwLa8neRzVq3udLvssHrylvFxTFWYxV3MWeA=; b=TzMNgYYZ8i0uMf
	vbQoN8+SFg2A0HQMK0YxdMxtPycdt8vAE7zJvhFvJ8+6qMIOYUKLrK8kIdA1H488LniCCeFGl9hmH
	hxdnIp3tDKdNMoBA5+l5+O6wziA3mAH7b6Pzf7wftpBfsVcUD3zLpTuqlYFVgXMerTTpIpQMxb5Ex
	MuXtsH7spMSTYRgM0csqJjaHe4Eenr4GJvjflhd2NE3UI9RY715lzDkVjMj1O7BCUhABz1BuP4Ies
	bh0PZDlx9jTDwftfKxHe75WZU76BVEC5Xnq9PzdpZU5d3SYksJraeVeWgVRLT85COvfKoVNThxDmP
	T3bMfNj8MUH81CJJ9GBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQi-0003hS-TT; Fri, 08 Nov 2019 05:03:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQf-0003fe-CE
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id 15so3294284pgh.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oGtkTBZpxEydn7204V+K9Ob540QWyH8edeC1/SVqIqA=;
 b=OnypEktdHx3AdQPR/aQRy5WpM6z25JvuIKryqXtv12QKTznIXltXlHmGtdd3FHksOd
 7pxkfo+l816Ia5g8NTBls7FB2sa5/Woqyd5sVymjLmFf5KkqXT9k5utHnvWzbCT5mgbS
 VMwrHQVhCWc0KdqEtXJnl849vus7BmJqcoBsm/nRRGV77qI5FZ5Vg7d0+dBCyr/tAtYI
 rrXVzPuXO38rrFNimZ3YlZITmcQXvALjCkd4rhTd5auwnmTVXAqFfp1Z8ie5uJkpi5vw
 14sGc2460t1pxxm74WhMKfMYp1zj1EoC0/2JwTi1nNq4/aRbD+aTGzqUpU8ozn7c9dk1
 ByhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oGtkTBZpxEydn7204V+K9Ob540QWyH8edeC1/SVqIqA=;
 b=iZOCjrOYgwrKfadpoyVEECgSv8Xutot4xEHss3wgZOI0W1GAPETZpNr+B+bYJXisr6
 2SoX8fHsiGkhbyz4eh15bpVd6s/LgK5UJ3AC0boANlxpZ2JqF/GI/7gra+Z2vqitGad4
 rkD16nqOIgFmZ9KcCrS0BKkB1JzM0nCQkFJo/oJJA3Ma1R7P1d8qBcI45qzYE50I918b
 dOlK+ffEIed3rQFVbblvZqawCBMeKfuGuf/fdxdsYuE4FtLNM1BaEob8hqd6K/wbndss
 If+wnBWdSVnjkywUb7hSTmGPZXad4toC4zxZ4ydqNZRHqOUVa4IaPAsx6uzKlY3nZRec
 +9RA==
X-Gm-Message-State: APjAAAVfmMkeo0TJNchfU/KoP4vu2AVHwayfUWpjBdI9y7lWw27V1JjJ
 AquJX7dGYKzJ9BWeoFaL9sQwP2aFPxgLzg==
X-Google-Smtp-Source: APXvYqwQNuS0tBssSO6lhkP8SdQq6aBpm2DFZzEY1HUq+aGs2wdXWFTYIoh7yLwP1OTa76j2+7wW0w==
X-Received: by 2002:a63:5949:: with SMTP id j9mr9335097pgm.371.1573189404544; 
 Thu, 07 Nov 2019 21:03:24 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 26sm3559133pjg.21.2019.11.07.21.03.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:23 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id C0A6F201ACFCD7; Fri,  8 Nov 2019 14:03:21 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 10/37] lkl: memory mapped I/O support
Date: Fri,  8 Nov 2019 14:02:25 +0900
Message-Id: <9790d0a835b5f29c02caaaa5b82e2a2bfba74a9a.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210325_436287_DA955893 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
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
 arch/um/lkl/include/asm/io.h            | 104 ++++++++++++++++++++++++
 arch/um/lkl/include/uapi/asm/host_ops.h |  10 +++
 2 files changed, 114 insertions(+)
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
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index c9f77dd7fbe7..7c0c0967c44a 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -55,6 +55,12 @@ struct lkl_jmp_buf {
  * @timer_set_periodic - arm the timer to fire periodically, with a period of
  * delta ns.
  *
+ * @ioremap - searches for an I/O memory region identified by addr and size and
+ * returns a pointer to the start of the address range that can be used by
+ * iomem_access
+ * @iomem_access - reads or writes to and I/O memory region; addr must be in the
+ * range returned by ioremap
+ *
  * @gettid - returns the host thread id of the caller, which need not
  * be the same as the handle returned by thread_create
  *
@@ -101,6 +107,10 @@ struct lkl_host_operations {
 	int (*timer_set_oneshot)(void *timer, unsigned long delta);
 	void (*timer_free)(void *timer);
 
+	void *(*ioremap)(long addr, int size);
+	int (*iomem_access)(const volatile void *addr, void *val, int size,
+			    int write);
+
 	long (*gettid)(void);
 
 	void (*jmp_buf_set)(struct lkl_jmp_buf *jmpb, void (*f)(void));
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
