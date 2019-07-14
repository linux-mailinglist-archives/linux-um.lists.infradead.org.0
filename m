Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B29680E6
	for <lists+linux-um@lfdr.de>; Sun, 14 Jul 2019 21:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i4QgGGhBCsBUxG/U1D7S7KzhUSdpp/auxyw+kFXRXh0=; b=DlpvM2rsnklt3t
	MRTctRdrdxebSj5Mzi7wi36E8r209hFYLwoZyqlvFyT12+0TAgH3un8oUAJRxqQ3EIslhYzim8lkk
	EdX+l6asmi/nl6o8r5sitcvy2Fy1aCbrWEzLM9wFam02jwRugz/oQJDMxG1UEOijJ6UXEThFeJv3c
	qlxkKlAiid9NKTp1/4n28c6ima2vcySFD8YF50JQUKZlG7NqHQX6Vxj9K2dBlXh9HYr6Braz1xA1s
	d1KmeXoIlZk7ruTYSs4WQGBnU4G8/51K5HljIQ/04Zfpm4/3ysviLD696UpGtEoktLfvu3rktu4rC
	xk7IME8/N0nGEWFdnLeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmjl9-00030s-TQ; Sun, 14 Jul 2019 19:02:07 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmjl7-00030R-7P
 for linux-um@lists.infradead.org; Sun, 14 Jul 2019 19:02:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2AA0D6058369;
 Sun, 14 Jul 2019 21:02:01 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cFwaXX4j7aim; Sun, 14 Jul 2019 21:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D01A5608311E;
 Sun, 14 Jul 2019 21:02:00 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fMomH4AhTAp7; Sun, 14 Jul 2019 21:02:00 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id AF16C6083266;
 Sun, 14 Jul 2019 21:02:00 +0200 (CEST)
Date: Sun, 14 Jul 2019 21:02:00 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1979519421.38685.1563130920671.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML changes for 5.3-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Index: 7lfOxEzdE9qGSepyNCpNJsgfjzn/vg==
Thread-Topic: UML changes for 5.3-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_120205_460417_B6F2A548 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

The following changes since commit 4b972a01a7da614b4796475f933094751a295a2f:

  Linux 5.2-rc6 (2019-06-22 16:01:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.3-rc1

for you to fetch changes up to b482e48d29f1461fd0d059a17f32bcfa274127b3:

  um: fix build without CONFIG_UML_TIME_TRAVEL_SUPPORT (2019-07-04 09:52:18 +0200)

----------------------------------------------------------------
This pull request contains the following changes for UML:

- A new timer mode, time travel, for testing with UML
- Many bugfixes/improvements for the serial line driver
- Various bugfixes

----------------------------------------------------------------
Johannes Berg (9):
      um: fix os_timer_one_shot()
      um: Timer code cleanup
      um: Remove locking in deactivate_all_fds()
      um: Silence lockdep complaint about mmap_sem
      um: Don't garbage collect in deactivate_all_fds()
      um: Remove drivers/ssl.h
      um: Pass nsecs to os timer functions
      um: Support time travel mode
      um: fix build without CONFIG_UML_TIME_TRAVEL_SUPPORT

Jouni Malinen (1):
      um: Fix IRQ controller regression on console read

Krzysztof Kozlowski (1):
      um: configs: Remove useless UEVENT_HELPER_PATH

Marek Majkowski (1):
      um: Fix kcov crash during startup

 arch/um/Kconfig                         |  12 +++
 arch/um/configs/i386_defconfig          |   1 -
 arch/um/configs/x86_64_defconfig        |   1 -
 arch/um/drivers/chan_kern.c             |  52 +++++++++++--
 arch/um/drivers/ssl.c                   |   1 -
 arch/um/drivers/ssl.h                   |  13 ----
 arch/um/include/asm/mmu_context.h       |   2 +-
 arch/um/include/shared/os.h             |  10 +--
 arch/um/include/shared/timer-internal.h |  48 ++++++++++++
 arch/um/kernel/irq.c                    |   9 ++-
 arch/um/kernel/process.c                |  42 +++++++++-
 arch/um/kernel/skas/Makefile            |   2 +
 arch/um/kernel/skas/syscall.c           |  11 +++
 arch/um/kernel/time.c                   | 131 ++++++++++++++++++++++++++++++--
 arch/um/os-Linux/time.c                 | 127 +++++++------------------------
 15 files changed, 320 insertions(+), 142 deletions(-)
 delete mode 100644 arch/um/drivers/ssl.h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
