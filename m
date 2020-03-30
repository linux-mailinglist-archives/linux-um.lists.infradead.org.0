Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504CE197EC6
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq5fOG0XdxNceUgDYIgXcah9vAg2X/1QJKzLY0OLFq0=; b=fKn2kNjLvizVe7
	eB6OpQogMqOFNNyNWb69Z+Ps7I9JJp1igg2+QnD2y+fcIcsEFPFWcfMnPg+t9xx31FtZ8wISX+00B
	663QLL9/4MjzpkYIMwbuqSNJmyCT2I9oCYDpOEg5XSE5b8eDQA/PAqsaf/J4byy33pq8g/oFpdnef
	9AeT6Z69r0YRXac8UlIZTsSVuHMFLeO6S0ajNzD0D6Zrqbv3vChr8lqo7rIZpKFLQ5+nUtTN+e0NV
	Y8lrvjR7/JKaAyeuwONyig2VZSKyW3MDsDxwxhgRu6BC4RUK0urp9cQsBXoEypK+ez/WixLWSptQ1
	8f0seosPlAwxZ5L3MlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvgj-0004Un-PJ; Mon, 30 Mar 2020 14:46:53 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvgg-0004Tk-CT
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:46:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w9so7680389pjh.1
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RKef0Si42OEfpiKCb0RBwsAXF8ojY8UauQkTHAz5Bio=;
 b=sA8XzZhH5GUZt+NtMsglSqJvWTyDg098LTWUZd40WhrgZa8/Nej6Tg5l4XbwTaMZ00
 PGHYQwd6AgFgdonzdYiJMca3LHSeGgQrVhByo+4xWAdAlehp/Edj8IXvyeRipJfD5ifb
 RO1KP5GPY/E7i1ZO10xL56obwpz1AUedc02sRn/TzIIegtzqnXGU85ed4qz0iYMTKhxD
 LJvBgFa8ghE7aPslNuN7CQMniCVtbLYWkVj8MUCiEm4Fgwo74dfGyDknL7SzikZCQl9h
 52u2/QZ8BwXIb/0BsAg4f/L575+Kr/pPsbOkp64ZD84zSBx4IWHCxEJQtOGAw+azAbjp
 L+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RKef0Si42OEfpiKCb0RBwsAXF8ojY8UauQkTHAz5Bio=;
 b=C0ZzAfTJ9oo55VLsj8zm3WATBAps/RV3aPtWWME1+Yukwy22/Cakka6Jr6LZFzU6VW
 qVcvfb933aCcG13woeXVhypMJrHCU0IRsnDC8IMXlN3FBmpSOOIHtvsYYqnwJYVGdFz2
 cWPcqbsRLgKl+0yG8xhWuDISBqgRWAn3HZcl93vQBM2s82nfdRPfwUmFZOKQHF4B/L5H
 aoTMSnmven2PswMIYMlPC3x48bom1+AprHGvTS3CO4btbvDsv6IEwyosznsM8ug1cKMb
 nElHFeU7wCD3PzwR6Eh+XKkj3houxVQk13oPCG8rp+88gbBGb5JYM8xkzWTJQw8z4YvB
 uK+A==
X-Gm-Message-State: ANhLgQ0oqKj8mhP0fOS5p8rHIkcilbstrlUcgwdSNbN1xi6BBa4LGeLI
 QrpqbYEVVPIk6GzwJ1KVo54=
X-Google-Smtp-Source: ADFU+vv4YV0OjN6LnpWbIA1NvMK/gKAb+8rbdMBw87SqbxIJYjLkoiiG7T6WKuQleqjWaoJCM10z8Q==
X-Received: by 2002:a17:902:d705:: with SMTP id
 w5mr13143925ply.68.1585579609858; 
 Mon, 30 Mar 2020 07:46:49 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id 67sm10289633pfe.168.2020.03.30.07.46.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:46:49 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 7A418202804C59; Mon, 30 Mar 2020 23:46:47 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 03/25] um lkl: host interface
Date: Mon, 30 Mar 2020 23:45:35 +0900
Message-Id: <f5d1cc3f16ad744cf4f18b8cc2dead79bf123011.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074650_452821_8306008E 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
