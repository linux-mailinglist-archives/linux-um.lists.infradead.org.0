Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489B6E1110
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YcDuP97h2r/INKUSAb/27RgsitX1VznDgj5GlS59QQ=; b=PdDvN7zc1GcvcN
	ldQPsJSGKEgXjUQk/+taMTIR0KGSWo4ULPIpwjKwPwoydqTnZQdfeT3iA3H1EA4otWoZOUwJfedtf
	EF7+B8lvngo5uMoLfUE6kdLqe/HRvXvmz2TlTP6b3NaFi0N9VCQw18JGsDnf7kmg6ZLruzaIXX0pR
	A2F6yWuaa9ht4p4Gll73+nIStQ+gykesYIoNAeoD+IId0UrTCuNxZBjptk73R3/2EE6HaN2ueKPz2
	Jx5qxIiG3cbc9Cy2qJiWhiqfXC0IT9o0+y/VGUoKSBGKFE54DnRBiG5iVhqGLvknJPfJa2sZq+rIs
	g9IqYeOCHyqNbM6Azfaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QU-0001xl-5K; Wed, 23 Oct 2019 04:39:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QK-0001oN-Jm
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id y24so5503651plr.12
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h16ZZ7Z4xwY/UexZu2RXr2lyvulrwJc5FTrkGY93Md4=;
 b=mXbDNHrtcswUwZtgrPj1jEZfs8pGS2fj5vkxhtEBQlKTY0lQ6J9N1mTFWnsp2AJV4b
 CKVj3GbYMSvkwsoSSLXAJ8CHf+3x24Kt9d9mTLbfT4vgGelE+93JNyAjwLAnxj9sREWl
 ZBaMnk0fbeUHhFyruatHPQG/PqV3bnXTG6dvUqWIOCWj3UgimKcsLjVX0kEzVgaDCB58
 MZ5Vetf2d1clviZejOHYnNq5T8xv17HVOwXd6fcqlqqrs7+U5j95zFQTuKcHme48fVbK
 l1S9+J27o7aYOAYCN+zFdLkkVchblivzZVHBTaD98vl3mLQ+oGkO1NNPG65mHwEF4IgW
 Ob1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h16ZZ7Z4xwY/UexZu2RXr2lyvulrwJc5FTrkGY93Md4=;
 b=ZUnDDZ4WuOjUfu9elfy6cWoAFU3yLM8CM+1MavAV27wOnzQ3SnnChhPTpRUHkoes1j
 t/Adg5Yh+nrXDq61aCrBGXG7HSIaLwKKx7kurzUoGZKqWhN4N58NRGXIs3niGR47Ninx
 a0oXQvttfpc1Ailo9764BZyT/95PVBplCx5zUnW7/cPArHswIoMYwOZ3CNnscDV00F2x
 55UPd7QSkeQ0dWNu5J6YXcuXB5gkMqKT4o3qB6oLuVpm97Gi7+BldMuZ4icf3ld1vkFJ
 jevj5BQBHSp3H44/ghGi4YgMPQIij6MgcdmyX63UI6Bd1/Pb1nlBFzZaEEp/Tn+egYTv
 PjpA==
X-Gm-Message-State: APjAAAUc/XPrt6E7GLmd+rquLjnNeuFp7Uugv+eJv+lpVeX/v+DXMaUJ
 vBd4+3MpW5VBEkFGN1TtkZY=
X-Google-Smtp-Source: APXvYqybjISHW5nIs46zCHIwBi2BVhyng3Dq6fnRohONVy91yUiTTzM04sCan1ptbdtmW7bMivmhJg==
X-Received: by 2002:a17:902:b116:: with SMTP id
 q22mr7406492plr.201.1571805543847; 
 Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id k124sm19802461pga.83.2019.10.22.21.39.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id BE608201995818; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 19/47] lkl tools: host lib: filesystem helpers
Date: Wed, 23 Oct 2019 13:37:53 +0900
Message-Id: <a3dcda24b9eda5d41b8cccb508c8e3646f1c8813.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213904_663324_D31E491D 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Hajime Tazaki <thehajime@gmail.com>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Add LKL applications APIs to mount and unmount a filesystem from a
disk added via lkl_disk_add().

Also add open/close/read directory wrappers on top of
lkl_sys_getdents64.

Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/lib/fs.c | 433 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 433 insertions(+)
 create mode 100644 tools/lkl/lib/fs.c

diff --git a/tools/lkl/lib/fs.c b/tools/lkl/lib/fs.c
new file mode 100644
index 000000000000..c6f197aec3fb
--- /dev/null
+++ b/tools/lkl/lib/fs.c
@@ -0,0 +1,433 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <stdarg.h>
+#include <stdio.h>
+#include <string.h>
+#include <stdlib.h>
+#include <lkl_host.h>
+
+#include "virtio.h"
+
+#define MAX_FSTYPE_LEN 50
+int lkl_mount_fs(char *fstype)
+{
+	char dir[MAX_FSTYPE_LEN+2] = "/";
+	int flags = 0, ret = 0;
+
+	strncat(dir, fstype, MAX_FSTYPE_LEN);
+
+	/* Create with regular umask */
+	ret = lkl_sys_mkdir(dir, 0xff);
+	if (ret && ret != -LKL_EEXIST) {
+		lkl_perror("mount_fs mkdir", ret);
+		return ret;
+	}
+
+	/* We have no use for nonzero flags right now */
+	ret = lkl_sys_mount("none", dir, fstype, flags, NULL);
+	if (ret && ret != -LKL_EBUSY) {
+		lkl_sys_rmdir(dir);
+		return ret;
+	}
+
+	if (ret == -LKL_EBUSY)
+		return 1;
+	return 0;
+}
+
+static uint32_t new_encode_dev(unsigned int major, unsigned int minor)
+{
+	return (minor & 0xff) | (major << 8) | ((minor & ~0xff) << 12);
+}
+
+static int startswith(const char *str, const char *pre)
+{
+	return strncmp(pre, str, strlen(pre)) == 0;
+}
+
+static int get_node_with_prefix(const char *path, const char *prefix,
+				char *result, unsigned int result_len)
+{
+	struct lkl_dir *dir = NULL;
+	struct lkl_linux_dirent64 *dirent;
+	int ret;
+
+	dir = lkl_opendir(path, &ret);
+	if (!dir)
+		return ret;
+
+	ret = -LKL_ENOENT;
+
+	while ((dirent = lkl_readdir(dir))) {
+		if (startswith(dirent->d_name, prefix)) {
+			if (strlen(dirent->d_name) + 1 > result_len) {
+				ret = -LKL_ENOMEM;
+				break;
+			}
+			memcpy(result, dirent->d_name, strlen(dirent->d_name));
+			result[strlen(dirent->d_name)] = '\0';
+			ret = 0;
+			break;
+		}
+	}
+
+	lkl_closedir(dir);
+
+	return ret;
+}
+
+int lkl_encode_dev_from_sysfs(const char *sysfs_path, uint32_t *pdevid)
+{
+	int ret;
+	long fd;
+	int major, minor;
+	char buf[16] = { 0, };
+	char *bufptr;
+
+	fd = lkl_sys_open(sysfs_path, LKL_O_RDONLY, 0);
+	if (fd < 0)
+		return fd;
+
+	ret = lkl_sys_read(fd, buf, sizeof(buf));
+	if (ret < 0)
+		goto out_close;
+
+	if (ret == sizeof(buf)) {
+		ret = -LKL_ENOBUFS;
+		goto out_close;
+	}
+
+	bufptr = strchr(buf, ':');
+	if (bufptr == NULL) {
+		ret = -LKL_EINVAL;
+		goto out_close;
+	}
+	bufptr[0] = '\0';
+	bufptr++;
+
+	major = atoi(buf);
+	minor = atoi(bufptr);
+
+	*pdevid = new_encode_dev(major, minor);
+	ret = 0;
+
+out_close:
+	lkl_sys_close(fd);
+
+	return ret;
+}
+
+#define SYSFS_DEV_VIRTIO_PLATFORM_PATH \
+	"/sysfs/devices/platform/virtio-mmio.%d.auto"
+#define SYSFS_DEV_VIRTIO_CMDLINE_PATH \
+	"/sysfs/devices/virtio-mmio-cmdline/virtio-mmio.%d"
+
+struct abuf {
+	char *mem, *ptr;
+	unsigned int len;
+};
+
+static int snprintf_append(struct abuf *buf, const char *fmt, ...)
+{
+	int ret;
+	va_list args;
+
+	if (!buf->ptr)
+		buf->ptr = buf->mem;
+
+	va_start(args, fmt);
+	ret = vsnprintf(buf->ptr, buf->len - (buf->ptr - buf->mem), fmt, args);
+	va_end(args);
+
+	if (ret < 0 || (ret >= (buf->len - (buf->ptr - buf->mem))))
+		return -LKL_ENOMEM;
+
+	buf->ptr += ret;
+
+	return 0;
+}
+
+int lkl_get_virtio_blkdev(int disk_id, unsigned int part, uint32_t *pdevid)
+{
+	char sysfs_path[LKL_PATH_MAX];
+	char virtio_name[LKL_PATH_MAX];
+	char disk_name[LKL_PATH_MAX];
+	struct abuf sysfs_path_buf = {
+		.mem = sysfs_path,
+		.len = sizeof(sysfs_path),
+	};
+	char *fmt;
+	int ret;
+
+	if (disk_id < 0)
+		return -LKL_EINVAL;
+
+	ret = lkl_mount_fs("sysfs");
+	if (ret < 0)
+		return ret;
+
+	if ((uint32_t) disk_id >= virtio_get_num_bootdevs()) {
+		fmt = SYSFS_DEV_VIRTIO_PLATFORM_PATH;
+		disk_id -= virtio_get_num_bootdevs();
+	} else {
+		fmt = SYSFS_DEV_VIRTIO_CMDLINE_PATH;
+	}
+
+	ret = snprintf_append(&sysfs_path_buf, fmt, disk_id);
+	if (ret)
+		return ret;
+
+	ret = get_node_with_prefix(sysfs_path, "virtio", virtio_name,
+				   sizeof(virtio_name));
+	if (ret)
+		return ret;
+
+	ret = snprintf_append(&sysfs_path_buf, "/%s/block", virtio_name);
+	if (ret)
+		return ret;
+
+	ret = get_node_with_prefix(sysfs_path, "vd", disk_name,
+				   sizeof(disk_name));
+	if (ret)
+		return ret;
+
+	if (!part)
+		ret = snprintf_append(&sysfs_path_buf, "/%s/dev", disk_name);
+	else
+		ret = snprintf_append(&sysfs_path_buf, "/%s/%s%d/dev",
+				      disk_name, disk_name, part);
+	if (ret)
+		return ret;
+
+	return lkl_encode_dev_from_sysfs(sysfs_path, pdevid);
+}
+
+long lkl_mount_dev(unsigned int disk_id, unsigned int part,
+		   const char *fs_type, int flags,
+		   const char *data, char *mnt_str, unsigned int mnt_str_len)
+{
+	char dev_str[] = { "/dev/xxxxxxxx" };
+	unsigned int dev;
+	int err;
+	char _data[4096]; /* FIXME: PAGE_SIZE is not exported by LKL */
+
+	if (mnt_str_len < sizeof(dev_str))
+		return -LKL_ENOMEM;
+
+	err = lkl_get_virtio_blkdev(disk_id, part, &dev);
+	if (err < 0)
+		return err;
+
+	snprintf(dev_str, sizeof(dev_str), "/dev/%08x", dev);
+	snprintf(mnt_str, mnt_str_len, "/mnt/%08x", dev);
+
+	err = lkl_sys_access("/dev", LKL_S_IRWXO);
+	if (err < 0) {
+		if (err == -LKL_ENOENT)
+			err = lkl_sys_mkdir("/dev", 0700);
+		if (err < 0)
+			return err;
+	}
+
+	err = lkl_sys_mknod(dev_str, LKL_S_IFBLK | 0600, dev);
+	if (err < 0)
+		return err;
+
+	err = lkl_sys_access("/mnt", LKL_S_IRWXO);
+	if (err < 0) {
+		if (err == -LKL_ENOENT)
+			err = lkl_sys_mkdir("/mnt", 0700);
+		if (err < 0)
+			return err;
+	}
+
+	err = lkl_sys_mkdir(mnt_str, 0700);
+	if (err < 0) {
+		lkl_sys_unlink(dev_str);
+		return err;
+	}
+
+	/* kernel always copies a full page */
+	if (data) {
+		strncpy(_data, data, sizeof(_data));
+		_data[sizeof(_data) - 1] = 0;
+	} else {
+		_data[0] = 0;
+	}
+
+	err = lkl_sys_mount(dev_str, mnt_str, (char *)fs_type, flags, _data);
+	if (err < 0) {
+		lkl_sys_unlink(dev_str);
+		lkl_sys_rmdir(mnt_str);
+		return err;
+	}
+
+	return 0;
+}
+
+long lkl_umount_timeout(char *path, int flags, long timeout_ms)
+{
+	long incr = 10000000; /* 10 ms */
+	struct lkl_timespec ts = {
+		.tv_sec = 0,
+		.tv_nsec = incr,
+	};
+	long err;
+
+	do {
+		err = lkl_sys_umount(path, flags);
+		if (err == -LKL_EBUSY) {
+			lkl_sys_nanosleep((struct __lkl__kernel_timespec *)&ts,
+					  NULL);
+			timeout_ms -= incr / 1000000;
+		}
+	} while (err == -LKL_EBUSY && timeout_ms > 0);
+
+	return err;
+}
+
+long lkl_umount_dev(unsigned int disk_id, unsigned int part, int flags,
+		    long timeout_ms)
+{
+	char dev_str[] = { "/dev/xxxxxxxx" };
+	char mnt_str[] = { "/mnt/xxxxxxxx" };
+	unsigned int dev;
+	int err;
+
+	err = lkl_get_virtio_blkdev(disk_id, part, &dev);
+	if (err < 0)
+		return err;
+
+	snprintf(dev_str, sizeof(dev_str), "/dev/%08x", dev);
+	snprintf(mnt_str, sizeof(mnt_str), "/mnt/%08x", dev);
+
+	err = lkl_umount_timeout(mnt_str, flags, timeout_ms);
+	if (err)
+		return err;
+
+	err = lkl_sys_unlink(dev_str);
+	if (err)
+		return err;
+
+	return lkl_sys_rmdir(mnt_str);
+}
+
+struct lkl_dir {
+	int fd;
+	char buf[1024];
+	char *pos;
+	int len;
+};
+
+static struct lkl_dir *lkl_dir_alloc(int *err)
+{
+	struct lkl_dir *dir = lkl_host_ops.mem_alloc(sizeof(struct lkl_dir));
+
+	if (!dir) {
+		*err = -LKL_ENOMEM;
+		return NULL;
+	}
+
+	dir->len = 0;
+	dir->pos = NULL;
+
+	return dir;
+}
+
+struct lkl_dir *lkl_opendir(const char *path, int *err)
+{
+	struct lkl_dir *dir = lkl_dir_alloc(err);
+
+	if (!dir) {
+		*err = -LKL_ENOMEM;
+		return NULL;
+	}
+
+	dir->fd = lkl_sys_open(path, LKL_O_RDONLY | LKL_O_DIRECTORY, 0);
+	if (dir->fd < 0) {
+		*err = dir->fd;
+		lkl_host_ops.mem_free(dir);
+		return NULL;
+	}
+
+	*err = 0;
+
+	return dir;
+}
+
+struct lkl_dir *lkl_fdopendir(int fd, int *err)
+{
+	struct lkl_dir *dir = lkl_dir_alloc(err);
+
+	if (!dir)
+		return NULL;
+
+	dir->fd = fd;
+
+	return dir;
+}
+
+void lkl_rewinddir(struct lkl_dir *dir)
+{
+	lkl_sys_lseek(dir->fd, 0, LKL_SEEK_SET);
+	dir->len = 0;
+	dir->pos = NULL;
+}
+
+int lkl_closedir(struct lkl_dir *dir)
+{
+	int ret;
+
+	ret = lkl_sys_close(dir->fd);
+	lkl_host_ops.mem_free(dir);
+
+	return ret;
+}
+
+struct lkl_linux_dirent64 *lkl_readdir(struct lkl_dir *dir)
+{
+	struct lkl_linux_dirent64 *de;
+
+	if (dir->len < 0)
+		return NULL;
+
+	if (!dir->pos || dir->pos - dir->buf >= dir->len)
+		goto read_buf;
+
+return_de:
+	de = (struct lkl_linux_dirent64 *)dir->pos;
+	dir->pos += de->d_reclen;
+
+	return de;
+
+read_buf:
+	dir->pos = NULL;
+	de = (struct lkl_linux_dirent64 *)dir->buf;
+	dir->len = lkl_sys_getdents64(dir->fd, de, sizeof(dir->buf));
+	if (dir->len <= 0)
+		return NULL;
+
+	dir->pos = dir->buf;
+	goto return_de;
+}
+
+int lkl_errdir(struct lkl_dir *dir)
+{
+	if (dir->len >= 0)
+		return 0;
+
+	return dir->len;
+}
+
+int lkl_dirfd(struct lkl_dir *dir)
+{
+	return dir->fd;
+}
+
+int lkl_set_fd_limit(unsigned int fd_limit)
+{
+	struct lkl_rlimit rlim = {
+		.rlim_cur = fd_limit,
+		.rlim_max = fd_limit,
+	};
+	return lkl_sys_setrlimit(LKL_RLIMIT_NOFILE, &rlim);
+}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
