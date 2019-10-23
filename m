Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E39E116B
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v06S2AsjtX94bOriqSDGnS/mOzVFrxR1r1bK1p3CaI4=; b=eTS3rCVctqN4EW
	xMP5X5IW0m+nYVO/ftW6De24ND3Qfr6wDhSgKrixFjds3JqjH5mBUdd2Tjjs6NF1mtlH/dBROTLcd
	6kAn5PO0Mnl44JRYbjkot6Jh6FjwC5j2fuUnLuEeatQ8R0ZWf3re+QG8ACjm7xxZtzxkPoYAjmBF1
	it82/Gpfg3pl9zezLCNq4kVoYbpqv0kJGQv1Ml2f2L4qpapheyBZaXkSt4BiQZXWEbRzHCYxRYxlm
	Jk2+Pf+AIBq1hiQqWCDkcLWILSN8lg/ge17d1JbU0Vu9L6gxJaTCrb/6CKyMgUXltPg1RopGgCcP6
	Wt1/OFACAs3lNnj+76EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8ky-0002Hr-HU; Wed, 23 Oct 2019 05:00:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8km-00027z-9W
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id b128so12136770pfa.1
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fNnEkRiIRAs9vWMpAb3jyK1wvlRjtKoqD3bWeY4/9WA=;
 b=P1FkNWWjAxowygA5jZovJIKilYtckCGznGACtzb85Se4r59puFBjXPxVtMVkwRILkU
 9euMJq0V9wkQs9ogofFTJ8dKAtmyvdi/X1aHkphlOPgsLpxAH+o+Ef/gfZO5kbX2WbI7
 7FNUl6g+ET7ExEFLUnor20eoqXYwg0g2zwrdXCuxIXVOUuZG/yqemRunmY0su4nxDTeO
 lrf7ITTzleSSs1U7ZpjUJwas/xp1wws/khIRKIMrbYU5mgp4vAMmLcPsXDF6J8i674q2
 TLwTSsfZeoRuL26Y7IlwS5pcHG+6zXFD/Mmpa3lB3Y/BP7AAvwLEIPs5cKESFQoKhfEK
 5ung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fNnEkRiIRAs9vWMpAb3jyK1wvlRjtKoqD3bWeY4/9WA=;
 b=o6WWlOpSiGx4KOnUn+9HOE95u1cGUHpGyFpN/46+FI+KgjmkuyJaTYySuyJv6+a3j7
 5TX8Pm42+Ny0carZWJtwLZTPU40qAJkU0CDkauSMglMgqvBiXC9hVAI3dRFgchn0lAga
 CxSg+trTryDW8OFZdMvWK18SZ9udvHzVNWv1TwVg/DFgndgNeox57K3gcsLMxtQEbR++
 oxXaIRtoHw3Eqp5ueUkFsD8lLAZW3V3CRcKKWnctt40NKMN6CGkaiHVG2eQqgMemwBFs
 g+DDNBmSN6wqhNO7mC91fcp5iPPJW1KVO2nFiI2O4e3BH6HrKuCiu4k391jMCYUpNBMt
 l/Qw==
X-Gm-Message-State: APjAAAVg0TmvvXnfXyUzGxcEWdN44CoSKzAi99vALlbFtTMFRq5In3JL
 cwwKQvhpnndqTvE5HXhmoqKMNpjq58XAaw==
X-Google-Smtp-Source: APXvYqzZlp7lx3qbNVyNzDuiQwo1c2Sj9bmBOW7mmCRLUMHcJN2StsvSkeBmTclE8sM0yE8W/cZj0g==
X-Received: by 2002:a63:5b56:: with SMTP id l22mr7988383pgm.52.1571806811330; 
 Tue, 22 Oct 2019 22:00:11 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 22sm21588990pfo.131.2019.10.22.22.00.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:08 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id AA736201995850; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 47/47] um: add lkl virtio-blk device
Date: Wed, 23 Oct 2019 13:38:21 +0900
Message-Id: <d380ec02dd0cd97afe08706093b59329e6b09fe2.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220012_400525_91E4AC49 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
index cec55ad93dc6..266ed58b6fd7 100644
--- a/.circleci/config.yml
+++ b/.circleci/config.yml
@@ -135,7 +135,9 @@ do_uml_steps: &do_uml_steps
   - run:
       name: test
       command: |
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
index 8dc0009c680e..3cee5b0133b1 100644
--- a/tools/lkl/lib/Makefile
+++ b/tools/lkl/lib/Makefile
@@ -3,9 +3,9 @@ USER_CFLAGS += -I$(srctree)/tools/lkl/include \
 		-Wno-strict-prototypes -Wno-undef \
 		-Wframe-larger-than=20480 -O0 -g
 
-USER_OBJS += fs.o iomem.o net.o jmp_buf.o virtio.o virtio_net.o \
+USER_OBJS += iomem.o jmp_buf.o virtio.o virtio_net.o \
 	 virtio_net_fd.o virtio_net_tap.o utils.o posix-host.o \
-	../../perf/pmu-events/jsmn.o
+	 virtio_blk.o ../../perf/pmu-events/jsmn.o
 
 #obj-y += fs.o
 obj-y += iomem.o
@@ -14,7 +14,7 @@ obj-y += jmp_buf.o
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
