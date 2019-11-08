Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1500F3F4A
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNSJIe7A4FDj5Kui5S7B3cAWetckVK1nNYGzYnfpdMI=; b=JiTnzCx13VAdqF
	OTBDgtAC8QFR2G0+qOoFz4LiDZsYVc+R+YYh64BY76fRiTDScqsRj67oT8oAFbKBGl5ED2xTpwK0n
	PbyDXgnyhoZWdvfK4nHKt/KvBbZPeZ7w9tieJWcdYGEFIsfMX7S8uEMSBUu2WIWyOYU3IqZNW+Xkq
	ayDSEqv4GBHnT4Htabfi8TRRf+5X2qX+z05vgXGVfOAyViYECoY3DVIOfHJcOCOxAn7GmOJmYxsC8
	Igg4hQ2QO2ZiLkFRDaq1+xC8tHxVtRiB98MrwR3jLKTy9uDeUrU2N14pFZmNESBUnLRpr0KSc8GB/
	YdsTsM6YTyJtigqP2tPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRN-0003zU-3v; Fri, 08 Nov 2019 05:04:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRK-0003y3-3n
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id j12so3226881plt.9
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1QcDUnWZmSajK114RkpJnxazXOd5A5JfEpJcmAK8I0E=;
 b=gS3JlhYApEP9wP0AKJB/PZh+wtKNZktHkWEO6u7NhXNhtB0o8Fy1aQPnCHLG58qa54
 WiDSL2uOBPvqs/y6kDDqHIt8XxY/61Vb63AvBXhPtbLtSDyTmLKQ9UjWZs/CfTDD/x/7
 8DI97DxaxTdp6oQDN3Msh6KgD+med16Oub46fBJh7qOZpPabyakfAByng1bspF147okJ
 S4kNYRyfHN44x3E0pNMbsbweUmezQ0nPjb8RtnMUy4KAJuNWI9jyI1ZH402i6/UWEoct
 EtXfx7X+3EelwxxJbca5WEs9lr50tqtmihVC/hGPIpmPFLvHqeBIi3JUZEsUbJ10fDrg
 42ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1QcDUnWZmSajK114RkpJnxazXOd5A5JfEpJcmAK8I0E=;
 b=dH8qV+Osr8rvp30/RkDEaxjHsvz4KPSjq0DPNIoqUX7C6MMz7jGnAMm92weZ2EoAel
 S50/J+HJj1RbQHtb2Ma4sd/kLxy90c+hUl2sVbRJguFDZYI2/SioU8BFHcuJux5jByC+
 uYvGC2o6vFDw3RcMrISoqUgADdSnK2xq8WdpiB0RJYMO7YnnxlSGekbqRF5BuT72lWvl
 EpJh57vc6Nt19Fbp60fAqNp2DZa1uWOudQdLqABYBgjWVmN6W1Bz0x8PCM3/JD4EJ6kG
 yiyFu62HWu+WzfjHjlOaeOGUij7ujPppPfL5AtnosYpFHtfTPlZk/4iYTBnL4ABVngKf
 mIvA==
X-Gm-Message-State: APjAAAXA+3wjlT26fq8rnfhNJOHQNG8oXv6eo/F5HAzeRXpNs/z9Pznd
 JUPkqDN/TsLH7qGptfOoDSs=
X-Google-Smtp-Source: APXvYqw07O1OkWHTclEgwxc8iXwkKM9jCotJe8/gGfl5op4zTqkKhtYwbJESrD7amMEDfITLvh1t9A==
X-Received: by 2002:a17:90a:ca04:: with SMTP id
 x4mr10804360pjt.103.1573189444679; 
 Thu, 07 Nov 2019 21:04:04 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id f25sm5352172pfk.10.2019.11.07.21.04.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:04 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 98A94201ACFE1D; Fri,  8 Nov 2019 14:04:02 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 26/37] tools: Add the lkl host library to the common tools
 Makefile
Date: Fri,  8 Nov 2019 14:02:41 +0900
Message-Id: <80f1531053e8ab8d67ff1995e82f8db75457e0dc.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210406_170255_1DB7BCF1 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
 Thomas Liebetraut <thomas@tommie-lie.de>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Thomas Liebetraut <thomas@tommie-lie.de>

This patch includes the lkl host library to the Kernel tools buildsystem.
This also means that lkl can now be compiled like any other "tool" using:

  $ make tools/lkl ARCH=um UMMODE=library

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
