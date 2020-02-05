Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86841526E1
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq5fOG0XdxNceUgDYIgXcah9vAg2X/1QJKzLY0OLFq0=; b=fkQd08t2HbOouB
	eLBT5v33iUvv7PPfZT8/CXmFundDVeUpBmtg5Eim8oWCWg/o8AIUm4NjuBUOx2pgSZtBbVq68ulqb
	kCyG/zmtYAXkIbIYoH1P5XAtCo4cmNwc1hThrN5Q3mMECc3ZNCj+1npZcnS+mtZstZYOafNCiq3l3
	fc0TUEAcnZagpxkS8eKEextxFi4b3NPGp0Bt6IDAf0ji5QhZuPzSNZZ9ZnAL2bJYfABr5oMGME4cA
	PjqMvvg3u3rAlKJ8vok3VcoYX2saEI9LKCJz1UhyeK5PujwNrpy7qYr1LYx1SrT+rVdudWE/oo8qI
	PeuGUjvpacEXX7n8bEzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9J-000865-8s; Wed, 05 Feb 2020 07:31:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF9F-00084B-MQ
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:30:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so509999plr.8
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RKef0Si42OEfpiKCb0RBwsAXF8ojY8UauQkTHAz5Bio=;
 b=LALwKKy6UL+Jt0hh9SF5+HNFnYuk4Xv2z0Z78ixsNPP+e59mnuDkMIX8hihAC4xo/I
 2TR5PbIY8iMTNwk5NgbjEYoF+q4QxUIMfaW9GDR3vYqVBz8KE7jAGemr17mAosd6qK8l
 vtS/lfo0HS4fYnXeI/VJ/Cow/7Y7avbIlEKhUWtrC7enrqf3He1/SC7/s3u0ZXtp48nw
 8r365Z6iLKWIsaaY020CAGCM71RSeWmGyflxmGtbz+SuVsdy8F8aYZj78Ip5yS0j4nQa
 Nmhvu63A5uFUn97T/l1u6i9+IR910v0owdrvh/ONSCo4aI5ipjswo49k6hMmnBsihA2A
 wJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RKef0Si42OEfpiKCb0RBwsAXF8ojY8UauQkTHAz5Bio=;
 b=I2CC7zmu1CdXUqv8eQ0Eb09VBmD8ZyfHxCg4t0V4DCPBRbE1IjjmZzTj2UL4eh5MM7
 3WUC0ceUtlrtsTNnBY/xpxxiqIvhiyW9XMxYi8BXOaLQAlb2j/qtER54sm3O43KaXtzU
 jRb5yx/hpM7gM5vwGMtslTd8w90j/g/2KWrR5uTo3c2IPyu29/4CEViAnkdcpt1XMbn7
 UUYz+7Tym0flVprF4cBxeal82WB638H5A1VcB69LzRAg9/zEQ7gUfONoQ8I982rWpwVC
 JwWFoXMTNMR0ZuCqgnbkKitAvyk+MMyKAxKufJO1cMEkf/HTQ0qhkRPyu9xKKnfrGVkv
 CJ3w==
X-Gm-Message-State: APjAAAXXlEfxX/j5FIWlO3XX+av/V1gKXVGuOtliOUP4vx4DrrvrXODR
 NFCtcXpuSXN3ywOyk+9aSIk=
X-Google-Smtp-Source: APXvYqxE/1i2z6cwJSSiGzWT2QskQHaXtbcZSSKuQXisp9/VfuYaDb3OQNuVmg/j8xZAV1ZJk1U5uA==
X-Received: by 2002:a17:902:bd86:: with SMTP id
 q6mr29865763pls.143.1580887857106; 
 Tue, 04 Feb 2020 23:30:57 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id w18sm23111665pfq.167.2020.02.04.23.30.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:30:55 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 5F7FD202572FCB; Wed,  5 Feb 2020 16:30:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 04/26] um lkl: host interface
Date: Wed,  5 Feb 2020 16:30:13 +0900
Message-Id: <f1460ace30d533fbb79ad3d5ec43075daa047e16.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233057_727934_9D9ED341 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Hajime Tazaki <thehajime@gmail.com>,
 Octavian Purdila <tavi.purdila@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Patrick Collins <pscollins@google.com>, linux-kernel-library@freelists.org,
 Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch introduces the host operations that define the interface
between the LKL and the host. These operations must be provided either
by a host library or by the application itself.

Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
Cc: Patrick Collins <pscollins@google.com>
Cc: Pierre-Hugues Husson <phh@phh.me>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
