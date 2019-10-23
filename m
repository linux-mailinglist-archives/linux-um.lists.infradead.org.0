Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939A2E1115
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwA80yh7NHtBR2sNcPBCOHGym12siJepeSATJatUPkk=; b=Ly4DQAIVqSYAZb
	VgaAD2cTUdPPLOlmJuAtG6re/gdti8nxHO+GHyUB3Ldls/fFe6J4X8Td3t/scN4d//z/89/rjpYeI
	oHp95Olvcy7XjUVQICA70BeO8d2j7b8cKK791FQ3Vv/18bektzK6N/i+yZZlB6jh70o6f2vH+qZza
	Rni31lvmxojMxvuE4iW9hX6Kq1AQVBteWLFmSm5s92AqLq/iwEQYy+rmMFVCq3X7/OQPFuKWJ7tip
	Dos0hfJimyw8edcx8T8kbmzdXZ5EM9WlZvGuDWlYkg1z5mKAQQ35kXqF0gIyUXAtCV+OKqMi3nYM3
	u8X2XzBeIaojovO1UNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QY-000223-QD; Wed, 23 Oct 2019 04:39:18 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QM-0001rb-VP
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:13 +0000
Received: by mail-pf1-x431.google.com with SMTP id y5so12081867pfo.4
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZRIAvqaFzWbx4k98kuULJ/DfmG6wQMtGosp6iZ/hAtA=;
 b=ZUyjuhXHyivmdUxxs0U0gbTtcof7SSWOoc58NfUTJER1taUvX7bF5lujwBkCs7D6CJ
 OQ3jyzLYLhk/golm0cklEo+34X9Rt/dxw4M6OLuBVS1w0dl8oW6tiljtZlz9cmOh92Wb
 BiUmgpt43YbryGbP7XDBzEFX683xsCvTPxB8qbtJ1c53Wwh9vsPuA9xKjqBLMRnkVBoj
 8lhrsAq9Ad2r+JyUZrffc34u1XuKYESHUSJ85fCDLa0WHxmnnxbspWWEcb9RcPp7l+D1
 xMNnmPEC47vBKubswNBvpd+IB7SYglmALPV/wYJevXZCM/V2aRlQ+wk6s1wrKJC1DmLt
 2ZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZRIAvqaFzWbx4k98kuULJ/DfmG6wQMtGosp6iZ/hAtA=;
 b=irOWUCuoME+TIG1UCZn81KzEqcR440+GS5Vyr0ieU2aivOYiEpslZDap4uVfzEREvm
 0/hsfpXQF8Xj5pXPJIOd/OKFJNOyRHIsstPf6V0uV1K2+NFle7Q63hfiqRLfarkK+VCG
 L57YallNRvk5bBjIe9Dsrj6iOBvR7OsrRAMm8a0uebfT0aHRp0CMGAWaENpqtRpXBPIC
 Jn6QyXLKJFByt2Ql6EklnrPOVatQgucdjWoN+Yov3oSvHPYdjtZgRu70DekhkP3+HX1C
 +yXvT5GSsMtFTbzV/OhG3VZE8olI8EVOrLHBuUFNfc254w27DHRREhoOQXG1ux4NqlME
 3xSA==
X-Gm-Message-State: APjAAAVA9rvWdkmhyFHEfwd2WU3ImaG17fEuLx+of8WRFMIMvChcY6UU
 tfWiJP9iRYZgHBU5gNRr2dQ=
X-Google-Smtp-Source: APXvYqwGH0tdla71yPXd48tYxsd/cE93L/aF9POxEeQFxWBqpws0zfFPisZKhXOX5y91+c6kavPc1g==
X-Received: by 2002:a62:2b94:: with SMTP id r142mr8261847pfr.251.1571805545870; 
 Tue, 22 Oct 2019 21:39:05 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id i126sm22070765pfc.29.2019.10.22.21.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:05 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 063E0201995826; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 26/47] lkl tools: add support for Windows host
Date: Wed, 23 Oct 2019 13:38:00 +0900
Message-Id: <4d188827dfe9116d597b53efba40729e964cd06f.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213907_033134_D211F57E 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
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
 Andreas Gnau <andreas.gnau@intel.com>, Hajime Tazaki <thehajime@gmail.com>,
 Patrick Collins <pscollins@google.com>, Akira Moroo <retrage01@gmail.com>,
 Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Add host operations for Windows host and virtio disk support.

Trivial changes to the generic virtio host code are made since mingw %p
format is different then what the MMIO virtion driver expects.

The boot test is updated to support Window hosts as well.

Signed-off-by: Andreas Gnau <andreas.gnau@intel.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/include/mingw32/sys/socket.h |   4 +
 tools/lkl/lib/nt-host.c                | 375 +++++++++++++++++++++++++
 2 files changed, 379 insertions(+)
 create mode 100644 tools/lkl/include/mingw32/sys/socket.h
 create mode 100644 tools/lkl/lib/nt-host.c

diff --git a/tools/lkl/include/mingw32/sys/socket.h b/tools/lkl/include/mingw32/sys/socket.h
new file mode 100644
index 000000000000..f9ede3170d03
--- /dev/null
+++ b/tools/lkl/include/mingw32/sys/socket.h
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* fake file to avoid #include <sys/socket.h> error on non-posix
+ * host (e.g., mingw32)
+ */
diff --git a/tools/lkl/lib/nt-host.c b/tools/lkl/lib/nt-host.c
new file mode 100644
index 000000000000..c7613272be3b
--- /dev/null
+++ b/tools/lkl/lib/nt-host.c
@@ -0,0 +1,375 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <windows.h>
+#include <assert.h>
+#include <unistd.h>
+#undef s_addr
+#include <lkl_host.h>
+#include "iomem.h"
+#include "jmp_buf.h"
+
+#define DIFF_1601_TO_1970_IN_100NS (11644473600L * 10000000L)
+
+struct lkl_mutex {
+	int recursive;
+	HANDLE handle;
+};
+
+struct lkl_sem {
+	HANDLE sem;
+};
+
+struct lkl_tls_key {
+	DWORD key;
+};
+
+static struct lkl_sem *sem_alloc(int count)
+{
+	struct lkl_sem *sem = malloc(sizeof(struct lkl_sem));
+
+	sem->sem = CreateSemaphore(NULL, count, 100, NULL);
+	return sem;
+}
+
+static void sem_up(struct lkl_sem *sem)
+{
+	ReleaseSemaphore(sem->sem, 1, NULL);
+}
+
+static void sem_down(struct lkl_sem *sem)
+{
+	WaitForSingleObject(sem->sem, INFINITE);
+}
+
+static void sem_free(struct lkl_sem *sem)
+{
+	CloseHandle(sem->sem);
+	free(sem);
+}
+
+static struct lkl_mutex *mutex_alloc(int recursive)
+{
+	struct lkl_mutex *_mutex = malloc(sizeof(struct lkl_mutex));
+
+	if (!_mutex)
+		return NULL;
+
+	if (recursive)
+		_mutex->handle = CreateMutex(0, FALSE, 0);
+	else
+		_mutex->handle = CreateSemaphore(NULL, 1, 100, NULL);
+	_mutex->recursive = recursive;
+	return _mutex;
+}
+
+static void mutex_lock(struct lkl_mutex *mutex)
+{
+	WaitForSingleObject(mutex->handle, INFINITE);
+}
+
+static void mutex_unlock(struct lkl_mutex *_mutex)
+{
+	if (_mutex->recursive)
+		ReleaseMutex(_mutex->handle);
+	else
+		ReleaseSemaphore(_mutex->handle, 1, NULL);
+}
+
+static void mutex_free(struct lkl_mutex *_mutex)
+{
+	CloseHandle(_mutex->handle);
+	free(_mutex);
+}
+
+static lkl_thread_t thread_create(void (*fn)(void *), void *arg)
+{
+	DWORD WINAPI(*win_fn)(LPVOID arg) = (DWORD WINAPI(*)(LPVOID))fn;
+	HANDLE h = CreateThread(NULL, 0, win_fn, arg, 0, NULL);
+
+	if (!h)
+		return 0;
+
+	return GetThreadId(h);
+}
+
+static void thread_detach(void)
+{
+}
+
+static void thread_exit(void)
+{
+	ExitThread(0);
+}
+
+static int thread_join(lkl_thread_t tid)
+{
+	int ret;
+	HANDLE *h;
+
+	h = OpenThread(SYNCHRONIZE, FALSE, tid);
+	if (!h)
+		lkl_printf("%s: can't get thread handle\n", __func__);
+
+	ret = WaitForSingleObject(h, INFINITE);
+	if (ret)
+		lkl_printf("%s: %d\n", __func__, ret);
+
+	CloseHandle(h);
+
+	return ret ? -1 : 0;
+}
+
+static lkl_thread_t thread_self(void)
+{
+	return GetThreadId(GetCurrentThread());
+}
+
+static int thread_equal(lkl_thread_t a, lkl_thread_t b)
+{
+	return a == b;
+}
+
+static struct lkl_tls_key *tls_alloc(void (*destructor)(void *))
+{
+	struct lkl_tls_key *ret = malloc(sizeof(struct lkl_tls_key));
+
+	ret->key = FlsAlloc((PFLS_CALLBACK_FUNCTION)destructor);
+	if (ret->key == TLS_OUT_OF_INDEXES) {
+		free(ret);
+		return NULL;
+	}
+	return ret;
+}
+
+static void tls_free(struct lkl_tls_key *key)
+{
+	/* setting to NULL first to prevent the callback from being called */
+	FlsSetValue(key->key, NULL);
+	FlsFree(key->key);
+	free(key);
+}
+
+static int tls_set(struct lkl_tls_key *key, void *data)
+{
+	return FlsSetValue(key->key, data) ? 0 : -1;
+}
+
+static void *tls_get(struct lkl_tls_key *key)
+{
+	return FlsGetValue(key->key);
+}
+
+
+/*
+ * With 64 bits, we can cover about 583 years at a nanosecond resolution.
+ * Windows counts time from 1601 so we do have about 100 years before we
+ * overflow.
+ */
+static unsigned long long time_ns(void)
+{
+	SYSTEMTIME st;
+	FILETIME ft;
+	ULARGE_INTEGER uli;
+
+	GetSystemTime(&st);
+	SystemTimeToFileTime(&st, &ft);
+	uli.LowPart = ft.dwLowDateTime;
+	uli.HighPart = ft.dwHighDateTime;
+
+	return (uli.QuadPart - DIFF_1601_TO_1970_IN_100NS) * 100;
+}
+
+struct timer {
+	HANDLE queue;
+	void (*callback)(void *arg);
+	void *arg;
+};
+
+static void *timer_alloc(void (*fn)(void *), void *arg)
+{
+	struct timer *t;
+
+	t = malloc(sizeof(*t));
+	if (!t)
+		return NULL;
+
+	t->queue = CreateTimerQueue();
+	if (!t->queue) {
+		free(t);
+		return NULL;
+	}
+
+	t->callback = fn;
+	t->arg = arg;
+
+	return t;
+}
+
+static void CALLBACK timer_callback(void *arg, BOOLEAN TimerOrWaitFired)
+{
+	struct timer *t = (struct timer *)arg;
+
+	if (TimerOrWaitFired)
+		t->callback(t->arg);
+}
+
+static int timer_set_oneshot(void *timer, unsigned long ns)
+{
+	struct timer *t = (struct timer *)timer;
+	HANDLE tmp;
+
+	return !CreateTimerQueueTimer(&tmp, t->queue, timer_callback, t,
+				      ns / 1000000, 0, 0);
+}
+
+static void timer_free(void *timer)
+{
+	struct timer *t = (struct timer *)timer;
+	HANDLE completion;
+
+	completion = CreateEvent(NULL, FALSE, FALSE, NULL);
+	DeleteTimerQueueEx(t->queue, completion);
+	WaitForSingleObject(completion, INFINITE);
+	free(t);
+}
+
+static void panic(void)
+{
+	int *x = NULL;
+
+	*x = 1;
+	assert(0);
+}
+
+static void print(const char *str, int len)
+{
+	write(1, str, len);
+}
+
+static long gettid(void)
+{
+	return GetCurrentThreadId();
+}
+
+static void *mem_alloc(unsigned long size)
+{
+	return malloc(size);
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
+	.mem_alloc = mem_alloc,
+	.mem_free = free,
+	.ioremap = lkl_ioremap,
+	.iomem_access = lkl_iomem_access,
+	.virtio_devices = lkl_virtio_devs,
+	.gettid = gettid,
+	.jmp_buf_set = jmp_buf_set,
+	.jmp_buf_longjmp = jmp_buf_longjmp,
+};
+
+int handle_get_capacity(struct lkl_disk disk, unsigned long long *res)
+{
+	LARGE_INTEGER tmp;
+
+	if (!GetFileSizeEx(disk.handle, &tmp))
+		return -1;
+
+	*res = tmp.QuadPart;
+	return 0;
+}
+
+static int blk_request(struct lkl_disk disk, struct lkl_blk_req *req)
+{
+	unsigned long long offset = req->sector * 512;
+	OVERLAPPED ov = { 0, };
+	int err = 0, ret;
+
+	switch (req->type) {
+	case LKL_DEV_BLK_TYPE_READ:
+	case LKL_DEV_BLK_TYPE_WRITE:
+	{
+		int i;
+
+		for (i = 0; i < req->count; i++) {
+			DWORD res;
+			struct iovec *buf = &req->buf[i];
+
+			ov.Offset = offset & 0xffffffff;
+			ov.OffsetHigh = offset >> 32;
+
+			if (req->type == LKL_DEV_BLK_TYPE_READ)
+				ret = ReadFile(disk.handle, buf->iov_base,
+					       buf->iov_len, &res, &ov);
+			else
+				ret = WriteFile(disk.handle, buf->iov_base,
+						buf->iov_len, &res, &ov);
+			if (!ret) {
+				lkl_printf("%s: I/O error: %d\n", __func__,
+					   GetLastError());
+				err = -1;
+				goto out;
+			}
+
+			if (res != buf->iov_len) {
+				lkl_printf("%s: I/O error: short: %d %d\n",
+					   res, buf->iov_len);
+				err = -1;
+				goto out;
+			}
+
+			offset += buf->iov_len;
+		}
+		break;
+	}
+	case LKL_DEV_BLK_TYPE_FLUSH:
+	case LKL_DEV_BLK_TYPE_FLUSH_OUT:
+		ret = FlushFileBuffers(disk.handle);
+		if (!ret)
+			err = 1;
+		break;
+	default:
+		return LKL_DEV_BLK_STATUS_UNSUP;
+	}
+
+out:
+	if (err < 0)
+		return LKL_DEV_BLK_STATUS_IOERR;
+
+	return LKL_DEV_BLK_STATUS_OK;
+}
+
+struct lkl_dev_blk_ops lkl_dev_blk_ops = {
+	.get_capacity = handle_get_capacity,
+	.request = blk_request,
+};
+
+/* Needed to resolve linker error on Win32. We don't really support
+ * any network IO on Windows, anyway, so there's no loss here.
+ */
+int lkl_netdevs_remove(void)
+{
+	return 0;
+}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
