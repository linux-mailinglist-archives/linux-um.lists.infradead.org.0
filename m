Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9380C197EE0
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B42R7SMD0fwrlRY+gYR5x4VLb3Vs7W6fTFU42Z5OAC0=; b=s9oV0yqFad7k/O
	lhJxbHFEpOCd4MCZse/7xMYcPRLWxH4PbMwdyK4jmZwIdlF+u60aHlTKu9xiicjAg+DdT45f1z9yQ
	xpd2q4sININTS/Z2L8roAZBsJXa34ivmTbwyyLlJWjeWj4SpcNwJemSnrGLD3DC1rxQeUE6Lh7AoD
	M7K4TXJYpPXw1uumCGCq7y25HnUra3RDl0JXGmapMG0i+3hyUJgrKmfCwSvVDPvrUZuaL79znJCRT
	P4SVUOBfFmRAjAknqqvyf+zr6OBLIFipJefym75hocVTO2/nCsh+mOglLtwmY+gHPUlJ/TH7v9gF6
	zxB6I0KqbhGRfeHozX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIviF-0004yK-Jg; Mon, 30 Mar 2020 14:48:27 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIviA-0004w1-Hg
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:48:25 +0000
Received: by mail-pg1-x532.google.com with SMTP id b1so8748239pgm.8
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XNACQsOzFYlxcZi20fAeRmb2vLMaf+w0ke2mZUmN0Nw=;
 b=DYzV0EUlq0SHIYI3+P0vipHKLeNhS4wj+WrPqldtqGTjrU7VkkKTj/JKD/Mk+4eLGZ
 jmPmyKxkOb8KaV9EDRNdKa3xlkYttonQK96fGZyVMsLSLIJ4xZrAGN/9EngosJh8F4Y0
 bhG7hyEaowK3ohZW91fiZvL5DeAmdldBXkAwR9ZymyFThsQZlZPfUBvV+2zzu2SomCSB
 o9whzXAAEycSsmm2CyRp9dmIYUuN509LkqQHT2vgWYRgH8yrvLwzQLnCqaNuxEusev7p
 mYBWIv+BnWZKiEG4PT0Np2mTsV95ynYuR6+tanA/xT8jW/Bc3BV0okACOA0A4TsxRXm7
 ni5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XNACQsOzFYlxcZi20fAeRmb2vLMaf+w0ke2mZUmN0Nw=;
 b=UlBnR5vs9uc+uDAcbbMeljWCx1S/2ul5y6cdBUo9n5N2swXVLT0BgHXOJ9/uVBOo+X
 4n5vG2myIXkPTIiwMu+IvJ+B/zQWY02lkKwnvDw6//+HslUkdH4MUUHcotrqbUSdgEQt
 HCn3T60MFPbU+5Pgylwg8olWC60WDCsqemJ/0ceqCvL43NopMql7ILT+qihyD7Q7WieT
 V9s2B5+bnBnf7hGq1IIo/AEBJhe+pyGnAlVfmrbZ0zOnWEBm7XBeMeeyXszwHnwCPRpv
 NTdjFH+2y5gSYv1cdESQMAwJZeML8DXUmMzWEKh2Nwx+Ulw/Plr+A8SqTlYO7MdXvrHn
 TNiQ==
X-Gm-Message-State: ANhLgQ3Uo8r5e2Txdv/itv50YLVN5BBkxJr8MiNXz1Y/uKexYoOotYK2
 Mfcb3djBf0Br70CXF8Ifu00=
X-Google-Smtp-Source: ADFU+vu4Q169vTMpGK41O70ni1RaxM2+ppoiF4176xomnUSF3bnDfNZwnxebTkncLLTgoRtn9gpO3A==
X-Received: by 2002:a63:e607:: with SMTP id g7mr12905205pgh.303.1585579699282; 
 Mon, 30 Mar 2020 07:48:19 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id c21sm4056215pgn.84.2020.03.30.07.48.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:48:18 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 5CA08202804DDB; Mon, 30 Mar 2020 23:48:16 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 14/25] lkl tools: host lib: filesystem helpers
Date: Mon, 30 Mar 2020 23:45:46 +0900
Message-Id: <403e9ca733a581621945eca015884572d91d7410.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074822_664796_E84877ED 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
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
Cc: linux-arch@vger.kernel.org, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Yuan Liu <liuyuan@google.com>, linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add LKL applications APIs to mount and unmount a filesystem from a
disk added via lkl_disk_add().

Also add open/close/read directory wrappers on top of
lkl_sys_getdents64.

Cc: Conrad Meyer <cem@FreeBSD.org>
Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/include/lkl.h | 165 ++++++++++++++
 tools/lkl/lib/Build     |   1 +
 tools/lkl/lib/fs.c      | 471 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 637 insertions(+)
 create mode 100644 tools/lkl/lib/fs.c

diff --git a/tools/lkl/include/lkl.h b/tools/lkl/include/lkl.h
index 4b95d0ef8e5b..cdae92300320 100644
--- a/tools/lkl/include/lkl.h
+++ b/tools/lkl/include/lkl.h
@@ -350,6 +350,171 @@ const char *lkl_strerror(int err);
  */
 void lkl_perror(char *msg, int err);
 
+/**
+ * struct lkl_dev_blk_ops - block device host operations, defined in lkl_host.h.
+ */
+struct lkl_dev_blk_ops;
+
+/**
+ * lkl_disk - host disk handle
+ *
+ * @dev - a pointer to private information for this disk backend
+ * @fd - a POSIX file descriptor that can be used by preadv/pwritev
+ * @handle - an NT file handle that can be used by ReadFile/WriteFile
+ */
+struct lkl_disk {
+	void *dev;
+	union {
+		int fd;
+		void *handle;
+	};
+	struct lkl_dev_blk_ops *ops;
+};
+
+/**
+ * lkl_disk_add - add a new disk
+ *
+ * @disk - the host disk handle
+ * @returns a disk id (0 is valid) or a strictly negative value in case of error
+ */
+int lkl_disk_add(struct lkl_disk *disk);
+
+/**
+ * lkl_disk_remove - remove a disk
+ *
+ * This function makes a cleanup of the @disk's private information
+ * that was initialized by lkl_disk_add before.
+ *
+ * @disk - the host disk handle
+ */
+int lkl_disk_remove(struct lkl_disk disk);
+
+/**
+ * lkl_encode_dev_from_sysfs_blkdev - extract device id from sysfs
+ *
+ * This function returns the device id for the given sysfs dev node.
+ * The content of the node has to be in the form 'MAJOR:MINOR'.
+ * Also, this function expects an absolute path which means that sysfs
+ * already has to be mounted at the given path
+ *
+ * @sysfs_path - absolute path to the sysfs dev node
+ * @pdevid - pointer to memory where dev id will be returned
+ * @returns - 0 on success, a negative value on error
+ */
+int lkl_encode_dev_from_sysfs(const char *sysfs_path, uint32_t *pdevid);
+
+/**
+ * lkl_mount_dev - mount a disk
+ *
+ * This functions creates a device file for the given disk, creates a mount
+ * point and mounts the device over the mount point.
+ *
+ * @disk_id - the disk id identifying the disk to be mounted
+ * @part - disk partition or zero for full disk
+ * @fs_type - filesystem type
+ * @flags - mount flags
+ * @opts - additional filesystem specific mount options
+ * @mnt_str - a string that will be filled by this function with the path where
+ * the filesystem has been mounted
+ * @mnt_str_len - size of mnt_str
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_mount_dev(unsigned int disk_id, unsigned int part, const char *fs_type,
+		   int flags, const char *opts,
+		   char *mnt_str, unsigned int mnt_str_len);
+
+/**
+ * lkl_umount_dev - umount a disk
+ *
+ * This functions umounts the given disks and removes the device file and the
+ * mount point.
+ *
+ * @disk_id - the disk id identifying the disk to be mounted
+ * @part - disk partition or zero for full disk
+ * @flags - umount flags
+ * @timeout_ms - timeout to wait for the kernel to flush closed files so that
+ * umount can succeed
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_umount_dev(unsigned int disk_id, unsigned int part, int flags,
+		    long timeout_ms);
+
+/**
+ * lkl_umount_timeout - umount filesystem with timeout
+ *
+ * @path - the path to unmount
+ * @flags - umount flags
+ * @timeout_ms - timeout to wait for the kernel to flush closed files so that
+ * umount can succeed
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_umount_timeout(char *path, int flags, long timeout_ms);
+
+/**
+ * lkl_opendir - open a directory
+ *
+ * @path - directory path
+ * @err - pointer to store the error in case of failure
+ * @returns - a handle to be used when calling lkl_readdir
+ */
+struct lkl_dir *lkl_opendir(const char *path, int *err);
+
+/**
+ * lkl_fdopendir - open a directory
+ *
+ * @fd - file descriptor
+ * @err - pointer to store the error in case of failure
+ * @returns - a handle to be used when calling lkl_readdir
+ */
+struct lkl_dir *lkl_fdopendir(int fd, int *err);
+
+/**
+ * lkl_rewinddir - reset directory stream
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ */
+void lkl_rewinddir(struct lkl_dir *dir);
+
+/**
+ * lkl_closedir - close the directory
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ */
+int lkl_closedir(struct lkl_dir *dir);
+
+/**
+ * lkl_readdir - get the next available entry of the directory
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ * @returns - a lkl_dirent64 entry or NULL if the end of the directory stream is
+ * reached or if an error occurred; check lkl_errdir() to distinguish between
+ * errors or end of the directory stream
+ */
+struct lkl_linux_dirent64 *lkl_readdir(struct lkl_dir *dir);
+
+/**
+ * lkl_errdir - checks if an error occurred during the last lkl_readdir call
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ * @returns - 0 if no error occurred, or a negative value otherwise
+ */
+int lkl_errdir(struct lkl_dir *dir);
+
+/**
+ * lkl_dirfd - gets the file descriptor associated with the directory handle
+ *
+ * @dir - the directory handle as returned by lkl_opendir
+ * @returns - a positive value,which is the LKL file descriptor associated with
+ * the directory handle, or a negative value otherwise
+ */
+int lkl_dirfd(struct lkl_dir *dir);
+
+/**
+ * lkl_mount_fs - mount a file system type like proc, sys
+ * @fstype - file system type. e.g. proc, sys
+ * @returns - 0 on success. 1 if it's already mounted. negative on failure.
+ */
+int lkl_mount_fs(char *fstype);
 
 #ifdef __cplusplus
 }
diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index 658bfa865b9c..4a444337b0e7 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -1,5 +1,6 @@
 CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
 
+liblkl-y += fs.o
 liblkl-y += jmp_buf.o
 liblkl-y += utils.o
 liblkl-y += dbg.o
diff --git a/tools/lkl/lib/fs.c b/tools/lkl/lib/fs.c
new file mode 100644
index 000000000000..d51d928c14b6
--- /dev/null
+++ b/tools/lkl/lib/fs.c
@@ -0,0 +1,471 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <stdarg.h>
+#include <stdio.h>
+#include <string.h>
+#include <stdlib.h>
+#include <lkl_host.h>
+
+#define MAX_FSTYPE_LEN 50
+
+static struct lkl_disk *lkl_disks[16];
+
+int lkl_disk_add(struct lkl_disk *disk)
+{
+	int ret = -1;
+
+	switch (disk->backend) {
+	case BLK_BACKEND_UM:
+		ret = lkl_disk_um_add(disk, disk->dev);
+		break;
+	default:
+		break;
+	}
+
+	lkl_disks[ret] = disk;
+
+	return ret;
+}
+
+int lkl_disk_remove(struct lkl_disk disk)
+{
+	switch (disk.backend) {
+	case BLK_BACKEND_UM:
+	default:
+		break;
+	}
+
+	return 0;
+}
+
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
+#define SYSFS_DEV_UMBLK_CMDLINE_PATH \
+	"/sysfs/devices/platform/uml-blkdev.%d"
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
+	if (ret < 0 || (ret >= (int)(buf->len - (buf->ptr - buf->mem))))
+		return -LKL_ENOMEM;
+
+	buf->ptr += ret;
+
+	return 0;
+}
+
+static int __lkl_get_blkdev(int disk_id, unsigned int part, uint32_t *pdevid,
+			    const char *sysfs_path_fmt, const char *drv_prefix,
+			    const char *disk_prefix)
+{
+	char sysfs_path[LKL_PATH_MAX];
+	char drv_name[LKL_PATH_MAX];
+	char disk_name[LKL_PATH_MAX];
+	struct abuf sysfs_path_buf = {
+		.mem = sysfs_path,
+		.len = sizeof(sysfs_path),
+	};
+	int ret;
+
+	if (disk_id < 0)
+		return -LKL_EINVAL;
+
+	ret = lkl_mount_fs("sysfs");
+	if (ret < 0)
+		return ret;
+
+	ret = snprintf_append(&sysfs_path_buf, sysfs_path_fmt, disk_id);
+	if (ret)
+		return ret;
+
+	ret = get_node_with_prefix(sysfs_path, drv_prefix, drv_name,
+				   sizeof(drv_name));
+	if (ret)
+		return ret;
+
+	ret = snprintf_append(&sysfs_path_buf, "/%s/block", drv_name);
+	if (ret)
+		return ret;
+
+	ret = get_node_with_prefix(sysfs_path, disk_prefix, disk_name,
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
+int lkl_get_blkdev(int disk_id, unsigned int part, uint32_t *pdevid)
+{
+	char *fmt;
+	struct lkl_disk *disk = lkl_disks[disk_id];
+
+	switch (disk->backend) {
+	case BLK_BACKEND_UM:
+		fmt = SYSFS_DEV_UMBLK_CMDLINE_PATH;
+		return __lkl_get_blkdev(disk_id, part, pdevid, fmt,
+					"", "ubd");
+	default:
+		break;
+	}
+
+	return -1;
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
+	err = lkl_get_blkdev(disk_id, part, &dev);
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
+	err = lkl_get_blkdev(disk_id, part, &dev);
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
