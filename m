Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DB3197EF2
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1r0L23Oe91RbJrXQh2vHhoicpoCJhWtetQHurucHoUU=; b=h2YrO7xl5PNQjL
	m3r2o6JP14t81FNlizR/vckDnKkd+L4LeEASunRriShhRQ3ko10a2W0lV6XzSvi3C68+GbeBksbAm
	ShE4/fpuiI6VPx1c0NgqvbeApRPFu/Icgj2VbdTo6VnHNdM8ci1r2H3gkS8kArN+X93dfnyftDKyg
	d4r3bCjFwU35HJTwDta4emVZU/fIch7rGGBRuQxOuzgsT0j/g2bG4k/H3QQ+74nUY4FTOtsDXORBp
	KNpI+4k4wxqoBILC9q8pdIWNzDjisCZTiQlkGPTYCQiNt3tW3qzNVnmCHvQfGGzFha5cSPOkyjhR3
	pTRgtNrXQr5TeMK51Obg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvjW-0005BF-TN; Mon, 30 Mar 2020 14:49:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvjT-0005AZ-HW
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:49:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so8750287pgm.8
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ra2KUflXUydcEuVymN0GQqY7t7CCQJkQXwhxGSQKhhs=;
 b=Xkt8ht0fWQ26dgElhYxdPCEvCtA29qhaCnXZU5ySH47H+Ind/LcWckairGU4cQ0UZj
 WX4K7Lkxi2+mDJKPJLFux6CpJwcejCO/O8yigaaZFi/nZDue/sKSHGH96GpS0IjmO2lo
 doGn0DYAIScQmjXPqfImFeGMpRO6Dtwv6jDKTaTSrULYi3LO8UxxWOodSAAsxQMoz54J
 DExOhrtE3+bHklyNxkp3aLQnHVg7Jpi31tnaukftODCLKFiwG8A26vF+nYNfQk4+eVLh
 lViIDIocJvuYjNLs+oTxBCXxkiF/X3KChZ1WMLWgf1UAf1OCSFeyjKUpfdB/JjFS+rze
 giWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ra2KUflXUydcEuVymN0GQqY7t7CCQJkQXwhxGSQKhhs=;
 b=mb3xWjUtDu6+cEUxenxx9gQrnMOSM0xvoKwfw7iY88nToInEWlOgedg/yZDnsjDz9R
 ccmDxy4XkcsxM964NBb0U22d3pzDyXgfa5jfawAq8SH3j7UQFf4NxUAOGrJiHvsmpq4r
 w0Tq+s23d4ukVmEBZAb+5bmgfQu9crcVeo9Exiz2e8Y9MSBtk9Dx+LLNe0oZwrKa844/
 pJkEg4ZKHUz+66gIaDJWg+eXA+7t3i0qx1SDP0fJUmAMiXbqu5iBjkxTa1fLG/21XFxX
 9GO7Lhw2V9NogkgdO2CVb7GgnyE+C5VQXdoUHm3cavmZ2qOrAUV2AXpWbeB8bPBHtHSu
 +eAg==
X-Gm-Message-State: ANhLgQ3oLPu2PKCCfLleectmcjWUgvzxnjxeCT0Hp4o1g7TMDrRTZxnI
 P5Mr1TJSR3bKx9AAM2SCOte1EF+x7/CSMQ==
X-Google-Smtp-Source: ADFU+vuzo9vQHNmIsDDgZNkjlTVkZC0N9kEz1ejEOn/8zrsDMnTY7HzO9KigTdf9D2rsfQbZj7UUpg==
X-Received: by 2002:a63:d351:: with SMTP id u17mr12905753pgi.396.1585579782681; 
 Mon, 30 Mar 2020 07:49:42 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id i4sm10373226pjg.4.2020.03.30.07.49.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:49:42 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 744D4202804F40; Mon, 30 Mar 2020 23:49:40 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 24/25] um lkl: add UML block device driver (ubd) for lkl
Date: Mon, 30 Mar 2020 23:45:56 +0900
Message-Id: <5f1d48e40c4daf4ef3ddca3ca3207f11ef29739f.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074943_606008_E0E529FF 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

This commit adds a support to utilize exising UML drivers of block
devices for LKL.  The goal is similar to networking drivers, add minimum
amount of code and use drivers code as-is.

This commit also adds a test code with several filesystems (ext4, vfat,
btrfs at the moment) to exercise the basic operations of disk.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 arch/um/drivers/ubd_kern.c              |  6 +++++-
 arch/um/lkl/Kconfig                     |  3 +++
 arch/um/lkl/include/uapi/asm/syscalls.h |  1 +
 arch/um/lkl/kernel/setup.c              |  5 +++++
 tools/lkl/include/lkl.h                 | 15 +++++++++++++++
 tools/lkl/lib/um/Build                  |  1 +
 tools/lkl/lib/um/um_block.c             | 17 +++++++++++++++++
 tools/lkl/lib/um/um_glue.c              | 24 +++++++++++++++++++++++-
 tools/lkl/tests/disk.c                  | 14 ++++++++++++++
 9 files changed, 84 insertions(+), 2 deletions(-)
 create mode 100644 tools/lkl/lib/um/um_block.c

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index eae8c83364f7..248bac8e36b8 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -545,7 +545,7 @@ static irqreturn_t ubd_intr(int irq, void *dev)
 /* Only changed by ubd_init, which is an initcall. */
 static int io_pid = -1;
 
-static void kill_io_thread(void)
+void kill_io_thread(void)
 {
 	if(io_pid != -1)
 		os_kill_process(io_pid, 1);
@@ -819,6 +819,7 @@ static int ubd_open_dev(struct ubd *ubd_dev)
 	}
 	ubd_dev->fd = fd;
 
+#ifdef CONFIG_UMMODE_KERN
 	if(ubd_dev->cow.file != NULL){
 		blk_queue_max_hw_sectors(ubd_dev->queue, 8 * sizeof(long));
 
@@ -843,6 +844,7 @@ static int ubd_open_dev(struct ubd *ubd_dev)
 		if(err < 0) goto error;
 		ubd_dev->cow.fd = err;
 	}
+#endif	/* CONFIG_UMMODE_KERN */
 	if (ubd_dev->no_trim == 0) {
 		ubd_dev->queue->limits.discard_granularity = SECTOR_SIZE;
 		ubd_dev->queue->limits.discard_alignment = SECTOR_SIZE;
@@ -852,9 +854,11 @@ static int ubd_open_dev(struct ubd *ubd_dev)
 	}
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, ubd_dev->queue);
 	return 0;
+#ifdef CONFIG_UMMODE_KERN
  error:
 	os_close_file(ubd_dev->fd);
 	return err;
+#endif
 }
 
 static void ubd_device_release(struct device *dev)
diff --git a/arch/um/lkl/Kconfig b/arch/um/lkl/Kconfig
index 2b6b4063045c..8e4e0a465fc8 100644
--- a/arch/um/lkl/Kconfig
+++ b/arch/um/lkl/Kconfig
@@ -48,6 +48,9 @@ config OUTPUT_FORMAT
 config ARCH_DMA_ADDR_T_64BIT
        def_bool 64BIT
 
+config BLK_DEV_UBD
+       def_bool y if "$(OUTPUT_FORMAT)" = "elf32-i386" || "$(OUTPUT_FORMAT)" = "elf64-x86-64"
+
 config X86_64
        def_bool y if "$(OUTPUT_FORMAT)" = "elf64-x86-64"
 
diff --git a/arch/um/lkl/include/uapi/asm/syscalls.h b/arch/um/lkl/include/uapi/asm/syscalls.h
index a81534ffccb7..1384c34137d6 100644
--- a/arch/um/lkl/include/uapi/asm/syscalls.h
+++ b/arch/um/lkl/include/uapi/asm/syscalls.h
@@ -164,6 +164,7 @@ struct sockaddr {
 #include <linux/virtio_ring.h>
 #include <linux/pkt_sched.h>
 #include <linux/io_uring.h>
+#include <linux/major.h>
 
 struct user_msghdr {
 	void		__user *msg_name;
diff --git a/arch/um/lkl/kernel/setup.c b/arch/um/lkl/kernel/setup.c
index 39b7b7c79581..daf55c216db9 100644
--- a/arch/um/lkl/kernel/setup.c
+++ b/arch/um/lkl/kernel/setup.c
@@ -126,6 +126,11 @@ long lkl_sys_halt(void)
 		LINUX_REBOOT_CMD_RESTART,
 	};
 
+#ifdef CONFIG_BLK_DEV_UBD
+void kill_io_thread(void);
+	kill_io_thread();
+#endif
+
 	err = lkl_syscall(__NR_reboot, params);
 	if (err < 0)
 		return err;
diff --git a/tools/lkl/include/lkl.h b/tools/lkl/include/lkl.h
index 952d11e30868..7d164e4dcad1 100644
--- a/tools/lkl/include/lkl.h
+++ b/tools/lkl/include/lkl.h
@@ -355,6 +355,10 @@ void lkl_perror(char *msg, int err);
  */
 struct lkl_dev_blk_ops;
 
+enum {
+	BLK_BACKEND_UM,
+};
+
 /**
  * lkl_disk - host disk handle
  *
@@ -368,6 +372,7 @@ struct lkl_disk {
 		int fd;
 		void *handle;
 	};
+	int backend;
 	struct lkl_dev_blk_ops *ops;
 };
 
@@ -403,6 +408,16 @@ int lkl_disk_remove(struct lkl_disk disk);
  */
 int lkl_encode_dev_from_sysfs(const char *sysfs_path, uint32_t *pdevid);
 
+
+#ifdef LKL_HOST_CONFIG_UML_DEV
+int lkl_disk_um_add(struct lkl_disk *disk, const char *blkparams);
+#else
+static inline int lkl_disk_um_add(struct lkl_disk *disk, const char *blkparams)
+{
+	return -LKL_ENOSYS;
+}
+#endif
+
 /**
  * lkl_mount_dev - mount a disk
  *
diff --git a/tools/lkl/lib/um/Build b/tools/lkl/lib/um/Build
index 09a60975ecd6..52573c05a797 100644
--- a/tools/lkl/lib/um/Build
+++ b/tools/lkl/lib/um/Build
@@ -1,2 +1,3 @@
 liblkl-y += um_glue.o
 liblkl-y += um_net.o
+liblkl-y += um_block.o
diff --git a/tools/lkl/lib/um/um_block.c b/tools/lkl/lib/um/um_block.c
new file mode 100644
index 000000000000..70dc624ec43c
--- /dev/null
+++ b/tools/lkl/lib/um/um_block.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <lkl_host.h>
+
+
+static int registered_blk_dev_idx;
+
+int lkl_disk_um_add(struct lkl_disk *disk, const char *blkparams)
+{
+	/* concat strings */
+	snprintf(lkl_um_devs + strlen(lkl_um_devs), sizeof(lkl_um_devs),
+		 " ubd%d=%s", registered_blk_dev_idx, blkparams);
+
+	return registered_blk_dev_idx++;
+}
diff --git a/tools/lkl/lib/um/um_glue.c b/tools/lkl/lib/um/um_glue.c
index f59e31a706de..fd5a338bcb9f 100644
--- a/tools/lkl/lib/um/um_glue.c
+++ b/tools/lkl/lib/um/um_glue.c
@@ -2,9 +2,10 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
+#include <signal.h>
 #include <unistd.h>
 #include <errno.h>
-
+#include <sys/wait.h>
 
 
 char lkl_um_devs[4096];
@@ -37,3 +38,24 @@ void *um_os_signal(int signum, void *handler)
 {
 	return signal(signum, handler);
 }
+
+/* from util.c */
+/*
+ * UML helper threads must not handle SIGWINCH/INT/TERM
+ */
+void os_fix_helper_signals(void)
+{
+	signal(SIGWINCH, SIG_IGN);
+	signal(SIGINT, SIG_DFL);
+	signal(SIGTERM, SIG_DFL);
+}
+
+void os_kill_process(int pid, int reap_child)
+{
+	kill(pid, SIGKILL);
+	if (reap_child) {
+		while ((errno = 0, ((waitpid(pid, NULL, __WALL)) < 0))
+		       && (errno == EINTR))
+			;
+	}
+}
diff --git a/tools/lkl/tests/disk.c b/tools/lkl/tests/disk.c
index 0aa039876b54..f7801014d054 100644
--- a/tools/lkl/tests/disk.c
+++ b/tools/lkl/tests/disk.c
@@ -23,12 +23,17 @@ static struct {
 	const char *disk;
 	const char *fstype;
 	int partition;
+	int backend;
 } cla;
 
+const char *backends[] = { "um", NULL };
+
 struct cl_arg args[] = {
 	{"disk", 'd', "disk file to use", 1, CL_ARG_STR, &cla.disk},
 	{"partition", 'P', "partition to mount", 1, CL_ARG_INT, &cla.partition},
 	{"type", 't', "filesystem type", 1, CL_ARG_STR, &cla.fstype},
+	{"backend", 'b', "blockd evice backend type", 1, CL_ARG_STR_SET,
+	 &cla.backend, backends},
 	{0},
 };
 
@@ -50,6 +55,15 @@ int lkl_test_disk_add(void)
 
 	disk.ops = NULL;
 
+	disk.backend = cla.backend;
+
+	switch (disk.backend) {
+	case BLK_BACKEND_UM:
+		disk.dev = (char *)cla.disk;
+	default:
+		break;
+	}
+
 	disk_id = lkl_disk_add(&disk);
 	if (disk_id < 0)
 		goto out_close;
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
