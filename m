Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAE8197ED3
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyJrkbzwqaj+uMFyb9iVFVa24KTEO/bObttwVrlX+cs=; b=CcYPn9HDnRPKol
	mBObLXDsp+SncSaAqO4qTb34gRXqUHf3NGgrOIMeqYjiFygsVuR5Yq0c38+1Zk0kKoYGs28VyGfN5
	1D/jMolyHgYxwcBslLZ+JIb9PO6l6VJG+zHzyjMAXQODZRcuP3pPJwUkfRNB4b6/Es1WQFAu/TUep
	Q5oFyMOcrnxG+2234WXkkeh/pDv9bemMydvkf5zaNCPI/S/sXPgF/YUBygZOPdDJduyfiigf38Pq7
	sXEgieJbF3C6pM09kKk+FC29F2HXTnbfRC//f8w/qv2gOIG4US5r0Fv3H4hf1/ytu81VZ+FWKtlvJ
	UxEv5MiXoIvngfw3Q7pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvhh-0004od-Ki; Mon, 30 Mar 2020 14:47:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvhe-0004nw-Po
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:47:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id x1so6813080plm.4
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6WJWXIBn2EeJafNFgCrfWBYhVUMwRu8tn6FcwGDWnVA=;
 b=iCIVxfyXhJPCtvZuxxdFOqNact2m60anKnxGvMI61GdQufDa7q6HrC0pdRxy2q4JjM
 dPMq/ALeRzrtRtP/2v8gAmFh+eTkY4l6+nGt9Qqla1FxCHsO/vJtMosdTZNp/FucHhqI
 baTDDPeLrJk5zhCdDR7HpCS+8Cwd1OkeiFQFDEj8y4UK8J8Yo/e3GFMts/Tv8y349mAv
 SWzhJdzqUFk0HkcOjHLFzLitVhc1/iD/snxNT7aCz4R3dbUD2iMWa0lm+nLWDOFsD84N
 jSens+lIpebRccng5lB17RkAHD+tFZk+Uot1PYTsuXq7FIuOYqx60ktHhBeYceQRDc+g
 eA5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6WJWXIBn2EeJafNFgCrfWBYhVUMwRu8tn6FcwGDWnVA=;
 b=Mbvm0TK+GKHKbwyv3mUOznmE8rV4UaQF0f93bi4YCpN1UtQkoq1cZhpvPF5HwCkn9n
 fwSXUMPPJAFKnRqMyOzBjRmeSuDyK9qor2BaDsq3ep6omgOJeqRpMEcmeAG4e/1cJqzK
 Ga5cVTd9bwIjXpOP129O5/IdNMW/t4rhbaLkYcBENYI6UCexlqgQb6nXDZhorfIs/w8m
 OPBuswN7pg11mVK2hcjyfCZubJ4bs0nkUPE6uj+UZxd9V9Dbtu31j58g+YxZWJUrCMc8
 D8Pb0nYc0NIBOGuo9VzopmKvHrP7M0vhjB1a0wK9dLBQ+acfyuQLkexggqkfa+bTFu6t
 1QDQ==
X-Gm-Message-State: ANhLgQ0HzespXofArW9uyIHqQQ3Ta8w9mUeEAtEEXp3MKSgJJHW6jGwI
 hbcrbzvJsvlLXArGlogxqdg=
X-Google-Smtp-Source: ADFU+vtbM7bFviKqNSqDo3jcri4/ukynuq+Ny5bXej7qJt6EyG+HCzRvd34bWJoUeQU1ImCjs9pnbg==
X-Received: by 2002:a17:902:b692:: with SMTP id
 c18mr13081155pls.7.1585579670147; 
 Mon, 30 Mar 2020 07:47:50 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id r4sm9744680pgp.53.2020.03.30.07.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:47:49 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id BA31D202804D55; Mon, 30 Mar 2020 23:47:47 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 09/25] um lkl: basic kernel console support
Date: Mon, 30 Mar 2020 23:45:41 +0900
Message-Id: <0c8b9f122563372acea307b738f833a211ef28c5.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074750_878135_1B088F46 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch adds a basic structure of console support in kernel.  Write
operations are deferred to the host print operation.

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
