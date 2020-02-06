Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153AF154C6F
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 20:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LCa4MhQP7xT4ALDHJC0z2OmeZltd/31uKAQAApiqLEU=; b=WdLQppM+vlqwDL
	s7hpu0lSukvfqWyJv+goB5ujyGxFa+a7+c56S8RJ1m/TrqYbbRp1zaU3xWQ/UDiBPAqwR8kLtbAav
	Ed1xt0g+rqKq2cnm1mznH5EKFh7hJ4hrcoXfgeC6242SRKhkDgR9HNmWy2y3U9Ur1E7AxGCVw7oHb
	Xfj3O1Hg/I1GsgmGAV38GfkNrQIJU/sgm3nIkn4HOhlxfjBjcXpJ4cAbg7ekmW0ReuUVUJK1N0DmJ
	syIsoK20twQjTuxRWGByvJw+0NrmjN18eOVt34LIVBHACk38bHK3QhTq+/B7o5Fr9aN8+8DTwOOGe
	n8AR9g1BPScTlDVvXPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izn9k-0002ZC-ML; Thu, 06 Feb 2020 19:49:44 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izn9i-0002Yo-OF
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 19:49:44 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1izn9h-0061xX-6U; Thu, 06 Feb 2020 20:49:41 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [DEMO] um: demonstrate super early constructors
Date: Thu,  6 Feb 2020 20:49:39 +0100
Message-Id: <20200206204937.db680692f366.Ie05fc2ad440c8db59c1519194aeac356469efa72@changeid>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_114942_789075_F3F49C08 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

For KASAN, we need super early constructors, demonstrate
how we could perhaps do that.

I'm not sure why we have two places with .init_array in the
linker scripts, the common one does get included, but then
the dyn one seems to override it, perhaps for alignment? but
it seems it would be harmless to do the alignment in the
common one ... not sure.

---
 arch/um/include/asm/common.lds.S |  1 +
 arch/um/kernel/dyn.lds.S         |  5 ++++-
 arch/um/kernel/mem.c             | 15 +++++++++++++++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index eca6c452a41b..731f8c8422a2 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -83,6 +83,7 @@
   }
   .init_array : {
 	__init_array_start = .;
+	*(.kasan_init)
 	*(.init_array)
 	__init_array_end = .;
   }
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index f5001481010c..4f0447cd9e38 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -103,7 +103,10 @@ SECTIONS
      be empty, which isn't pretty.  */
   . = ALIGN(32 / 8);
   .preinit_array     : { *(.preinit_array) }
-  .init_array     : { *(.init_array) }
+  .init_array     : {
+	*(.kasan_init)
+	*(.init_array)
+  }
   .fini_array     : { *(.fini_array) }
   .data           : {
     INIT_TASK_DATA(KERNEL_STACK_SIZE)
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index 30885d0b94ac..32fc941c80f7 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -19,6 +19,21 @@
 #include <mem_user.h>
 #include <os.h>
 
+extern int printf(const char *msg, ...);
+static void early_print(void)
+{
+	printf("I'm super early, before constructors\n");
+}
+
+static void __attribute__((constructor)) constructor_test(void)
+{
+	printf("yes, you can see it\n");
+}
+
+static void (*early_print_ptr)(void)
+__attribute__((section(".kasan_init"), used))
+ = early_print;
+
 /* allocated in paging_init, zeroed in mem_init, and unchanged thereafter */
 unsigned long *empty_zero_page = NULL;
 EXPORT_SYMBOL(empty_zero_page);
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
