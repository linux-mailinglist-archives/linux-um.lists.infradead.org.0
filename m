Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D1F3F42
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFg4kOwmCSnsgPB2SXpWVcTm2xes/HceEBu0NatHqYY=; b=N53kG2UAsMsOpp
	Z5bCDyeehSizQKPYfju4flR1fxvzUeEGXus9jCjf2JxlWfSl1NLzfwfWFwwfe+T4gEQctuf6DGfbj
	/f4caKPL07s/VkmrYvyONO4uaNPsxEGnCPTsb3kJQccajCzlAJw9NvKluOXa+8lDb3UmICbecg5xm
	7obeWFO6e0I40JgxdVb78SNo1a0zKKDUHfzgpJ8tvL831ogcjP/Gh0mWDHn8xuUgWzAqUXDbqL0dh
	w0ZeeCWJZwJaJBuNNzjqXpAnLpBnCuQfm68pxi6dglGhU43fe1LG1c+D7V+/wXQf4xwSushsOiA57
	hUP5EZIGnhfoinUQZR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRD-0003us-1i; Fri, 08 Nov 2019 05:03:59 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwR9-0003tC-6Z
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id p13so3255360pll.4
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xD37sshFcRfRkPMmF6ARHfKibDyWe8IJYHwezS58gDI=;
 b=KeknvTcNKFdpIJCZaIQ08/AL2mEFE7K06GemJC6TDM7mIyC79VawV5pv3008+P5AFe
 52bcGp75Llfh1UZ46v0/bnBKEQ1qkxpDJjqo2c0QENc+LWOv3KIPymtvw40Dg7ROtP68
 2qCBrnBZUY+Xq434yRf9kGFYz7J6xQOs/jTfgGvP6qKzuxF3Z6aRK02CRXVTYjMlhX+c
 fJa0LUG180dYYCZGssmNRajuV8xacY4XPEvd8eb8G5jzUPiOQj1HVxG6kfgrXcXsDSNA
 5cFEdPeeCY6F1pVb/NTa2EgmwF1bQG6gpHQ39ygIxyO/B0dUUcl6f9Qgs7xac0bsP25O
 1TPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xD37sshFcRfRkPMmF6ARHfKibDyWe8IJYHwezS58gDI=;
 b=oB8HKsQePYuz89A2EC0PcuaErzLVMadPJ9Z6IApa6KQwBso6ZJteTld7rhDPCTJkiM
 7aqMP0wAYkxBZepIpVi87vy5VgY+VgrwZOer/Fu1Yl7xgMptT9HGU+ya01YU/cU6vtS4
 j26pvnHxZ7MD38LG4x2zgRxNMf+6z6xuLxUSMb+rZgLlc59EX84M/rmOazupRapNsuQd
 5dVhTq1xR5GNMgJS/Gl3QlzYyZHtp0A5R/S5r8jETMMhLyvh26lbsFYTlPrykLHoOeeX
 LLDLNu8UH/8q9TDJYoh0fXDG5IjzvZPuw33nJE0+aYbSsMxBoIyj9ozjCUwoA15mgw3m
 PXYA==
X-Gm-Message-State: APjAAAUBvPpUdqui2fO92/4gnU/UM4HqeK0wnsRaICy1vL2yY+UbG8pw
 HH3sZALrRkjrcmnlyeAPLss=
X-Google-Smtp-Source: APXvYqx+hGgr9g1YJh+HWVHor34d49fVJFy7ej/LUV+v5KP9CSryzaKWeAjQFZUL6CddwVxpEih6bA==
X-Received: by 2002:a17:902:8a8c:: with SMTP id
 p12mr8220794plo.308.1573189434427; 
 Thu, 07 Nov 2019 21:03:54 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id w7sm5463020pfb.101.2019.11.07.21.03.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:53 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 37FAD201ACFDC7; Fri,  8 Nov 2019 14:03:52 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 20/37] lkl tools: host lib: posix host operations
Date: Fri,  8 Nov 2019 14:02:35 +0900
Message-Id: <723f8d74dea45e691b760add194e8f57aa2e2fb7.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210355_242439_D09D387B 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: linux-arch@vger.kernel.org, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Yuan Liu <liuyuan@google.com>, Thomas Liebetraut <thomas@tommie-lie.de>,
 Mark Stillwell <mark@stillwell.me>, Patrick Collins <pscollins@google.com>,
 linux-kernel-library@freelists.org, Pierre-Hugues Husson <phh@phh.me>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Implement LKL host operations for POSIX hosts.

Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Mark Stillwell <mark@stillwell.me>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
Signed-off-by: Thomas Liebetraut <thomas@tommie-lie.de>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 Makefile                   |   2 +
 tools/lkl/lib/Build        |   2 +
 tools/lkl/lib/posix-host.c | 435 +++++++++++++++++++++++++++++++++++++
 3 files changed, 439 insertions(+)
 create mode 100644 tools/lkl/lib/posix-host.c

diff --git a/Makefile b/Makefile
index 0cbe8717bdb3..874c0aec0f9c 100644
--- a/Makefile
+++ b/Makefile
@@ -1123,7 +1123,9 @@ archprepare: archheaders archscripts scripts prepare3 outputmakefile \
 	asm-generic $(version_h) $(autoksyms_h) include/generated/utsrelease.h
 
 prepare0: archprepare
+ifeq ($(findstring elf,$(if $(CONFIG_OUTPUT_FORMAT),$(CONFIG_OUTPUT_FORMAT),elf)),elf)
 	$(Q)$(MAKE) $(build)=scripts/mod
+endif
 	$(Q)$(MAKE) $(build)=.
 
 # All the preparing..
diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index f2ee04366464..a7a3bff27bb1 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -1,8 +1,10 @@
 CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
+CFLAGS_posix-host.o += -D_FILE_OFFSET_BITS=64
 
 liblkl-y += fs.o
 liblkl-y += iomem.o
 liblkl-y += jmp_buf.o
+liblkl-$(LKL_HOST_CONFIG_POSIX) += posix-host.o
 liblkl-y += utils.o
 liblkl-y += virtio_blk.o
 liblkl-y += virtio.o
diff --git a/tools/lkl/lib/posix-host.c b/tools/lkl/lib/posix-host.c
new file mode 100644
index 000000000000..c2b579433b12
--- /dev/null
+++ b/tools/lkl/lib/posix-host.c
@@ -0,0 +1,435 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <pthread.h>
+#include <stdlib.h>
+#include <sys/time.h>
+#include <time.h>
+#include <signal.h>
+#include <assert.h>
+#include <unistd.h>
+#include <errno.h>
+#include <string.h>
+#include <time.h>
+#include <stdint.h>
+#include <sys/uio.h>
+#include <sys/types.h>
+#include <sys/socket.h>
+#include <sys/syscall.h>
+#include <poll.h>
+#include <lkl_host.h>
+#include "iomem.h"
+#include "jmp_buf.h"
+
+/* Let's see if the host has semaphore.h */
+#include <unistd.h>
+
+#ifdef _POSIX_SEMAPHORES
+#include <semaphore.h>
+/* TODO(pscollins): We don't support fork() for now, but maybe one day
+ * we will?
+ */
+#define SHARE_SEM 0
+#endif /* _POSIX_SEMAPHORES */
+
+static void print(const char *str, int len)
+{
+	int ret __attribute__((unused));
+
+	ret = write(STDOUT_FILENO, str, len);
+}
+
+struct lkl_mutex {
+	pthread_mutex_t mutex;
+};
+
+struct lkl_sem {
+#ifdef _POSIX_SEMAPHORES
+	sem_t sem;
+#else
+	pthread_mutex_t lock;
+	int count;
+	pthread_cond_t cond;
+#endif /* _POSIX_SEMAPHORES */
+};
+
+struct lkl_tls_key {
+	pthread_key_t key;
+};
+
+#define WARN_UNLESS(exp) do {						\
+		if (exp < 0)						\
+			lkl_printf("%s: %s\n", #exp, strerror(errno));	\
+	} while (0)
+
+static int _warn_pthread(int ret, char *str_exp)
+{
+	if (ret > 0)
+		lkl_printf("%s: %s\n", str_exp, strerror(ret));
+
+	return ret;
+}
+
+
+/* pthread_* functions use the reverse convention */
+#define WARN_PTHREAD(exp) _warn_pthread(exp, #exp)
+
+static struct lkl_sem *sem_alloc(int count)
+{
+	struct lkl_sem *sem;
+
+	sem = malloc(sizeof(*sem));
+	if (!sem)
+		return NULL;
+
+#ifdef _POSIX_SEMAPHORES
+	if (sem_init(&sem->sem, SHARE_SEM, count) < 0) {
+		lkl_printf("sem_init: %s\n", strerror(errno));
+		free(sem);
+		return NULL;
+	}
+#else
+	pthread_mutex_init(&sem->lock, NULL);
+	sem->count = count;
+	WARN_PTHREAD(pthread_cond_init(&sem->cond, NULL));
+#endif /* _POSIX_SEMAPHORES */
+
+	return sem;
+}
+
+static void sem_free(struct lkl_sem *sem)
+{
+#ifdef _POSIX_SEMAPHORES
+	WARN_UNLESS(sem_destroy(&sem->sem));
+#else
+	WARN_PTHREAD(pthread_cond_destroy(&sem->cond));
+	WARN_PTHREAD(pthread_mutex_destroy(&sem->lock));
+#endif /* _POSIX_SEMAPHORES */
+	free(sem);
+}
+
+static void sem_up(struct lkl_sem *sem)
+{
+#ifdef _POSIX_SEMAPHORES
+	WARN_UNLESS(sem_post(&sem->sem));
+#else
+	WARN_PTHREAD(pthread_mutex_lock(&sem->lock));
+	sem->count++;
+	if (sem->count > 0)
+		WARN_PTHREAD(pthread_cond_signal(&sem->cond));
+	WARN_PTHREAD(pthread_mutex_unlock(&sem->lock));
+#endif /* _POSIX_SEMAPHORES */
+
+}
+
+static void sem_down(struct lkl_sem *sem)
+{
+#ifdef _POSIX_SEMAPHORES
+	int err;
+
+	do {
+		err = sem_wait(&sem->sem);
+	} while (err < 0 && errno == EINTR);
+	if (err < 0 && errno != EINTR)
+		lkl_printf("sem_wait: %s\n", strerror(errno));
+#else
+	WARN_PTHREAD(pthread_mutex_lock(&sem->lock));
+	while (sem->count <= 0)
+		WARN_PTHREAD(pthread_cond_wait(&sem->cond, &sem->lock));
+	sem->count--;
+	WARN_PTHREAD(pthread_mutex_unlock(&sem->lock));
+#endif /* _POSIX_SEMAPHORES */
+}
+
+static struct lkl_mutex *mutex_alloc(int recursive)
+{
+	struct lkl_mutex *_mutex = malloc(sizeof(struct lkl_mutex));
+	pthread_mutex_t *mutex = NULL;
+	pthread_mutexattr_t attr;
+
+	if (!_mutex)
+		return NULL;
+
+	mutex = &_mutex->mutex;
+	WARN_PTHREAD(pthread_mutexattr_init(&attr));
+
+	/* PTHREAD_MUTEX_ERRORCHECK is *very* useful for debugging,
+	 * but has some overhead, so we provide an option to turn it
+	 * off.
+	 */
+#ifdef DEBUG
+	if (!recursive)
+		WARN_PTHREAD(pthread_mutexattr_settype(
+				     &attr, PTHREAD_MUTEX_ERRORCHECK));
+#endif /* DEBUG */
+
+	if (recursive)
+		WARN_PTHREAD(pthread_mutexattr_settype(
+				     &attr, PTHREAD_MUTEX_RECURSIVE));
+
+	WARN_PTHREAD(pthread_mutex_init(mutex, &attr));
+
+	return _mutex;
+}
+
+static void mutex_lock(struct lkl_mutex *mutex)
+{
+	WARN_PTHREAD(pthread_mutex_lock(&mutex->mutex));
+}
+
+static void mutex_unlock(struct lkl_mutex *_mutex)
+{
+	pthread_mutex_t *mutex = &_mutex->mutex;
+
+	WARN_PTHREAD(pthread_mutex_unlock(mutex));
+}
+
+static void mutex_free(struct lkl_mutex *_mutex)
+{
+	pthread_mutex_t *mutex = &_mutex->mutex;
+
+	WARN_PTHREAD(pthread_mutex_destroy(mutex));
+	free(_mutex);
+}
+
+static lkl_thread_t thread_create(void (*fn)(void *), void *arg)
+{
+	pthread_t thread;
+
+	if (WARN_PTHREAD(pthread_create(&thread, NULL, (void* (*)(void *))fn,
+					arg)))
+		return 0;
+	else
+		return (lkl_thread_t) thread;
+}
+
+static void thread_detach(void)
+{
+	WARN_PTHREAD(pthread_detach(pthread_self()));
+}
+
+static void thread_exit(void)
+{
+	pthread_exit(NULL);
+}
+
+static int thread_join(lkl_thread_t tid)
+{
+	if (WARN_PTHREAD(pthread_join((pthread_t)tid, NULL)))
+		return (-1);
+	else
+		return 0;
+}
+
+static lkl_thread_t thread_self(void)
+{
+	return (lkl_thread_t)pthread_self();
+}
+
+static int thread_equal(lkl_thread_t a, lkl_thread_t b)
+{
+	return pthread_equal((pthread_t)a, (pthread_t)b);
+}
+
+static struct lkl_tls_key *tls_alloc(void (*destructor)(void *))
+{
+	struct lkl_tls_key *ret = malloc(sizeof(struct lkl_tls_key));
+
+	if (WARN_PTHREAD(pthread_key_create(&ret->key, destructor))) {
+		free(ret);
+		return NULL;
+	}
+	return ret;
+}
+
+static void tls_free(struct lkl_tls_key *key)
+{
+	WARN_PTHREAD(pthread_key_delete(key->key));
+	free(key);
+}
+
+static int tls_set(struct lkl_tls_key *key, void *data)
+{
+	if (WARN_PTHREAD(pthread_setspecific(key->key, data)))
+		return (-1);
+	return 0;
+}
+
+static void *tls_get(struct lkl_tls_key *key)
+{
+	return pthread_getspecific(key->key);
+}
+
+static unsigned long long time_ns(void)
+{
+	struct timespec ts;
+
+	clock_gettime(CLOCK_MONOTONIC, &ts);
+
+	return 1e9*ts.tv_sec + ts.tv_nsec;
+}
+
+static void *timer_alloc(void (*fn)(void *), void *arg)
+{
+	int err;
+	timer_t timer;
+	struct sigevent se =  {
+		.sigev_notify = SIGEV_THREAD,
+		.sigev_value = {
+			.sival_ptr = arg,
+		},
+		.sigev_notify_function = (void (*)(union sigval))fn,
+	};
+
+	err = timer_create(CLOCK_REALTIME, &se, &timer);
+	if (err)
+		return NULL;
+
+	return (void *)(long)timer;
+}
+
+static int timer_set_oneshot(void *_timer, unsigned long ns)
+{
+	timer_t timer = (timer_t)(long)_timer;
+	struct itimerspec ts = {
+		.it_value = {
+			.tv_sec = ns / 1000000000,
+			.tv_nsec = ns % 1000000000,
+		},
+	};
+
+	return timer_settime(timer, 0, &ts, NULL);
+}
+
+static void timer_free(void *_timer)
+{
+	timer_t timer = (timer_t)(long)_timer;
+
+	timer_delete(timer);
+}
+
+static void panic(void)
+{
+	assert(0);
+}
+
+static long _gettid(void)
+{
+#ifdef	__FreeBSD__
+	return (long)pthread_self();
+#else
+	return syscall(SYS_gettid);
+#endif
+}
+
+struct lkl_host_operations lkl_host_ops = {
+	.panic = panic,
+	.thread_create = thread_create,
+	.thread_detach = thread_detach,
+	.thread_exit = thread_exit,
+	.thread_join = thread_join,
+	.thread_self = thread_self,
+	.thread_equal = thread_equal,
+	.sem_alloc = sem_alloc,
+	.sem_free = sem_free,
+	.sem_up = sem_up,
+	.sem_down = sem_down,
+	.mutex_alloc = mutex_alloc,
+	.mutex_free = mutex_free,
+	.mutex_lock = mutex_lock,
+	.mutex_unlock = mutex_unlock,
+	.tls_alloc = tls_alloc,
+	.tls_free = tls_free,
+	.tls_set = tls_set,
+	.tls_get = tls_get,
+	.time = time_ns,
+	.timer_alloc = timer_alloc,
+	.timer_set_oneshot = timer_set_oneshot,
+	.timer_free = timer_free,
+	.print = print,
+	.mem_alloc = malloc,
+	.mem_free = free,
+	.ioremap = lkl_ioremap,
+	.iomem_access = lkl_iomem_access,
+	.virtio_devices = lkl_virtio_devs,
+	.gettid = _gettid,
+	.jmp_buf_set = jmp_buf_set,
+	.jmp_buf_longjmp = jmp_buf_longjmp,
+};
+
+static int fd_get_capacity(struct lkl_disk disk, unsigned long long *res)
+{
+	off_t off;
+
+	off = lseek(disk.fd, 0, SEEK_END);
+	if (off < 0)
+		return (-1);
+
+	*res = off;
+	return 0;
+}
+
+static int do_rw(ssize_t (*fn)(), struct lkl_disk disk, struct lkl_blk_req *req)
+{
+	off_t off = req->sector * 512;
+	void *addr;
+	int len;
+	int i;
+	int ret = 0;
+
+	for (i = 0; i < req->count; i++) {
+
+		addr = req->buf[i].iov_base;
+		len = req->buf[i].iov_len;
+
+		do {
+			ret = fn(disk.fd, addr, len, off);
+
+			if (ret <= 0) {
+				ret = -1;
+				goto out;
+			}
+
+			addr += ret;
+			len -= ret;
+			off += ret;
+
+		} while (len);
+	}
+
+out:
+	return ret;
+}
+
+static int blk_request(struct lkl_disk disk, struct lkl_blk_req *req)
+{
+	int err = 0;
+
+	switch (req->type) {
+	case LKL_DEV_BLK_TYPE_READ:
+		err = do_rw(pread, disk, req);
+		break;
+	case LKL_DEV_BLK_TYPE_WRITE:
+		err = do_rw(pwrite, disk, req);
+		break;
+	case LKL_DEV_BLK_TYPE_FLUSH:
+	case LKL_DEV_BLK_TYPE_FLUSH_OUT:
+#ifdef __linux__
+		err = fdatasync(disk.fd);
+#else
+		err = fsync(disk.fd);
+#endif
+		break;
+	default:
+		return LKL_DEV_BLK_STATUS_UNSUP;
+	}
+
+	if (err < 0)
+		return LKL_DEV_BLK_STATUS_IOERR;
+
+	return LKL_DEV_BLK_STATUS_OK;
+}
+
+struct lkl_dev_blk_ops lkl_dev_blk_ops = {
+	.get_capacity = fd_get_capacity,
+	.request = blk_request,
+};
+
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
