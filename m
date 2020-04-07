Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14891A0DD5
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 14:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0V33T3e9a+v1tUATDqi2IrcONy+cXa60eIdwiVju1s=; b=EoA8PA5AGi2Koo
	qzNkq8/ROhYdRVUBMIzhmkl0TjFY3tQcLQcwDNm0Odwb0tZadCOGXT3VaaolAw1Fg2QQKn0HRePpY
	UODHj1virNRdYvpoFIlJuhhVpMvSOdocjJdDGRbIDDvPx33R23IWPBuJezg1ohtW5/YeCh3+4gNzW
	huUJsSwgAoCT/LrFYs1iP9C00xABWf9VDDLueBf1MDGcDc8e/P6uZkwpy2ICG/irEcg5IM6uVJzFS
	Z60rFikh6JZD+puljHb95iWW5DHIvRuCG5GX9NM3AAXughq/AL48db+/oAi2h23Zik7YXTmvWT45n
	wwb3N6lLYnuu4L6wapWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnUZ-0007Cb-Bk; Tue, 07 Apr 2020 12:38:11 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnUV-00079S-9C
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 12:38:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 93DF36094C4B;
 Tue,  7 Apr 2020 14:37:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 21QNlY7B4jTl; Tue,  7 Apr 2020 14:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 07A6061A702F;
 Tue,  7 Apr 2020 14:37:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wQQN5T5b7pal; Tue,  7 Apr 2020 14:37:54 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id DC0C96089348;
 Tue,  7 Apr 2020 14:37:54 +0200 (CEST)
Date: Tue, 7 Apr 2020 14:37:54 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1397520880.91813.1586263074756.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML changes for v5.7-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: yMW6DVf/Myb6Ix/xFJbxllyqgiGnhg==
Thread-Topic: UML changes for v5.7-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_053807_614558_C6272291 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

The following changes since commit 16fbf79b0f83bc752cee8589279f1ebfe57b3b6e:

  Linux 5.6-rc7 (2020-03-22 18:31:56 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.7-rc1

for you to fetch changes up to 4a7c46247f9c620c0390a15cb00b6ef9576b9c23:

  um: Remove some unnecessary NULL checks in vector_user.c (2020-03-29 23:56:47 +0200)

----------------------------------------------------------------
This pull request contains the following changes for UML:

- New mode for time travel, external via virtio
- Fixes for ubd to make sure no requests can get lost
- Fixes for vector networking
- Allow CONFIG_STATIC_LINK only when possible
- Minor cleanups and fixes

----------------------------------------------------------------
Alan Maguire (1):
      um: falloc.h needs to be directly included for older libc

Alex Dewar (1):
      um: Remove some unnecessary NULL checks in vector_user.c

Andy Shevchenko (2):
      um: Don't use console_drivers directly
      hostfs: Use kasprintf() instead of fixed buffer formatting

Brendan Higgins (1):
      um: Make CONFIG_STATIC_LINK actually static

David Gow (1):
      um: Fix overlapping ELF segments when statically linked

Gabriel Krisman Bertazi (2):
      um: ubd: Prevent buffer overrun on command completion
      um: ubd: Retry buffer read on any kind of error

Johannes Berg (6):
      um: Move timer-internal.h to non-shared
      um: time-travel: Rewrite as an event scheduler
      um: virtio: Implement VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS
      um: Implement time-travel=ext
      um: Implement ndelay/udelay in time-travel mode
      um: Implement cpu_relax() as ndelay(1) for time-travel

Krzysztof Kozlowski (1):
      um: Cleanup CONFIG_IOSCHED_CFQ

Leon Romanovsky (2):
      um: Don't overwrite ethtool driver version
      um: Delete never executed timer

Sjoerd Simons (1):
      um: vector: Avoid NULL ptr deference if transport is unset

Wen Yang (1):
      um: Fix len of file in create_pid_file

 arch/um/Kconfig                         |   9 +-
 arch/um/configs/i386_defconfig          |   2 +-
 arch/um/configs/x86_64_defconfig        |   2 +-
 arch/um/drivers/Kconfig                 |   3 +
 arch/um/drivers/net_kern.c              |  13 -
 arch/um/drivers/ubd_kern.c              |  12 +-
 arch/um/drivers/vector_kern.c           |   5 +-
 arch/um/drivers/vector_user.c           |  15 +-
 arch/um/drivers/vhost_user.h            |  12 +-
 arch/um/drivers/virtio_uml.c            | 153 +++++++--
 arch/um/include/asm/Kbuild              |   1 -
 arch/um/include/asm/delay.h             |  30 ++
 arch/um/include/linux/time-internal.h   |  84 +++++
 arch/um/include/shared/os.h             |   1 +
 arch/um/include/shared/timer-internal.h |  76 -----
 arch/um/kernel/kmsg_dump.c              |   9 +-
 arch/um/kernel/process.c                |  39 +--
 arch/um/kernel/skas/syscall.c           |   5 +-
 arch/um/kernel/time.c                   | 538 ++++++++++++++++++++++++++++++--
 arch/um/kernel/uml.lds.S                |   2 +-
 arch/um/os-Linux/file.c                 |  31 ++
 arch/um/os-Linux/time.c                 |   1 -
 arch/um/os-Linux/umid.c                 |   5 +-
 arch/x86/um/asm/processor.h             |  12 +-
 fs/hostfs/hostfs_kern.c                 |  12 +-
 include/uapi/linux/um_timetravel.h      | 128 ++++++++
 26 files changed, 986 insertions(+), 214 deletions(-)
 create mode 100644 arch/um/include/asm/delay.h
 create mode 100644 arch/um/include/linux/time-internal.h
 delete mode 100644 arch/um/include/shared/timer-internal.h
 create mode 100644 include/uapi/linux/um_timetravel.h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
