Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FAA1526F8
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11kwUJHEi0IHJ9SJTvhkb8I05NepN8Dc08LKejRjfSU=; b=HmR/OdPhLdYvlp
	PJe8tHDMPboSr0V1NU8r7Dt/urAja7wPo3itVnHbA+OHDXPHGvXK8NlzIrXfb02KZ2/odUtQJczy1
	xhmy84CQ5UjCAoyzjUoC8Kdtw67y1r6lDzl3tek6lItRMLRdsDm7Zw+BEcH4l9lfTGh9YtyWuH0MI
	ZlPguhy+eZ8DqR8ZKSlc0JhJ3P4Mx6TKOUW9pMdE8H5MzEUY44n+n4qhmeSQz2Ct4QzdQ4iigZB8O
	Ck/3vY5r+hskohXFIwl6fxU+shMZMS9zKrf70fv3CvMb0gTY29rM1+5+tvIftXcvzysaietM85+bk
	z1XZeoUpFwyDdZLwz/NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9o-0008KI-K2; Wed, 05 Feb 2020 07:31:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF9k-0008I5-Cc
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:31:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id p11so505473plq.10
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k+KlJmjDZ5yCmXcTfDsvSEsmFbwV7nzU+IWhP0DlWCI=;
 b=VkTsCj5PiUqAXxbRFobjlYzKj7vSYetqKVYRG53wfXk4NTO4HqSRW1dTay7svy2dhP
 AqNfEtWwFwulnQyH9Qw8c/muqMiwPdpYqnfNAZy/zp6L8IxtoAgqYf6C7G/WBFAX3GHR
 Xsq99wYxKPONf8iMc3QmxU9gZ0kiMB6KAPWhRKB5iSJHLXDIpmRZqVlBdGPGI84Yox6X
 aUwUGmx5vfStHOBqOGffFEaWl8QOTolvX5S8abcX2UhOKj4do3xQh+yO79wjWiqGemSR
 rLezeafNiMynDmgFLnbkGjuYrNFkhR20Kox+ewTY9Z/kYY2pn6C/n3IphjtUwp0XjpFE
 vKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k+KlJmjDZ5yCmXcTfDsvSEsmFbwV7nzU+IWhP0DlWCI=;
 b=gbMwEw9LBGMqN+/0lBmkA8h9LR0t/yjP43e7HcS8bjmE4usUl8ymfoDbIwXFn3Si6N
 hMd3WkawYmg81lbE+Reb4dwIsc7LnJpFqWzz4ZYJMJt/pKf/HQtsYVKCcdnMzQjN5HYG
 ScWviekQ0S9lQvPvXqfq/EL1pkev3jhPiPjguijNXlAM+9lFzW2J6qSF+HJdqB87qLW/
 3VRakXUFmGk8VUv6s/5yajStkaSbE40nBdkQHiYV/xEXmBaRIiOLe/olUXexPBT+0h9q
 /IPl0h8sfpXnkBbeeghZoiBETmqimCmBjuGQ2HbN9G4QO/0vc5bEq5QKjK4MWoWCk+Ug
 gqDA==
X-Gm-Message-State: APjAAAWg7BysBsxQ9t+HzbCW3MRz5HKEzBIKELwUytIosw+jUfEJMHuM
 v9JXwOVeuGYPL0D5sYayXH4=
X-Google-Smtp-Source: APXvYqzayS+BmeFMnf3fpfHMNQX7liClqw146d7jUXv113dceuR0HZ7MuLyJf8HOfJEYeAEuJeiiBQ==
X-Received: by 2002:a17:902:462:: with SMTP id
 89mr34192288ple.270.1580887887763; 
 Tue, 04 Feb 2020 23:31:27 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id b1sm27803468pfg.182.2020.02.04.23.31.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:31:27 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id BC9E0202573074; Wed,  5 Feb 2020 16:31:23 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 17/26] lkl tools: host lib: posix host operations
Date: Wed,  5 Feb 2020 16:30:26 +0900
Message-Id: <dfac3acf5ddc3d4d2352d2210377c0f4290fdbd6.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233128_469819_27DD9C01 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Hajime Tazaki <thehajime@gmail.com>,
 Conrad Meyer <cem@FreeBSD.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Thomas Liebetraut <thomas@tommie-lie.de>,
 Mark Stillwell <mark@stillwell.me>, Patrick Collins <pscollins@google.com>,
 linux-kernel-library@freelists.org, Pierre-Hugues Husson <phh@phh.me>,
 Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Implement LKL host operations for POSIX hosts.

Cc: Conrad Meyer <cem@FreeBSD.org>
Cc: Mark Stillwell <mark@stillwell.me>
Cc: Patrick Collins <pscollins@google.com>
Cc: Pierre-Hugues Husson <phh@phh.me>
Cc: Thomas Liebetraut <thomas@tommie-lie.de>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/lib/Build        |   2 +
 tools/lkl/lib/posix-host.c | 353 +++++++++++++++++++++++++++++++++++++
 2 files changed, 355 insertions(+)
 create mode 100644 tools/lkl/lib/posix-host.c

diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index dba530424e4a..0e711e260a3a 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -1,8 +1,10 @@
 CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
+CFLAGS_posix-host.o += -D_FILE_OFFSET_BITS=64
 
 liblkl-y += fs.o
 liblkl-y += net.o
 liblkl-y += jmp_buf.o
+liblkl-$(LKL_HOST_CONFIG_POSIX) += posix-host.o
 liblkl-y += utils.o
 liblkl-y += dbg.o
 liblkl-y += dbg_handler.o
diff --git a/tools/lkl/lib/posix-host.c b/tools/lkl/lib/posix-host.c
new file mode 100644
index 000000000000..4be1611a8942
--- /dev/null
+++ b/tools/lkl/lib/posix-host.c
@@ -0,0 +1,353 @@
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
+	if (WARN_PTHREAD(pthread_create(&thread, NULL, (void *)fn,
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
+		.sigev_notify_function = (void *)fn,
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
+	.mem_alloc = (void *)malloc,
+	.mem_free = free,
+	.gettid = _gettid,
+	.jmp_buf_set = jmp_buf_set,
+	.jmp_buf_longjmp = jmp_buf_longjmp,
+};
+
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
