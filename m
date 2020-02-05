Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D0A1526E7
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJndWdFkhuSYKlQh4UjgRdQacB+jpPjBjB8fStJ5l84=; b=s7rXSr/mVrTQel
	5yxaNkfiSbxJm59tBrWPtq5E8QTxpn1RHaJMgfLy3/cD9T5Taq2pVLwduxLvDABMH8a3VMx6keAl0
	HWVwgO1CzdcZA7Hg07Felk6D9tYk9UPP6kP15p4RtH1xLu0EKW6cpw+3vx+imftZE0OJpgwC7/J7y
	stCgr5pRTEdQlWvZENtk71dNETHcF5DN6BFNmnwRpuvV/CybjtsK1hzwu81teHlDyEAqOxMFa/gmk
	KBy1m11gDzWNnjl6gIbgOF0kTmPg1T5qDanosqghyfmLkgtuuQO3y5GTQDTmbGiIeCYk4qWD7Gnlx
	Kx2be4nB0G++r0K4ev3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9Q-00089P-O1; Wed, 05 Feb 2020 07:31:08 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF9O-00087x-BK
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:31:07 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 12so606429pjb.5
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zbDfaxto/t64vv9cFZcYy/44Xe4iN6lKROWU2ZL+b3E=;
 b=ZyoOdHiwlB8Hkgl+fLTr6lo2otlx7T0JULGyzAT/QokerDUF8CuHzjdOixHH8UJObS
 40FtbG9F0V4HgmB2hpkj3i5ZamxMBRzdMQAZ/8sDcX6zKua09ho0oGNGmZOleZaeo/qz
 futqyFgxJMguLX09+OfUIYzKFsjmtWM1GG7/ZmIOWBq9oWi/jjGpCDOQu/1Aka6QnxM4
 45KZEzBcKRMZJ+cYjv0G/rHKFqzwJbTMckHc4i/xTNg9TWpYrn0pkz6nYefm08MC9WqE
 kJ1KvMYRkK/SYk0/xVnTLXE5QEZfdhhEYydNK+Rtz/drx8brlebaii5pMEuJQTFrhjxX
 DHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zbDfaxto/t64vv9cFZcYy/44Xe4iN6lKROWU2ZL+b3E=;
 b=BGOE9r1A4jZ6LlsuRKKNcN3dlqPhLe/DeQhtA37dq5PkPCeIKsGvEkYCsYPQK1I1DM
 tXrnC58ErmFMGRuTc+fnNXFii1U9xVjid0YROMEIq90BtkG4rUXCNQIIe/xUPS3r44mk
 P/EH6OMoJy0G0c0JWaFEhWDPvoie5BKxDFnHbkh7qrKXigkbcbN1S8ovSJP6udL2CkPZ
 yTTP5ifhpwYha0UB/0yzkS9BlwwxM9Lcb97uB8+AF8/jIYwOpyvf1coK4mOr6vkMqCMh
 qJ50/RF7PVZhQkxWEyFn2T7twIFT0oeJfN6JaxCZbI40mZdxPKiABBTlTyNeyfND9nMa
 uojg==
X-Gm-Message-State: APjAAAVMp00ek2FZ2oig2Yv6ooMjNnM+e5fk8NKJUrz9ujjEzj0ers3K
 PzMX1PqywzbrRKrlQX8BVZ4=
X-Google-Smtp-Source: APXvYqxXbg35qC03kIHX1KjqD5j2I/EEfLNjc7mi8P+dOYtpzUy4H/3CE1KXfgBPBiUYIGsPFU/ehA==
X-Received: by 2002:a17:90a:aa83:: with SMTP id l3mr4233611pjq.5.1580887865440; 
 Tue, 04 Feb 2020 23:31:05 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 10sm27288181pfu.132.2020.02.04.23.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:31:04 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 87B16202573005; Wed,  5 Feb 2020 16:31:03 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 10/26] um lkl: basic kernel console support
Date: Wed,  5 Feb 2020 16:30:19 +0900
Message-Id: <f38b9e100b963bdc88d296287a290728d2ece94e.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233106_390428_76F78BF3 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Write operations are deferred to the host print operation.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/uapi/asm/host_ops.h |  4 +++
 arch/um/lkl/kernel/console.c            | 42 +++++++++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/um/lkl/kernel/console.c

diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index c9f77dd7fbe7..986340ba9d8d 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -17,6 +17,8 @@ struct lkl_jmp_buf {
  * These operations must be provided by a host library or by the application
  * itself.
  *
+ * @print - optional operation that receives console messages
+ *
  * @sem_alloc - allocate a host semaphore an initialize it to count
  * @sem_free - free a host semaphore
  * @sem_up - perform an up operation on the semaphore
@@ -70,6 +72,8 @@ struct lkl_jmp_buf {
  * @jmp_buf_longjmp - perform a jump back to the saved jump buffer
  */
 struct lkl_host_operations {
+	void (*print)(const char *str, int len);
+
 	struct lkl_sem *(*sem_alloc)(int count);
 	void (*sem_free)(struct lkl_sem *sem);
 	void (*sem_up)(struct lkl_sem *sem);
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
