Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FECE1113
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZqQx429JTqed8d5KFlpeDg2T9n1WNKjnDKCpKOQCvQ=; b=JjxuJrTmzvD64B
	2paeldH9MY6s79X1LaQKY+RT5kBZhk+cacrb9nqjqnoyLnOed7Qyt60W+GI+Cihm90/DsLkVMIv9C
	D2aruI9cygGpQqIjMI0yeRx13/mgJGsXI+eaBtcpO8kwF5z4mKnBnUBd/f2nkNtMaP2U5wzX9XgPP
	aDlOOkz9EM0Y0obMpFRNVBtKTGu1QSzm+RIIU/Zf9ODcvmuaj2JrFHsk5jhDby8rYmZ3ZzuDVq2T8
	2PuiHLZaJI9wcaqgrUFJpFPj3fJytjKAIz6EY3VTlT1qH7Vs/E2ncpPPjTpPnTOClDAUZ/3flVkFq
	847F62i5O4YMJ1RaYncA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QX-00020u-0W; Wed, 23 Oct 2019 04:39:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QI-0001lz-VP
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id e10so11337953pgd.11
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gdH7UX4iDVWLs+R+PCF6P6nDmnB+SUtUnHyDu0HsVqk=;
 b=EmKA52k8L3I/txcToa6mHHAkuAYhUQVbArppMvzKRjYUD6Vn9wbukqHDhB2XDWqqEK
 HAuLun1V5EKI0oL75b2WNd2LOSuo739o0H1jK8oZ6VRHrpY4Xo4zifkrbBJk1WIThcNK
 +S1+UOuTCWvQqM5xaMBKf4nuJKny0ilvBB7lqpepLz3U6d426a29ksdR6XX08EUVnVcI
 t+bknk0dDriFu3K8wN+BjcebD3PWKnpn8HVnwVPOqfTZaTAiSP44LA55uSs6iLqC9/17
 mM42VsZsSFQlX/m5Wph0IKWW5YYXLRnzAZLZiV5Dy+ch9+1Kv5E18qQL/g9H4fbn1GN7
 2zNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gdH7UX4iDVWLs+R+PCF6P6nDmnB+SUtUnHyDu0HsVqk=;
 b=k6dsP79933+6cB9IE46czXtH9LE0wMpmgzbAxLkCezZ5n9aoFbMV7erFLzKQU74fxw
 CnIX+3JuWjcYMJKjXxefZ/Xfue++HO0Ue4jkxwWpm5GEfMlRR1wbpxeMAmh3wDHCehwQ
 hDChIYcFw9eP2d3TWcOsl9b4vBURpVllwRcCTLquxrKxFjyTa5Bo0TtgwXQ3dDSXu/Ft
 wNMZraQr3oNCfi7qHRcQvI4blgbyxPBT/LWtHbvTzGKvaqrER4oWhIg58TPTqGPcX0sR
 PWDU662zqez7YyxnDFGlEbBIaghJw2TJpL5Y29ucd/m85/TIKRkFP+lp9wBRwud0z0MA
 WziQ==
X-Gm-Message-State: APjAAAX4GMks6eBl8NkNQLXdPVxVQDlsHPJ1euYxxXFbVrfe4s3JDONd
 I3YJJUWQcndxDP7kIZcEiDQ=
X-Google-Smtp-Source: APXvYqzF9SLYo7LSAcgfDNWucP03xXyHQ4q6NR8SQGbDpo23B5sp7z0m/bVI8fvw9iJrCpLQLxlM+Q==
X-Received: by 2002:a17:90a:c684:: with SMTP id
 n4mr9056643pjt.33.1571805541366; 
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id dw19sm20321274pjb.27.2019.10.22.21.38.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:58 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 5F782201995802; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 08/47] lkl: system call interface and application API
Date: Wed, 23 Oct 2019 13:37:42 +0900
Message-Id: <9ce4dcb3eaa05b9f7eb9b873633aaa218d819b0e.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213903_043788_3A9E0AAA 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Conrad Meyer <cem@FreeBSD.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Jens Staal <staal1978@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Patrick Collins <pscollins@google.com>, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

The LKL application API is based on the kernel system call interface
in order to offer a stable API to applications. Note that we can't
offer the full Linux system call interface due to LKL limitations such
as lack of virtual memory, signal, user processes, etc.

The host is using the LKL interrupt mechanism (lkl_trigger_irq) to
initiate a system call. The system call is executed in the context of
the init process.

To avoid collisions between the Linux API and the LKL API (e.g.  struct
stat, MKNOD, etc.) we use a python script to modify the user headers
and to prefix all of the global symbols (structures, typedefs,
defines) with LKL, lkl, _LKL, _lkl, __LKL or __lkl.

Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Jens Staal <staal1978@gmail.com>
Signed-off-by: Lai Jiangshan <jiangshanlai@gmail.com>
Signed-off-by: Luca Dariz <luca.dariz@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/unistd.h       |  29 +++
 arch/um/lkl/include/uapi/asm/unistd.h  |  18 ++
 arch/um/lkl/kernel/syscalls.c          | 246 +++++++++++++++++++++++++
 arch/um/lkl/kernel/syscalls_32.c       | 159 ++++++++++++++++
 arch/um/lkl/scripts/headers_install.py | 195 ++++++++++++++++++++
 5 files changed, 647 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/unistd.h
 create mode 100644 arch/um/lkl/include/uapi/asm/unistd.h
 create mode 100644 arch/um/lkl/kernel/syscalls.c
 create mode 100644 arch/um/lkl/kernel/syscalls_32.c
 create mode 100755 arch/um/lkl/scripts/headers_install.py

diff --git a/arch/um/lkl/include/asm/unistd.h b/arch/um/lkl/include/asm/unistd.h
new file mode 100644
index 000000000000..c0efc68bf41f
--- /dev/null
+++ b/arch/um/lkl/include/asm/unistd.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <uapi/asm/unistd.h>
+
+__SYSCALL(__NR_virtio_mmio_device_add, sys_virtio_mmio_device_add)
+
+#define __SC_ASCII(t, a) #t "," #a
+
+#define __ASCII_MAP0(m, ...)
+#define __ASCII_MAP1(m, t, a) m(t, a)
+#define __ASCII_MAP2(m, t, a, ...) m(t, a) "," __ASCII_MAP1(m, __VA_ARGS__)
+#define __ASCII_MAP3(m, t, a, ...) m(t, a) "," __ASCII_MAP2(m, __VA_ARGS__)
+#define __ASCII_MAP4(m, t, a, ...) m(t, a) "," __ASCII_MAP3(m, __VA_ARGS__)
+#define __ASCII_MAP5(m, t, a, ...) m(t, a) "," __ASCII_MAP4(m, __VA_ARGS__)
+#define __ASCII_MAP6(m, t, a, ...) m(t, a) "," __ASCII_MAP5(m, __VA_ARGS__)
+#define __ASCII_MAP(n, ...) __ASCII_MAP##n(__VA_ARGS__)
+
+#ifdef __MINGW32__
+#define SECTION_ATTRS "n0"
+#else
+#define SECTION_ATTRS "a"
+#endif
+
+#define __SYSCALL_DEFINE_ARCH(x, name, ...)				\
+	asm(".section .syscall_defs,\"" SECTION_ATTRS "\"\n"		\
+	    ".ascii \"#ifdef __NR" #name "\\n\"\n"			\
+	    ".ascii \"SYSCALL_DEFINE" #x "(" #name ","			\
+	    __ASCII_MAP(x, __SC_ASCII, __VA_ARGS__) ")\\n\"\n"		\
+	    ".ascii \"#endif\\n\"\n"					\
+	    ".section .text\n");
diff --git a/arch/um/lkl/include/uapi/asm/unistd.h b/arch/um/lkl/include/uapi/asm/unistd.h
new file mode 100644
index 000000000000..561a7036821e
--- /dev/null
+++ b/arch/um/lkl/include/uapi/asm/unistd.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#define __ARCH_WANT_SYSCALL_NO_AT
+#define __ARCH_WANT_SYSCALL_DEPRECATED
+#define __ARCH_WANT_SYSCALL_NO_FLAGS
+#define __ARCH_WANT_RENAMEAT
+#define __ARCH_WANT_NEW_STAT
+#define __ARCH_WANT_SET_GET_RLIMIT
+#define __ARCH_WANT_TIME32_SYSCALLS
+
+#include <asm/bitsperlong.h>
+
+#if __BITS_PER_LONG == 64
+#define __ARCH_WANT_SYS_NEWFSTATAT
+#endif
+
+#include <asm-generic/unistd.h>
+
+#define __NR_virtio_mmio_device_add		(__NR_arch_specific_syscall + 0)
diff --git a/arch/um/lkl/kernel/syscalls.c b/arch/um/lkl/kernel/syscalls.c
new file mode 100644
index 000000000000..ce3923baa655
--- /dev/null
+++ b/arch/um/lkl/kernel/syscalls.c
@@ -0,0 +1,246 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/stat.h>
+#include <linux/irq.h>
+#include <linux/sched.h>
+#include <linux/interrupt.h>
+#include <linux/jhash.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+#include <linux/net.h>
+#include <linux/task_work.h>
+#include <linux/syscalls.h>
+#include <linux/kthread.h>
+#include <linux/platform_device.h>
+#include <asm/host_ops.h>
+#include <asm/syscalls.h>
+#include <asm/syscalls_32.h>
+#include <asm/cpu.h>
+#include <asm/sched.h>
+
+static asmlinkage long sys_virtio_mmio_device_add(long base, long size,
+						  unsigned int irq);
+
+typedef long (*syscall_handler_t)(long arg1, ...);
+
+#undef __SYSCALL
+#define __SYSCALL(nr, sym)[nr] = (syscall_handler_t)sym,
+
+static syscall_handler_t syscall_table[__NR_syscalls] = {
+	[0 ... __NR_syscalls - 1] = (syscall_handler_t)sys_ni_syscall,
+#include <asm/unistd.h>
+
+#if __BITS_PER_LONG == 32
+#include <asm/unistd_32.h>
+#endif
+};
+
+static long run_syscall(long no, long *params)
+{
+	long ret;
+
+	if (no < 0 || no >= __NR_syscalls)
+		return -ENOSYS;
+
+	ret = syscall_table[no](params[0], params[1], params[2], params[3],
+				params[4], params[5]);
+
+	task_work_run();
+
+	return ret;
+}
+
+
+#define CLONE_FLAGS (CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_THREAD |	\
+		     CLONE_SIGHAND | SIGCHLD)
+
+static int host_task_id;
+static struct task_struct *host0;
+
+static int new_host_task(struct task_struct **task)
+{
+	pid_t pid;
+
+	switch_to_host_task(host0);
+
+	pid = kernel_thread(host_task_stub, NULL, CLONE_FLAGS);
+	if (pid < 0)
+		return pid;
+
+	rcu_read_lock();
+	*task = find_task_by_pid_ns(pid, &init_pid_ns);
+	rcu_read_unlock();
+
+	host_task_id++;
+
+	snprintf((*task)->comm, sizeof((*task)->comm), "host%d", host_task_id);
+
+	return 0;
+}
+static void exit_task(void)
+{
+	do_exit(0);
+}
+
+static void del_host_task(void *arg)
+{
+	struct task_struct *task = (struct task_struct *)arg;
+	struct thread_info *ti = task_thread_info(task);
+
+	if (lkl_cpu_get() < 0)
+		return;
+
+	switch_to_host_task(task);
+	host_task_id--;
+	set_ti_thread_flag(ti, TIF_SCHED_JB);
+	lkl_ops->jmp_buf_set(&ti->sched_jb, exit_task);
+}
+
+static struct lkl_tls_key *task_key;
+
+long lkl_syscall(long no, long *params)
+{
+	struct task_struct *task = host0;
+	long ret;
+
+	ret = lkl_cpu_get();
+	if (ret < 0)
+		return ret;
+
+	if (lkl_ops->tls_get) {
+		task = lkl_ops->tls_get(task_key);
+		if (!task) {
+			ret = new_host_task(&task);
+			if (ret)
+				goto out;
+			lkl_ops->tls_set(task_key, task);
+		}
+	}
+
+	switch_to_host_task(task);
+
+	ret = run_syscall(no, params);
+
+	if (no == __NR_reboot) {
+		thread_sched_jb();
+		return ret;
+	}
+
+out:
+	lkl_cpu_put();
+
+	return ret;
+}
+
+static struct task_struct *idle_host_task;
+
+/* called from idle, don't failed, don't block */
+void wakeup_idle_host_task(void)
+{
+	if (!need_resched() && idle_host_task)
+		wake_up_process(idle_host_task);
+}
+
+static int idle_host_task_loop(void *unused)
+{
+	struct thread_info *ti = task_thread_info(current);
+
+	snprintf(current->comm, sizeof(current->comm), "idle_host_task");
+	set_thread_flag(TIF_HOST_THREAD);
+	idle_host_task = current;
+
+	for (;;) {
+		lkl_cpu_put();
+		lkl_ops->sem_down(ti->sched_sem);
+		if (idle_host_task == NULL) {
+			lkl_ops->thread_exit();
+			return 0;
+		}
+		schedule_tail(ti->prev_sched);
+	}
+}
+
+int syscalls_init(void)
+{
+	snprintf(current->comm, sizeof(current->comm), "host0");
+	set_thread_flag(TIF_HOST_THREAD);
+	host0 = current;
+
+	if (lkl_ops->tls_alloc) {
+		task_key = lkl_ops->tls_alloc(del_host_task);
+		if (!task_key)
+			return -1;
+	}
+
+	if (kernel_thread(idle_host_task_loop, NULL, CLONE_FLAGS) < 0) {
+		if (lkl_ops->tls_free)
+			lkl_ops->tls_free(task_key);
+		return -1;
+	}
+
+	return 0;
+}
+
+void syscalls_cleanup(void)
+{
+	if (idle_host_task) {
+		struct thread_info *ti = task_thread_info(idle_host_task);
+
+		idle_host_task = NULL;
+		lkl_ops->sem_up(ti->sched_sem);
+		lkl_ops->thread_join(ti->tid);
+	}
+
+	if (lkl_ops->tls_free)
+		lkl_ops->tls_free(task_key);
+}
+
+SYSCALL_DEFINE3(virtio_mmio_device_add, long, base, long, size, unsigned int,
+		irq)
+{
+	struct platform_device *pdev;
+	int ret;
+
+	struct resource res[] = {
+		[0] = {
+				.start = base,
+				.end = base + size - 1,
+				.flags = IORESOURCE_MEM,
+			},
+		[1] = {
+				.start = irq,
+				.end = irq,
+				.flags = IORESOURCE_IRQ,
+			},
+	};
+
+	pdev = platform_device_alloc("virtio-mmio", PLATFORM_DEVID_AUTO);
+	if (!pdev) {
+		dev_err(&pdev->dev,
+			"%s: Unable to device alloc for virtio-mmio\n",
+			__func__);
+		return -ENOMEM;
+	}
+
+	ret = platform_device_add_resources(pdev, res, ARRAY_SIZE(res));
+	if (ret) {
+		dev_err(&pdev->dev, "%s: Unable to add resources for %s%d\n",
+			__func__, pdev->name, pdev->id);
+		goto exit_device_put;
+	}
+
+	ret = platform_device_add(pdev);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "%s: Unable to add %s%d\n", __func__,
+			pdev->name, pdev->id);
+		goto exit_release_pdev;
+	}
+
+	return pdev->id;
+
+exit_release_pdev:
+	platform_device_del(pdev);
+exit_device_put:
+	platform_device_put(pdev);
+
+	return ret;
+}
diff --git a/arch/um/lkl/kernel/syscalls_32.c b/arch/um/lkl/kernel/syscalls_32.c
new file mode 100644
index 000000000000..a4271593c338
--- /dev/null
+++ b/arch/um/lkl/kernel/syscalls_32.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sys_ia32.c: Conversion between 32bit and 64bit native syscalls. Based on
+ *             sys_sparc32
+ *
+ * Copyright (C) 2000		VA Linux Co
+ * Copyright (C) 2000		Don Dugger <n0ano@valinux.com>
+ * Copyright (C) 1999		Arun Sharma <arun.sharma@intel.com>
+ * Copyright (C) 1997,1998	Jakub Jelinek (jj@sunsite.mff.cuni.cz)
+ * Copyright (C) 1997		David S. Miller (davem@caip.rutgers.edu)
+ * Copyright (C) 2000		Hewlett-Packard Co.
+ * Copyright (C) 2000		David Mosberger-Tang <davidm@hpl.hp.com>
+ * Copyright (C) 2000,2001,2002	Andi Kleen, SuSE Labs (x86-64 port)
+ *
+ * These routines maintain argument size conversion between 32bit and 64bit
+ * environment. In 2.5 most of this should be moved to a generic directory.
+ *
+ * This file assumes that there is a hole at the end of user address space.
+ *
+ * Some of the functions are LE specific currently. These are
+ * hopefully all marked.  This should be fixed.
+ */
+
+#include <linux/kernel.h>
+#include <linux/sched.h>
+#include <linux/fs.h>
+#include <linux/file.h>
+#include <linux/signal.h>
+#include <linux/syscalls.h>
+#include <linux/times.h>
+#include <linux/utsname.h>
+#include <linux/mm.h>
+#include <linux/uio.h>
+#include <linux/poll.h>
+#include <linux/personality.h>
+#include <linux/stat.h>
+#include <linux/rwsem.h>
+#include <linux/compat.h>
+#include <linux/vfs.h>
+#include <linux/ptrace.h>
+#include <linux/highuid.h>
+#include <linux/sysctl.h>
+#include <linux/slab.h>
+#include <asm/types.h>
+#include <linux/atomic.h>
+#include <asm/syscalls_32.h>
+
+#define AA(__x)		((unsigned long)(__x))
+
+#if __BITS_PER_LONG == 32
+
+asmlinkage long sys32_truncate64(const char __user *filename,
+				 unsigned long offset_low,
+				 unsigned long offset_high)
+{
+	return sys_truncate64(filename,
+			      ((loff_t)offset_high << 32) | offset_low);
+}
+
+asmlinkage long sys32_ftruncate64(unsigned int fd, unsigned long offset_low,
+				  unsigned long offset_high)
+{
+	return sys_ftruncate64(fd, ((loff_t)offset_high << 32) | offset_low);
+}
+
+#ifdef CONFIG_MMU
+/*
+ * Linux/i386 didn't use to be able to handle more than
+ * 4 system call parameters, so these system calls used a memory
+ * block for parameter passing..
+ */
+
+struct mmap_arg_struct32 {
+	unsigned int addr;
+	unsigned int len;
+	unsigned int prot;
+	unsigned int flags;
+	unsigned int fd;
+	unsigned int offset;
+};
+
+asmlinkage long sys32_mmap(struct mmap_arg_struct32 __user *arg)
+{
+	struct mmap_arg_struct32 a;
+
+	if (copy_from_user(&a, arg, sizeof(a)))
+		return -EFAULT;
+
+	if (a.offset & ~PAGE_MASK)
+		return -EINVAL;
+
+	return sys_mmap_pgoff(a.addr, a.len, a.prot, a.flags, a.fd,
+			      a.offset >> PAGE_SHIFT);
+}
+#endif
+
+asmlinkage long sys32_wait4(pid_t pid, unsigned int __user *stat_addr,
+			    int options, struct rusage __user *ru)
+{
+	return sys_wait4(pid, stat_addr, options, ru);
+}
+
+asmlinkage long sys32_pread64(unsigned int fd, char __user *ubuf, u32 count,
+			      u32 poslo, u32 poshi)
+{
+	return sys_pread64(fd, ubuf, count,
+			   ((loff_t)AA(poshi) << 32) | AA(poslo));
+}
+
+asmlinkage long sys32_pwrite64(unsigned int fd, const char __user *ubuf,
+			       u32 count, u32 poslo, u32 poshi)
+{
+	return sys_pwrite64(fd, ubuf, count,
+			    ((loff_t)AA(poshi) << 32) | AA(poslo));
+}
+
+/*
+ * Some system calls that need sign extended arguments. This could be
+ * done by a generic wrapper.
+ */
+long sys32_fadvise64_64(int fd, __u32 offset_low, __u32 offset_high,
+			__u32 len_low, __u32 len_high, int advice)
+{
+	return sys_fadvise64_64(fd, (((u64)offset_high) << 32) | offset_low,
+				(((u64)len_high) << 32) | len_low, advice);
+}
+
+asmlinkage ssize_t sys32_readahead(int fd, unsigned int off_lo,
+				   unsigned int off_hi, size_t count)
+{
+	return sys_readahead(fd, ((u64)off_hi << 32) | off_lo, count);
+}
+
+asmlinkage long sys32_sync_file_range(int fd, unsigned int off_low,
+				      unsigned int off_hi, unsigned int n_low,
+				      unsigned int n_hi, unsigned int flags)
+{
+	return sys_sync_file_range(fd, ((u64)off_hi << 32) | off_low,
+				   ((u64)n_hi << 32) | n_low, flags);
+}
+
+asmlinkage long sys32_sync_file_range2(int fd, unsigned int flags,
+				       unsigned int off_low,
+				       unsigned int off_hi, unsigned int n_low,
+				       unsigned int n_hi)
+{
+	return sys_sync_file_range(fd, ((u64)off_hi << 32) | off_low,
+				   ((u64)n_hi << 32) | n_low, flags);
+}
+
+asmlinkage long sys32_fallocate(int fd, int mode, unsigned int offset_lo,
+				unsigned int offset_hi, unsigned int len_lo,
+				unsigned int len_hi)
+{
+	return sys_fallocate(fd, mode, ((u64)offset_hi << 32) | offset_lo,
+			     ((u64)len_hi << 32) | len_lo);
+}
+
+#endif
diff --git a/arch/um/lkl/scripts/headers_install.py b/arch/um/lkl/scripts/headers_install.py
new file mode 100755
index 000000000000..17a4d2b00681
--- /dev/null
+++ b/arch/um/lkl/scripts/headers_install.py
@@ -0,0 +1,195 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+import re, os, sys, argparse, multiprocessing, fnmatch
+
+srctree = os.environ["srctree"]
+objtree = os.environ["objtree"]
+header_paths = [ "include/uapi/", "arch/um/lkl/include/uapi/",
+                 "arch/um/lkl/include/generated/uapi/", "include/generated/" ]
+
+headers = set()
+includes = set()
+
+def relpath2abspath(relpath):
+    if "generated" in relpath:
+        return objtree + "/" + relpath
+    else:
+        return srctree + "/" + relpath
+
+def find_headers(path):
+    headers.add(path)
+    f = open(relpath2abspath(path))
+    for l in f.readlines():
+        m = re.search("#include <(.*)>", l)
+        try:
+            i = m.group(1)
+            for p in header_paths:
+                if os.access(relpath2abspath(p + i), os.R_OK):
+                    if p + i not in headers:
+                        includes.add(i)
+                        headers.add(p + i)
+                        find_headers(p + i)
+        except:
+            pass
+    f.close()
+
+def has_lkl_prefix(w):
+  return w.startswith("lkl") or w.startswith("_lkl") or w.startswith("__lkl") \
+         or w.startswith("LKL") or w.startswith("_LKL") or w.startswith("__LKL")
+
+def find_symbols(regexp, store):
+    for h in headers:
+        f = open(h)
+        for l in f.readlines():
+            m = regexp.search(l)
+            if not m:
+                continue
+            for e in reversed(m.groups()):
+                if e:
+                    if not has_lkl_prefix(e):
+                        store.add(e)
+                    break
+        f.close()
+
+def find_ml_symbols(regexp, store):
+    for h in headers:
+        for i in regexp.finditer(open(h).read()):
+            for j in reversed(i.groups()):
+                if j:
+                    if not has_lkl_prefix(j):
+                        store.add(j)
+                    break
+
+def find_enums(block_regexp, symbol_regexp, store):
+    for h in headers:
+        # remove comments
+        content = re.sub(re.compile("(\/\*(\*(?!\/)|[^*])*\*\/)", re.S|re.M), " ", open(h).read())
+        # remove preprocesor lines
+        clean_content = ""
+        for l in content.split("\n"):
+            if re.match("\s*#", l):
+                continue
+            clean_content += l + "\n"
+        for i in block_regexp.finditer(clean_content):
+            for j in reversed(i.groups()):
+                if j:
+                    for k in symbol_regexp.finditer(j):
+                        for l in k.groups():
+                            if l:
+                                if not has_lkl_prefix(l):
+                                    store.add(l)
+                                break
+
+def lkl_prefix(w):
+    r = ""
+
+    if w.startswith("__"):
+        r = "__"
+    elif w.startswith("_"):
+        r = "_"
+
+    if w.isupper():
+        r += "LKL"
+    else:
+        r += "lkl"
+
+    if not w.startswith("_"):
+        r += "_"
+
+    r += w
+
+    return r
+
+def replace(h):
+    content = open(h).read()
+    for i in includes:
+        search_str = "(#[ \t]*include[ \t]*[<\"][ \t]*)" + i + "([ \t]*[>\"])"
+        replace_str = "\\1" + "lkl/" + i + "\\2"
+        content = re.sub(search_str, replace_str, content)
+    tmp = ""
+    for w in re.split("(\W+)", content):
+        if w in defines:
+            w = lkl_prefix(w)
+        tmp += w
+    content = tmp
+    for s in structs:
+        search_str = "(\W?struct\s+)" + s + "(\W)"
+        replace_str = "\\1" + lkl_prefix(s) + "\\2"
+        content = re.sub(search_str, replace_str, content, flags = re.MULTILINE)
+    for s in unions:
+        search_str = "(\W?union\s+)" + s + "(\W)"
+        replace_str = "\\1" + lkl_prefix(s) + "\\2"
+        content = re.sub(search_str, replace_str, content, flags = re.MULTILINE)
+    open(h, 'w').write(content)
+
+parser = argparse.ArgumentParser(description='install lkl headers')
+parser.add_argument('path', help='path to install to', )
+parser.add_argument('-j', '--jobs', help='number of parallel jobs', default=1, type=int)
+args = parser.parse_args()
+
+find_headers("arch/um/lkl/include/uapi/asm/syscalls.h")
+headers.add("arch/um/lkl/include/uapi/asm/host_ops.h")
+
+if 'LKL_INSTALL_ADDITIONAL_HEADERS' in os.environ:
+    with open(os.environ['LKL_INSTALL_ADDITIONAL_HEADERS'], 'rU') as f:
+        for line in f.readlines():
+            line = line.split('#', 1)[0].strip()
+            if line != '':
+                headers.add(line)
+
+new_headers = set()
+
+for h in headers:
+    dir = os.path.dirname(h)
+    out_dir = args.path + "/" + re.sub("(arch/um/lkl/include/uapi/|arch/um/lkl/include/generated/uapi/|include/uapi/|include/generated/uapi/|include/generated)(.*)", "lkl/\\2", dir)
+    try:
+        os.makedirs(out_dir)
+    except:
+        pass
+    print("  INSTALL\t%s" % (out_dir + "/" + os.path.basename(h)))
+    os.system(srctree+"/scripts/headers_install.sh %s %s" % (os.path.abspath(h),
+                                                       out_dir + "/" + os.path.basename(h)))
+    new_headers.add(out_dir + "/" + os.path.basename(h))
+
+headers = new_headers
+
+defines = set()
+structs = set()
+unions = set()
+
+p = re.compile("#[ \t]*define[ \t]*(\w+)")
+find_symbols(p, defines)
+p = re.compile("typedef.*(\(\*(\w+)\)\(.*\)\s*|\W+(\w+)\s*|\s+(\w+)\(.*\)\s*);")
+find_symbols(p, defines)
+p = re.compile("typedef\s+(struct|union)\s+\w*\s*{[^\\{\}]*}\W*(\w+)\s*;", re.M|re.S)
+find_ml_symbols(p, defines)
+defines.add("siginfo_t")
+defines.add("sigevent_t")
+p = re.compile("struct\s+(\w+)\s*\{")
+find_symbols(p, structs)
+structs.add("iovec")
+p = re.compile("union\s+(\w+)\s*\{")
+find_symbols(p, unions)
+p = re.compile("static\s+__inline__(\s+\w+)+\s+(\w+)\([^)]*\)\s")
+find_symbols(p, defines)
+p = re.compile("static\s+__always_inline(\s+\w+)+\s+(\w+)\([^)]*\)\s")
+find_symbols(p, defines)
+p = re.compile("enum\s+(\w*)\s*{([^}]*)}", re.M|re.S)
+q = re.compile("(\w+)\s*(,|=[^,]*|$)", re.M|re.S)
+find_enums(p, q, defines)
+
+# needed for i386
+defines.add("__NR_stime")
+
+def process_header(h):
+    print("  REPLACE\t%s" % (out_dir + "/" + os.path.basename(h)))
+    replace(h)
+
+p = multiprocessing.Pool(args.jobs)
+try:
+    p.map_async(process_header, headers).wait(999999)
+    p.close()
+except:
+    p.terminate()
+finally:
+    p.join()
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
