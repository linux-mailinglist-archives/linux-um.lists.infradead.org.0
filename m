Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D2CA22E1
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 19:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oA+i+ce1MZzEoc/0/mL6VioNEk1DAwml7iEajwNEKaM=; b=JsKhkwoB+id529
	xheIj9VE+RONMtduYg/IOnWPpJ0WzDKlWzPLNXgc24FWIY7wTPM8mWQeX8P2dFVwRm6Bmibqtnr54
	S1xVh5xvQmA+Io5lPuqFwu8NjD5WnSAIOdIR1VVweqE/dnUmYnw8CynlbBpfWpRiyf3ea89k6iCJp
	+k6QHgxsOTwDnc8rfZhnDNfr/PxoLD1+eKlbOWXS6SQ3aKEhbJrFImC3Uh7TbTyPzSC3c4Y1AwvHz
	7Kzwj4exSvxmzJwq0NYz7Ey5OC1OYEqIfHHkHCS2ZJQeHeY09mcXIl1GyQz58Y9wRkCPtunk53lxZ
	7YSDbJ134ZFTqXcc2UaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OfP-0000MR-5U; Thu, 29 Aug 2019 17:57:03 +0000
Received: from mx1.volatile.bz ([185.163.46.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OfL-0000LA-86
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 17:57:01 +0000
Received: from TheDarkness.local (unknown
 [IPv6:2600:6c5d:4200:1e2a:a077:9bc9:2f0:8eb9])
 by mx1.volatile.bz (Postfix) with ESMTPSA id A30B42F34;
 Thu, 29 Aug 2019 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=volatile.bz;
 s=default; t=1567101414;
 bh=TEWcbAlm2UjnFQK+aaxw5sPR7+UKUas7W4quSa0bVyg=;
 h=Date:From:To:Cc:Subject;
 b=LpsjOlfYSUTnPPk7tejawmt2XKvmYn0CHGylfXGX6aEW/7t7rPwRQ5HgYm4fyd6f8
 ZQzudUx0ziBJaDiUU2I1fnrUgbwHPeB9HGLdDeOibF+RxA8DFHRCKDm0uz0Y1ThVRe
 3irfdD68nxKdk+RwhF29HU8EK5R4yLsS8p2G0eHI=
Date: Thu, 29 Aug 2019 13:56:48 -0400
From: Alexander Neville <dark@volatile.bz>
To: LKML <linux-kernel@vger.kernel.org>, linux-um@lists.infradead.org
Subject: [PATCH v2] um: Rewrite host RNG driver.
Message-ID: <20190829135001.6a5ff940@TheDarkness.local>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_105659_659940_393F3301 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.163.46.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The old driver had a bug that would cause it to outright stop working if
the host's /dev/random were to block. Instead of trying to track down
the cause of said bug, rewriting it from scratch turned out to be a much
better option as it came with a few benefits:

 - The new driver uses the hw_random framework.

 - The code is simpler and therefore easier to maintain.

 - It serves as a minimal example of writing a hardware RNG driver.

I also edited the Kconfig symbol to bring it up to more modern
standards.

Signed-off-by: Alexander Neville <dark@volatile.bz>
---
v2:
* fix -EAGAIN handling

---
 arch/um/drivers/Makefile       |   3 +-
 arch/um/drivers/random.c       | 199 +++++++++------------------------
 drivers/char/hw_random/Kconfig |  21 ++--
 3 files changed, 66 insertions(+), 157 deletions(-)

diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
index 693319839f69..29b0364f267d 100644
--- a/arch/um/drivers/Makefile
+++ b/arch/um/drivers/Makefile
@@ -17,6 +17,7 @@ hostaudio-objs := hostaudio_kern.o
 ubd-objs := ubd_kern.o ubd_user.o
 port-objs := port_kern.o port_user.o
 harddog-objs := harddog_kern.o harddog_user.o
+uml-rng-objs := random.o
 
 LDFLAGS_pcap.o := -r $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
 
@@ -60,7 +61,7 @@ obj-$(CONFIG_TTY_CHAN) += tty.o
 obj-$(CONFIG_XTERM_CHAN) += xterm.o xterm_kern.o
 obj-$(CONFIG_UML_WATCHDOG) += harddog.o
 obj-$(CONFIG_BLK_DEV_COW_COMMON) += cow_user.o
-obj-$(CONFIG_UML_RANDOM) += random.o
+obj-$(CONFIG_UML_RANDOM) += uml-rng.o
 
 # pcap_user.o must be added explicitly.
 USER_OBJS := fd.o null.o pty.o tty.o xterm.o slip_common.o pcap_user.o vde_user.o vector_user.o
diff --git a/arch/um/drivers/random.c b/arch/um/drivers/random.c
index 1d5d3057e6f1..cb8eb026df9c 100644
--- a/arch/um/drivers/random.c
+++ b/arch/um/drivers/random.c
@@ -1,175 +1,82 @@
-/* Copyright (C) 2005 - 2008 Jeff Dike <jdike@{linux.intel,addtoit}.com> */
-
-/* Much of this ripped from drivers/char/hw_random.c, see there for other
- * copyright.
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * UML Host RNG Driver
+ *
+ * (c) Copright 2019 Alexander Neville <dark@volatile.bz>
  *
- * This software may be used and distributed according to the terms
- * of the GNU General Public License, incorporated herein by reference.
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
  */
-#include <linux/sched/signal.h>
+
+#include <linux/errno.h>
+#include <linux/fcntl.h>
+#include <linux/hw_random.h>
+#include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/fs.h>
-#include <linux/interrupt.h>
-#include <linux/miscdevice.h>
-#include <linux/delay.h>
-#include <linux/uaccess.h>
-#include <init.h>
-#include <irq_kern.h>
+#include <linux/types.h>
 #include <os.h>
 
-/*
- * core module and version information
- */
-#define RNG_VERSION "1.0.0"
-#define RNG_MODULE_NAME "hw_random"
-
-#define RNG_MISCDEV_MINOR		183 /* official */
-
-/* Changed at init time, in the non-modular case, and at module load
- * time, in the module case.  Presumably, the module subsystem
- * protects against a module being loaded twice at the same time.
- */
-static int random_fd = -1;
-static DECLARE_WAIT_QUEUE_HEAD(host_read_wait);
-
-static int rng_dev_open (struct inode *inode, struct file *filp)
+static int uml_rng_read(struct hwrng *rng, void *data, size_t bufsize,
+			bool wait)
 {
-	/* enforce read-only access to this chrdev */
-	if ((filp->f_mode & FMODE_READ) == 0)
-		return -EINVAL;
-	if ((filp->f_mode & FMODE_WRITE) != 0)
-		return -EINVAL;
+	int err = os_read_file(rng->priv, data, bufsize);
 
-	return 0;
-}
+	// Returning -EAGAIN to userspace is not nice.
+	if (err == -EAGAIN)
+		return 0;
 
-static atomic_t host_sleep_count = ATOMIC_INIT(0);
+	return err;
+}
 
-static ssize_t rng_dev_read (struct file *filp, char __user *buf, size_t size,
-			     loff_t *offp)
+static int uml_rng_init(struct hwrng *rng)
 {
-	u32 data;
-	int n, ret = 0, have_data;
-
-	while (size) {
-		n = os_read_file(random_fd, &data, sizeof(data));
-		if (n > 0) {
-			have_data = n;
-			while (have_data && size) {
-				if (put_user((u8) data, buf++)) {
-					ret = ret ? : -EFAULT;
-					break;
-				}
-				size--;
-				ret++;
-				have_data--;
-				data >>= 8;
-			}
-		}
-		else if (n == -EAGAIN) {
-			DECLARE_WAITQUEUE(wait, current);
-
-			if (filp->f_flags & O_NONBLOCK)
-				return ret ? : -EAGAIN;
-
-			atomic_inc(&host_sleep_count);
-			add_sigio_fd(random_fd);
-
-			add_wait_queue(&host_read_wait, &wait);
-			set_current_state(TASK_INTERRUPTIBLE);
-
-			schedule();
-			remove_wait_queue(&host_read_wait, &wait);
-
-			if (atomic_dec_and_test(&host_sleep_count)) {
-				ignore_sigio_fd(random_fd);
-				deactivate_fd(random_fd, RANDOM_IRQ);
-			}
-		}
-		else
-			return n;
-
-		if (signal_pending (current))
-			return ret ? : -ERESTARTSYS;
+	int fd = os_open_file("/dev/random", of_read(OPENFLAGS()), O_NONBLOCK);
+
+	if (fd < 0) {
+		pr_debug("uml-rng: failed to open /dev/random");
+		return fd;
 	}
-	return ret;
-}
 
-static const struct file_operations rng_chrdev_ops = {
-	.owner		= THIS_MODULE,
-	.open		= rng_dev_open,
-	.read		= rng_dev_read,
-	.llseek		= noop_llseek,
-};
+	int err = os_set_fd_async(fd);
 
-/* rng_init shouldn't be called more than once at boot time */
-static struct miscdevice rng_miscdev = {
-	RNG_MISCDEV_MINOR,
-	RNG_MODULE_NAME,
-	&rng_chrdev_ops,
-};
+	if (err < 0) {
+		os_close_file(fd);
+		return err;
+	}
 
-static irqreturn_t random_interrupt(int irq, void *data)
-{
-	wake_up(&host_read_wait);
+	rng->priv = fd;
 
-	return IRQ_HANDLED;
+	return 0;
 }
 
-/*
- * rng_init - initialize RNG module
- */
-static int __init rng_init (void)
+static void uml_rng_cleanup(struct hwrng *rng)
 {
-	int err;
-
-	err = os_open_file("/dev/random", of_read(OPENFLAGS()), 0);
-	if (err < 0)
-		goto out;
-
-	random_fd = err;
-
-	err = um_request_irq(RANDOM_IRQ, random_fd, IRQ_READ, random_interrupt,
-			     0, "random", NULL);
-	if (err)
-		goto err_out_cleanup_hw;
-
-	sigio_broken(random_fd, 1);
-
-	err = misc_register (&rng_miscdev);
-	if (err) {
-		printk (KERN_ERR RNG_MODULE_NAME ": misc device register "
-			"failed\n");
-		goto err_out_cleanup_hw;
-	}
-out:
-	return err;
-
-err_out_cleanup_hw:
-	os_close_file(random_fd);
-	random_fd = -1;
-	goto out;
+	os_close_file(rng->priv);
 }
 
-/*
- * rng_cleanup - shutdown RNG module
- */
 
-static void cleanup(void)
+static struct hwrng uml_rng_ops = {
+	.name		= "uml-rng",
+	.init		= uml_rng_init,
+	.cleanup	= uml_rng_cleanup,
+	.read		= uml_rng_read,
+	.quality	= 1024
+};
+
+static int __init uml_rng_mod_init(void)
 {
-	free_irq_by_fd(random_fd);
-	os_close_file(random_fd);
+	return hwrng_register(&uml_rng_ops);
 }
 
-static void __exit rng_cleanup(void)
+static void __exit uml_rng_mod_exit(void)
 {
-	os_close_file(random_fd);
-	misc_deregister (&rng_miscdev);
+	hwrng_unregister(&uml_rng_ops);
 }
 
-module_init (rng_init);
-module_exit (rng_cleanup);
-__uml_exitcall(cleanup);
+module_init(uml_rng_mod_init);
+module_exit(uml_rng_mod_exit);
 
-MODULE_DESCRIPTION("UML Host Random Number Generator (RNG) driver");
+MODULE_AUTHOR("Alexander Neville <dark@volatile.bz>");
+MODULE_DESCRIPTION("UML Host RNG Driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 59f25286befe..a0781f74d4e4 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -440,22 +440,23 @@ config HW_RANDOM_OPTEE
 
 	  If unsure, say Y.
 
-endif # HW_RANDOM
-
 config UML_RANDOM
+	tristate "UML Host Random Number Generator Support"
 	depends on UML
-	tristate "Hardware random number generator"
+	default HW_RANDOM
 	help
 	  This option enables UML's "hardware" random number generator.  It
 	  attaches itself to the host's /dev/random, supplying as much entropy
 	  as the host has, rather than the small amount the UML gets from its
-	  own drivers.  It registers itself as a standard hardware random number
-	  generator, major 10, minor 183, and the canonical device name is
-	  /dev/hwrng.
-	  The way to make use of this is to install the rng-tools package
-	  (check your distro, or download from
-	  http://sourceforge.net/projects/gkernel/).  rngd periodically reads
-	  /dev/hwrng and injects the entropy into /dev/random.
+	  own drivers.
+
+	  To compile this driver as a moudle, choose M here: the module
+	  will be called uml-rng.
+
+	  If unsure, say Y.
+
+endif # HW_RANDOM
+
 
 config HW_RANDOM_KEYSTONE
 	depends on ARCH_KEYSTONE
-- 
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
