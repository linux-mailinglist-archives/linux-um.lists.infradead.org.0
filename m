Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6EF114ABA
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 03:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NYv6INRRuxd1PJT28HDeXL8yvLfADbXBybzuv7M3eyI=; b=Z5xL9nz9X1pJji
	1gwmR4SzZiykuPmrnoCt9Fvwq6PJOxRDWtScySR3EAQvAGnSExj2tftMLqUG8In5TJji72J1MU0JS
	H7oyvDFFR6/Gt6ozc0wsZynn02ezelqYgYHY4VEd/WzjfWPlKNcypQJPe+nK30Qmav+v5XCdMslI0
	OFutwirKXycEICeIi2hAFIXvZKKZEtNQ8n+EGBILHrocDxCPn+i0OAPrn+rl+OALTnljyIY8qxqRF
	HkbmH5zDSichzFyS8Rwq3WFRR+s7qVHy+JLNefw4Sv+Wh37Onsic2p9ERMOAIrIVPfkiceti3wIvh
	ZekflTWPXYEFuU2U3d2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id2wT-0007Lh-MK; Fri, 06 Dec 2019 02:02:01 +0000
Received: from mail-qv1-xf4a.google.com ([2607:f8b0:4864:20::f4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id2wR-0007Kq-AP
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 02:02:00 +0000
Received: by mail-qv1-xf4a.google.com with SMTP id g15so3305824qvq.20
 for <linux-um@lists.infradead.org>; Thu, 05 Dec 2019 18:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=7yhy1qVy7r+OhvXrem9lQMeX0WI2ZBv4daZte/Qe81A=;
 b=EX46zlqkNdgUkQf4DjlzdWcdW0CotPab3ag5TehwyqpseikYVbO8LOlacwlZv8u/6h
 TNnsxzYEASdKkuiCFl9UkI14s0SP5xwOBQIcoW4xxVCw45EPIA1W+42WHM8ForICvwwY
 ZSG2uZjkWJ7CQvaZBX8JAeezo2S3bjAJGB9AWN+sTgewVxGK7q4oi6Ti1aFH06ww1xji
 HnHUzrvD4XvhL3yKrdGMDaUvZUNA5GWUwVE6NA7VyXdOAmyn8TtYeTMJB/mfzDRWZVN2
 fGprjqR7yw7qDNJnErIqcttmh6hajXBVmR+2H5wpWpz/gYLFLcxLV2qiNZiM8Bk5K2rJ
 WT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=7yhy1qVy7r+OhvXrem9lQMeX0WI2ZBv4daZte/Qe81A=;
 b=UD0H/Ds0qJh2k/aUEiZ/IXnT+BwX/LVb+FaGWKeMmsUdA5muuaF02fwL4U2c9S5I0u
 hLYYlsi1J5rF1sub6SuAn3Kz7JnDfHJkRhdPwiGxxXbxGdsO98xZU3284RxWMB1ai6kb
 cc4lUNfnEh+7PfGlHCQTwRP2o/wQAjDwIzeJec5UjHZniLKQ1KwctCG7d9/zOf+V44Fo
 shUw0qxYffu0Yiy3Pv2gRZs7MpOTwwLa8ixHCGs1CKE/2BZG8sVqAMm8eRwhFM73gp4p
 UALJa+bxeDdlC/psDhLohCD7Ykc0SCW/3ortTUSzCiC1j8x/WwUe30DiGERQEDaZtdaj
 Xcbw==
X-Gm-Message-State: APjAAAV86Gno3147ev5MLx4BDU5uBMo2z7QlrzOnugyf4P7NFODy47in
 zV2fQlkuijKdhcL0/h9DPyVbEQJEt9JP1wNyoWXW1Q==
X-Google-Smtp-Source: APXvYqx8I5bEIazMNgm70QCTtM1l3Nmciyo0UDNEDBk/gGH1/pKfd5iPWcvoIq0JcpNcc2IVrJoYfiifLm5Gs//JviyGSQ==
X-Received: by 2002:ac8:425a:: with SMTP id r26mr10607042qtm.138.1575597717420; 
 Thu, 05 Dec 2019 18:01:57 -0800 (PST)
Date: Thu,  5 Dec 2019 18:01:51 -0800
Message-Id: <20191206020153.228283-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [RFC v1 0/2] um: drop broken features to fix allyesconfig
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_180159_385528_AF17BCD9 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: davidgow@google.com, Brendan Higgins <brendanhiggins@google.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 johannes.berg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

# TL;DR

This patchset drops two broken features in an attempt to get
allyesconfig closer to working for ARCH=um.

# What am I trying to do?

This patchset is part of my attempt to get `make ARCH=um allyesconfig`
to produce a config that will build *and* boot to init, so that I can
use it as a mechanism to run tests[1].

# How far away are we from an allyesconfig UML kernel?

I have identified 33 Kconfigs that are selected by allyesconfig, but
will either not build on UML, or prevent it from booting. They are:

CONFIG_STATIC_LINK=y
CONFIG_UML_NET_PCAP=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_IP_VS=y
CONFIG_BRIDGE_EBT_BROUTE=y
CONFIG_BRIDGE_EBT_T_FILTER=y
CONFIG_BRIDGE_EBT_T_NAT=y
CONFIG_MTD_NAND_CADENCE=y
CONFIG_MTD_NAND_NANDSIM=y
CONFIG_BLK_DEV_NULL_BLK=y
CONFIG_BLK_DEV_RAM=y
CONFIG_SCSI_DEBUG=y
CONFIG_NET_VENDOR_XILINX=y
CONFIG_NULL_TTY=y
CONFIG_PTP_1588_CLOCK=y
CONFIG_PINCTRL_EQUILIBRIUM=y
CONFIG_DMABUF_SELFTESTS=y
CONFIG_COMEDI=y
CONFIG_XIL_AXIS_FIFO=y
CONFIG_EXFAT_FS=y
CONFIG_STM_DUMMY=y
CONFIG_FSI_MASTER_ASPEED=y
CONFIG_JFS_FS=y
CONFIG_UBIFS_FS=y
CONFIG_CRAMFS=y
CONFIG_CRYPTO_DEV_SAFEXCEL=y
CONFIG_CRYPTO_DEV_AMLOGIC_GXL=y
CONFIG_KCOV=y
CONFIG_LKDTM=y
CONFIG_REED_SOLOMON_TEST=y
CONFIG_TEST_RHASHTABLE=y
CONFIG_TEST_MEMINIT=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y

This patchset attempts to deal with CONFIG_STATIC_LINK=y and
CONFIG_UML_NET_PCAP=y by just removing them since they are broken and
appear to have been broken for some time. (I am aware of the taboo of
dropping configs, but given the amount of time they have been broken, I
figured that I might be able to get away with it in this case, which is
easier than trying to actually fix them.)

I also have a patch out to fix CONFIG_EXFAT_FS=y[2].

After this I plan on going after

CONFIG_PINCTRL_EQUILIBRIUM=y
CONFIG_MTD_NAND_CADENCE=y
CONFIG_FSI_MASTER_ASPEED=y
CONFIG_CRYPTO_DEV_SAFEXCEL=y
CONFIG_XIL_AXIS_FIFO=y
CONFIG_CRYPTO_DEV_AMLOGIC_GXL=y
CONFIG_XILINX_AXI_EMAC=y

the problem with these is that they depend on
devm_platform_ioremap_resource without explicitly depending on
CONFIG_HAS_IOMEM=y.

Also note that I don't think that CONFIG_NULL_TTY=y is actually broken
on UML; however, console seems to get assigned to the null TTY by
default when it is enabled, so I added it to the list for the sake of
completeness.

The other broken configs require more investigation (I would welcome
help, if anyone is interested ;-) ).

# Why won't allyesconfig break again after this series of fixes?

As I mentioned above, I am using UML for testing the kernel, and I am
currently working on getting my tests to run on KernelCI. As part of our
testing procedure for KernelCI, we are planning on building a UML kernel
using allyesconfig and running our tests on it. Thus, we will find out
very quickly once someone breaks allyesconfig again once we get this all
working.

Brendan Higgins (2):
  um: drivers: remove support for UML_NET_PCAP
  uml: remove support for CONFIG_STATIC_LINK

 arch/um/Kconfig              |  23 +----
 arch/um/Makefile             |   3 +-
 arch/um/drivers/Kconfig      |  16 ----
 arch/um/drivers/Makefile     |  17 +---
 arch/um/drivers/pcap_kern.c  | 113 ----------------------
 arch/um/drivers/pcap_user.c  | 137 ---------------------------
 arch/um/drivers/pcap_user.h  |  21 -----
 arch/um/kernel/dyn.lds.S     | 170 ----------------------------------
 arch/um/kernel/uml.lds.S     | 115 -----------------------
 arch/um/kernel/vmlinux.lds.S | 175 ++++++++++++++++++++++++++++++++++-
 10 files changed, 174 insertions(+), 616 deletions(-)
 delete mode 100644 arch/um/drivers/pcap_kern.c
 delete mode 100644 arch/um/drivers/pcap_user.c
 delete mode 100644 arch/um/drivers/pcap_user.h
 delete mode 100644 arch/um/kernel/dyn.lds.S
 delete mode 100644 arch/um/kernel/uml.lds.S

Looking forward to hearing people's thoughts!

[1] https://bugzilla.kernel.org/show_bug.cgi?id=205223
[2] https://patchwork.kernel.org/patch/11273771/

-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
