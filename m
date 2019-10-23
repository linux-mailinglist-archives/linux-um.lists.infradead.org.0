Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5A6E1106
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU1uCm8YIRwwc/pJXishP6RXJ2jUkA5DM07YPAOJh0I=; b=Ni9ySUqFRAIAGy
	wkxHjTh6OYiEOlAChYFbDi4CGPn8kZ9C/dA3s4Ar/VPoSabJsPiginnd1Oe3F+Y6JDalEvZgmibRT
	yC6wPPIcbur4rolmPbSVFyq7OAYv7Mz6zj3kChLycFw4aohOuTtxoV30xrmnTMOr4qft7zHqEQu0q
	VuvdCaEngO3WAq85czA6AhIHovJ9MnVsRhrFAE0UZ5m//gApgJG0f/E6qtgHKYgfuPv0AuJ9SI1Ls
	Hatt6/f0hIq6LFj67baMYyorTjQcjg8GhhGGt4xHvX8SihtLYJjUOPHXSb37til75AHieMPXv54nE
	XRiuHZWc7qhG6gTEdn3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QH-0001ky-KC; Wed, 23 Oct 2019 04:39:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QC-0001i5-Rw
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:38:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id 21so828004pfj.9
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eYzDyKTwsNhd2Vf5J+Sv2Id/PddSissmwkPN3LWBtmI=;
 b=AWrOglehPnGEnRAk8RNBhsuVIZduPhD52rzBUNibU/5Z4Zn4wBtJ7AOSCJqhg8utDm
 wnNChccZmYc/MduPFbe4gMjeHk1V3sc7XTBxKAG40Kvw1omVuKytKdhzgdoMwjLc69Hn
 hailL/bjDpEbsrN4MmHtSr4mDDbYrwbXR12HPGdTTqHz0g+0JyD100aPpUDLfK6cB3Pk
 ONlexIPyvm3ujKH/KyArx7onpJ7cIBhebp50hBhZsv+i9FH2wubU9XK6OC1yUb35DMs/
 Ctx0hJltx1Ii+wTO+9UA71k/KRgyumIEEGxozVwztRUTChm8AbJsLXwyzB+xKG6ndTvK
 i4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eYzDyKTwsNhd2Vf5J+Sv2Id/PddSissmwkPN3LWBtmI=;
 b=cEfEyCalJ3n8L7aScO6o3VVRlb76N4InABYwNSMv9J1vJFIpJttjylyAJK02zgLmxp
 FtRS6u//k4awAaW3afnXcjcfOqlmD9MjCHrTDSeRFWdNiZDvcBmpVd7peMnX4b2Mz32K
 dIZLz/m0CPuNvwWUr1bm3G5R63vFm/8uyoCdgvDA77BU9x4dUGC1bJTCmLB5uReRjH48
 qyaBSuddHZY0PEK84nrSEMD9XpEd18UdzDYUBH2fhunhLAWam39oqD+g9jU5PILE5L+l
 2Hw/HuetmwBbLFoSriZbBclcBXEAkg9TRrVvM9Y+K3SNQUvHAQTAScpXQV1zmxHwzJQn
 L6qw==
X-Gm-Message-State: APjAAAXeYxlGdvdTm7QNhDI4GfBcpbkogg9uvyEF0A44x9hurxtXecm2
 ZPjiEbzAJRi/XPaPE3Fh1Y5OlAcFRIdUFA==
X-Google-Smtp-Source: APXvYqydwkvkE+ehiYzJCK0hh9C8uGW+whrxchZ/JPib6p+dEOTukCulhRd6ZRUmX6qvpoMk8XBvXg==
X-Received: by 2002:a62:fc84:: with SMTP id e126mr2534309pfh.97.1571805536058; 
 Tue, 22 Oct 2019 21:38:56 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id q6sm23609277pgn.44.2019.10.22.21.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:54 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 35E472019957FA; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 04/47] lkl: host interface
Date: Wed, 23 Oct 2019 13:37:38 +0900
Message-Id: <06597362bc23061912ae6ed31274da272c27b713.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213856_909602_F65382C1 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Akira Moroo <retrage01@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Patrick Collins <pscollins@google.com>, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch introduces the host operations that define the interface
between the LKL and the host. These operations must be provided either
by a host library or by the application itself.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/include/asm/host_ops.h      |  12 ++
 arch/um/lkl/include/uapi/asm/host_ops.h | 153 ++++++++++++++++++++++++
 2 files changed, 165 insertions(+)
 create mode 100644 arch/um/lkl/include/asm/host_ops.h
 create mode 100644 arch/um/lkl/include/uapi/asm/host_ops.h

diff --git a/arch/um/lkl/include/asm/host_ops.h b/arch/um/lkl/include/asm/host_ops.h
new file mode 100644
index 000000000000..a31b10c33a5b
--- /dev/null
+++ b/arch/um/lkl/include/asm/host_ops.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_LKL_HOST_OPS_H
+#define _ASM_LKL_HOST_OPS_H
+
+#include "irq.h"
+#include <uapi/asm/host_ops.h>
+
+extern struct lkl_host_operations *lkl_ops;
+
+#define lkl_puts(text) lkl_ops->print(text, strlen(text))
+
+#endif
diff --git a/arch/um/lkl/include/uapi/asm/host_ops.h b/arch/um/lkl/include/uapi/asm/host_ops.h
new file mode 100644
index 000000000000..5f26e61f4b18
--- /dev/null
+++ b/arch/um/lkl/include/uapi/asm/host_ops.h
@@ -0,0 +1,153 @@
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
+ * @virtio_devices - string containg the list of virtio devices in virtio mmio
+ * command line format. This string is appended to the kernel command line and
+ * is provided here for convenience to be implemented by the host library.
+ *
+ * @print - optional operation that receives console messages
+ *
+ * @panic - called during a kernel panic
+ *
+ * @sem_alloc - allocate a host semaphore an initialize it to count
+ * @sem_free - free a host semaphore
+ * @sem_up - perform an up operation on the semaphore
+ * @sem_down - perform a down operation on the semaphore
+ *
+ * @mutex_alloc - allocate and initialize a host mutex; the recursive parameter
+ * determines if the mutex is recursive or not
+ * @mutex_free - free a host mutex
+ * @mutex_lock - acquire the mutex
+ * @mutex_unlock - release the mutex
+ *
+ * @thread_create - create a new thread and run f(arg) in its context; returns a
+ * thread handle or 0 if the thread could not be created
+ * @thread_detach - on POSIX systems, free up resources held by
+ * pthreads. Noop on Win32.
+ * @thread_exit - terminates the current thread
+ * @thread_join - wait for the given thread to terminate. Returns 0
+ * for success, -1 otherwise
+ *
+ * @tls_alloc - allocate a thread local storage key; returns 0 if successful; if
+ * destructor is not NULL it will be called when a thread terminates with its
+ * argument set to the current thread local storage value
+ * @tls_free - frees a thread local storage key; returns 0 if successful
+ * @tls_set - associate data to the thread local storage key; returns 0 if
+ * successful
+ * @tls_get - return data associated with the thread local storage key or NULL
+ * on error
+ *
+ * @mem_alloc - allocate memory
+ * @mem_free - free memory
+ *
+ * @timer_create - allocate a host timer that runs fn(arg) when the timer
+ * fires.
+ * @timer_free - disarms and free the timer
+ * @timer_set_oneshot - arm the timer to fire once, after delta ns.
+ * @timer_set_periodic - arm the timer to fire periodically, with a period of
+ * delta ns.
+ *
+ * @ioremap - searches for an I/O memory region identified by addr and size and
+ * returns a pointer to the start of the address range that can be used by
+ * iomem_access
+ * @iomem_access - reads or writes to and I/O memory region; addr must be in the
+ * range returned by ioremap
+ *
+ * @gettid - returns the host thread id of the caller, which need not
+ * be the same as the handle returned by thread_create
+ *
+ * @jmp_buf_set - runs the give function and setups a jump back point by saving
+ * the context in the jump buffer; jmp_buf_longjmp can be called from the give
+ * function or any callee in that function to return back to the jump back
+ * point
+ *
+ * NOTE: we can't return from jmp_buf_set before calling jmp_buf_longjmp or
+ * otherwise the saved context (stack) is not going to be valid, so we must pass
+ * the function that will eventually call longjmp here
+ *
+ * @jmp_buf_longjmp - perform a jump back to the saved jump buffer
+ */
+struct lkl_host_operations {
+	const char *virtio_devices;
+
+	void (*print)(const char *str, int len);
+	void (*panic)(void);
+
+	struct lkl_sem *(*sem_alloc)(int count);
+	void (*sem_free)(struct lkl_sem *sem);
+	void (*sem_up)(struct lkl_sem *sem);
+	void (*sem_down)(struct lkl_sem *sem);
+
+	struct lkl_mutex *(*mutex_alloc)(int recursive);
+	void (*mutex_free)(struct lkl_mutex *mutex);
+	void (*mutex_lock)(struct lkl_mutex *mutex);
+	void (*mutex_unlock)(struct lkl_mutex *mutex);
+
+	lkl_thread_t (*thread_create)(void (*f)(void *), void *arg);
+	void (*thread_detach)(void);
+	void (*thread_exit)(void);
+	int (*thread_join)(lkl_thread_t tid);
+	lkl_thread_t (*thread_self)(void);
+	int (*thread_equal)(lkl_thread_t a, lkl_thread_t b);
+
+	struct lkl_tls_key *(*tls_alloc)(void (*destructor)(void *));
+	void (*tls_free)(struct lkl_tls_key *key);
+	int (*tls_set)(struct lkl_tls_key *key, void *data);
+	void *(*tls_get)(struct lkl_tls_key *key);
+
+	void *(*mem_alloc)(unsigned long mem);
+	void (*mem_free)(void *mem);
+
+	unsigned long long (*time)(void);
+
+	void *(*timer_alloc)(void (*fn)(void *), void *arg);
+	int (*timer_set_oneshot)(void *timer, unsigned long delta);
+	void (*timer_free)(void *timer);
+
+	void *(*ioremap)(long addr, int size);
+	int (*iomem_access)(const volatile void *addr, void *val, int size,
+			    int write);
+
+	long (*gettid)(void);
+
+	void (*jmp_buf_set)(struct lkl_jmp_buf *jmpb, void (*f)(void));
+	void (*jmp_buf_longjmp)(struct lkl_jmp_buf *jmpb, int val);
+};
+
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
+int lkl_printf(const char *fmt, ...);
+void lkl_bug(const char *fmt, ...);
+
+#endif
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
