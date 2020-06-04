Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6221EE381
	for <lists+linux-um@lfdr.de>; Thu,  4 Jun 2020 13:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UuhRV4vDT3BTLo9dSu8lG1Q63oUvqfF31qEKhy6XpEE=; b=aPHUXoQGnDCclb
	OmKTnGtB0VjPxQxwIdKXMlGqL9D35UUeflyf7Jco4+1sDPUl3w6x4Q0k4ad6NWgLuQMp/f4DfPlob
	rO6diiwpEYAPF72zmySZDBhumFbLlhDMhLaMkGipZ/Gg3rHRlhC9pCdk9VHOX8VdCux6A4vqGtf37
	A1cuxWkFX+3X4Zo9xVmWOwyL2oHFA8iukf3DPj558dMn9sSMOtJj2BcLuslwyBnPl86c4GG0tfROR
	biE7mARfyRseQ6ixnePy4z1PLdZXLZ4bYLft/f/A+WAOIV/RkNUyiU/OJnWHcPR6rn450TEpgKQE3
	68mB4NitRY2rlsBj6KRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgoC9-0003sr-Eh; Thu, 04 Jun 2020 11:38:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgoC6-0003sX-Tm
 for linux-um@lists.infradead.org; Thu, 04 Jun 2020 11:38:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jgoC4-009IBR-Qj; Thu, 04 Jun 2020 13:37:56 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: remove mmap_sem usage from activate_mm()
Date: Thu,  4 Jun 2020 13:37:52 +0200
Message-Id: <20200604133752.397dedea0758.I7a24aaa26794eb3fa432003c1bf55cbb816489e2@changeid>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_043758_957309_49156F4D 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Lockdep complains about the mmap_sem because we try to
down_write() it while we already hold the task (spin)lock.

Since commit 9bfb23fc4a48 ("sys_unshare: remove the dead
CLONE_THREAD/SIGHAND/VM code") this is no longer called
by sys_unshare(), and thus the only caller of this is
exec_mmap() in fs/exec.c. But in this case, the new mm
is completely new, so it shouldn't be possible to change
it concurrently.

Remove the mmap_sem handling completely.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/include/asm/mmu_context.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/um/include/asm/mmu_context.h b/arch/um/include/asm/mmu_context.h
index b4deb1bfbb68..8a6e1c5e2c22 100644
--- a/arch/um/include/asm/mmu_context.h
+++ b/arch/um/include/asm/mmu_context.h
@@ -43,13 +43,11 @@ extern void force_flush_all(void);
 static inline void activate_mm(struct mm_struct *old, struct mm_struct *new)
 {
 	/*
-	 * This is called by fs/exec.c and sys_unshare()
-	 * when the new ->mm is used for the first time.
+	 * This is called by fs/exec.c when the new ->mm is used
+	 * for the first time.
 	 */
 	__switch_mm(&new->context.id);
-	down_write_nested(&new->mmap_sem, 1);
 	uml_setup_stubs(new);
-	up_write(&new->mmap_sem);
 }
 
 static inline void switch_mm(struct mm_struct *prev, struct mm_struct *next, 
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
