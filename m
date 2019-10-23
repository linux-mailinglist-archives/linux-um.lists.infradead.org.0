Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92BE1108
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXNt2IE6ICt1qlQveYHJTFQyS5MDgu1GDyheU+MUAHw=; b=bWZp2C+zuzsOYq
	Xb90G7vfYgKiuUKMmRvBqzIwCNnf7IqG2O6cgW7dDc3UGRwdqSoG/PmrMKxzHa3zyflZo+4VpSegg
	xlpf17GHzI/6X7187MxLJp7zQNInPz0zfAytg99RVHkk3GqmihX4+3qsroiAWXcku8hS/zwKSd9b9
	c//BtJoc2VptL4XU1ySk3gbmlCb0Hy58pSLQF+pYNo/CtIo0FfmT7VMiH1LZ9cfyDnqwSGAxi1fKX
	WW+X/QNHrlQnXlsoeeIvxxgrglyP/23pTqKUK3qThKFVJ5pf8gWM6OkcUvzbkfryw26L2iJ6tw7uN
	rcX6SdWgikZfaK5gGcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QI-0001m0-Le; Wed, 23 Oct 2019 04:39:02 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QF-0001jQ-Jb
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id y5so12081694pfo.4
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a/W3WAfur5AXZOmqch4kjwg2awiCd5bFImZ5x0HE1sU=;
 b=DtuG7gUCw/myVohOaSXZnMe2zbAmNi5nNbVGefs8KC695aJmBy0yK78VuclaDKQVB8
 XHpGdwXubIqwa/u5Nyk9hFkALA0o9gE5AxLmOaZCAX2IixblXITHOZ603KLuQGf0NbUr
 v97Jyl+vpbyh4tpuozkOmECC/vvlNyxrRqe5M8z4HzuL8+b5md0tLZm7xn1Y2ZLO+Gml
 4qb/WB8iuKtVU5mT7mC7PpfDLiODJLL6Ov2YyXUQzM87EC8EFG6jlwTwT8vOsktv5T6T
 szRVXdoXeaweSr1cwRZehSsgc9bLpwk1He9aFWkppPQEdFn4EZa22X5qu3+Y+enbRhNZ
 capw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a/W3WAfur5AXZOmqch4kjwg2awiCd5bFImZ5x0HE1sU=;
 b=D3HTXyw37+fTd2u7q602g3ItMztg42hGkixJ9Rm5wclBAYKgWz06etN8BmCgnm34tH
 3kmnt2JbIFsMW6I3pqHzrOiNhs++SyIXWPK/Es+0DMIMj9R7eCMNhSLidTohD9ttHe17
 V5x9fhtdIK6pkzx2gGNVWF80uUFFNECuWxfjZZsq0SA7brYkx/SVE3Pfv6v3sCTSqfVs
 +5ukko7Tp20IxLn5wwbO6mJS1q9q8fbfNMYgckjfbgGxVtQhcpT5rh/5O7ov0xKtKFZo
 SgolIFAvF7QL+ZqzyMD4Enp6+i/Wef8acyIfPaEd0D3cPy6e6MrElLu4RUnfI+bDMqgl
 55nw==
X-Gm-Message-State: APjAAAVLeHGEoqPJe3rizXyQxyBgprUWz0T4uDiJNAa6aBAXC86ThVCn
 k+O/s5CcQ6b85DntHTZfIoRxfNmot9vRZg==
X-Google-Smtp-Source: APXvYqwjIfAEzKJOBLqAqY7QWXPDEI6tQX+zOkQplRgjwImKMMS6/KPUi7nAh2H61mmCnjvXE/mhBw==
X-Received: by 2002:a17:90a:eac4:: with SMTP id
 ev4mr9065375pjb.97.1571805538895; 
 Tue, 22 Oct 2019 21:38:58 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id k23sm20426516pgi.49.2019.10.22.21.38.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:58 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 7AF70201995808; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 11/47] lkl: basic kernel console support
Date: Wed, 23 Oct 2019 13:37:45 +0900
Message-Id: <25feebc8e8e21081aec66a14114bb4ad1312118e.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213859_642184_27C8DB4D 
X-CRM114-Status: GOOD (  10.46  )
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

Write operations are deferred to the host print operation.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/kernel/console.c | 42 ++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 arch/um/lkl/kernel/console.c

diff --git a/arch/um/lkl/kernel/console.c b/arch/um/lkl/kernel/console.c
new file mode 100644
index 000000000000..54d7f756c6da
--- /dev/null
+++ b/arch/um/lkl/kernel/console.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/console.h>
+#include <asm/host_ops.h>
+
+static void console_write(struct console *con, const char *str,
+			  unsigned int len)
+{
+	if (lkl_ops->print)
+		lkl_ops->print(str, len);
+}
+
+#ifdef CONFIG_LKL_EARLY_CONSOLE
+static struct console lkl_boot_console = {
+	.name	= "lkl_boot_console",
+	.write	= console_write,
+	.flags	= CON_PRINTBUFFER | CON_BOOT,
+	.index	= -1,
+};
+
+int __init lkl_boot_console_init(void)
+{
+	register_console(&lkl_boot_console);
+	return 0;
+}
+early_initcall(lkl_boot_console_init);
+#endif
+
+static struct console lkl_console = {
+	.name	= "lkl_console",
+	.write	= console_write,
+	.flags	= CON_PRINTBUFFER,
+	.index	= -1,
+};
+
+static int __init lkl_console_init(void)
+{
+	register_console(&lkl_console);
+	return 0;
+}
+core_initcall(lkl_console_init);
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
