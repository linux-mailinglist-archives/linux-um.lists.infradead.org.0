Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E738DE110F
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aD7tuip3yxoLti0uF8bb2+DZ8i3u5hK6DMqhdfIv7IY=; b=pskb8X72Ht01ZG
	Q6qMAYuqCTNiVckIjIF1OBP7Qua+Vf/0TAEnZHDjw09jn7gUtjlvV9sqEDNvaSGCgSSFylNuUFmrG
	WKpn0DptmxdY83o43iF96zc5UEspACdYdQjXxdfPpCmj+2FcT4iAFFkBhL00sIDyMbxcLbhJCDg7f
	rri9YnOE5RN6HDj1t6gehEYIByjCZ/Q7TStg5YWJ9t0bGy1Lp9yoeGED9dHRdSUuoO//4UbN6Kl0g
	cVGgL+t4uBnI4vUmHC2Z1x68b/57MDtlxFAZMzcvqJACCCxO5L1/3H7qXIb6U63zob3N+CLMiY2Bh
	EfCb/3tYiIhNeJvnoUYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QS-0001wh-IL; Wed, 23 Oct 2019 04:39:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QJ-0001n7-5n
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so940429plk.0
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bj4dzu9WZ523VnTnRd+xrPHeTEh2XPggmnWk5BQvbf4=;
 b=DhQzJ01Yv1ujyact8JVj3ITmSHrv1SuRx/UlhDgySCS58QDkOcrxjhtjKov/LYcBBV
 QvpPR/YkmPeu4X3eQOhrsvQIeiVvJoGbOXc3YpquJwtjY2Z59ov1PE2W4ENB+knJaznz
 tkTgwYgp/SaDvYBDMOowucAXwtEiOfMStBh6yCoO9BaRkRfltNBpTf86Xf7E1G6LHme5
 vPvBvHZ5D9qnX77OL0PsHMKcDrnIoix1V8F2s9L2XikloUnYYXQshLBY9NxL5dJ6zjTV
 qk+FeVB5nltFezQKEJCozHdYKRjCsjItXD8ocGokHzib40mDgdlbb+F5LEV4/AKdhqDz
 ixow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bj4dzu9WZ523VnTnRd+xrPHeTEh2XPggmnWk5BQvbf4=;
 b=EUYcHVmFGrYcgkGjnTAufVseTryOsWUKlmhrvwCoGHBQyhD4xY4qEffzCYLjvGm9H0
 rruhv0Uu6kHjs5D3zuH+ToNtIN0ATyVjValKwTP0H/nbR80qtiSsys4SnY9DpweSDLto
 PUtBxD9h4a9oR+g4hNUEM9sE4OMCkyPGsR+p7EnLqZgPoW4FhPdr/aLIBqmVZj6IPcPm
 kdUNVGe0x7VROaTaMUz5YfTKOOD/N8/BlGoRrPIm/C4V/WP61Xz0xYPPkScnmx9Q+V6k
 Hzl5M9fcfhJBB70oQbIFjx5ZgQn73Hbvuvg5nOUVXFLjjuT/qjWw9bjvDRFWIofd3WDe
 y6fg==
X-Gm-Message-State: APjAAAUZRDZHr2XZDJnXm2dyjoVtQYpQg3uMBzgS1SDl6AmYcOdM9RTV
 8VzalnCRX08M7SekaT6+rms=
X-Google-Smtp-Source: APXvYqx/KDWnJUVOT1zFe71hpVKM5Jmr4aMkk1GLieeUVxUe8p7sGxa+tTtDjCBSfb8K61Eat96F/g==
X-Received: by 2002:a17:902:aa46:: with SMTP id
 c6mr7585688plr.197.1571805542550; 
 Tue, 22 Oct 2019 21:39:02 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id s5sm17650202pjn.24.2019.10.22.21.38.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id A4F85201995812; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 16/47] lkl tools: host lib: memory mapped I/O helpers
Date: Wed, 23 Oct 2019 13:37:50 +0900
Message-Id: <e96533a0d331dba6dd4a97f11b13d7d4c9f3cead.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213903_229174_8BD93D08 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 tools/lkl/lib/iomem.c | 88 +++++++++++++++++++++++++++++++++++++++++++
 tools/lkl/lib/iomem.h | 15 ++++++++
 2 files changed, 103 insertions(+)
 create mode 100644 tools/lkl/lib/iomem.c
 create mode 100644 tools/lkl/lib/iomem.h

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
