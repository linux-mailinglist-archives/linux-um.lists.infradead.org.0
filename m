Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B81F3F5B
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUdV4Qs8dVnJdSHwOKjk5AXHi3vUMeGYx75EfCPMPNQ=; b=C7gkPHfrPgwIHo
	A4pYnyyNnCqC8nn64C1/PRNiknpDznJ9ylaqT8/9XlV7v1fKgKiSaJWBY6xrCwz72e98HmqMw3KnW
	dAUbyUcXq47J5uZUgizoqkxtiBE4d2wu4bo36X3DBvVibRPNJvu/Mt7N5q3euFhVc/189PIP4p4Om
	Bal3bygl00K3mwubggLEIWpKbttQS6ZMA2larXIMlBdET0zdvxyT23Pe0nSJv5y0j2LeZWs+vhzTk
	+eBK6KcZvQdHRqjS3Iep1ffV51s73dI5uk+qlmHXu31vZGMLT5Kv1csOHEH9KNJnLD7IAUtkPWiJP
	x94cn60qZkxrotE5e5hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRh-00049M-4p; Fri, 08 Nov 2019 05:04:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRe-00047i-4A
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id w8so3252721plq.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uPyi0x/Ofw1GRjqGBMnXheMNDTGp8IvKsPBSc7sOdrk=;
 b=qn/JSJeBnuuI+vRKs1+RwA1kfYzfJtcCWYLjYNrzRzi7qt4byvMlXyPaYLSHGLXTB0
 up3vw0uDXrOzklYD28GWocvAqqlOavNXbp8GgN/UQuQ3mC3kBrAuN+WMimc4EZWVmUzu
 E+YNQbvAJaE0xf8CzLIxltbJM0fzJ2dVUtL1xVqRlAWsmlK56Waxc5eDvRCuINEiMMt6
 fXyzdjFgapF8sEiq2cBVIVu1Q24NV6ldv6L1B4pqotk0I3cMxqmOzhv6SVD+mvypTeGm
 r5OA9WNvDaDZBYTIIxHGm7i8nnDK+LuhpRqcLYF58eSckpsiQbN9KrOIGMrDv8BkhLTi
 s7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uPyi0x/Ofw1GRjqGBMnXheMNDTGp8IvKsPBSc7sOdrk=;
 b=aspMMKbJZJBjbS2wcaR1hLwCMIChRdAEzJqj8B/ka76d1hz80XfWy+reDpK52A2nhS
 t8uEB+tC788kq0zx4rBp5Dle6X+dXbUmvFhH9prZbqd7KClAUo/KxUwaH3QaO7XubVxE
 8GKLfevK1FAMl8+j/wv6g8d6GMX8o7uR3dxePmzs7Su+cZ77ydzueRvoU2/hgyKE8lHT
 VimyYaoO4ExTsHeF4QXiOFJUdEWkvFhstkgpB9EbQdBGSDRuDBOMVO2gil+/6PToQvse
 rpIzPrzU5PjOz94anEvCrSQO+DJk+XAOO4VRbJdIlu7FLHGvbkpPquaBGIcjJMR+ivbg
 uLcQ==
X-Gm-Message-State: APjAAAVYD5svmTch0KE5vKUMkEiYKAQw+5XXmrcJWQBH4lRpLzgBNhdh
 I0HVj8N/9T9iP2ii2KFhV4Q=
X-Google-Smtp-Source: APXvYqwmQU/boQ49xEb/Rg2cTPPOwsCHNNz5+y9KjCV3eq2dVS1NBj79ZUtqOWp6cDmicg/BtLFDag==
X-Received: by 2002:a17:902:9a44:: with SMTP id
 x4mr8312274plv.127.1573189465209; 
 Thu, 07 Nov 2019 21:04:25 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id z23sm4037305pgj.43.2019.11.07.21.04.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:24 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id C0BE5201ACFEB4; Fri,  8 Nov 2019 14:04:22 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 32/37] lkl tools: add support for Windows host
Date: Fri,  8 Nov 2019 14:02:47 +0900
Message-Id: <f514ae67963c9ec82c0cefdd72dce018045da051.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210426_177929_0499CB67 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Add host operations for Windows host and virtio disk support.

Signed-off-by: Andreas Gnau <andreas.gnau@intel.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/.gitignore                   |   2 +
 tools/lkl/Makefile.autoconf            |  22 ++
 tools/lkl/include/mingw32/sys/socket.h |   4 +
 tools/lkl/lib/Build                    |   2 +
 tools/lkl/lib/nt-host.c                | 375 +++++++++++++++++++++++++
 tools/lkl/tests/test.sh                |   4 +-
 6 files changed, 408 insertions(+), 1 deletion(-)
 create mode 100644 tools/lkl/include/mingw32/sys/socket.h
 create mode 100644 tools/lkl/lib/nt-host.c

diff --git a/tools/lkl/.gitignore b/tools/lkl/.gitignore
index c78ec268e4b0..48232402224d 100644
--- a/tools/lkl/.gitignore
+++ b/tools/lkl/.gitignore
@@ -1,3 +1,5 @@
+*.exe
+*.dll
 Makefile.conf
 include/lkl_autoconf.h
 tests/autoconf.sh
diff --git a/tools/lkl/Makefile.autoconf b/tools/lkl/Makefile.autoconf
index fd63b8aa5c77..1631f5cc25ac 100644
--- a/tools/lkl/Makefile.autoconf
+++ b/tools/lkl/Makefile.autoconf
@@ -1,4 +1,5 @@
 POSIX_HOSTS=elf64-x86-64 elf32-i386 elf64-x86-64-freebsd
+NT_HOSTS=pe-i386 pe-x86-64
 
 define set_autoconf_var
   $(shell echo "#define LKL_HOST_CONFIG_$(1) $(2)" \
@@ -65,6 +66,26 @@ define posix_host
   $(if $(filter $(1),elf32-i386),$(call set_autoconf_var,I386,y))
 endef
 
+define nt64_host
+  $(call set_autoconf_var,NEEDS_LARGP,y)
+  CFLAGS += -Wl,--enable-auto-image-base -Wl,--image-base -Wl,0x10000000 \
+	 -Wl,--out-implib=$(OUTPUT)liblkl.dll.a -Wl,--export-all-symbols \
+	 -Wl,--enable-auto-import
+  LDFLAGS +=-Wl,--image-base -Wl,0x10000000 -Wl,--enable-auto-image-base \
+	   -Wl,--out-implib=$(OUTPUT)liblkl.dll.a -Wl,--export-all-symbols \
+	   -Wl,--enable-auto-import
+endef
+
+define nt_host
+  $(call set_autoconf_var,NT,y)
+  KOPT = "KALLSYMS_EXTRA_PASS=1"
+  LDLIBS += -lws2_32
+  EXESUF := .exe
+  SOSUF := .dll
+  CFLAGS += -Iinclude/mingw32
+  $(if $(filter $(1),pe-x86-64),$(call nt64_host))
+endef
+
 define do_autoconf
   export CROSS_COMPILE := $(CROSS_COMPILE)
   export CC := $(CROSS_COMPILE)gcc
@@ -74,6 +95,7 @@ define do_autoconf
   $(eval CC := $(CROSS_COMPILE)gcc)
   $(eval LD_FMT := $(shell $(LD) -r -print-output-format))
   $(if $(filter $(LD_FMT),$(POSIX_HOSTS)),$(call posix_host,$(LD_FMT)))
+  $(if $(filter $(LD_FMT),$(NT_HOSTS)),$(call nt_host,$(LD_FMT)))
 endef
 
 export do_autoconf
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
diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index 1f1d55f259a3..76a1e62dfca8 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -1,12 +1,14 @@
 CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
 CFLAGS_posix-host.o += -D_FILE_OFFSET_BITS=64
 CFLAGS_virtio_net_vde.o += $(pkg-config --cflags vdeplug 2>/dev/null)
+CFLAGS_nt-host.o += -D_WIN32_WINNT=0x0600
 
 liblkl-y += fs.o
 liblkl-y += iomem.o
 liblkl-y += net.o
 liblkl-y += jmp_buf.o
 liblkl-$(LKL_HOST_CONFIG_POSIX) += posix-host.o
+liblkl-$(LKL_HOST_CONFIG_NT) += nt-host.o
 liblkl-y += utils.o
 liblkl-y += virtio_blk.o
 liblkl-y += virtio.o
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
diff --git a/tools/lkl/tests/test.sh b/tools/lkl/tests/test.sh
index 1a5619aed735..cda932b98058 100644
--- a/tools/lkl/tests/test.sh
+++ b/tools/lkl/tests/test.sh
@@ -98,7 +98,9 @@ lkl_test_exec()
         file=$file.exe
     fi
 
-    if file $file | grep ARM; then
+    if file $file | grep PE32; then
+        WRAPPER="wine"
+    elif file $file | grep ARM; then
         WRAPPER="qemu-arm-static"
     elif file $file | grep "FreeBSD" ; then
         ssh_copy "$file" $BSD_WDIR
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
