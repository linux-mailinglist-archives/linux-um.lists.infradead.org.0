Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA645121054
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 18:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eL4x+y1jmugVI9hFNex0z/zDtuvXgEQhJp9iQ4E8EuQ=; b=pFYUoP0DSnQ6xX
	4mXOJ5yKGCGbMqbuBtamuPXQlgMOcB8ZhHq4B5pIKlnxZaTHLjDUeurgKh1mMV3pMHNQ+1qtnCQBi
	x9qwUYoNJuhNGdORR9+i8v55j+r0/RUJx2JOmzdL6KkDluc1e6FcX2YktHSxQWhhXdvMDZtNqyLvD
	vDKj95KZuXjSvsMi85eRN0GfjAS6jLlOYKplPWUYD32dJtA8u3p7vFOiBPM1+l8oIR7CMAFhFWNxw
	FMA8pngu8dMve4UYtuznm/BgheTv7o6C0Y0VAKTFlg54CMi65h9R1e+H2KHf+mk8dkV2Q6gyXgBQx
	B6VeonSyk5skas0JgtUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtmX-0001fA-1P; Mon, 16 Dec 2019 17:03:41 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtmT-0001cr-QS
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 17:03:39 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmS-00011G-EF; Mon, 16 Dec 2019 17:03:36 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1igtmP-0003g4-7O; Mon, 16 Dec 2019 17:03:35 +0000
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH v3 6/6] um: Migrate tap to vector IO
Date: Mon, 16 Dec 2019 17:03:21 +0000
Message-Id: <20191216170321.14056-6-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
References: <20191216170321.14056-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_090337_988114_29FDA6F9 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: richard@nod.at, brendanhiggins@google.com,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/Kconfig                |   4 +-
 arch/um/drivers/net_kern.c             |   8 +-
 arch/um/drivers/vector_kern.c          |  26 +++
 arch/um/os-Linux/drivers/Makefile      |   2 -
 arch/um/os-Linux/drivers/tuntap.h      |  21 ---
 arch/um/os-Linux/drivers/tuntap_kern.c |  86 ----------
 arch/um/os-Linux/drivers/tuntap_user.c | 215 -------------------------
 7 files changed, 31 insertions(+), 331 deletions(-)
 delete mode 100644 arch/um/os-Linux/drivers/tuntap.h
 delete mode 100644 arch/um/os-Linux/drivers/tuntap_kern.c
 delete mode 100644 arch/um/os-Linux/drivers/tuntap_user.c

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index a84b806212a3..74b76ac0a2fe 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -178,9 +178,7 @@ config UML_NET_TUNTAP
 	depends on UML_NET
 	help
 	  The UML TUN/TAP network transport allows a UML instance to exchange
-	  packets with the host over a TUN/TAP device.  This option will only
-	  work with a 2.4 host, unless you've applied the TUN/TAP patch to
-	  your 2.2 host kernel.
+	  packets with the host over a TUN/TAP device. 
 
 	  To use this transport, your host kernel must have support for TUN/TAP
 	  devices, either built-in or as a module.
diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
index 7df7344f2194..21de09942ea6 100644
--- a/arch/um/drivers/net_kern.c
+++ b/arch/um/drivers/net_kern.c
@@ -42,8 +42,8 @@ static DEFINE_SPINLOCK(drop_lock);
 static struct sk_buff *drop_skb;
 static int drop_max;
 
-static const char *migrated_to_vector = {"pcap"};
-#define MAX_MIGRATED 1
+static const char *migrated_to_vector[] = {"pcap", "ucast", "mcast", "tuntap"};
+#define MAX_MIGRATED 4
 
 static int update_drop_skb(int max)
 {
@@ -593,7 +593,7 @@ static int register_compat(void)
 	list_for_each_safe(ele, next, &eth_cmd_line) {
 		eth = list_entry(ele, struct eth_init, list);
 		for (compat = 0; compat < MAX_MIGRATED; compat++) {
-			if (strncmp(eth->init, &migrated_to_vector[compat], strlen(&migrated_to_vector[compat])) == 0) {
+			if (strncmp(eth->init, migrated_to_vector[compat], strlen(migrated_to_vector[compat])) == 0) {
 				vector_compat_eth_configure(eth->init, eth->index);
 				list_del(&eth->list);
 				continue;
@@ -642,7 +642,7 @@ static int eth_setup_common(char *str, int index)
 	int found = 0, compat;
 
 	for (compat = 0; compat < MAX_MIGRATED; compat++) {
-		if (strncmp(str, &migrated_to_vector[compat], strlen(&migrated_to_vector[compat])) == 0)
+		if (strncmp(str, migrated_to_vector[compat], strlen(migrated_to_vector[compat])) == 0)
 			return vector_compat_eth_configure(str, index);
 	}
 
diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index d52c24874f2a..224db8833b8e 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1708,6 +1708,32 @@ int vector_compat_eth_configure(char *str, int index)
 		kfree(newargs);
 		return -ENOMEM;
 	}
+#ifdef CONFIG_UML_NET_TUNTAP
+	if (strncmp(str, "tuntap", strlen("tuntap")) == 0) {
+		char *ifname = NULL, *script = NULL, *gateway = NULL, *transport = NULL, *mac = NULL;
+
+		remain = split_if_spec(str, &transport, &ifname, &script, &gateway, &mac, NULL);
+
+		if ((mac != NULL) && strlen(mac) > 0)
+			snprintf(tempargs, MAX_COMPAT_ARG, "transport=tap,gro=1,mac=%s", mac);
+		else
+			snprintf(tempargs, MAX_COMPAT_ARG, "transport=tap,gro=1");
+
+		strcpy(newargs, tempargs);
+
+		if (ifname != NULL) {
+			snprintf(tempargs, MAX_COMPAT_ARG, "%s,ifname=%s", newargs, ifname);
+			strcpy(newargs, tempargs);
+		}
+
+		if (script != NULL) {
+			snprintf(tempargs, MAX_COMPAT_ARG, "%s,script=%s", newargs, script);
+			strcpy(newargs, tempargs);
+		}
+
+		do_compat = 1;
+	}
+#endif
 #ifdef CONFIG_UML_NET_PCAP
 	if (strncmp(str, "pcap", strlen("pcap")) == 0) {
 		char *ifname = NULL, *filter = NULL, *transport = NULL, *mac = NULL;
diff --git a/arch/um/os-Linux/drivers/Makefile b/arch/um/os-Linux/drivers/Makefile
index d79e75f1b69a..924c42641170 100644
--- a/arch/um/os-Linux/drivers/Makefile
+++ b/arch/um/os-Linux/drivers/Makefile
@@ -4,10 +4,8 @@
 #
 
 ethertap-objs := ethertap_kern.o ethertap_user.o
-tuntap-objs := tuntap_kern.o tuntap_user.o
 
 obj-y = 
 obj-$(CONFIG_UML_NET_ETHERTAP) += ethertap.o
-obj-$(CONFIG_UML_NET_TUNTAP) += tuntap.o
 
 include arch/um/scripts/Makefile.rules
diff --git a/arch/um/os-Linux/drivers/tuntap.h b/arch/um/os-Linux/drivers/tuntap.h
deleted file mode 100644
index e364e42abfc5..000000000000
--- a/arch/um/os-Linux/drivers/tuntap.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* 
- * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- */
-
-#ifndef __UM_TUNTAP_H
-#define __UM_TUNTAP_H
-
-#include <net_user.h>
-
-struct tuntap_data {
-	char *dev_name;
-	int fixed_config;
-	char *gate_addr;
-	int fd;
-	void *dev;
-};
-
-extern const struct net_user_info tuntap_user_info;
-
-#endif
diff --git a/arch/um/os-Linux/drivers/tuntap_kern.c b/arch/um/os-Linux/drivers/tuntap_kern.c
deleted file mode 100644
index adcb6717be6f..000000000000
--- a/arch/um/os-Linux/drivers/tuntap_kern.c
+++ /dev/null
@@ -1,86 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- */
-
-#include <linux/netdevice.h>
-#include <linux/init.h>
-#include <linux/skbuff.h>
-#include <asm/errno.h>
-#include <net_kern.h>
-#include "tuntap.h"
-
-struct tuntap_init {
-	char *dev_name;
-	char *gate_addr;
-};
-
-static void tuntap_init(struct net_device *dev, void *data)
-{
-	struct uml_net_private *pri;
-	struct tuntap_data *tpri;
-	struct tuntap_init *init = data;
-
-	pri = netdev_priv(dev);
-	tpri = (struct tuntap_data *) pri->user;
-	tpri->dev_name = init->dev_name;
-	tpri->fixed_config = (init->dev_name != NULL);
-	tpri->gate_addr = init->gate_addr;
-	tpri->fd = -1;
-	tpri->dev = dev;
-
-	printk(KERN_INFO "TUN/TAP backend - ");
-	if (tpri->gate_addr != NULL)
-		printk(KERN_CONT "IP = %s", tpri->gate_addr);
-	printk(KERN_CONT "\n");
-}
-
-static int tuntap_read(int fd, struct sk_buff *skb, struct uml_net_private *lp)
-{
-	return net_read(fd, skb_mac_header(skb),
-			skb->dev->mtu + ETH_HEADER_OTHER);
-}
-
-static int tuntap_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
-{
-	return net_write(fd, skb->data, skb->len);
-}
-
-const struct net_kern_info tuntap_kern_info = {
-	.init			= tuntap_init,
-	.protocol		= eth_protocol,
-	.read			= tuntap_read,
-	.write 			= tuntap_write,
-};
-
-int tuntap_setup(char *str, char **mac_out, void *data)
-{
-	struct tuntap_init *init = data;
-
-	*init = ((struct tuntap_init)
-		{ .dev_name 	= NULL,
-		  .gate_addr 	= NULL });
-	if (tap_setup_common(str, "tuntap", &init->dev_name, mac_out,
-			    &init->gate_addr))
-		return 0;
-
-	return 1;
-}
-
-static struct transport tuntap_transport = {
-	.list 		= LIST_HEAD_INIT(tuntap_transport.list),
-	.name 		= "tuntap",
-	.setup  	= tuntap_setup,
-	.user 		= &tuntap_user_info,
-	.kern 		= &tuntap_kern_info,
-	.private_size 	= sizeof(struct tuntap_data),
-	.setup_size 	= sizeof(struct tuntap_init),
-};
-
-static int register_tuntap(void)
-{
-	register_transport(&tuntap_transport);
-	return 0;
-}
-
-late_initcall(register_tuntap);
diff --git a/arch/um/os-Linux/drivers/tuntap_user.c b/arch/um/os-Linux/drivers/tuntap_user.c
deleted file mode 100644
index 53eb3d508645..000000000000
--- a/arch/um/os-Linux/drivers/tuntap_user.c
+++ /dev/null
@@ -1,215 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* 
- * Copyright (C) 2001 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
- */
-
-#include <stdio.h>
-#include <unistd.h>
-#include <errno.h>
-#include <string.h>
-#include <linux/if_tun.h>
-#include <net/if.h>
-#include <sys/ioctl.h>
-#include <sys/socket.h>
-#include <sys/wait.h>
-#include <sys/uio.h>
-#include <kern_util.h>
-#include <os.h>
-#include "tuntap.h"
-
-static int tuntap_user_init(void *data, void *dev)
-{
-	struct tuntap_data *pri = data;
-
-	pri->dev = dev;
-	return 0;
-}
-
-static void tuntap_add_addr(unsigned char *addr, unsigned char *netmask,
-			    void *data)
-{
-	struct tuntap_data *pri = data;
-
-	tap_check_ips(pri->gate_addr, addr);
-	if ((pri->fd == -1) || pri->fixed_config)
-		return;
-	open_addr(addr, netmask, pri->dev_name);
-}
-
-static void tuntap_del_addr(unsigned char *addr, unsigned char *netmask,
-			    void *data)
-{
-	struct tuntap_data *pri = data;
-
-	if ((pri->fd == -1) || pri->fixed_config)
-		return;
-	close_addr(addr, netmask, pri->dev_name);
-}
-
-struct tuntap_pre_exec_data {
-	int stdout_fd;
-	int close_me;
-};
-
-static void tuntap_pre_exec(void *arg)
-{
-	struct tuntap_pre_exec_data *data = arg;
-
-	dup2(data->stdout_fd, 1);
-	close(data->close_me);
-}
-
-static int tuntap_open_tramp(char *gate, int *fd_out, int me, int remote,
-			     char *buffer, int buffer_len, int *used_out)
-{
-	struct tuntap_pre_exec_data data;
-	char version_buf[sizeof("nnnnn\0")];
-	char *argv[] = { "uml_net", version_buf, "tuntap", "up", gate,
-			 NULL };
-	char buf[CMSG_SPACE(sizeof(*fd_out))];
-	struct msghdr msg;
-	struct cmsghdr *cmsg;
-	struct iovec iov;
-	int pid, n, err;
-
-	sprintf(version_buf, "%d", UML_NET_VERSION);
-
-	data.stdout_fd = remote;
-	data.close_me = me;
-
-	pid = run_helper(tuntap_pre_exec, &data, argv);
-
-	if (pid < 0)
-		return pid;
-
-	close(remote);
-
-	msg.msg_name = NULL;
-	msg.msg_namelen = 0;
-	if (buffer != NULL) {
-		iov = ((struct iovec) { buffer, buffer_len });
-		msg.msg_iov = &iov;
-		msg.msg_iovlen = 1;
-	}
-	else {
-		msg.msg_iov = NULL;
-		msg.msg_iovlen = 0;
-	}
-	msg.msg_control = buf;
-	msg.msg_controllen = sizeof(buf);
-	msg.msg_flags = 0;
-	n = recvmsg(me, &msg, 0);
-	*used_out = n;
-	if (n < 0) {
-		err = -errno;
-		printk(UM_KERN_ERR "tuntap_open_tramp : recvmsg failed - "
-		       "errno = %d\n", errno);
-		return err;
-	}
-	helper_wait(pid);
-
-	cmsg = CMSG_FIRSTHDR(&msg);
-	if (cmsg == NULL) {
-		printk(UM_KERN_ERR "tuntap_open_tramp : didn't receive a "
-		       "message\n");
-		return -EINVAL;
-	}
-	if ((cmsg->cmsg_level != SOL_SOCKET) ||
-	   (cmsg->cmsg_type != SCM_RIGHTS)) {
-		printk(UM_KERN_ERR "tuntap_open_tramp : didn't receive a "
-		       "descriptor\n");
-		return -EINVAL;
-	}
-	*fd_out = ((int *) CMSG_DATA(cmsg))[0];
-	os_set_exec_close(*fd_out);
-	return 0;
-}
-
-static int tuntap_open(void *data)
-{
-	struct ifreq ifr;
-	struct tuntap_data *pri = data;
-	char *output, *buffer;
-	int err, fds[2], len, used;
-
-	err = tap_open_common(pri->dev, pri->gate_addr);
-	if (err < 0)
-		return err;
-
-	if (pri->fixed_config) {
-		pri->fd = os_open_file("/dev/net/tun",
-				       of_cloexec(of_rdwr(OPENFLAGS())), 0);
-		if (pri->fd < 0) {
-			printk(UM_KERN_ERR "Failed to open /dev/net/tun, "
-			       "err = %d\n", -pri->fd);
-			return pri->fd;
-		}
-		memset(&ifr, 0, sizeof(ifr));
-		ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
-		strlcpy(ifr.ifr_name, pri->dev_name, sizeof(ifr.ifr_name));
-		if (ioctl(pri->fd, TUNSETIFF, &ifr) < 0) {
-			err = -errno;
-			printk(UM_KERN_ERR "TUNSETIFF failed, errno = %d\n",
-			       errno);
-			close(pri->fd);
-			return err;
-		}
-	}
-	else {
-		err = socketpair(AF_UNIX, SOCK_DGRAM, 0, fds);
-		if (err) {
-			err = -errno;
-			printk(UM_KERN_ERR "tuntap_open : socketpair failed - "
-			       "errno = %d\n", errno);
-			return err;
-		}
-
-		buffer = get_output_buffer(&len);
-		if (buffer != NULL)
-			len--;
-		used = 0;
-
-		err = tuntap_open_tramp(pri->gate_addr, &pri->fd, fds[0],
-					fds[1], buffer, len, &used);
-
-		output = buffer;
-		if (err < 0) {
-			printk("%s", output);
-			free_output_buffer(buffer);
-			printk(UM_KERN_ERR "tuntap_open_tramp failed - "
-			       "err = %d\n", -err);
-			return err;
-		}
-
-		pri->dev_name = uml_strdup(buffer);
-		output += IFNAMSIZ;
-		printk("%s", output);
-		free_output_buffer(buffer);
-
-		close(fds[0]);
-		iter_addresses(pri->dev, open_addr, pri->dev_name);
-	}
-
-	return pri->fd;
-}
-
-static void tuntap_close(int fd, void *data)
-{
-	struct tuntap_data *pri = data;
-
-	if (!pri->fixed_config)
-		iter_addresses(pri->dev, close_addr, pri->dev_name);
-	close(fd);
-	pri->fd = -1;
-}
-
-const struct net_user_info tuntap_user_info = {
-	.init		= tuntap_user_init,
-	.open		= tuntap_open,
-	.close	 	= tuntap_close,
-	.remove	 	= NULL,
-	.add_address	= tuntap_add_addr,
-	.delete_address = tuntap_del_addr,
-	.mtu		= ETH_MAX_PACKET,
-	.max_packet	= ETH_MAX_PACKET + ETH_HEADER_OTHER,
-};
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
