Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7A5152700
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRoGgcwVqq1Py/idy6pX2viWRJDa51nzmzFOIjixKQU=; b=X5YhnCIiKde96y
	HPIvUIvhpuDXY5hlJiKMsFWfPyT6CpIcV0GPXSLlOszqcLmfNhb81Hiday+LH3aA3a15/+VD1VKJW
	BY02OOrYOmc9amHEfVqMQdmdMB3s6jmsgBkJ2DoQ5W7FzliiCOPMlniOcev1dT24gSBIFS7bmd/zX
	xtjRM4c+q43xB35MYAVcgs2b+INJD6+2aPdF1aD5G/sfst3gpcVSz+QRmEmy81f716rnssHcERl8o
	81DZro4CvNL6ut0I6sVSE15FiJEdjSejoeIOapoTc32WUnaS4ILVLC01Ti9py8n4IcKtkA1r/Okay
	yKj7rGaDmKo1/yyquLwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9x-0008Oz-P2; Wed, 05 Feb 2020 07:31:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF9u-0008Mk-8H
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:31:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so726044pfg.12
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=imps6g8P7Pz4OGYnQVZikVA60FQoafCxwcYjnUyS3X0=;
 b=YcXgsaejcI5tpiINkIBqDPTnhqIlCwPpY0Tb3jXdTV8LiZ5m4Jqvtyf4O++IkTNgPh
 veW5nyLZlqNqq4pkV/MK+94S4zbijfb+w/sjOvA56V0TfucLHJ+1dAFI2OQp8PRcGTEx
 D4KYlmww6zX6JW0Jt3dyPUx5Y2WFmqduXNEQnv3lVGhLUYWKk8KSMNOpXD7HxH94GZQh
 GkeHawFCW2YFv4ssmAJDWEF3rULogC3bkBUUUUrIKLeIMOKCxD65e4pyZMkBoOSgWi1Z
 /Fa+o+wpGRLlJ6EZjtXvuBaz572OXQA8itovNiYPD48zLE4ZqRB2sNd7DN/MDyfKRh4M
 hdIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=imps6g8P7Pz4OGYnQVZikVA60FQoafCxwcYjnUyS3X0=;
 b=RUnhJ+v4Ld0yMfeHLevGvRdPh8cfa9WNlIhLc3jY2FJdVyU7OD/1YuX31yS8VOxlYN
 9Cxgm2bGkPSLSDhpJEf3jTxSDmr3aKv3IJDtBcCc2sfP4q5jQ2IUN0AbWEiV76YQIlrw
 6zoFTiEa2jtdw82TZGrpn7owYJufL577WF5oodmi1HqAKlUGUT/Cq1l86aF4jmaT6GRF
 LnlY/rRyC12iuv8aKQ5l+cC8XG6MuaxXhMac4Jy0/RQlKuY2geW5hZbyvkAd2iFnoyHV
 HDt7zdM+tCXIiZcASe/HKwBbaN6dtoRXG8pihWplYlEalCMSgSE2OoA0fWae3i++2qsy
 EsIw==
X-Gm-Message-State: APjAAAX7TlzAXfbARIqsxbjOJ0ad86JscQTKRAmgM8ocXizS7F6p5JwL
 ac64FxYDfkSN2tHFL1mxTg4=
X-Google-Smtp-Source: APXvYqz5ZVp9TUF6Ot7akKtdfBFeBEH76HF3RYKNTBVDqhrh2d/D2abK9FF4TJDJPoeXEY0HvjdvEw==
X-Received: by 2002:a65:68ce:: with SMTP id k14mr897268pgt.336.1580887897548; 
 Tue, 04 Feb 2020 23:31:37 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id x65sm28249233pfb.171.2020.02.04.23.31.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:31:35 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id D2B142025730A5; Wed,  5 Feb 2020 16:31:33 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 20/26] lkl tools: fs2tar that converts a filesystem image to
 tar
Date: Wed,  5 Feb 2020 16:30:29 +0900
Message-Id: <a1e18cf58ea683fd920bef01fa17f60898ce4284.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233138_317040_8EDE51FF 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-arch@vger.kernel.org, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Petros Angelatos <petrosagg@gmail.com>, linux-kernel-library@freelists.org,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Simple utility that converts a filesystem image to a tar file,
preserving file rights and extended attributes.

Cc: Conrad Meyer <cem@FreeBSD.org>
Cc: Petros Angelatos <petrosagg@gmail.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/.gitignore |   1 +
 tools/lkl/Build      |   1 +
 tools/lkl/Targets    |   4 +
 tools/lkl/fs2tar.c   | 412 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 418 insertions(+)
 create mode 100644 tools/lkl/fs2tar.c

diff --git a/tools/lkl/.gitignore b/tools/lkl/.gitignore
index 1a8210f4d9c4..138e65efcad2 100644
--- a/tools/lkl/.gitignore
+++ b/tools/lkl/.gitignore
@@ -9,3 +9,4 @@ tests/valgrind*.xml
 *.pyc
 cptofs
 cpfromfs
+fs2tar
diff --git a/tools/lkl/Build b/tools/lkl/Build
index a9d12c5ca260..73b37363a6de 100644
--- a/tools/lkl/Build
+++ b/tools/lkl/Build
@@ -1,2 +1,3 @@
 cptofs-$(LKL_HOST_CONFIG_ARCHIVE) += cptofs.o
+fs2tar-$(LKL_HOST_CONFIG_ARCHIVE) += fs2tar.o
 
diff --git a/tools/lkl/Targets b/tools/lkl/Targets
index 17de965f92b3..3451a1856955 100644
--- a/tools/lkl/Targets
+++ b/tools/lkl/Targets
@@ -8,3 +8,7 @@ progs-$(LKL_HOST_CONFIG_ARCHIVE) += cptofs
 progs-$(LKL_HOST_CONFIG_ARCHIVE) += cpfromfs
 LDLIBS_cptofs-y := -larchive
 LDLIBS_cptofs-$(LKL_HOST_CONFIG_NEEDS_LARGP) += -largp
+
+progs-$(LKL_HOST_CONFIG_ARCHIVE) += fs2tar
+LDLIBS_fs2tar-y := -larchive
+LDLIBS_fs2tar-$(LKL_HOST_CONFIG_NEEDS_LARGP) += -largp
diff --git a/tools/lkl/fs2tar.c b/tools/lkl/fs2tar.c
new file mode 100644
index 000000000000..b7dbcf2028a3
--- /dev/null
+++ b/tools/lkl/fs2tar.c
@@ -0,0 +1,412 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifdef __FreeBSD__
+#include <sys/param.h>
+#endif
+
+#include <stdio.h>
+#include <time.h>
+#include <argp.h>
+#include <unistd.h>
+#include <string.h>
+#include <stdlib.h>
+#include <libgen.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <archive.h>
+#include <archive_entry.h>
+#include <lkl.h>
+#include <lkl_host.h>
+
+char doc[] = "";
+char args_doc[] = "-t fstype fsimage_path tar_path";
+static struct argp_option options[] = {
+	{"enable-printk", 'p', 0, 0, "show Linux printks"},
+	{"partition", 'P', "int", 0, "partition number"},
+	{"filesystem-type", 't', "string", 0,
+	 "select filesystem type - mandatory"},
+	{"selinux-contexts", 's', "file", 0,
+	 "export selinux contexts to file"},
+	{0},
+};
+
+static struct cl_args {
+	int printk;
+	int part;
+	const char *fsimg_type;
+	const char *fsimg_path;
+	const char *tar_path;
+	FILE *selinux;
+} cla;
+
+static error_t parse_opt(int key, char *arg, struct argp_state *state)
+{
+	struct cl_args *cla = state->input;
+
+	switch (key) {
+	case 'p':
+		cla->printk = 1;
+		break;
+	case 'P':
+		cla->part = atoi(arg);
+		break;
+	case 't':
+		cla->fsimg_type = arg;
+		break;
+	case 's':
+		cla->selinux = fopen(arg, "w");
+		if (!cla->selinux) {
+			fprintf(stderr,
+				"failed to open selinux contexts file: %s\n",
+				strerror(errno));
+			return -1;
+		}
+		break;
+	case ARGP_KEY_ARG:
+		if (!cla->fsimg_path)
+			cla->fsimg_path = arg;
+		else if (!cla->tar_path)
+			cla->tar_path = arg;
+		else
+			return -1;
+		break;
+	case ARGP_KEY_END:
+		if (state->arg_num < 2 || !cla->fsimg_type)
+			argp_usage(state);
+		break;
+	default:
+		return ARGP_ERR_UNKNOWN;
+	}
+
+	return 0;
+}
+
+static struct argp argp = { options, parse_opt, args_doc, doc };
+
+static struct archive *tar;
+
+static int searchdir(const char *fsimg_path, const char *path);
+
+static int copy_file(const char *fsimg_path, const char *path)
+{
+	long fsimg_fd;
+	char buff[4096];
+	long len, wrote;
+	int ret = 0;
+
+	fsimg_fd = lkl_sys_open(fsimg_path, LKL_O_RDONLY, 0);
+	if (fsimg_fd < 0) {
+		fprintf(stderr, "fsimg error opening %s: %s\n", fsimg_path,
+			lkl_strerror(fsimg_fd));
+		return fsimg_fd;
+	}
+
+	do {
+		len = lkl_sys_read(fsimg_fd, buff, sizeof(buff));
+		if (len > 0) {
+			wrote = archive_write_data(tar, buff, len);
+			if (wrote != len) {
+				fprintf(stderr,
+					"error writing file %s to archive: %s [%d %ld]\n",
+					path, archive_error_string(tar), ret,
+					len);
+				ret = -archive_errno(tar);
+				break;
+			}
+		}
+
+		if (len < 0) {
+			fprintf(stderr, "error reading fsimg file %s: %s\n",
+				fsimg_path, lkl_strerror(len));
+			ret = len;
+		}
+
+	} while (len > 0);
+
+	lkl_sys_close(fsimg_fd);
+
+	return ret;
+}
+
+static int add_link(const char *fsimg_path, const char *path,
+		    struct archive_entry *entry)
+{
+	char buf[4096] = { 0, };
+	long len;
+
+	len = lkl_sys_readlink(fsimg_path, buf, sizeof(buf));
+	if (len < 0) {
+		fprintf(stderr, "fsimg readlink error %s: %s\n",
+			fsimg_path, lkl_strerror(len));
+		return len;
+	}
+
+	archive_entry_set_symlink(entry, buf);
+
+	return 0;
+}
+
+static inline void fsimg_copy_stat(struct stat *st, struct lkl_stat *fst)
+{
+	st->st_dev = fst->st_dev;
+	st->st_ino = fst->st_ino;
+	st->st_mode = fst->st_mode;
+	st->st_nlink = fst->st_nlink;
+	st->st_uid = fst->st_uid;
+	st->st_gid = fst->st_gid;
+	st->st_rdev = fst->st_rdev;
+	st->st_size = fst->st_size;
+	st->st_blksize = fst->st_blksize;
+	st->st_blocks = fst->st_blocks;
+	st->st_atim.tv_sec = fst->lkl_st_atime;
+	st->st_atim.tv_nsec = fst->st_atime_nsec;
+	st->st_mtim.tv_sec = fst->lkl_st_mtime;
+	st->st_mtim.tv_nsec = fst->st_mtime_nsec;
+	st->st_ctim.tv_sec = fst->lkl_st_ctime;
+	st->st_ctim.tv_nsec = fst->st_ctime_nsec;
+}
+
+static int copy_xattr(const char *fsimg_path, const char *path,
+		      struct archive_entry *entry)
+{
+	long ret;
+	char *xattr_list, *i;
+	long xattr_list_size;
+
+	ret = lkl_sys_llistxattr(fsimg_path, NULL, 0);
+	if (ret < 0) {
+		fprintf(stderr, "fsimg llistxattr(%s) error: %s\n",
+			path, lkl_strerror(ret));
+		return ret;
+	}
+
+	if (!ret)
+		return 0;
+
+	xattr_list = malloc(ret);
+
+	ret = lkl_sys_llistxattr(fsimg_path, xattr_list, ret);
+	if (ret < 0) {
+		fprintf(stderr, "fsimg llistxattr(%s) error: %s\n", path,
+			lkl_strerror(ret));
+		free(xattr_list);
+		return ret;
+	}
+
+	xattr_list_size = ret;
+
+	for (i = xattr_list; i - xattr_list < xattr_list_size;
+	     i += strlen(i) + 1) {
+		void *xattr_buf;
+
+		ret = lkl_sys_lgetxattr(fsimg_path, i, NULL, 0);
+		if (ret < 0) {
+			fprintf(stderr, "fsimg lgetxattr(%s) error: %s\n", path,
+				lkl_strerror(ret));
+			free(xattr_list);
+			return ret;
+		}
+
+		xattr_buf = malloc(ret);
+
+		ret = lkl_sys_lgetxattr(fsimg_path, i, xattr_buf, ret);
+		if (ret < 0) {
+			fprintf(stderr, "fsimg lgetxattr2(%s) error: %s\n",
+				path, lkl_strerror(ret));
+			free(xattr_list);
+			free(xattr_buf);
+			return ret;
+		}
+
+		if (cla.selinux && strcmp(i, "security.selinux") == 0)
+			fprintf(cla.selinux, "%s %s\n", path,
+				(char *)xattr_buf);
+
+		archive_entry_xattr_clear(entry);
+		archive_entry_xattr_add_entry(entry, i, xattr_buf, ret);
+
+		free(xattr_buf);
+	}
+
+	free(xattr_list);
+
+	return 0;
+}
+
+static int do_entry(const char *fsimg_path, const char *path,
+		    const struct lkl_linux_dirent64 *de)
+{
+	char fsimg_new_path[PATH_MAX], new_path[PATH_MAX];
+	struct lkl_stat fsimg_stat;
+	struct stat stat;
+	struct archive_entry *entry;
+	int ftype;
+	long ret;
+
+	snprintf(new_path, sizeof(new_path), "%s/%s", path, de->d_name);
+	snprintf(fsimg_new_path, sizeof(fsimg_new_path), "%s/%s", fsimg_path,
+		 de->d_name);
+
+	ret = lkl_sys_lstat(fsimg_new_path, &fsimg_stat);
+	if (ret) {
+		fprintf(stderr, "fsimg lstat(%s) error: %s\n",
+			path, lkl_strerror(ret));
+		return ret;
+	}
+
+	entry = archive_entry_new();
+
+	archive_entry_set_pathname(entry, new_path);
+	fsimg_copy_stat(&stat, &fsimg_stat);
+	archive_entry_copy_stat(entry, &stat);
+	ret = copy_xattr(fsimg_new_path, new_path, entry);
+	if (ret)
+		return ret;
+	/* TODO: ACLs */
+
+	ftype = stat.st_mode & S_IFMT;
+
+	switch (ftype) {
+	case S_IFREG:
+		archive_write_header(tar, entry);
+		ret = copy_file(fsimg_new_path, new_path);
+		break;
+	case S_IFDIR:
+		archive_write_header(tar, entry);
+		ret = searchdir(fsimg_new_path, new_path);
+		break;
+	case S_IFLNK:
+		ret = add_link(fsimg_new_path, new_path, entry);
+		/* fall through */
+	case S_IFSOCK:
+	case S_IFBLK:
+	case S_IFCHR:
+	case S_IFIFO:
+		if (ret)
+			break;
+		archive_write_header(tar, entry);
+		break;
+	default:
+		printf("skipping %s: unsupported entry type %d\n", new_path,
+		       ftype);
+	}
+
+	archive_entry_free(entry);
+
+	if (ret)
+		printf("error processing entry %s, aborting\n", new_path);
+
+	return ret;
+}
+
+static int searchdir(const char *fsimg_path, const char *path)
+{
+	long ret, fd;
+	char buf[1024], *pos;
+	long buf_len;
+
+	fd = lkl_sys_open(fsimg_path, LKL_O_RDONLY | LKL_O_DIRECTORY, 0);
+	if (fd < 0) {
+		fprintf(stderr, "failed to open dir %s: %s", fsimg_path,
+			lkl_strerror(fd));
+		return fd;
+	}
+
+	do {
+		struct lkl_linux_dirent64 *de;
+
+		de = (struct lkl_linux_dirent64 *) buf;
+		buf_len = lkl_sys_getdents64(fd, de, sizeof(buf));
+		if (buf_len < 0) {
+			fprintf(stderr, "gentdents64 error: %s\n",
+				lkl_strerror(buf_len));
+			break;
+		}
+
+		for (pos = buf; pos - buf < buf_len; pos += de->d_reclen) {
+			de = (struct lkl_linux_dirent64 *)pos;
+
+			if (!strcmp(de->d_name, ".") ||
+			    !strcmp(de->d_name, ".."))
+				continue;
+
+			ret = do_entry(fsimg_path, path, de);
+			if (ret)
+				goto out;
+		}
+
+	} while (buf_len > 0);
+
+out:
+	lkl_sys_close(fd);
+	return ret;
+}
+
+int main(int argc, char **argv)
+{
+	struct lkl_disk disk;
+	long ret;
+	char mpoint[32];
+	unsigned int disk_id;
+
+	if (argp_parse(&argp, argc, argv, 0, 0, &cla) < 0)
+		return -1;
+
+	if (!cla.printk)
+		lkl_host_ops.print = NULL;
+
+	disk.fd = open(cla.fsimg_path, O_RDONLY);
+	if (disk.fd < 0) {
+		fprintf(stderr, "can't open fsimg %s: %s\n", cla.fsimg_path,
+			strerror(errno));
+		ret = 1;
+		goto out;
+	}
+
+	disk.ops = NULL;
+	disk.dev = (char *)cla.fsimg_path;
+
+	ret = lkl_disk_add(&disk);
+	if (ret < 0) {
+		fprintf(stderr, "can't add disk: %s\n", lkl_strerror(ret));
+		goto out_close;
+	}
+	disk_id = ret;
+
+	lkl_start_kernel(&lkl_host_ops, "mem=10M");
+
+	ret = lkl_mount_dev(disk_id, cla.part, cla.fsimg_type, LKL_MS_RDONLY,
+			    NULL, mpoint, sizeof(mpoint));
+	if (ret) {
+		fprintf(stderr, "can't mount disk: %s\n", lkl_strerror(ret));
+		goto out_close;
+	}
+
+	ret = lkl_sys_chdir(mpoint);
+	if (ret) {
+		fprintf(stderr, "can't chdir to %s: %s\n", mpoint,
+			lkl_strerror(ret));
+		goto out_umount;
+	}
+
+	tar = archive_write_new();
+	archive_write_set_format_pax_restricted(tar);
+	archive_write_open_filename(tar, cla.tar_path);
+
+	ret = searchdir(mpoint, "");
+
+	archive_write_free(tar);
+
+	if (cla.selinux)
+		fclose(cla.selinux);
+
+out_umount:
+	lkl_umount_dev(disk_id, cla.part, 0, 1000);
+
+out_close:
+	close(disk.fd);
+
+out:
+	lkl_sys_halt();
+
+	return ret;
+}
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
