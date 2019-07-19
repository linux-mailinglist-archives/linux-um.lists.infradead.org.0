Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6236DC29
	for <lists+linux-um@lfdr.de>; Fri, 19 Jul 2019 06:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0T5JDoSjOfI87DVLeVTOzmkelh0XFVtn0WGCyBM0AY=; b=BZMTWrROwbOqaV
	3OWEs+PLo3rbWxECTUBm0yGLBHENOvJYytYUq6ePS6OoN1bk5nqBnKUaoS8ND71l2vNWg+i4bOGA0
	eMCQxxnUP13xgGF1LXdprpWjN9dIWsgyjnXmnjMaPurcQCRjFNRGRHfaPzFly5soeT5DIl3MPjiA1
	VoSEg6EinZybZFim1rMVTHqjNFAWWwOyZjkdiHFvjPLc50zNAVdLGP22817RaNSVoUODWaDYBNZYF
	l1LVo5O0BfRgdMMkCR0b5oQG8EtyNJRuEaffBeyhp3GpdcCxff1K1a/dei6rlKDZYxNfjka7CiqOv
	Oqu2qtcenC/PHBEnJeWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKIG-0000w1-Vk; Fri, 19 Jul 2019 04:14:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKHH-00007j-Gu
 for linux-um@lists.infradead.org; Fri, 19 Jul 2019 04:13:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B4B521851;
 Fri, 19 Jul 2019 04:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509631;
 bh=CVtwTCLGPdKrlJ/UFSuA+mdkaxGnIx745tbHqGbPFJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mJ3wsjxm7flGnqYCZZJG1a6xVozQibm07m+z4ojpy/IXRQ2fHmONkWC6FWZzoBTD8
 mKj3dZDUExHVKW3P/maKwefF4+kXMqWFgJQh/cuBDQ+6MqUm345xhQ0UwN9413jS0y
 Up48+CZX0qXn2kf0jqT6QQ+vq0kWVRD21kw2bDXo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 28/45] um: Silence lockdep complaint about mmap_sem
Date: Fri, 19 Jul 2019 00:12:47 -0400
Message-Id: <20190719041304.18849-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041304.18849-1-sashal@kernel.org>
References: <20190719041304.18849-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_211351_701988_48ECE71F 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit 80bf6ceaf9310b3f61934c69b382d4912deee049 ]

When we get into activate_mm(), lockdep complains that we're doing
something strange:

    WARNING: possible circular locking dependency detected
    5.1.0-10252-gb00152307319-dirty #121 Not tainted
    ------------------------------------------------------
    inside.sh/366 is trying to acquire lock:
    (____ptrval____) (&(&p->alloc_lock)->rlock){+.+.}, at: flush_old_exec+0x703/0x8d7

    but task is already holding lock:
    (____ptrval____) (&mm->mmap_sem){++++}, at: flush_old_exec+0x6c5/0x8d7

    which lock already depends on the new lock.

    the existing dependency chain (in reverse order) is:

    -> #1 (&mm->mmap_sem){++++}:
           [...]
           __lock_acquire+0x12ab/0x139f
           lock_acquire+0x155/0x18e
           down_write+0x3f/0x98
           flush_old_exec+0x748/0x8d7
           load_elf_binary+0x2ca/0xddb
           [...]

    -> #0 (&(&p->alloc_lock)->rlock){+.+.}:
           [...]
           __lock_acquire+0x12ab/0x139f
           lock_acquire+0x155/0x18e
           _raw_spin_lock+0x30/0x83
           flush_old_exec+0x703/0x8d7
           load_elf_binary+0x2ca/0xddb
           [...]

    other info that might help us debug this:

     Possible unsafe locking scenario:

           CPU0                    CPU1
           ----                    ----
      lock(&mm->mmap_sem);
                                   lock(&(&p->alloc_lock)->rlock);
                                   lock(&mm->mmap_sem);
      lock(&(&p->alloc_lock)->rlock);

     *** DEADLOCK ***

    2 locks held by inside.sh/366:
     #0: (____ptrval____) (&sig->cred_guard_mutex){+.+.}, at: __do_execve_file+0x12d/0x869
     #1: (____ptrval____) (&mm->mmap_sem){++++}, at: flush_old_exec+0x6c5/0x8d7

    stack backtrace:
    CPU: 0 PID: 366 Comm: inside.sh Not tainted 5.1.0-10252-gb00152307319-dirty #121
    Stack:
     [...]
    Call Trace:
     [<600420de>] show_stack+0x13b/0x155
     [<6048906b>] dump_stack+0x2a/0x2c
     [<6009ae64>] print_circular_bug+0x332/0x343
     [<6009c5c6>] check_prev_add+0x669/0xdad
     [<600a06b4>] __lock_acquire+0x12ab/0x139f
     [<6009f3d0>] lock_acquire+0x155/0x18e
     [<604a07e0>] _raw_spin_lock+0x30/0x83
     [<60151e6a>] flush_old_exec+0x703/0x8d7
     [<601a8eb8>] load_elf_binary+0x2ca/0xddb
     [...]

I think it's because in exec_mmap() we have

	down_read(&old_mm->mmap_sem);
...
        task_lock(tsk);
...
	activate_mm(active_mm, mm);
	(which does down_write(&mm->mmap_sem))

I'm not really sure why lockdep throws in the whole knowledge
about the task lock, but it seems that old_mm and mm shouldn't
ever be the same (and it doesn't deadlock) so tell lockdep that
they're different.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/include/asm/mmu_context.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/include/asm/mmu_context.h b/arch/um/include/asm/mmu_context.h
index 1a60e1328e2f..6aca4c90aa1a 100644
--- a/arch/um/include/asm/mmu_context.h
+++ b/arch/um/include/asm/mmu_context.h
@@ -56,7 +56,7 @@ static inline void activate_mm(struct mm_struct *old, struct mm_struct *new)
 	 * when the new ->mm is used for the first time.
 	 */
 	__switch_mm(&new->context.id);
-	down_write(&new->mmap_sem);
+	down_write_nested(&new->mmap_sem, 1);
 	uml_setup_stubs(new);
 	up_write(&new->mmap_sem);
 }
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
