Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046B2F3F30
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4neyJrgR9Vp5UjgIVF/RxRZMZ0gkK5DCr18XY8t2Vo=; b=nFSEfW4K0rxLv5
	f+9kJYGuCROaYw4CHVHgl6HFY3zQVdbpDbZSMguJaWihfGd3vDrdIwBenls62aXrwYudRirIXXlFD
	D9vRwfk4JWYk7/OS4O53qWNUSipGFBHEGcn6gIrDK/7KcGff1+SdSGNJ8RoECJ1L8UG7Tyg7a5BVz
	1lRp6SEdKJbhEhmdt5AavG9iqrp+P6LcpD7b/FxkHSF6GJbGt6DnAo+y8myvmDkcA8c4iLP7r88SN
	hYqmPLE2sf7FjUBkcM637kyipv7WguPjJtNBcJP7vq7YZf/szpmQpY7oRGAWLs4NOXcCXbMSavt6Y
	MmvwbT7/NWQFd6Djii/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQr-0003kw-LS; Fri, 08 Nov 2019 05:03:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQo-0003ju-KL
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id a18so3223989plm.10
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gDcSKUmTIIXm+A4H0kWEYsNMacbZNseE4HgO0FnEgVs=;
 b=T0crjRfRSynMT+OSe2Yh7/yNSHC2LIV3XnAHiBwyx0o5sLpdvpn9zm5K9p5u7VbHuO
 CG+UW2gcw3dsrqvcZ0S6OzjGobW2xOmMKnttkyKeXDXGuUvXQ1gBgSCPv0+SHew5GnRZ
 L+9gwkj+4Jj+ECTxp8phKKiH5V2s29MRAy1gdyQg/ZqCsSYb18RMt4rfYWxiI0vY3xnb
 REEAvK5GDfIu5tNAEE1kFzH9S6gHhPnh6jOTAN8cVQcwtqpYaS/l5e9LHXFaaslfvCmJ
 jmC2LLLx+vKmx/KcH3vRWquML203ZpztZquBshDCyBVfKGdllPYbflrCUGValCiZ3ocx
 wIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gDcSKUmTIIXm+A4H0kWEYsNMacbZNseE4HgO0FnEgVs=;
 b=X1Td3HznlCThgSRF2Fbnl0advbjOcRSSu7jk/AERjPrwjc6QZoUej2KqJ0FwlLX2GS
 byNXTGkxyLaSxE0wgBCggDE4eIfgUO+7DyxkpClY1HGPw6ZQIueTjIJhkTm+THADePRR
 +H3RNCYJGVZuurgeS5mD0VFWjrCc6i24zPVZkAlo7jtHsXVAbp2uuxz/Qb1FON1jArv/
 BZSGUaJCREbI3cQ1qerRfyZ+0MJ3xOx7xl8odvXRtTo/5bfT1r1UGaS69qgRoa3sAbrk
 WRVMmowL0i0gpGaql80y8tLxsxYaZ+2Q+VpGaswrCVeUpMyE1TA8XyF+yAUL7eWy4XAP
 Vlqw==
X-Gm-Message-State: APjAAAWjysrjKiFhWhUE/p/cbQHUYSI7+BJ5WmWYPFrI+ZGRXQK90wZ4
 /rpbPHi1fsrSgFrSKFsV2OE=
X-Google-Smtp-Source: APXvYqzhRlW8EpQJWjDb8Y0dcd1lY0io/u9ObGYTM9AESOTZgo5M16/05j5hN7JzChDlWC3ZQ6KS1A==
X-Received: by 2002:a17:902:23:: with SMTP id 32mr8226415pla.205.1573189413860; 
 Thu, 07 Nov 2019 21:03:33 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id c1sm4177421pjc.23.2019.11.07.21.03.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:33 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id D5710201ACFD2D; Fri,  8 Nov 2019 14:03:31 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 12/37] lkl: initialization and cleanup
Date: Fri,  8 Nov 2019 14:02:27 +0900
Message-Id: <ab5f51d9d2a427d25620010d498c47514dd90183.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210334_671085_AEF1B132 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
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

lkl_stop_kernel will shutdown the kernel, terminate all threads and
free all host resources used by the kernel before returning.

This patch also introduces idle CPU handling since it is closely
related to the shutdown process. A host semaphore is used to wait for
new interrupts when the kernel switches the CPU to idle to avoid
wasting host CPU cycles. When the kernel is shutdown we terminate the
idle thread at the first CPU idle event.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/setup.h         |   7 +
 arch/um/lkl/include/uapi/asm/host_ops.h |  26 ++++
 arch/um/lkl/kernel/setup.c              | 193 ++++++++++++++++++++++++
 3 files changed, 226 insertions(+)
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
index 6ae781419ce6..5f26e61f4b18 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -17,8 +17,14 @@ struct lkl_jmp_buf {
  * These operations must be provided by a host library or by the application
  * itself.
  *
+ * @virtio_devices - string containg the list of virtio devices in virtio mmio
+ * command line format. This string is appended to the kernel command line and
+ * is provided here for convenience to be implemented by the host library.
+ *
  * @print - optional operation that receives console messages
  *
+ * @panic - called during a kernel panic
+ *
  * @sem_alloc - allocate a host semaphore an initialize it to count
  * @sem_free - free a host semaphore
  * @sem_up - perform an up operation on the semaphore
@@ -78,7 +84,10 @@ struct lkl_jmp_buf {
  * @jmp_buf_longjmp - perform a jump back to the saved jump buffer
  */
 struct lkl_host_operations {
+	const char *virtio_devices;
+
 	void (*print)(const char *str, int len);
+	void (*panic)(void);
 
 	struct lkl_sem *(*sem_alloc)(int count);
 	void (*sem_free)(struct lkl_sem *sem);
@@ -121,6 +130,23 @@ struct lkl_host_operations {
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
index 000000000000..1bf973d36307
--- /dev/null
+++ b/arch/um/lkl/kernel/setup.c
@@ -0,0 +1,193 @@
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
+	if (ops->virtio_devices)
+		strscpy(boot_command_line + ret, ops->virtio_devices,
+			COMMAND_LINE_SIZE - ret);
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
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
