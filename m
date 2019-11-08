Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C30BF3F60
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3aklHnKqnzRnppCfn+fHa1MnQNj3UDBe7+YA4CGHvU=; b=F+3Etq9fYX6VaS
	K8Vh+Pu/4D23+QiYT49q24Jpj5YMf6xdy/Hj3xSZCllJtMsVAMZ8heyGC5dYbRovVmOS87N/2BoDS
	2jvUhNgwl77MDe5SwRaIjoKOIqmXJ49Z5WE02kgXhvDzktWFbamEvOQmzeoUrWSmI13s73zf/SLt3
	aWNwkNKQJXD7JSJNc1Dq1plfykLcpeBWDgAhn+263zOybFSglyx1a4K/raJU1eA5G7Y7qoTM32/UO
	1slPnYeXjtFE2JD2La1XwYAa8O9m04a+x4Nr/sJ0HCcbHipcuQe/69Mm2lWCMEjba/2TDhG28mlkz
	m22HrGG79fQcJRspBPnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRq-0004Dg-O9; Fri, 08 Nov 2019 05:04:38 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRo-0004Ca-3F
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:37 +0000
Received: by mail-pf1-x435.google.com with SMTP id n13so3893327pff.1
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ACZAISagAfe2iW/saInxEcZgIbF4droeT3JQrl85b5A=;
 b=HwF69RKSOrNIIBTWOYqaX/I6JyGp2lw0SzRtNC7HkzZ2GLHZQs1X/1kpTsfCyTRk+U
 ZoDI/E/IEFetTIGOzxNFasgB+9DVvw+51ddZXgbQTpFmc/bXvRtTdOd4T3djB2ra2uxS
 tA6SBekhYqtMUSrnzyZ5yIMNxY3QW5SbWYTia9CXczyzhoeFCYiMZ81SAIW0+pPQBGYg
 xmvcD9QbteMniuPs7nlsd8UqFiyf4HMk2RASS3r0tZtPXdBQkcC2FadlnTxt6RZ/Uu7f
 W3xwBzr5cOaHmObtxlXKdCalV8RkiByQlPN4cCW9T+d0iIF9AVdM6eCPO8cRhuWJtpDr
 p4mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ACZAISagAfe2iW/saInxEcZgIbF4droeT3JQrl85b5A=;
 b=HLuqXN+lFQW92V+0O/Sf+bkkWb/2ODKXgr/Q5BqHCxqeKCQZ8g4hLQFAD3cVcTxQgA
 EfJkN9cUsEU++E4VCHItwumvinGoa8JydTluPgzNu46wbOQYlEpBVZXNgSgYPA3pSwUG
 RJ+wlqZRdtZYc+f9gWn3jb22zwk7S1+7oC1hBZiAJ9vvIk8RM0GD9ycNirunstg2qtX+
 H1/1EfjxbuNXmMh3R/bHnh3UyBHwO2YKiuYaz8ZM4aKVX2YraTdRpOmyP/dABDVh40ga
 MZO0WbDiUvIwk+S6+zsUTTVel1I2zRktw8B9nNr6D2HP/X46AeJy4LdI25I1/Wzty9mO
 Z6Kw==
X-Gm-Message-State: APjAAAWuZ1gfn8NVVEDp3l4LSnPIHGOwlRS4fR6YP3m11W8u0sLJDhZN
 U/hjbuN2iKOGT/QylXQUErA=
X-Google-Smtp-Source: APXvYqyeoaGzCkkxAylnZHoTgcXpiKbJUWM2i1rI/cdQ82EUVJDSqfa5xgAFfmcyUpI7jCchTT3tng==
X-Received: by 2002:a62:1953:: with SMTP id 80mr9399812pfz.72.1573189475106;
 Thu, 07 Nov 2019 21:04:35 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id p5sm3708064pgb.14.2019.11.07.21.04.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:34 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 06501201ACFEFF; Fri,  8 Nov 2019 14:04:33 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 37/37] um: add lkl virtio-blk device
Date: Fri,  8 Nov 2019 14:02:52 +0900
Message-Id: <61b15bfb52c7f1f066685c90a1cfe8346b3faec9.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210436_186280_8EF9D7E5 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Now uml can use a virtio-blk device via 'vubd0=<filename>' over
virtio-mmio driver.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 .circleci/config.yml             |  4 ++-
 arch/um/configs/x86_64_defconfig |  1 +
 arch/um/os-Linux/lkl_dev.c       | 56 +++++++++++++++++++++++++++++++-
 tools/lkl/lib/Makefile           |  6 ++--
 4 files changed, 62 insertions(+), 5 deletions(-)

diff --git a/.circleci/config.yml b/.circleci/config.yml
index 9753543e8198..f2fe39fc2bee 100644
--- a/.circleci/config.yml
+++ b/.circleci/config.yml
@@ -141,7 +141,9 @@ do_uml_steps: &do_uml_steps
         if [ $CIRCLE_STAGE = "i386_uml" ] || [ $CIRCLE_STAGE = "i386_uml_on_x86_64" ]; then
           exit 0
         fi
-        ./linux rootfstype=hostfs ro mem=1g loglevel=10 veth0=tap,tap0,0xc803 init="/bin/bash -c exit" || export RETVAL=$?
+        dd if=/dev/zero of=disk.img bs=1024 count=20480
+        mkfs.ext4 disk.img
+        ./linux rootfstype=hostfs ro mem=1g loglevel=10 veth0=tap,tap0,0xc803 vubd0=disk.img init='/bin/bash -x -c "mount -t ext4 /dev/vda /mnt ; ls -l /mnt/; ip addr ; exit"' || export RETVAL=$?
         # SIGABRT=6 => 128+6
         if [ $RETVAL != "134" ]; then
           exit 1
diff --git a/arch/um/configs/x86_64_defconfig b/arch/um/configs/x86_64_defconfig
index 917982b6cd60..e5b7c048a701 100644
--- a/arch/um/configs/x86_64_defconfig
+++ b/arch/um/configs/x86_64_defconfig
@@ -75,3 +75,4 @@ CONFIG_VIRTIO_MENU=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES=y
 CONFIG_VIRTIO_NET=y
+CONFIG_VIRTIO_BLK=y
\ No newline at end of file
diff --git a/arch/um/os-Linux/lkl_dev.c b/arch/um/os-Linux/lkl_dev.c
index 698062917ed5..e08f113dfc0b 100644
--- a/arch/um/os-Linux/lkl_dev.c
+++ b/arch/um/os-Linux/lkl_dev.c
@@ -6,6 +6,7 @@
 #include <os.h>
 #include <kern_util.h>
 #include <errno.h>
+#include <fcntl.h>
 
 #include <lkl.h>
 #include <lkl_host.h>
@@ -14,6 +15,7 @@ extern struct lkl_host_operations lkl_host_ops;
 struct lkl_host_operations *lkl_ops = &lkl_host_ops;
 
 static struct lkl_netdev *nd;
+static struct lkl_disk disk;
 
 int __init uml_netdev_prepare(char *iftype, char *ifparams, char *ifoffload)
 {
@@ -108,13 +110,65 @@ __uml_setup("veth", lkl_eth_setup,
 "    Configure a network device.\n\n"
 );
 
+int __init uml_blkdev_add(void)
+{
+	int disk_id = 0;
+
+	if (disk.fd)
+		disk_id = lkl_disk_add(&disk);
+
+	if (disk_id < 0)
+		return -1;
+
+	return 0;
+}
+__initcall(uml_blkdev_add);
+
+static int __init lkl_ubd_setup(char *str, int *niu)
+{
+	char *end, *fname;
+	int devid, err = -EINVAL;
+
+	/* veth */
+	devid = strtoul(str, &end, 0);
+	if (end == str) {
+		os_warn("Bad device number\n");
+		return err;
+	}
+
+	/* = */
+	str = end;
+	if (*str != '=') {
+		os_warn("Expected '=' after device number\n");
+		return err;
+	}
+	str++;
+
+	/* <filename> */
+	fname = str;
+
+	os_info("fname=%s\n", fname);
+	/* create */
+	disk.fd = open(fname, O_RDWR);
+	if (disk.fd < 0)
+		return -1;
+
+	disk.ops = NULL;
+
+	return 1;
+}
+__uml_setup("vubd", lkl_ubd_setup,
+"vubd<n>=<filename>\n"
+"    Configure a block device.\n\n"
+);
+
+
 /* stub functions */
 int lkl_is_running(void)
 {
 	return 1;
 }
 
-
 void lkl_put_irq(int i, const char *user)
 {
 }
diff --git a/tools/lkl/lib/Makefile b/tools/lkl/lib/Makefile
index 3c35d49843cd..be6cb4b8f4ec 100644
--- a/tools/lkl/lib/Makefile
+++ b/tools/lkl/lib/Makefile
@@ -4,9 +4,9 @@ USER_CFLAGS += -I$(srctree)/tools/lkl/include \
 		-Wno-strict-prototypes -Wno-undef \
 		-Wframe-larger-than=20480 -O0 -g
 
-USER_OBJS += fs.o iomem.o net.o jmp_buf.o virtio.o virtio_net.o \
+USER_OBJS += iomem.o jmp_buf.o virtio.o virtio_net.o \
 	 virtio_net_fd.o virtio_net_tap.o utils.o posix-host.o \
-	../../perf/pmu-events/jsmn.o
+	 virtio_blk.o ../../perf/pmu-events/jsmn.o
 
 #obj-y += fs.o
 obj-y += iomem.o
@@ -15,7 +15,7 @@ obj-y += jmp_buf.o
 obj-y += posix-host.o
 #obj-$(LKL_HOST_CONFIG_NT) += nt-host.o
 obj-y += utils.o
-#obj-y += virtio_blk.o
+obj-y += virtio_blk.o
 obj-y += virtio.o
 #obj-y += dbg.o
 #obj-y += dbg_handler.o
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
