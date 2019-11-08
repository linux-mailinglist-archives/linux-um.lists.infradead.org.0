Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EC8F3F39
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+x0cRPYPTKK6YAJr47ZyFGGcxToTXJRaTFU5S3D5/vo=; b=ms5gxlJ7xFKHUq
	hrUBemqkq57hD4Ij8lFWIDAdp70duu97vRvmTbnLzO/gmItFGIJ9gHSX2iVBG/moruihR4FzR6gPm
	6JWudzjhWebTg4J4IAJAD1ZhGV4rWuXdTuOnUx3bozMDe9a+eEq+8QwzDQ+d+DbHGN+gnoJ3eELjL
	f5rGeWJzNXKFVMBpkDpMeYkcUlTaSC7chIkDfRpi1+Yyz6GPC9aE2QysxuuPl2l87b8kpDlh+yxt2
	8r6BedY0hkfiT8iNpZ9gIMv0lI7HwsBeI4UglUQfVAQAUYLeloKk4dirTLp6y12Gpt5XJ58T/8/H9
	nTmf3iu1eSkGG3xstOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwR0-0003pF-U0; Fri, 08 Nov 2019 05:03:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQy-0003oI-M2
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so3864013pfp.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfNQn8OmpEQe7PuufbSc2R/Ylz+WhZJhzX5oX3JXDtI=;
 b=rjudR4ZBD9RMwoX12aFqlMNUqjA+EHD+rMAzBKB88iubl6GyKQXY/PV7MtKr7VO+Bs
 NqaPYjwLlfWJtTcjQo2+6RY7GGAncBGeNwzbtFeBafXHUXYrOuBo+X/URmUT3H3hxfQ/
 Ia+thrPKKCJ+up4KkdBYrMttTL2FbXaTcTxGeg/8GsH4DwkRELDZnHrktu+mLwzeO/BE
 Lhy1+7+hQ11r8KZQpP1HuYDlympDbzXH0+SXRQRF0fE6/E/3Fx9w+YkEKLhHxT1hunj3
 TJnkPvcrmJxoZg8XPGNISo33LdYE/oCgwLP6PGais1Yx59FYbEJcqrjLHR4OOtnSKK/9
 EBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfNQn8OmpEQe7PuufbSc2R/Ylz+WhZJhzX5oX3JXDtI=;
 b=NPpogzD8g87I863TZKHJMrON7tQrO2lwRS7Z+yJ+SfGSp8PqCVvyo9gIAch85rEIzx
 SrYectbgCsXmOosEM41UrH+jCh4hznGEJu/9IsH/5xaRqkizhp45rmp/JFCn+GyzDgkM
 s6hy+mrsivPvsLnxI0zs2RnQL6CLcHq4A9YVpDfFIMC1YpKIcLC1O1E6roXjY9RejuZL
 5FG1w1/n2BSMZzsrwgEjiMNSnN1YMEWPauAr7QMf+0jIM2ZbnCfRGlXyrryXQt5jeBsd
 ewnEvIIWSOFGp3N0aAxsdJyYcyk+ooMHRWe4cOtl5s20T7+jz7pSOs/xnSHqy+KBeI3L
 hIzA==
X-Gm-Message-State: APjAAAVxJDuweoaIrif5NREkCs+tA1SaE8EJLgusv4vk1aF+sM+cIzTq
 bEgGb8ZIPj0rheLAJTjANpU=
X-Google-Smtp-Source: APXvYqx/+TPiGz53Nzo/oGZfAogy+jlBzwiBAjuCEKhSk9zEy4pE6GD46cCM7PcTTGNdqji4EQOPdQ==
X-Received: by 2002:a63:4721:: with SMTP id u33mr9531143pga.159.1573189423904; 
 Thu, 07 Nov 2019 21:03:43 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id x125sm4815866pfb.93.2019.11.07.21.03.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:43 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 0870B201ACFD67; Fri,  8 Nov 2019 14:03:42 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 16/37] lkl tools: host lib: memory mapped I/O helpers
Date: Fri,  8 Nov 2019 14:02:31 +0900
Message-Id: <a28bfc994d7a836817f99540115392256635e64f.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210344_717704_F303DE6F 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This patch adds helpers for implementing the memory mapped I/O host
operations that can be used by code that implements host
devices. Generic host operations for lkl_ioremap and lkl_iomem_access
are provided that allows multiplexing multiple I/O memory mapped
regions.

The host device code can create a new memory mapped I/O region with
register_iomem(). Read and write access functions need to be provided
by the caller.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/lib/Build   |  1 +
 tools/lkl/lib/iomem.c | 88 +++++++++++++++++++++++++++++++++++++++++++
 tools/lkl/lib/iomem.h | 15 ++++++++
 3 files changed, 104 insertions(+)
 create mode 100644 tools/lkl/lib/iomem.c
 create mode 100644 tools/lkl/lib/iomem.h

diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index 658bfa865b9c..8d01982638f8 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -1,5 +1,6 @@
 CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
 
+liblkl-y += iomem.o
 liblkl-y += jmp_buf.o
 liblkl-y += utils.o
 liblkl-y += dbg.o
diff --git a/tools/lkl/lib/iomem.c b/tools/lkl/lib/iomem.c
new file mode 100644
index 000000000000..2301fe4e5ad5
--- /dev/null
+++ b/tools/lkl/lib/iomem.c
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <string.h>
+#include <stdint.h>
+#include <lkl_host.h>
+
+#include "iomem.h"
+
+#define IOMEM_OFFSET_BITS		24
+#define MAX_IOMEM_REGIONS		256
+
+#define IOMEM_ADDR_TO_INDEX(addr) \
+	(((uintptr_t)addr) >> IOMEM_OFFSET_BITS)
+#define IOMEM_ADDR_TO_OFFSET(addr) \
+	(((uintptr_t)addr) & ((1 << IOMEM_OFFSET_BITS) - 1))
+#define IOMEM_INDEX_TO_ADDR(i) \
+	(void *)(uintptr_t)(i << IOMEM_OFFSET_BITS)
+
+static struct iomem_region {
+	void *data;
+	int size;
+	const struct lkl_iomem_ops *ops;
+} iomem_regions[MAX_IOMEM_REGIONS];
+
+void *register_iomem(void *data, int size, const struct lkl_iomem_ops *ops)
+{
+	int i;
+
+	if (size > (1 << IOMEM_OFFSET_BITS) - 1)
+		return NULL;
+
+	for (i = 1; i < MAX_IOMEM_REGIONS; i++)
+		if (!iomem_regions[i].ops)
+			break;
+
+	if (i >= MAX_IOMEM_REGIONS)
+		return NULL;
+
+	iomem_regions[i].data = data;
+	iomem_regions[i].size = size;
+	iomem_regions[i].ops = ops;
+	return IOMEM_INDEX_TO_ADDR(i);
+}
+
+void unregister_iomem(void *base)
+{
+	unsigned int index = IOMEM_ADDR_TO_INDEX(base);
+
+	if (index >= MAX_IOMEM_REGIONS) {
+		lkl_printf("%s: invalid iomem_addr %p\n", __func__, base);
+		return;
+	}
+
+	iomem_regions[index].size = 0;
+	iomem_regions[index].ops = NULL;
+}
+
+void *lkl_ioremap(long addr, int size)
+{
+	int index = IOMEM_ADDR_TO_INDEX(addr);
+	struct iomem_region *iomem = &iomem_regions[index];
+
+	if (index >= MAX_IOMEM_REGIONS)
+		return NULL;
+
+	if (iomem->ops && size <= iomem->size)
+		return IOMEM_INDEX_TO_ADDR(index);
+
+	return NULL;
+}
+
+int lkl_iomem_access(const volatile void *addr, void *res, int size, int write)
+{
+	int index = IOMEM_ADDR_TO_INDEX(addr);
+	struct iomem_region *iomem = &iomem_regions[index];
+	int offset = IOMEM_ADDR_TO_OFFSET(addr);
+	int ret;
+
+	if (index > MAX_IOMEM_REGIONS || !iomem_regions[index].ops ||
+	    offset + size > iomem_regions[index].size)
+		return -1;
+
+	if (write)
+		ret = iomem->ops->write(iomem->data, offset, res, size);
+	else
+		ret = iomem->ops->read(iomem->data, offset, res, size);
+
+	return ret;
+}
diff --git a/tools/lkl/lib/iomem.h b/tools/lkl/lib/iomem.h
new file mode 100644
index 000000000000..0ad80ccc2626
--- /dev/null
+++ b/tools/lkl/lib/iomem.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LKL_LIB_IOMEM_H
+#define _LKL_LIB_IOMEM_H
+
+struct lkl_iomem_ops {
+	int (*read)(void *data, int offset, void *res, int size);
+	int (*write)(void *data, int offset, void *value, int size);
+};
+
+void *register_iomem(void *data, int size, const struct lkl_iomem_ops *ops);
+void unregister_iomem(void *iomem_base);
+void *lkl_ioremap(long addr, int size);
+int lkl_iomem_access(const volatile void *addr, void *res, int size, int write);
+
+#endif /* _LKL_LIB_IOMEM_H */
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
