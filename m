Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46A11302E
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 17:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB+aia8SJ5bIP6knhXARu/8d0t0TcKZHDLLm8sjZgwQ=; b=G2CMSo+L4u10mw
	UltLuIFEmzWWdTCWqep7sBo72hr5IVvEbWknVPd11jDi5opxxvjHCJpYBjhHGmCjV1Sg0R4xlTRjP
	wCkLqj9CIF97JOUEDuqgvPZc/CJ9eVLu2Ii9IXIn/vQyGznueUW+PmDIKT140VoIyLr4yNEhUCza6
	Lp4wun02OihDobcSSJX0SsHvOuBxJu8k77KA9OqNJuka+O3fvdWg5UOUAHK5TnANPF11Vt/E9BC4w
	2xczCoCOUIU7Tgpti/LZo2NLs5kklPZoKDPmMxQkmNLejpiJLOPrDZsVr6N7JKoi5/AymzZx0G2yO
	EdP+1ioX+GcjDfMtRhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXkw-0008Bx-CY; Wed, 04 Dec 2019 16:44:02 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXkt-0008Az-M9
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 16:44:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1icXkp-0013uy-Uj; Wed, 04 Dec 2019 17:43:56 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] Revert "um: Enable CONFIG_CONSTRUCTORS"
Date: Wed,  4 Dec 2019 17:43:46 +0100
Message-Id: <20191204174346.78dfd358bd15.I19e7eb2601fbdc0270fb1e1b647a75301e9e4503@changeid>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <4913d030-84c0-0eb9-f8b2-c006a1dd0757@cambridgegreys.com>
References: <4913d030-84c0-0eb9-f8b2-c006a1dd0757@cambridgegreys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_084359_721994_41003898 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Geert Uytterhoeven <geert@linux-m68k.org>, stable@vger.kernel.org,
 Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

This reverts commit 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS").

There are two issues with this commit, uncovered by Anton in tests
on some (Debian) systems:

1) I completely forgot to call any constructors if CONFIG_CONSTRUCTORS
   isn't set. Don't recall now if it just wasn't needed on my system, or
   if I never tested this case.

2) With that fixed, it works - with CONFIG_CONSTRUCTORS *unset*. If I
   set CONFIG_CONSTRUCTORS, it fails again, which isn't totally
   unexpected since whatever wanted to run is likely to have to run
   before the kernel init etc. that calls the constructors in this case.

Basically, some constructors that gcc emits (libc has?) need to run
very early during init; the failure mode otherwise was that the ptrace
fork test already failed:

----------------------
$ ./linux mem=512M
Core dump limits :
	soft - 0
	hard - NONE
Checking that ptrace can change system call numbers...check_ptrace : child exited with exitcode 6, while expecting 0; status 0x67f
Aborted
----------------------

Thinking more about this, it's clear that we simply cannot support
CONFIG_CONSTRUCTORS in UML. All the cases we need now (gcov, kasan)
involve not use of the __attribute__((constructor)), but instead
some constructor code/entry generated by gcc. Therefore, we cannot
distinguish between kernel constructors and system constructors.

Thus, revert this commit.

Cc: stable@vger.kernel.org [5.4+]
Fixes: 786b2384bf1c ("um: Enable CONFIG_CONSTRUCTORS")
Reported-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/asm/common.lds.S | 2 +-
 arch/um/kernel/dyn.lds.S         | 1 +
 init/Kconfig                     | 1 +
 kernel/gcov/Kconfig              | 2 +-
 4 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index d7086b985f27..4049f2c46387 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -83,8 +83,8 @@
 	__preinit_array_end = .;
   }
   .init_array : {
-        /* dummy - we call this ourselves */
 	__init_array_start = .;
+	*(.init_array)
 	__init_array_end = .;
   }
   .fini_array : {
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index c69d69ee96be..f5001481010c 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -103,6 +103,7 @@ SECTIONS
      be empty, which isn't pretty.  */
   . = ALIGN(32 / 8);
   .preinit_array     : { *(.preinit_array) }
+  .init_array     : { *(.init_array) }
   .fini_array     : { *(.fini_array) }
   .data           : {
     INIT_TASK_DATA(KERNEL_STACK_SIZE)
diff --git a/init/Kconfig b/init/Kconfig
index b4daad2bac23..0328b53d09ad 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -54,6 +54,7 @@ config CC_DISABLE_WARN_MAYBE_UNINITIALIZED
 
 config CONSTRUCTORS
 	bool
+	depends on !UML
 
 config IRQ_WORK
 	bool
diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index 060e8e726755..3941a9c48f83 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -4,7 +4,7 @@ menu "GCOV-based kernel profiling"
 config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
-	select CONSTRUCTORS
+	select CONSTRUCTORS if !UML
 	default n
 	---help---
 	This option enables gcov-based code profiling (e.g. for code coverage
-- 
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
