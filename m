Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76044F3F20
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqBjDLFNY7jIIr3RgezSBXHCbOf4HqKNd8hKBDDiHzQ=; b=jqQARO+6DnHlbC
	V0S9pzklSe4G20dg9Actod3Qw5Pk1YuyC5GYzF2o2pxCyUFlChZwWhaBi5uU3vWESiO8za9KKUxKs
	2eKFYB7x3rxHI4gL8H1I9m4oZWtDDQcj8RLy26f8Un1aIhJwn3n/bUXw/Lvj/Cu1lMicJk1SLwgIm
	D7ZQfTyYuRtaQdCBxRr8kRslMq04aJAU0gNheUNiow5PU39VTkOaFbNNEczfVOolb1DdqdF5Eb3uQ
	IQSyg459gJF29uNyNgvV48q35NM/jdC5QkuKUZBzYZ1OTyo3ms1HFFTR1zjjVz44wqP2bbkmyYdl3
	lzqhZNIeCBJhGF2rNwAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQX-0003bl-KX; Fri, 08 Nov 2019 05:03:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQU-0003Zy-OQ
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id n13so3891780pff.1
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YLBv28t/SZ6XhMh/ECVb3wO9hVp5l1KVjRiLPR46eIE=;
 b=btVyx1kPPjh4mSA69tepMmzog+HYofS3S0W0EV3leAnpcyTKI0S4xl7kXusU6YghRr
 +xwx2fKuXpVi7Ug2CfmszzDgIhgpCBnoMkF2IdKMcMshc+z+iAaPHJgaVaDTkPmzwYdU
 eT/zAs3I0F7xFBoGBDkfTtk7/QNSJG/SfZctmvQNrtyxyiq95oufRC3YCliVofnvYJ6C
 nl86KyzUPCcfRXwOPdN/7MOr0LIxgqM0Xz6+EnHCgiPPSRIvq6ZPujW9VYne/kYNIYJ/
 KOwrPSARfjR7ZuvnUD/n/S3zWW4oVglfj0VsIS7RpNyKg+F4xX2pQz7qaNHVDNY/y/0U
 Imzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YLBv28t/SZ6XhMh/ECVb3wO9hVp5l1KVjRiLPR46eIE=;
 b=lhQortFqpuI9b3kCVpYg9v0KvTIn1HIV5Dkcr2tUWk1EB8jseV1mS2fS1AhoVfwAS+
 KAK4d/L3JVvyTSE6OPTbxYQAWvaZYfME6R71/db3F50X2XCa04hIfAXyhauM/7v+XFHF
 YQj8BzTicY40nQ9trmSoZS/MWykU/ImNekOMbfdUUVmvXd+H+PYaZM1oNx4puR0QJCaR
 KihXoI2JszeVDKthmsKK1Ut1qDo2Q1QWVC9fXCbLoBna987PhQpeWQZlkJHYc60v85iW
 dcmGaiwkJ2YmCkIsMf0rDYAWh9Q7gYvF7Zmzt1BbVl5VCEilxSdGqUFQSFl8KwuLWJlM
 OXqg==
X-Gm-Message-State: APjAAAWgplI3JdVp7ASf0n/WpwSVcuzapFFOK8HXwUmqzOtTmNGoX6ma
 dk4sYrBXOeFv04QfhEp8USE=
X-Google-Smtp-Source: APXvYqzmcEteZxjQ2l6elKj7USALdYkMB15NXFAI6fQtZouXy6fVPYhhRjH0yJ2wZZ0uJgup+KJBDA==
X-Received: by 2002:a63:491e:: with SMTP id w30mr9348687pga.342.1573189393733; 
 Thu, 07 Nov 2019 21:03:13 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id d23sm4359162pfo.140.2019.11.07.21.03.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:12 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 873F4201ACFCA0; Fri,  8 Nov 2019 14:03:11 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 04/37] lkl: host interface
Date: Fri,  8 Nov 2019 14:02:19 +0900
Message-Id: <2ed53834403f7c12066ba13d0849038479d36e2a.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210314_793477_CAF83070 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Patrick Collins <pscollins@google.com>, linux-kernel-library@freelists.org,
 Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch introduces the host operations that define the interface
between the LKL and the host. These operations must be provided either
by a host library or by the application itself.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/host_ops.h      | 10 ++++++++++
 arch/um/lkl/include/uapi/asm/host_ops.h | 26 +++++++++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/host_ops.h
 create mode 100644 arch/um/lkl/include/uapi/asm/host_ops.h

diff --git a/arch/um/lkl/include/asm/host_ops.h b/arch/um/lkl/include/asm/host_ops.h
new file mode 100644
index 000000000000..65850f394b79
--- /dev/null
+++ b/arch/um/lkl/include/asm/host_ops.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_LKL_HOST_OPS_H
+#define _ASM_LKL_HOST_OPS_H
+
+#include "irq.h"
+#include <uapi/asm/host_ops.h>
+
+extern struct lkl_host_operations *lkl_ops;
+
+#endif
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
new file mode 100644
index 000000000000..7cfb0a93e6a6
--- /dev/null
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#ifndef _ASM_UAPI_LKL_HOST_OPS_H
+#define _ASM_UAPI_LKL_HOST_OPS_H
+
+/* Defined in {posix,nt}-host.c */
+struct lkl_mutex;
+struct lkl_sem;
+struct lkl_tls_key;
+typedef unsigned long lkl_thread_t;
+struct lkl_jmp_buf {
+	unsigned long buf[32];
+};
+
+/**
+ * lkl_host_operations - host operations used by the Linux kernel
+ *
+ * These operations must be provided by a host library or by the application
+ * itself.
+ *
+ */
+struct lkl_host_operations {
+};
+
+void lkl_bug(const char *fmt, ...);
+
+#endif
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
