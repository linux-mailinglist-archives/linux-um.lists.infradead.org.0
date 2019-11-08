Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9142BF3F3C
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+5XuE1u0SQJ7/r2hNfCbeAJXxTN0rbAlKusAjKIU6A=; b=ruWDp/O5eWk4PS
	lqSX009ZCqcMBf7gxv5q2Wilef3fWeoQMLM1YUpFM4rYNP40McNV/CTEXR232RmIH1Y9EA2U8hAJI
	skeBaHRX1Oa+GuNozSzrSuHHVmUFt3rg1P3xZGARe6ZViAtJmiYaZAA3sVb7uHYDZR7xGjFe5t1Bd
	N2agyiGQOl9iVcywEOeWdkRx+GLU7UQcOH4Zh5V6CcJ25Ls3RtVS0QTWEIenYwfS/YKYPDWRoudBV
	DAPiUC1VoV2WKhIvi7fmZko9I8ZBCOlfxmNFF09itYPhbBoEjaZb0AaE1rAXlsHh0XqYPCdBn7zCp
	8yHBg+keP/1BUoCqjvCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwR4-0003r7-D2; Fri, 08 Nov 2019 05:03:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwR1-0003oo-5I
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id e4so3315769pgs.1
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bsTc+iHwQu7ULyovGLpXTAQKUv5zvlRlmtswCuOhCXQ=;
 b=aLsuCDd/dU1dBeKrlzJbW8zxwugOY4sPr4Gw5/JZIAuuwaddCfkuYkLho5qYfpNEt/
 9kFdcpBel9cKGSruVOc3+ryJVVKFQKSNyvEmPP2ulyojO90spafV+HKqB+48XtLjkgZb
 VdxdTEbbZPUhIvgBVNqGrxWXaHxH7nin02kQCSmnSvbRm6PmD8EqbUv19nGgaWIVG7W3
 iDzOxQZc6COhAeKqxB1L35jhb8HxQ2n8+ranVOcB3JklV2XU3Mu4er7ywrK0wDd+BUyM
 7wa4B7KtuppjskWF2wMuPR3NROn0ADaM6vOwqY4gAa/PpdP1FVEWqolHZcKfGItr+QbY
 maxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bsTc+iHwQu7ULyovGLpXTAQKUv5zvlRlmtswCuOhCXQ=;
 b=laoWwtTSUgBjJP34jefBeK84YjZZl+kidZUvvti91Z2O7ZnEOgquGZ1aPIg2VK0WK8
 hsp43Sns1/y0rt8VodqMTuCiZ/wHYYfhD3b3//tMlNXMQMNG2gaGQOsqnH/r6FMhRdOS
 6Esw3E0VKmX+atcattVAerumo9Y9T40Xd6COo0AtKpujUWUCquHVkEpflw85fOw4q2Y0
 HErI6acUDLiZF4mN7KaH67KBNPSH2fmJWRJ7YDub0fXkPsuTs2DZ9Xy788ryHbsP6SZf
 4iXkrdxTZCbWTUMqapsnS38sq70PiwWKfNULlecjajPLgYg9P7rpkrVl8X8jsdNG6b1N
 NT7A==
X-Gm-Message-State: APjAAAW6eizbiePmL4LK2DJbTJ+EOw7Jt5itgfM4Pzjx12DT2a8ntoSV
 MA1CJ90eTtkHDQaSpMH4YyQ=
X-Google-Smtp-Source: APXvYqzFOpCl7Hl5U63BNr/DTFZmLmpbuaXf/XRMAn1HDnW6K0M1rZxSU+fBiQenHM93qgPEA6gr+A==
X-Received: by 2002:aa7:918e:: with SMTP id x14mr832736pfa.12.1573189424412;
 Thu, 07 Nov 2019 21:03:44 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id w24sm4249506pfn.136.2019.11.07.21.03.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:43 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 1F13C201ACFD6B; Fri,  8 Nov 2019 14:03:42 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 18/37] lkl tools: host lib: virtio block device
Date: Fri,  8 Nov 2019 14:02:33 +0900
Message-Id: <73d0e15d1429a089442c932d1b3fddc724a43bb6.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210347_217527_9454809A 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Host independent implementation for virtio block devices. The host
dependent part of the host library must provide an implementation for
lkl_dev_block_ops.

Disks can be added to the LKL configuration via lkl_disk_add(), a new
LKL application API.

Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Petros Angelatos <petrosagg@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/include/lkl.h      |  39 +++++++++++
 tools/lkl/include/lkl_host.h |  57 +++++++++++++++
 tools/lkl/lib/Build          |   1 +
 tools/lkl/lib/virtio_blk.c   | 132 +++++++++++++++++++++++++++++++++++
 4 files changed, 229 insertions(+)
 create mode 100644 tools/lkl/lib/virtio_blk.c

diff --git a/tools/lkl/include/lkl.h b/tools/lkl/include/lkl.h
index 76da534a85f1..967fbe4dbc26 100644
--- a/tools/lkl/include/lkl.h
+++ b/tools/lkl/include/lkl.h
@@ -350,6 +350,45 @@ const char *lkl_strerror(int err);
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
+ * @dev - a pointer to 'virtio_blk_dev' structure for this disk
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
+ * This function makes a cleanup of the @disk's virtio_dev structure
+ * that was initialized by lkl_disk_add before.
+ *
+ * @disk - the host disk handle
+ */
+int lkl_disk_remove(struct lkl_disk disk);
+
 
 #ifdef __cplusplus
 }
diff --git a/tools/lkl/include/lkl_host.h b/tools/lkl/include/lkl_host.h
index 81239e2b556f..a630efc95f0f 100644
--- a/tools/lkl/include/lkl_host.h
+++ b/tools/lkl/include/lkl_host.h
@@ -20,6 +20,63 @@ int lkl_printf(const char *fmt, ...);
 
 extern char lkl_virtio_devs[4096];
 
+#ifdef LKL_HOST_CONFIG_POSIX
+#include <sys/uio.h>
+#else
+struct iovec {
+	void *iov_base;
+	size_t iov_len;
+};
+#endif
+
+extern struct lkl_dev_blk_ops lkl_dev_blk_ops;
+
+/**
+ * struct lkl_blk_req - block device request
+ *
+ * @type: type of request
+ * @prio: priority of request - currently unused
+ * @sector: offset in units 512 bytes for read / write requests
+ * @buf: an array of buffers to be used for read / write requests
+ * @count: the number of buffers
+ */
+struct lkl_blk_req {
+#define LKL_DEV_BLK_TYPE_READ		0
+#define LKL_DEV_BLK_TYPE_WRITE		1
+#define LKL_DEV_BLK_TYPE_FLUSH		4
+#define LKL_DEV_BLK_TYPE_FLUSH_OUT	5
+	unsigned int type;
+	unsigned int prio;
+	unsigned long long sector;
+	struct iovec *buf;
+	int count;
+};
+
+/**
+ * struct lkl_dev_blk_ops - block device host operations
+ */
+struct lkl_dev_blk_ops {
+	/**
+	 * @get_capacity: returns the disk capacity in bytes
+	 *
+	 * @disk - the disk for which the capacity is requested;
+	 * @res - pointer to receive the capacity, in bytes;
+	 * @returns - 0 in case of success, negative value in case of error
+	 */
+	int (*get_capacity)(struct lkl_disk disk, unsigned long long *res);
+#define LKL_DEV_BLK_STATUS_OK		0
+#define LKL_DEV_BLK_STATUS_IOERR	1
+#define LKL_DEV_BLK_STATUS_UNSUP	2
+	/**
+	 * @request: issue a block request
+	 *
+	 * @disk - the disk the request is issued to;
+	 * @req - a request described by &struct lkl_blk_req
+	 */
+	int (*request)(struct lkl_disk disk, struct lkl_blk_req *req);
+};
+
+
 #ifdef __cplusplus
 }
 #endif
diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
index 5fd1843b51d1..d3154cfa4952 100644
--- a/tools/lkl/lib/Build
+++ b/tools/lkl/lib/Build
@@ -3,6 +3,7 @@ CFLAGS_config.o += -I$(srctree)/tools/perf/pmu-events
 liblkl-y += iomem.o
 liblkl-y += jmp_buf.o
 liblkl-y += utils.o
+liblkl-y += virtio_blk.o
 liblkl-y += virtio.o
 liblkl-y += dbg.o
 liblkl-y += dbg_handler.o
diff --git a/tools/lkl/lib/virtio_blk.c b/tools/lkl/lib/virtio_blk.c
new file mode 100644
index 000000000000..9e23316c5d99
--- /dev/null
+++ b/tools/lkl/lib/virtio_blk.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <lkl_host.h>
+#include "virtio.h"
+#include "endian.h"
+
+struct virtio_blk_dev {
+	struct virtio_dev dev;
+	struct lkl_virtio_blk_config config;
+	struct lkl_dev_blk_ops *ops;
+	struct lkl_disk disk;
+};
+
+struct virtio_blk_req_trailer {
+	uint8_t status;
+};
+
+static int blk_check_features(struct virtio_dev *dev)
+{
+	if (dev->driver_features == dev->device_features)
+		return 0;
+
+	return -LKL_EINVAL;
+}
+
+static int blk_enqueue(struct virtio_dev *dev, int q, struct virtio_req *req)
+{
+	struct virtio_blk_dev *blk_dev;
+	struct lkl_virtio_blk_outhdr *h;
+	struct virtio_blk_req_trailer *t;
+	struct lkl_blk_req lkl_req;
+
+	if (req->buf_count < 3) {
+		lkl_printf("virtio_blk: no status buf\n");
+		goto out;
+	}
+
+	h = req->buf[0].iov_base;
+	t = req->buf[req->buf_count - 1].iov_base;
+	blk_dev = container_of(dev, struct virtio_blk_dev, dev);
+
+	t->status = LKL_DEV_BLK_STATUS_IOERR;
+
+	if (req->buf[0].iov_len != sizeof(*h)) {
+		lkl_printf("virtio_blk: bad header buf\n");
+		goto out;
+	}
+
+	if (req->buf[req->buf_count - 1].iov_len != sizeof(*t)) {
+		lkl_printf("virtio_blk: bad status buf\n");
+		goto out;
+	}
+
+	lkl_req.type = le32toh(h->type);
+	lkl_req.prio = le32toh(h->ioprio);
+	lkl_req.sector = le32toh(h->sector);
+	lkl_req.buf = &req->buf[1];
+	lkl_req.count = req->buf_count - 2;
+
+	t->status = blk_dev->ops->request(blk_dev->disk, &lkl_req);
+
+out:
+	virtio_req_complete(req, 0);
+	return 0;
+}
+
+static struct virtio_dev_ops blk_ops = {
+	.check_features = blk_check_features,
+	.enqueue = blk_enqueue,
+};
+
+
+int lkl_disk_add(struct lkl_disk *disk)
+{
+	struct virtio_blk_dev *dev;
+	unsigned long long capacity;
+	int ret;
+
+	dev = lkl_host_ops.mem_alloc(sizeof(*dev));
+	if (!dev)
+		return -LKL_ENOMEM;
+
+	disk->dev = dev;
+
+	dev->dev.device_id = LKL_VIRTIO_ID_BLOCK;
+	dev->dev.vendor_id = 0;
+	dev->dev.device_features = 0;
+	dev->dev.config_gen = 0;
+	dev->dev.config_data = &dev->config;
+	dev->dev.config_len = sizeof(dev->config);
+	dev->dev.ops = &blk_ops;
+	if (disk->ops)
+		dev->ops = disk->ops;
+	else
+		dev->ops = &lkl_dev_blk_ops;
+	dev->disk = *disk;
+
+	ret = dev->ops->get_capacity(*disk, &capacity);
+	if (ret) {
+		ret = -LKL_ENOMEM;
+		goto out_free;
+	}
+	dev->config.capacity = capacity / 512;
+
+	ret = virtio_dev_setup(&dev->dev, 1, 32);
+	if (ret)
+		goto out_free;
+
+	return dev->dev.virtio_mmio_id;
+
+out_free:
+	lkl_host_ops.mem_free(dev);
+
+	return ret;
+}
+
+int lkl_disk_remove(struct lkl_disk disk)
+{
+	struct virtio_blk_dev *dev;
+	int ret;
+
+	dev = (struct virtio_blk_dev *)disk.dev;
+	if (!dev)
+		return -LKL_EINVAL;
+
+	ret = virtio_dev_cleanup(&dev->dev);
+	if (ret < 0)
+		return ret;
+
+	lkl_host_ops.mem_free(dev);
+
+	return 0;
+}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
