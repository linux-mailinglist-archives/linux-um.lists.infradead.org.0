Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD1A9B04C
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 15:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gfjtXFj4+29OIXif/obry/CCnLVg1BOohAnaxa6dfVg=; b=QOwG5ojxjTbXtJ
	vpAX/LVNwvaliaL+FRTHggOMQb1hEol+f1u1R8iTwdH4K764PSOs3+qlTw51t+uvP+ZdpsD3e3teJ
	XbK+xn2OP54qb1J67BVdf6PAPCmRJNQbhca/cs8jrwY/xODW6Y6scoWGXXGAWO2yZJrdIvVfDWK9Q
	29NnJ9Ock2HjZRuaQSkB8mw4U/ieFq6hbfrgaOYcVvkUrskq7oGlVY0yXqI5Qx7W0Lm38ZcwR4N3p
	xVo9tpc5z8xJMVCmSBHZr2oH5xYNSEOen6PMRyTITysAxMcKqn/Unid+AsJUb+OTGbqDERhFk0FqY
	gkgqaNgxtAKphFQ0LFag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19GX-0004r5-GB; Fri, 23 Aug 2019 13:06:05 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19GU-0004qW-G0
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 13:06:03 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i19GT-0004Ww-37; Fri, 23 Aug 2019 15:06:01 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] arch: um: enable CONFIG_CONSTRUCTORS
Date: Fri, 23 Aug 2019 15:05:57 +0200
Message-Id: <20190823130557.15870-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060602_532111_5AA4AF80 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

We do need to call the constructors for *modules*, even
if libc calls the ones for the kernel binary itself, so
allow enabling CONFIG_CONSTRUCTORS but skip the kernel.

Tested that it indeed doesn't work in modules, and does
work after the fixes in both, with a few functions with
__attribute__((constructor)) in both dynamic and static
builds.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 init/Kconfig        | 1 -
 init/main.c         | 2 +-
 kernel/gcov/Kconfig | 2 +-
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index bd7d650d4a99..81293d78a6ad 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -48,7 +48,6 @@ config CC_DISABLE_WARN_MAYBE_UNINITIALIZED
 
 config CONSTRUCTORS
 	bool
-	depends on !UML
 
 config IRQ_WORK
 	bool
diff --git a/init/main.c b/init/main.c
index 96f8d5af52d6..1e670be141c8 100644
--- a/init/main.c
+++ b/init/main.c
@@ -788,7 +788,7 @@ asmlinkage __visible void __init start_kernel(void)
 /* Call all constructor functions linked into the kernel. */
 static void __init do_ctors(void)
 {
-#ifdef CONFIG_CONSTRUCTORS
+#if defined(CONFIG_CONSTRUCTORS) && !defined(CONFIG_UML)
 	ctor_fn_t *fn = (ctor_fn_t *) __ctors_start;
 
 	for (; fn < (ctor_fn_t *) __ctors_end; fn++)
diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index 3941a9c48f83..060e8e726755 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -4,7 +4,7 @@ menu "GCOV-based kernel profiling"
 config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
-	select CONSTRUCTORS if !UML
+	select CONSTRUCTORS
 	default n
 	---help---
 	This option enables gcov-based code profiling (e.g. for code coverage
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
