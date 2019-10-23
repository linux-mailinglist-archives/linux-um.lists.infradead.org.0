Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3421E116C
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNELhL9XP0ZwMrlctChuej5y8mjIZ5HWON+kbTJEAE4=; b=pGRauyIOKETEs4
	wm6zQsjYj0Abuv/1GdhXGdj57T7RVbRiX/VWR61NK2mafduigwy000lQiOaHrQ+l8SumtwPr1Jtxg
	RhAt2NjaGxg7zw5CYsF5rTBaNgK1h3VGmreFZsIcSyDmB4OFaMY7B8OBNknAeKsck6qGFabCEKU+E
	iJTVnR1KruwUGe0GJeTnUwlvgQAa9V/gCo0p8ffmqo3fKSeL8obZbdQ5W/KRkwZeIAw0jaQ0mUQx/
	J5U0Yy+DyLlEpULBnePHICKxAV7gfH3KumdsnW9GcgZ8kwz9PZVgaLUDEhhShtW3imQ9SRCkml6/i
	ay6TDwcMmfna85+CpxVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kz-0002Im-7V; Wed, 23 Oct 2019 05:00:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kn-0002Ac-Im
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so12129681pfr.3
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J+qt1YpPDJpo65jNIqSOqcnn9wYaDqgPADTOorbafb0=;
 b=FDjXX+rbwn5NlzW+czprMvnHuPlhWITZ0U38sYlCBJjy+z5o4oV5csl8STz/DCbXMu
 TgVFHQq0ouokaOxiIU/MBYjOD5ZWbH41+XW/ULUDW8jIftJeUvjzcDnVuFmA0wbNeBnh
 Re6Pr+hXzYPaR6Y8EpowgHOena0gJulGOU/e521pKF3aKM9Kz1nsmWUN9FXNulUR57Am
 TlfjX35i8xMiBCAGvuhRahEMurLuECcTWwr7LErrw9UOlfxejAwuIBFMaQG3WCHJyE9o
 90HJ4y4hY/0842DJkrPEMJclDdMdPM6PIYT0kWOqjNOO9IrpOOA6pzRC6Vwp7xaBHRt9
 SMbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J+qt1YpPDJpo65jNIqSOqcnn9wYaDqgPADTOorbafb0=;
 b=Fw7SRCVwTIfyE9KXzHVjmDz31I/jdz3LDuPvBDbMb/KxQRdAg0ubrkK0WWDaSzK+rV
 jBX56F+y589inI/1yYGNwDls28dUFPjwtQDb7g1EM0yYh5bPO1Mjy1NU3Ku2i+RjWRA4
 1hkK8v+V/jydaqKBq8DJgI3adjyKzQxeE8dwHuq1fIgUYyjXecOKNKDB20FFzl4fQRtY
 cptXjT+US4xchuqlG4vNysmHmquGRkcHQDIC6ebou5HmBke0Bm53lmXht7ickg+Ifd1H
 gLX1SNoFGkCd00nfb+xzfpYA3de8jsXibMNUY1mXX6vl9BPSigRL1RdJZZC+CgK/6+Tz
 Dkpw==
X-Gm-Message-State: APjAAAXahQFXhwTedBj9MzHIXyhWD8m1RPdjMoM3Dr6BqX5M5nbI2Cc/
 /kH0izfK+jluEdto3AsE7zBqTKhGkvnRrQ==
X-Google-Smtp-Source: APXvYqxvQtRh0l/GlHdCVO/u/DbG6+JatYGeMk/hD59j6Kvn0EGsQrns00kBvK3Vy6CsS6HFcmoXgQ==
X-Received: by 2002:aa7:8e56:: with SMTP id d22mr8467998pfr.3.1571806812585;
 Tue, 22 Oct 2019 22:00:12 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id v35sm25841547pgn.89.2019.10.22.22.00.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:10 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 373D6201995832; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 32/47] tools: Add the lkl host library to the common tools
 Makefile
Date: Wed, 23 Oct 2019 13:38:06 +0900
Message-Id: <5d2550c3895672b81f146a39838707516fb9054d.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220013_655289_62EBB069 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
 Thomas Liebetraut <thomas@tommie-lie.de>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Thomas Liebetraut <thomas@tommie-lie.de>

This patch includes the lkl host library to the Kernel tools buildsystem.
This also means that lkl can now be compiled like any other "tool" using:

  $ make tools/lkl

Signed-off-by: Thomas Liebetraut <thomas@tommie-lie.de>
[Octavian: remove make ARCH=lkl defconfig as it is not (yet) necessary]
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/Makefile | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/tools/Makefile b/tools/Makefile
index 68defd7ecf5d..0506d7dde63f 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -23,6 +23,7 @@ help:
 	@echo '  kvm_stat               - top-like utility for displaying kvm statistics'
 	@echo '  leds                   - LEDs  tools'
 	@echo '  liblockdep             - user-space wrapper for kernel locking-validator'
+	@echo '  lkl                    - The Linux Kernel Library host libraries and tools'
 	@echo '  bpf                    - misc BPF tools'
 	@echo '  pci                    - PCI tools'
 	@echo '  perf                   - Linux performance measurement and analysis tool'
@@ -63,7 +64,7 @@ acpi: FORCE
 cpupower: FORCE
 	$(call descend,power/$@)
 
-cgroup firewire hv guest spi usb virtio vm bpf iio gpio objtool leds wmi pci firmware debugging: FORCE
+cgroup firewire hv guest lkl spi usb virtio vm bpf iio gpio objtool leds wmi pci firmware debugging: FORCE
 	$(call descend,$@)
 
 liblockdep: FORCE
@@ -107,7 +108,7 @@ acpi_install:
 cpupower_install:
 	$(call descend,power/$(@:_install=),install)
 
-cgroup_install firewire_install gpio_install hv_install iio_install perf_install spi_install usb_install virtio_install vm_install bpf_install objtool_install wmi_install pci_install debugging_install:
+cgroup_install firewire_install gpio_install hv_install iio_install lkl_install perf_install spi_install usb_install virtio_install vm_install bpf_install objtool_install wmi_install pci_install debugging_install:
 	$(call descend,$(@:_install=),install)
 
 liblockdep_install:
@@ -133,7 +134,7 @@ install: acpi_install cgroup_install cpupower_install gpio_install \
 		perf_install selftests_install turbostat_install usb_install \
 		virtio_install vm_install bpf_install x86_energy_perf_policy_install \
 		tmon_install freefall_install objtool_install kvm_stat_install \
-		wmi_install pci_install debugging_install intel-speed-select_install
+		wmi_install lkl_install pci_install debugging_install intel-speed-select_install
 
 acpi_clean:
 	$(call descend,power/acpi,clean)
@@ -141,7 +142,7 @@ acpi_clean:
 cpupower_clean:
 	$(call descend,power/cpupower,clean)
 
-cgroup_clean hv_clean firewire_clean spi_clean usb_clean virtio_clean vm_clean wmi_clean bpf_clean iio_clean gpio_clean objtool_clean leds_clean pci_clean firmware_clean debugging_clean:
+cgroup_clean hv_clean firewire_clean lkl_clean spi_clean usb_clean virtio_clean vm_clean wmi_clean bpf_clean iio_clean gpio_clean objtool_clean leds_clean pci_clean firmware_clean debugging_clean:
 	$(call descend,$(@:_clean=),clean)
 
 liblockdep_clean:
@@ -179,7 +180,7 @@ clean: acpi_clean cgroup_clean cpupower_clean hv_clean firewire_clean \
 		perf_clean selftests_clean turbostat_clean spi_clean usb_clean virtio_clean \
 		vm_clean bpf_clean iio_clean x86_energy_perf_policy_clean tmon_clean \
 		freefall_clean build_clean libbpf_clean libsubcmd_clean liblockdep_clean \
-		gpio_clean objtool_clean leds_clean wmi_clean pci_clean firmware_clean debugging_clean \
+		gpio_clean objtool_clean leds_clean wmi_clean lkl_clean pci_clean firmware_clean debugging_clean \
 		intel-speed-select_clean
 
 .PHONY: FORCE
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
