Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F119F3F28
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIuX15GnTVqxP+yCEDHcVGU5YNB0qQ1K9Qi8WLML5W8=; b=Z9zBxjywfmVoiN
	lixdyBRG9bGTtqTy47DXl++buFH0YuYpoZdkIYIk3KV5AWj8igRBYhNG686FTq4F0rT4NTDds+06h
	1W5h6CFd+LNzopVE7J3PGZdDYy3tjSTauQeF6+E4vxxhf7rJHAZgVwq9T0CVgWxCa37HRstKZ1U6f
	BAQ6AFb1DwTrJOIFUCTo2Txq7SlovSCpCX8Kpbpe9tEKsoC4S9gsfCeYqksT+V6LRx8tWT2xdYanv
	/NSo2DTC9+QwSzXp3UEJiOyFoaYU4+tvcmTzLUIUALZlVbpxW0aZohM2W61XIbXJZ2JzjMPmQ0PZE
	cZlh6Rodgt3OxITnrxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQg-0003gb-No; Fri, 08 Nov 2019 05:03:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQe-0003fI-EB
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so3261133pgk.11
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CyvqWALI8MnevLv/A8ySJHIuhHx8bMptexZb+6i988I=;
 b=eU/iu2RdQ8b3xWS6EF16dIdGVNDvBbBD9eNSd9wv7EOUjeAg8Vq608VvQwQeOAj2Qg
 i/HGE/HRtSq2juUPd5OZbNUt1SJ3UKIzxNqBhiWS2axFK2hQiwDaTWS4tI3BPVxl2hAT
 ZqoqGh6eoWkfeceUkwr+UFknixVFrNf5IZLw5R/IB6o4WGvnt7ulyY53aSSFzpg7P6ng
 A3E5zB17UaCjA3Fk/C40PinXScozGA0TKqzRLPmFnZ9JSfz86ChXC0TaQhWy5DGBGsUZ
 8C2lznXQyN+Bd4g9I57p876kjZwCM28oKhVZ7svtlC7qagEWyATeGrQtyajv57HIxEfQ
 zYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CyvqWALI8MnevLv/A8ySJHIuhHx8bMptexZb+6i988I=;
 b=TJKxjLw2oaUG1xZFSlAOcxHYZ/KNEXT30z/EmYUPWgOCydEESKyb7O770yz/N7FD8Y
 LP6MjLHAwRZ/0HGq5clRJDIg6hZEZLTcD7k1wI8JQ1RrykVRqnmqLy5wxg/KjM+pQqBd
 gkAmYFLhJm0Kv30P4k+iANWX5r0CK4V0mVHGfGpJKrbyj2uQnJlQe1LiLkXTGP5/6KI2
 qZuB17+4hFjbA9S3yuXXBBzVsNL52HsiKnYEwCLb2SM0qgwfV1fvIECBUHzD9tiU4mhi
 unKHMno/zMsr6nb6FVXpBzBj3s6hr4kmY6+n0EReGecdkymNC89U+JtpOISnZEhXx+l0
 aXcQ==
X-Gm-Message-State: APjAAAWyLlyzqdLBiRcccRQseV8oQF6RSu7zyC1BS96VsrzfARrn8mQF
 +0EPf5gXo97Edo6x43ZkjRs=
X-Google-Smtp-Source: APXvYqw7/wd1w7j241VU4UTj3rC4Cd4rbC6pZMhnohEChwDkTKwg8LXqGUL4u8mYjNDdGC76NvnTQQ==
X-Received: by 2002:a63:f246:: with SMTP id d6mr9410497pgk.368.1573189403660; 
 Thu, 07 Nov 2019 21:03:23 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id y26sm4797659pfo.76.2019.11.07.21.03.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:23 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id CABF9201ACFCD9; Fri,  8 Nov 2019 14:03:21 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 11/37] lkl: basic kernel console support
Date: Fri,  8 Nov 2019 14:02:26 +0900
Message-Id: <9dc36b27c3a7f584425de69495e7196e0987be4c.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210324_476505_F546C9A5 
X-CRM114-Status: GOOD (  12.62  )
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

Write operations are deferred to the host print operation.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/uapi/asm/host_ops.h |  4 +++
 arch/um/lkl/kernel/console.c            | 42 +++++++++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/um/lkl/kernel/console.c

diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index 7c0c0967c44a..6ae781419ce6 100644
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
@@ -76,6 +78,8 @@ struct lkl_jmp_buf {
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
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
