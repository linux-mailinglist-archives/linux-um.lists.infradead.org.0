Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D486197ED5
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpXAyhmuydltaeaTsFNqEgQd7ten1zOy1+TdOGgVtPw=; b=pn5qQ7VzfVz+Zr
	PlrRAZ0UW6vfs29WBpVG+wfcADz3+jqXIp3qtyqwLSYCSBi27peh/G4XFDispNApI98pDZUSO3G7B
	bFPRIqMlxu6DmPW2OKfZYh8kCZrvxwvo11k1gDAkXgvrvDZHi8jT18GRefuNnTzRJurKJdajU4pc9
	DAqBtc5oFcppHh8h99G/I3NpaC1wMlM2cL4h10CwRFohw9oaTFn5fzratgrZdnDhnbRAc8yXvHipm
	pP6b/OyU4ejV1wr4BMApJZPb3QGi76JbHuE78gCmVW2tOwwk72G6eKhBcqXDIJtLQ7xxU9t6uzlic
	3vagZwc7lB5WhsodWEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvhl-0004ps-8n; Mon, 30 Mar 2020 14:47:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvhh-0004oX-F3
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:47:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id r14so6200738pfl.12
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7KZd4yDF7feHHZHrU3H4VRHPCqEnKtFHBAt9igrYvhk=;
 b=WVoyx8TH2XlaQRHhqVUx83S8LF7eJhU/mqDKQgS9kCk4i8X6AzhbW5gmcSGo5k5lld
 zuvqPxMJb4THF+23hTd3PIkwqVJFjmuU+7LYYun1Ik6Zf6WR/HkfK92NpQDekQIoX6tl
 YZZ59os2lwVjHnW7oXaoqnIdMXXVA9oa6hCup3XQZvd/TYWicpHvLeoUWd2geDXywFvQ
 tf41IdxYjj3iWx5RIsuPpQ8eOeJJii96VV+ZEDxUOJp04BVcwXx6j6rN76t+ZEUa37Ab
 mSJe4VTsKSeIz7CloVlJqmdfzAeWCwT9S4nfblBWcBsaZSwAfJfd/0AUQqv86Bx19LFL
 QrjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7KZd4yDF7feHHZHrU3H4VRHPCqEnKtFHBAt9igrYvhk=;
 b=EagC31rolkqxF/lm5EtaOj2VR85QXqeL25ylk22fA5S1DKBfZZnJX0sSeo5PTeoPkd
 /y2N+d70jkv8+3lWrjxs/FJhywKWqxfYW9TzZgPKn29kPa1G/TnBMuOsGiQcAGO1hy5g
 nhDQjU06G3dPnHicx5R9g0CsAbY4498vFp9Wd2ZTFsnJC3LxbzYJQQhE+fg6XB4NCfzx
 RVl+ojJuo8AE0vuBYWxTxGm80sjPR6ZPbkSQhBd2Firp3nJc5Pc+CGScXu1AyRTAWtNi
 9hEDffi9COlg5SHzMpyYPGCqxPohInc/C2Al/ye7cIGDUOIAjEZHW914Kwrel7WjGKfE
 3tGQ==
X-Gm-Message-State: ANhLgQ3LvyNkCBllCqDJhFxDNiaoJQGSTgUrdCZbq9htHNxO7GD4FyTO
 qoynUQMLoOCVlju0dCfOb2k=
X-Google-Smtp-Source: ADFU+vsSyLBd8fgvj0Ffq71gXXhfKC29Uup9MA2sA5FnZ2lsodn/GEjZPGj/seNzID2PmHrgf2dn5g==
X-Received: by 2002:aa7:953b:: with SMTP id c27mr13522756pfp.201.1585579672692; 
 Mon, 30 Mar 2020 07:47:52 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id g18sm9824519pgh.42.2020.03.30.07.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:47:52 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 3CB0C202804D57; Mon, 30 Mar 2020 23:47:50 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 10/25] um lkl: initialization and cleanup
Date: Mon, 30 Mar 2020 23:45:42 +0900
Message-Id: <7c79d701ea499276e1d68ba9eb61e784c456746a.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074753_556476_F7B8ABE4 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 Michael Zimmermann <sigmaepsilon92@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Add the lkl_start_kernel and lkl_sys_halt APIs that start and
respectively stops the Linux kernel.

lkl_start_kernel creates a separate threads that will run the initial
and idle kernel thread. It waits for the kernel to complete
initialization before returning, to avoid races with system calls
issues by the host application.

During the setup phase, we create "/init" in initial ramfs root
filesystem to avoid mounting the "real" rootfs since ramfs is good
enough for now.

lkl_sys_halt will shutdown the kernel, terminate all threads and
free all host resources used by the kernel before returning.

This patch also introduces idle CPU handling since it is closely
related to the shutdown process. A host semaphore is used to wait for
new interrupts when the kernel switches the CPU to idle to avoid
wasting host CPU cycles. When the kernel is shutdown we terminate the
idle thread at the first CPU idle event.

Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
Cc: Patrick Collins <pscollins@google.com>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/setup.h         |   7 +
 arch/um/lkl/include/uapi/asm/host_ops.h |  20 +++
 arch/um/lkl/kernel/setup.c              | 189 ++++++++++++++++++++++++
 3 files changed, 216 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/setup.h
 create mode 100644 arch/um/lkl/kernel/setup.c

diff --git a/arch/um/lkl/include/asm/setup.h b/arch/um/lkl/include/asm/setup.h
new file mode 100644
index 000000000000..b40955208cc6
--- /dev/null
+++ b/arch/um/lkl/include/asm/setup.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_LKL_SETUP_H
+#define _ASM_LKL_SETUP_H
+
+#define COMMAND_LINE_SIZE 4096
+
+#endif
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index 986340ba9d8d..fe4382c3050a 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -19,6 +19,8 @@ struct lkl_jmp_buf {
  *
  * @print - optional operation that receives console messages
  *
+ * @panic - called during a kernel panic
+ *
  * @sem_alloc - allocate a host semaphore an initialize it to count
  * @sem_free - free a host semaphore
  * @sem_up - perform an up operation on the semaphore
@@ -73,6 +75,7 @@ struct lkl_jmp_buf {
  */
 struct lkl_host_operations {
 	void (*print)(const char *str, int len);
+	void (*panic)(void);
 
 	struct lkl_sem *(*sem_alloc)(int count);
 	void (*sem_free)(struct lkl_sem *sem);
@@ -111,6 +114,23 @@ struct lkl_host_operations {
 	void (*jmp_buf_longjmp)(struct lkl_jmp_buf *jmpb, int val);
 };
 
+/**
+ * lkl_start_kernel - registers the host operations and starts the kernel
+ *
+ * The function returns only after the kernel is shutdown with lkl_sys_halt.
+ *
+ * @lkl_ops - pointer to host operations
+ * @cmd_line - format for command line string that is going to be used to
+ * generate the Linux kernel command line
+ */
+int lkl_start_kernel(struct lkl_host_operations *lkl_ops, const char *cmd_line,
+		     ...);
+
+/**
+ * lkl_is_running - returns 1 if the kernel is currently running
+ */
+int lkl_is_running(void);
+
 int lkl_printf(const char *fmt, ...);
 void lkl_bug(const char *fmt, ...);
 
diff --git a/arch/um/lkl/kernel/setup.c b/arch/um/lkl/kernel/setup.c
new file mode 100644
index 000000000000..36c199d3aa22
--- /dev/null
+++ b/arch/um/lkl/kernel/setup.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/binfmts.h>
+#include <linux/init.h>
+#include <linux/init_task.h>
+#include <linux/personality.h>
+#include <linux/reboot.h>
+#include <linux/fs.h>
+#include <linux/start_kernel.h>
+#include <linux/syscalls.h>
+#include <linux/tick.h>
+#include <asm/host_ops.h>
+#include <asm/irq.h>
+#include <asm/unistd.h>
+#include <asm/syscalls.h>
+#include <asm/cpu.h>
+
+struct lkl_host_operations *lkl_ops;
+static char cmd_line[COMMAND_LINE_SIZE];
+static void *init_sem;
+static int is_running;
+void (*pm_power_off)(void) = NULL;
+static unsigned long mem_size = 64 * 1024 * 1024;
+
+static long lkl_panic_blink(int state)
+{
+	lkl_ops->panic();
+	return 0;
+}
+
+static int __init setup_mem_size(char *str)
+{
+	mem_size = memparse(str, NULL);
+	return 0;
+}
+early_param("mem", setup_mem_size);
+
+void __init setup_arch(char **cl)
+{
+	*cl = cmd_line;
+	panic_blink = lkl_panic_blink;
+	parse_early_param();
+	bootmem_init(mem_size);
+}
+
+static void __init lkl_run_kernel(void *arg)
+{
+	threads_init();
+	lkl_cpu_get();
+	start_kernel();
+}
+
+int __init lkl_start_kernel(struct lkl_host_operations *ops, const char *fmt,
+			    ...)
+{
+	va_list ap;
+	int ret;
+
+	lkl_ops = ops;
+
+	va_start(ap, fmt);
+	ret = vsnprintf(boot_command_line, COMMAND_LINE_SIZE, fmt, ap);
+	va_end(ap);
+
+	memcpy(cmd_line, boot_command_line, COMMAND_LINE_SIZE);
+
+	init_sem = lkl_ops->sem_alloc(0);
+	if (!init_sem)
+		return -ENOMEM;
+
+	ret = lkl_cpu_init();
+	if (ret)
+		goto out_free_init_sem;
+
+	ret = lkl_ops->thread_create(lkl_run_kernel, NULL);
+	if (!ret) {
+		ret = -ENOMEM;
+		goto out_free_init_sem;
+	}
+
+	lkl_ops->sem_down(init_sem);
+	lkl_ops->sem_free(init_sem);
+	current_thread_info()->tid = lkl_ops->thread_self();
+	lkl_cpu_change_owner(current_thread_info()->tid);
+
+	lkl_cpu_put();
+	is_running = 1;
+
+	return 0;
+
+out_free_init_sem:
+	lkl_ops->sem_free(init_sem);
+
+	return ret;
+}
+
+int lkl_is_running(void)
+{
+	return is_running;
+}
+
+void machine_halt(void)
+{
+	lkl_cpu_shutdown();
+}
+
+void machine_power_off(void)
+{
+	machine_halt();
+}
+
+void machine_restart(char *unused)
+{
+	machine_halt();
+}
+
+long lkl_sys_halt(void)
+{
+	long err;
+	long params[6] = {
+		LINUX_REBOOT_MAGIC1,
+		LINUX_REBOOT_MAGIC2,
+		LINUX_REBOOT_CMD_RESTART,
+	};
+
+	err = lkl_syscall(__NR_reboot, params);
+	if (err < 0)
+		return err;
+
+	is_running = false;
+
+	lkl_cpu_wait_shutdown();
+
+	syscalls_cleanup();
+	threads_cleanup();
+	/* Shutdown the clockevents source. */
+	tick_suspend_local();
+	free_mem();
+	lkl_ops->thread_join(current_thread_info()->tid);
+
+	return 0;
+}
+
+static int lkl_run_init(struct linux_binprm *bprm);
+
+static struct linux_binfmt lkl_run_init_binfmt = {
+	.module		= THIS_MODULE,
+	.load_binary	= lkl_run_init,
+};
+
+static int lkl_run_init(struct linux_binprm *bprm)
+{
+	int ret;
+
+	if (strcmp("/init", bprm->filename) != 0)
+		return -EINVAL;
+
+	ret = flush_old_exec(bprm);
+	if (ret)
+		return ret;
+	set_personality(PER_LINUX);
+	setup_new_exec(bprm);
+	install_exec_creds(bprm);
+
+	set_binfmt(&lkl_run_init_binfmt);
+
+	init_pid_ns.child_reaper = NULL;
+
+	syscalls_init();
+
+	lkl_ops->sem_up(init_sem);
+	lkl_ops->thread_exit();
+
+	return 0;
+}
+
+/* skip mounting the "real" rootfs. ramfs is good enough. */
+static int __init fs_setup(void)
+{
+	int fd;
+
+	fd = sys_open("/init", O_CREAT, 0700);
+	WARN_ON(fd < 0);
+	sys_close(fd);
+
+	register_binfmt(&lkl_run_init_binfmt);
+
+	return 0;
+}
+late_initcall(fs_setup);
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
