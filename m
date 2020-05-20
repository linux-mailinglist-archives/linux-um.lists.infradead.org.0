Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE11DBE5C
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 21:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=POkbUl0r+8w1ELf8kmK2emaHk9xtBEtNUro0vxdgPds=; b=iC0wtXJlAg0Hbe
	P9G6ADLXGv+myeDykKB/b4r3Dl0fXaAxbZRMeoDwkZxt6dm5GvUwb+LVoksYibsSbEVylpIgxY1J2
	ZzsV3xNsgT//z1KI6nV61RiOyJDgc6PtaZM1rBfRtasNKknc1Q7Vp1WAd2zDBPbeCNKhKk/kcbJy1
	WfOOC377LXzdUSyJxg1vz8DMRBIBuNNtb55J+B2YF3Pq1/yHYixZWNk+bgEQ236T3JlkKiHBpxTEN
	h1zBG+Hi/o2/ULLyunLZDeKYUKUSunonFWWYhIPqPAF1boM3euZg7vBiQsWwCwkJ4oij5LA/50+Kv
	gHaGxs96FKuggRs6LtMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbUit-0003Gw-2f; Wed, 20 May 2020 19:49:51 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbUiq-0003Ee-0N
 for linux-um@lists.infradead.org; Wed, 20 May 2020 19:49:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5B045623A7A4;
 Wed, 20 May 2020 21:49:37 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id TH9rs0QSko1X; Wed, 20 May 2020 21:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 07759623A7CB;
 Wed, 20 May 2020 21:49:37 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8HTSTKpM1ZAC; Wed, 20 May 2020 21:49:36 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id DD072623A7A4;
 Wed, 20 May 2020 21:49:36 +0200 (CEST)
Date: Wed, 20 May 2020 21:49:36 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1547930539.249342.1590004176796.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML fixes for 5.7 final
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: 7oeqR7ADUshtFLOz07bQL7e19w9UfQ==
Thread-Topic: UML fixes for 5.7 final
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_124948_188976_FE3071DF 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 1d2cc5ac6f6668cc15216d51051103c61467d7e8:

  Merge tag 'riscv-for-linus-5.7-rc4' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux (2020-04-29 09:25:32 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.7-rc6

for you to fetch changes up to 2e27d33d22afa3d12746f854d6a4fad7ad7b86de:

  um: Fix typo in vector driver transport option definition (2020-04-29 21:22:15 +0200)

----------------------------------------------------------------
This pull request contains the following bug fixes for UML:

- Two missing includes which cause build issues on recent systems
- Correctly set TRANS_GRE_LEN in our vector network driver

----------------------------------------------------------------
Ignat Korchagin (1):
      um: Fix typo in vector driver transport option definition

Johannes Berg (2):
      um: Fix xor.h include
      um: syscall.c: include <asm/unistd.h>

 arch/um/drivers/vector_user.h | 2 +-
 arch/um/include/asm/xor.h     | 2 +-
 arch/um/kernel/skas/syscall.c | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
