Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641A172F88
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 04:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9gbviiIpIrqrsyhdV/FkIWGrbhcFcllWLdJ1DgQGjFQ=; b=eZ2
	5GDxyT+vxKFvQRv7fhmQH43dHGPHUFJPFrBAXwq3Kb2w9Qzn1m1BGl5DROAx2s5KKLl8QXLYW4gB1
	p4PFpq0pxAHvbpxK9vEAXoCJM75Ypac1/fTQxoyj5xQmJudXzeW7uE5DcvQCdN+j6sb+e2neH0WEt
	UgXlXeVqXTG8zt4FSr3oRvBYo2YhZn/P/W8op59zAdjcPSRc8RoVjLjUY616Fj+9iz+oBBoyvvVT4
	g0VpkEMUjDPSzu7Q7WJwOOz77uO/36LHbLI/gmsdDaMdW4SIWTSQmqTgGh8Ux72j4Zof8zeUoNR/a
	N/N0yqwqk8WmkpFFnG7+8GFyAlQpbGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7WcJ-00083h-Kn; Fri, 28 Feb 2020 03:47:11 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7WcE-00082y-UD
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 03:47:10 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 01S3kkDJ013497;
 Fri, 28 Feb 2020 12:46:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 01S3kkDJ013497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582861607;
 bh=QmWDb7FM9dTCeFtKMuH7JSWUHmQOyND5t3pNwswG2V0=;
 h=From:To:Cc:Subject:Date:From;
 b=y0o2A9jVU7w7EJMUUGHZLXnlDhMXqIy74Q1ZtBe7vOgOGODR07kk5N2VrMeDCTirG
 7KlvvlF3OEKhTwMYl9/1rJLgzs49GkzSFXLA7CcXHp/ha5SmdgG/293NPGLOYX4hlV
 K+ptcJiflacHZMZCm4hXzMf/1dI1+vr43lal0D9VYVXIUznoHQlXxvqNwtbF33/gRA
 saihntV5enSdq8A0wrhV2E0w95JeIpSKmt6TSxzcbkuxGzqIV5wp23nnzTEiVH2/ID
 8xGzToFkVbcnFBoQ4n8HOBu0NG1KzOD9zZ60rLyzeSq6hU002UgjVZn1ItFkWmnTAA
 kT9e6rFGZmLTg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
Date: Fri, 28 Feb 2020 12:46:40 +0900
Message-Id: <20200228034640.25247-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_194707_313943_D534D07A 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: sparclinux@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
 x86@kernel.org, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Most of the Kconfig commands (except defconfig and all*config) read
the .config file as a base set of CONFIG options.

When it does not exist, the files in DEFCONFIG_LIST are searched in
this order and loaded if found.

I do not see much sense in the last two lines in DEFCONFIG_LIST.

[1] ARCH_DEFCONFIG

The entry for DEFCONFIG_LIST is guarded by 'depends on !UML'. So, the
ARCH_DEFCONFIG definition in arch/x86/um/Kconfig is meaningless.

arch/{sh,sparc,x86}/Kconfig define ARCH_DEFCONFIG depending on 32 or
64 bit variant symbols. This is a little bit strange; ARCH_DEFCONFIG
should be a fixed string because the base config file is loaded before
the symbol evaluation stage.

Using KBUILD_DEFCONFIG makes more sense because it is fixed before
Kconfig is invoked. Fortunately, arch/{sh,sparc,x86}/Makefile define it
in the same way, and it works as expected. Hence, replace ARCH_DEFCONFIG
with "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)".

[2] arch/$(ARCH)/defconfig

This file path is no longer valid. The defconfig files are always located
in the arch configs/ directories.

  $ find arch -name defconfig | sort
  arch/alpha/configs/defconfig
  arch/arm64/configs/defconfig
  arch/csky/configs/defconfig
  arch/nds32/configs/defconfig
  arch/riscv/configs/defconfig
  arch/s390/configs/defconfig
  arch/unicore32/configs/defconfig

The path arch/*/configs/defconfig is already covered by
"arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)". So, this file path is
not necessary.

I moved the default KBUILD_DEFCONFIG to the top Makefile. Otherwise,
the 7 architectures listed above would end up with endless loop of
syncconfig.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                 | 3 +++
 arch/sh/Kconfig          | 5 -----
 arch/sparc/Kconfig       | 5 -----
 arch/x86/Kconfig         | 5 -----
 arch/x86/um/Kconfig      | 5 -----
 init/Kconfig             | 3 +--
 scripts/kconfig/Makefile | 4 ----
 7 files changed, 4 insertions(+), 26 deletions(-)

diff --git a/Makefile b/Makefile
index 81d130ad9534..17cc09304561 100644
--- a/Makefile
+++ b/Makefile
@@ -388,6 +388,9 @@ endif
 KCONFIG_CONFIG	?= .config
 export KCONFIG_CONFIG
 
+# Default file for 'make defconfig'. This may be overridden by arch-Makefile.
+export KBUILD_DEFCONFIG := defconfig
+
 # SHELL used by kbuild
 CONFIG_SHELL := sh
 
diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index 9ece111b0254..b4f0e37b83eb 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -87,11 +87,6 @@ config SUPERH64
 	select HAVE_EXIT_THREAD
 	select KALLSYMS
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/sh/configs/shx3_defconfig" if SUPERH32
-	default "arch/sh/configs/cayman_defconfig" if SUPERH64
-
 config GENERIC_BUG
 	def_bool y
 	depends on BUG && SUPERH32
diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index c1dd6dd642f4..0de15380d1fc 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -95,11 +95,6 @@ config SPARC64
 	select PCI_DOMAINS if PCI
 	select ARCH_HAS_GIGANTIC_PAGE
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/sparc/configs/sparc32_defconfig" if SPARC32
-	default "arch/sparc/configs/sparc64_defconfig" if SPARC64
-
 config ARCH_PROC_KCORE_TEXT
 	def_bool y
 
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..98935f4387f9 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -240,11 +240,6 @@ config OUTPUT_FORMAT
 	default "elf32-i386" if X86_32
 	default "elf64-x86-64" if X86_64
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/x86/configs/i386_defconfig" if X86_32
-	default "arch/x86/configs/x86_64_defconfig" if X86_64
-
 config LOCKDEP_SUPPORT
 	def_bool y
 
diff --git a/arch/x86/um/Kconfig b/arch/x86/um/Kconfig
index a8985e1f7432..95d26a69088b 100644
--- a/arch/x86/um/Kconfig
+++ b/arch/x86/um/Kconfig
@@ -27,11 +27,6 @@ config X86_64
 	def_bool 64BIT
 	select MODULES_USE_ELF_RELA
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/um/configs/i386_defconfig" if X86_32
-	default "arch/um/configs/x86_64_defconfig" if X86_64
-
 config 3_LEVEL_PGTABLES
 	bool "Three-level pagetables" if !64BIT
 	default 64BIT
diff --git a/init/Kconfig b/init/Kconfig
index 20a6ac33761c..240c1ed15c69 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -6,8 +6,7 @@ config DEFCONFIG_LIST
 	default "/lib/modules/$(shell,uname -r)/.config"
 	default "/etc/kernel-config"
 	default "/boot/config-$(shell,uname -r)"
-	default ARCH_DEFCONFIG
-	default "arch/$(ARCH)/defconfig"
+	default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
 
 config CC_IS_GCC
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q gcc)
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 5887ceb6229e..c9d0a4a8efb3 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -12,10 +12,6 @@ else
 Kconfig := Kconfig
 endif
 
-ifndef KBUILD_DEFCONFIG
-KBUILD_DEFCONFIG := defconfig
-endif
-
 ifeq ($(quiet),silent_)
 silent := -s
 endif
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
