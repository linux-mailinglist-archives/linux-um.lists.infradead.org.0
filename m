Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD15197ED1
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3UW5tXKR1t1zzr63fZ0d+onojnc4Elb6MJkq76ZwXM=; b=ctJvlMfyhJNRSD
	vda2n62ucYvMJ69tMMHi8Ck31Y1OY6bOeGlbp+KMkn00Ek7kFa9hhI5J3K0mmoCXdjEDrHA+0T78A
	tmB/BYa4wLwi4V//uHmn0j37sZanu0PbJ3Uy8CL8Vk5rDV2iEHVNoPw7VNu8h4LAkbfHhMDP8+AeY
	oF4iq4M4XTKIHvASaTER0qCaJgO9x0M16Dl6sJ7WnHRZEBhaKAIxhwF4LQz2pFzXQOzwV0AcEFjde
	WFhWj+d0nGfvsPg9e+2PWHog/UAQr5K2LmuzaTg2fXRX36jalqNtwE0vpfWaQgk8pgQ+XXdYZ8JEV
	p2hScTBuc0EpoLVWliqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvhe-0004nY-8S; Mon, 30 Mar 2020 14:47:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvhY-0004n3-QL
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:47:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id g2so6816465plo.3
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Uk5+ZHIYNQeKzs+4Zpbn9bAOvJrAa05qxICMyJH0aU=;
 b=gFZ3aqJ7UOKbUv2cqj3+T2Ews4PZ84nSDUrwy6VC4g6lFetnp9SH9gYz2vZcKrZoL6
 zYBpgIdUYgH4ixZUK9WioYVoYyfQbuGvMYzTgulQjNCTllNxHG6qhCBaHlohF4iZBftg
 ngWArs38mxRTbl5lYm1sNL7JkJ4BZcZ7IZFNQJnvXBD0Le2x8nf4U7HhHwTib39nO70+
 8GECcRIc80qMttK0zEzl2G9sJryYLL/3nQJnEVOl6KrM7E4bK9O5asCFyOUwLFlRc34H
 nFmcM65I3ehVtM/EypxPdWVMpNLLjpicEw5JDI6vR1G57uZv3QHqP8+BOlbtB8uBYubo
 swAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Uk5+ZHIYNQeKzs+4Zpbn9bAOvJrAa05qxICMyJH0aU=;
 b=Ht5SuMyuivVV046uLGTCvocx+UqsDrHSZO6RrwgZ9nlgy1tzu99f8m7PiozV1tUi8X
 plV4Vba8x1Nr7I3xAt+gocqN04O2BSzk7hdgQ07IZhA0gBFoGEZwE50PdnIz2w56+qMt
 HTfGgG5nEFxeEYyoQa9Ca2EwkLmvbmCul4UpDWQWDcIqTl2znSwsq5hggI3pn+FMfMNy
 SFfTx0fNVSUIk7j7NOKqjzwbPHCnM0P++m7mh1i617/6fg38Wp97bfxfgSNzRQ9/6ina
 hFrcyPiKF+2IA0N+PsctUvdoAzKLis8uT1HodcP7Hf/19CXs0Uephmc0WiWtLmzaaHFy
 jYdA==
X-Gm-Message-State: ANhLgQ1gt1AO7xGAtiZRNMzOLbmDVVomrbqaRPDX2EiocF6JKRoD/bFd
 RNfZ9OfOhm/3hcOBOp+Jxgo=
X-Google-Smtp-Source: ADFU+vsypHzUCrD8Ejkt3s7QhF8M0XjFOv8J/J++2qeD6qaykcog9S522lNaqDnTkY86lSVExEqudQ==
X-Received: by 2002:a17:90a:fd90:: with SMTP id
 cx16mr16405639pjb.41.1585579664069; 
 Mon, 30 Mar 2020 07:47:44 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id a13sm9743667pgi.77.2020.03.30.07.47.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:47:43 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id A56A3202804D08; Mon, 30 Mar 2020 23:47:26 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 07/25] um lkl: system call interface and application API
Date: Mon, 30 Mar 2020 23:45:39 +0900
Message-Id: <2cdbea16972f67259c5b19d1933fdfa5513f0f45.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074746_925561_AB248EF9 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 Conrad Meyer <cem@FreeBSD.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Jens Staal <staal1978@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Patrick Collins <pscollins@google.com>,
 linux-kernel-library@freelists.org, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Yuan Liu <liuyuan@google.com>
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

Cc: Conrad Meyer <cem@FreeBSD.org>
Cc: Jens Staal <staal1978@gmail.com>
Cc: Lai Jiangshan <jiangshanlai@gmail.com>
Cc: Luca Dariz <luca.dariz@gmail.com>
Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
Cc: Patrick Collins <pscollins@google.com>
Cc: Pierre-Hugues Husson <phh@phh.me>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/unistd.h        |  27 ++++
 arch/um/lkl/include/uapi/asm/host_ops.h |  14 ++
 arch/um/lkl/include/uapi/asm/unistd.h   |  13 ++
 arch/um/lkl/kernel/syscalls.c           | 192 +++++++++++++++++++++++
 arch/um/lkl/kernel/syscalls_32.c        | 159 +++++++++++++++++++
 arch/um/lkl/scripts/headers_install.py  | 196 ++++++++++++++++++++++++
 6 files changed, 601 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/unistd.h
 create mode 100644 arch/um/lkl/include/uapi/asm/unistd.h
 create mode 100644 arch/um/lkl/kernel/syscalls.c
 create mode 100644 arch/um/lkl/kernel/syscalls_32.c
 create mode 100755 arch/um/lkl/scripts/headers_install.py

diff --git a/arch/um/lkl/include/asm/unistd.h b/arch/um/lkl/include/asm/unistd.h
new file mode 100644
index 000000000000..ca0eac0f2827
--- /dev/null
+++ b/arch/um/lkl/include/asm/unistd.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <uapi/asm/unistd.h>
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
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
index 19924fc7c718..1c839d7139f8 100644
--- a/arch/um/lkl/include/uapi/asm/host_ops.h
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -36,6 +36,15 @@ struct lkl_jmp_buf {
  * @thread_join - wait for the given thread to terminate. Returns 0
  * for success, -1 otherwise
  *
+ * @tls_alloc - allocate a thread local storage key; returns 0 if successful; if
+ * destructor is not NULL it will be called when a thread terminates with its
+ * argument set to the current thread local storage value
+ * @tls_free - frees a thread local storage key; returns 0 if successful
+ * @tls_set - associate data to the thread local storage key; returns 0 if
+ * successful
+ * @tls_get - return data associated with the thread local storage key or NULL
+ * on error
+ *
  * @mem_alloc - allocate memory
  * @mem_free - free memory
  *
@@ -71,6 +80,11 @@ struct lkl_host_operations {
 	lkl_thread_t (*thread_self)(void);
 	int (*thread_equal)(lkl_thread_t a, lkl_thread_t b);
 
+	struct lkl_tls_key *(*tls_alloc)(void (*destructor)(void *));
+	void (*tls_free)(struct lkl_tls_key *key);
+	int (*tls_set)(struct lkl_tls_key *key, void *data);
+	void *(*tls_get)(struct lkl_tls_key *key);
+
 	void *(*mem_alloc)(unsigned long mem);
 	void (*mem_free)(void *mem);
 
diff --git a/arch/um/lkl/include/uapi/asm/unistd.h b/arch/um/lkl/include/uapi/asm/unistd.h
new file mode 100644
index 000000000000..7670e93f0152
--- /dev/null
+++ b/arch/um/lkl/include/uapi/asm/unistd.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
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
diff --git a/arch/um/lkl/kernel/syscalls.c b/arch/um/lkl/kernel/syscalls.c
new file mode 100644
index 000000000000..3ab1d776ca4b
--- /dev/null
+++ b/arch/um/lkl/kernel/syscalls.c
@@ -0,0 +1,192 @@
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
index 000000000000..30101bd1d4bf
--- /dev/null
+++ b/arch/um/lkl/scripts/headers_install.py
@@ -0,0 +1,196 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+import re, os, sys, argparse, multiprocessing, fnmatch
+
+srctree = os.environ["srctree"]
+objtree = os.environ["objtree"]
+install_hdr_path = os.environ["INSTALL_HDR_PATH"]
+header_paths = [ install_hdr_path + "/include/",
+                 "arch/um/lkl/include/generated/uapi/", "include/generated/" ]
+
+headers = set()
+includes = set()
+
+def relpath2abspath(relpath):
+    if "generated" in relpath:
+        return objtree + "/" + relpath
+    else:
+        return objtree + "/" + relpath
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
+find_headers(install_hdr_path + "/include/asm/syscalls.h")
+headers.add(install_hdr_path + "/include/asm/host_ops.h")
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
+    out_dir = args.path + "/" + re.sub("(arch/um/lkl/include/generated/uapi/|include/generated/uapi/|include/generated|" + install_hdr_path + "/include/)(.*)", "lkl/\\2", dir)
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
