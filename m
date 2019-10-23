Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB0AE1111
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lQP1M0GXpmde7Pg5ZOFGR57GT6r2ELajLMsliU3AgQ=; b=s6b51k/HG9dmdU
	v0wV7MYQiT1OGni+pOpt1Lh8hPvZ14U+E/FxHbBEmDRQluaJ5rB5nB7fBJPSWqHD+Bh9i4H6iRBI/
	gSD707RU8IhSz047PzLzg7LdVRdOrJ2pbKT8fmxpJ/62LGEU3Lb63vcLu32F8kzJHqTHJOb5mMVAO
	zp4Wt3AWK3fSeS9zCXDO2yc3W1eV1OMCv585RgUmanTGTLi3asdcq3ELpPi/MWReP5i1j1Xu8c3NV
	Lzq76yNQZNbhDjfa2MpFyUOZbFkTkfUT98bW1FFeQJkCcxCxPnlHYC8dC20O4l8dKJ/h/nXkW31br
	2vwgTDnlpH7FSeJR5UAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QU-0001yE-Uv; Wed, 23 Oct 2019 04:39:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QJ-0001nk-Pu
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id w8so9451717plq.5
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qhWhGG+TLFZpp/+GBJYp2BBwcvLNOEgtmaAWxmIxxBI=;
 b=F1Z6x9KGTyGVoQqxuK1CFrJhxYyC18sgutheh6FsGpqMSndjkBUUlbQ5uRVF69UpMA
 2eMloFnHrjD8bHSFDLjw28nE3fgds/LTJZP/9CKAUT5ct4AiKmDYA5CkMYoJeG25C0fe
 ZJJ2a3tIL1HLOG4D0zGZvFXeg8N/1z2KZ+xR+PP7moyNBcrBaXUzfWS7mpfw4887HPsB
 +Q3GsIitEahcM9zkl4qNvfErwh4yfCopuP2Nt7suAMUX9wwYigLco4DceGbq9JiKNkCD
 X6dgvVyfzXMa2Iqn6HbXK1utyBBDBUNG48z6CoY32AlUFW92UVp85JxX3R+xP8adX22u
 sw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qhWhGG+TLFZpp/+GBJYp2BBwcvLNOEgtmaAWxmIxxBI=;
 b=fTsce3flgvFZevP21ah2vyW5PwsGYhoq0MHwuIQk2U5EEdAdEmPbVbz40IT3WYI1sA
 D57qiUb4Qd+ze7V5Wr5IghbNYI5XSMtteRQZCn+P+mMCA7IybisJE/IPEcHWsRrtqHp3
 9kw8oeEEmoVDMrlH8m9U2Mv41MAKKKyExX3DaLuCnKyxONzKESEn5C7eBTAZF+9cArTj
 ozPhgDnjRobsr43Jv822TGrAnqznHx1yXkcnSdRHpjZz5NPz1q0vIVM9b9trlzq3LnKo
 GvqyJSlJRgLpbREdyEQiTcMNy6PFBuOZ51ZC4wonFGK4eA6VA+F5iL8Pub9EqiB1LckX
 pfvA==
X-Gm-Message-State: APjAAAXLGzNKnki8NxrqGPcvRNpfCjONUg1zEKHafzcC163NqxUs7eOT
 s/ad3v++gx/3XT9go0G6X7QFVE1mCck44w==
X-Google-Smtp-Source: APXvYqzsBvi0W5miMAT0mMlOdgI1mYpROSIwMt1oosHJvFORanvNFUK4VCA3toi/a+SW7DO3CD/OOg==
X-Received: by 2002:a17:902:b58e:: with SMTP id
 a14mr7599330pls.0.1571805543001; 
 Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id z18sm21967583pgv.90.2019.10.22.21.39.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:01 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id B55FF201995816; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 18/47] lkl tools: host lib: virtio block device
Date: Wed, 23 Oct 2019 13:37:52 +0900
Message-Id: <5064a00a901f01008dd216e7a6cf86a179d3ce77.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213903_855888_C4C26387 
X-CRM114-Status: GOOD (  13.99  )
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
 Petros Angelatos <petrosagg@gmail.com>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
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
 tools/lkl/lib/virtio_blk.c | 132 +++++++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 tools/lkl/lib/virtio_blk.c

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
