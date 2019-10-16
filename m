Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA30D8A53
	for <lists+linux-um@lfdr.de>; Wed, 16 Oct 2019 09:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZaN/cmrN/jYzdxXQPzbfc9J6vOxt0Ix1Yk1gQXEtyc=; b=NzskkFwpsjgdhD
	ir75I7/ZFBRxSX4On73A8iUBqy/GEKsJhblDaez2FXgFyG73CZc39Wf4JIr1UHZMklBuX/kmBgQ7U
	NtR/U1G6B7EQHq+ZOBrKg/zg96DzI2qvF8pfgyBj2NvRUzP95wI7qZz6k2wORQEviNIUU6+D/mmlC
	Otj9a+dnQLUvsliqYjNPH554Ci9PWclGLrzNLcy3hVGb473HJh92CGQ1q4WELQwMGcIEMTV7wyfz0
	QO5wsZoxYrLFtm72PKUL7KWInqGAbp4WuqKoj/XS8n99XOzQ+iap3hBoOeo1JmvEg0ipRo0aZK0mM
	dYfzihs71yYYY/Z+zc4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKe82-0003eG-U1; Wed, 16 Oct 2019 07:53:54 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKe81-0003dD-2E
 for linux-um@lists.infradead.org; Wed, 16 Oct 2019 07:53:54 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKe7y-0005h5-IP; Wed, 16 Oct 2019 07:53:50 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKe7v-0007Zf-5C; Wed, 16 Oct 2019 08:53:48 +0100
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: Fix pcap and vde driver builds
Date: Wed, 16 Oct 2019 08:53:43 +0100
Message-Id: <20191016075343.28564-2-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016075343.28564-1-anton.ivanov@cambridgegreys.com>
References: <20191016075343.28564-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_005353_104316_A72204C3 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 938962@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/drivers/Makefile | 8 ++++++++
 scripts/link-vmlinux.sh  | 2 +-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
index 693319839f69..34355057ec85 100644
--- a/arch/um/drivers/Makefile
+++ b/arch/um/drivers/Makefile
@@ -24,6 +24,14 @@ LDFLAGS_vde.o := -r $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
 
 targets := pcap_kern.o pcap_user.o vde_kern.o vde_user.o
 
+ifeq ($(CONFIG_UML_NET_PCAP),y)
+	export UML_EXTRA_LIBS += -lpcap
+endif
+ifeq ($(CONFIG_UML_NET_VDE),y)
+	export UML_EXTRA_LIBS += -lvde -lvdeplug
+endif
+
+
 $(obj)/pcap.o: $(obj)/pcap_kern.o $(obj)/pcap_user.o
 	$(LD) -r -dp -o $@ $^ $(ld_flags)
 
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 915775eb2921..d3e6a6cdfc13 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -86,7 +86,7 @@ vmlinux_link()
 		${CC} ${CFLAGS_vmlinux} -o ${2}			\
 			-Wl,-T,${lds}				\
 			${objects}				\
-			-lutil -lrt -lpthread
+			-lutil -lrt -lpthread ${UML_EXTRA_LIBS}
 		rm -f linux
 	fi
 }
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
