Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A748DB9CF2
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 09:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Htt3HQiskKvXHk3GuKeksuqDOfnCzEE2Z56f+cuMUMw=; b=Bu5rTR4JaJzrVv
	uzDVl/UKMx7iOOpzKYThmqyIyj00BAKXMJyng4Ubvpjf7S6KRrMirbLUyzjIa5vETWtFunJdj8e2v
	GSZ5wod8+84RU4bne669EvfcMJYcAsEd/PGppJ5yHhrPAKfA03nFZ4Qgh8X+w4mrDYJVHOqRj8QRK
	U+2E+Hk74E1qpH8SgDP9Yz0BGMd6TaGWq8dB2XkkCjYUx0Yz1hNs4V67ebXWkyEiQ53rBLi9wQeez
	Vl1lzDv+H30eWYug7bqozC3mwE77teyNpLJXwjC2RytOE02CyWDiSYTabhsCMw3SjoZh2jCJr1Ak9
	jTJU4MqoW+SRCzXoOdDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBZxA-0007A1-Cr; Sat, 21 Sep 2019 07:37:12 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBZwn-0006xs-29
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 07:36:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6319D608310C;
 Sat, 21 Sep 2019 09:36:40 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ilQrffyV4CW8; Sat, 21 Sep 2019 09:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D5914613E49B;
 Sat, 21 Sep 2019 09:36:39 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id y12NbUqo-tQA; Sat, 21 Sep 2019 09:36:39 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id AF1CC613E499;
 Sat, 21 Sep 2019 09:36:39 +0200 (CEST)
Date: Sat, 21 Sep 2019 09:36:39 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <466534311.3528.1569051399653.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML updates for 5.4-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Index: HRx4bnt0zNOkT+gCjIYD7sjawTx5hg==
Thread-Topic: UML updates for 5.4-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_003649_397470_0C9254E2 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 089cf7f6ecb266b6a4164919a2e69bd2f938374a:

  Linux 5.3-rc7 (2019-09-02 09:57:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.4-rc1

for you to fetch changes up to 73625ed66389d4c620520058d828f43a93ab4d0c:

  um: irq: Fix LAST_IRQ usage in init_IRQ() (2019-09-16 08:38:58 +0200)

----------------------------------------------------------------
This pull request contains the following changes for UML:

- virtio support
- Fixes for our new time travel mode
- Various improvements to make lockdep and kasan work better
- SPDX header updates

----------------------------------------------------------------
Alex Dewar (4):
      um: Add SPDX headers for files in arch/um/drivers
      um: Add SPDX headers to files in arch/um/kernel/
      um: Add SPDX headers for files in arch/um/os-Linux
      um: Add SPDX headers for files in arch/um/include

Anton Ivanov (5):
      um: Fix off by one error in IRQ enumeration
      um: Add legacy tap support and rename existing vector to hybrid
      um: Added support for unix socket transports and bess transport
      um: Add checks to mtu parameter parsing
      um: Error handling fixes in vector drivers

Erel Geron (2):
      um: drivers: Add virtio vhost-user driver
      um: irq: Fix LAST_IRQ usage in init_IRQ()

Johannes Berg (13):
      um: Remove sig_info[SIGALRM]
      um: Avoid using uninitialized regs
      um: Remove misleading #define ARCh_IRQ_ENABLED
      um: Implement TRACE_IRQFLAGS_SUPPORT
      um: Fix VDSO compiler warning
      um: Place (soft)irq text with macros
      um: Enable CONFIG_CONSTRUCTORS
      um: time-travel: Fix periodic timers
      um: time-travel: Restrict time update in IRQ handler
      um: Don't use generic barrier.h
      um: Use real DMA barriers
      um: virtio: Implement VHOST_USER_PROTOCOL_F_SLAVE_REQ
      um: virtio: Implement VHOST_USER_PROTOCOL_F_REPLY_ACK

Masahiro Yamada (1):
      um: Remove meaningless clearing of clean-files

 arch/um/drivers/Kconfig                  |    7 +
 arch/um/drivers/Makefile                 |    3 +-
 arch/um/drivers/chan.h                   |    2 +-
 arch/um/drivers/chan_kern.c              |    2 +-
 arch/um/drivers/chan_user.c              |    2 +-
 arch/um/drivers/chan_user.h              |    2 +-
 arch/um/drivers/cow_user.c               |    2 +-
 arch/um/drivers/daemon.h                 |    2 +-
 arch/um/drivers/daemon_kern.c            |    2 +-
 arch/um/drivers/daemon_user.c            |    2 +-
 arch/um/drivers/fd.c                     |    2 +-
 arch/um/drivers/harddog_user.c           |    2 +-
 arch/um/drivers/hostaudio_kern.c         |    2 +-
 arch/um/drivers/line.c                   |    2 +-
 arch/um/drivers/line.h                   |    2 +-
 arch/um/drivers/mconsole.h               |    2 +-
 arch/um/drivers/mconsole_kern.c          |    2 +-
 arch/um/drivers/mconsole_kern.h          |    2 +-
 arch/um/drivers/mconsole_user.c          |    2 +-
 arch/um/drivers/net_kern.c               |    2 +-
 arch/um/drivers/net_user.c               |    2 +-
 arch/um/drivers/null.c                   |    2 +-
 arch/um/drivers/pcap_kern.c              |    2 +-
 arch/um/drivers/pcap_user.c              |    2 +-
 arch/um/drivers/pcap_user.h              |    2 +-
 arch/um/drivers/port.h                   |    2 +-
 arch/um/drivers/port_kern.c              |    2 +-
 arch/um/drivers/port_user.c              |    2 +-
 arch/um/drivers/pty.c                    |    2 +-
 arch/um/drivers/slip_kern.c              |    2 +-
 arch/um/drivers/slip_user.c              |    2 +-
 arch/um/drivers/slirp_kern.c             |    2 +-
 arch/um/drivers/slirp_user.c             |    2 +-
 arch/um/drivers/ssl.c                    |    2 +-
 arch/um/drivers/stdio_console.c          |    2 +-
 arch/um/drivers/stdio_console.h          |    2 +-
 arch/um/drivers/tty.c                    |    2 +-
 arch/um/drivers/ubd.h                    |    2 +-
 arch/um/drivers/ubd_kern.c               |    2 +-
 arch/um/drivers/ubd_user.c               |    2 +-
 arch/um/drivers/umcast.h                 |    2 +-
 arch/um/drivers/umcast_kern.c            |    2 +-
 arch/um/drivers/umcast_user.c            |    2 +-
 arch/um/drivers/vde.h                    |    2 +-
 arch/um/drivers/vde_kern.c               |    2 +-
 arch/um/drivers/vde_user.c               |    2 +-
 arch/um/drivers/vector_kern.c            |   44 +-
 arch/um/drivers/vector_kern.h            |    3 +-
 arch/um/drivers/vector_transports.c      |   42 +-
 arch/um/drivers/vector_user.c            |  293 +++++---
 arch/um/drivers/vector_user.h            |    9 +-
 arch/um/drivers/vhost_user.h             |  117 +++
 arch/um/drivers/virtio_uml.c             | 1177 ++++++++++++++++++++++++++++++
 arch/um/drivers/xterm.c                  |    2 +-
 arch/um/drivers/xterm.h                  |    2 +-
 arch/um/drivers/xterm_kern.c             |    2 +-
 arch/um/include/asm/Kbuild               |    1 -
 arch/um/include/asm/common.lds.S         |    2 +-
 arch/um/include/asm/irq.h                |    7 +-
 arch/um/include/asm/irqflags.h           |    1 -
 arch/um/include/asm/kmap_types.h         |    2 +-
 arch/um/include/asm/mmu.h                |    2 +-
 arch/um/include/asm/mmu_context.h        |    2 +-
 arch/um/include/asm/page.h               |    2 +-
 arch/um/include/asm/pgalloc.h            |    2 +-
 arch/um/include/asm/pgtable-2level.h     |    2 +-
 arch/um/include/asm/pgtable-3level.h     |    2 +-
 arch/um/include/asm/pgtable.h            |    2 +-
 arch/um/include/asm/processor-generic.h  |    2 +-
 arch/um/include/asm/ptrace-generic.h     |    2 +-
 arch/um/include/asm/thread_info.h        |    2 +-
 arch/um/include/asm/tlbflush.h           |    2 +-
 arch/um/include/asm/uaccess.h            |    2 +-
 arch/um/include/shared/arch.h            |    2 +-
 arch/um/include/shared/as-layout.h       |    2 +-
 arch/um/include/shared/elf_user.h        |    2 +-
 arch/um/include/shared/frame_kern.h      |    2 +-
 arch/um/include/shared/irq_kern.h        |    2 +-
 arch/um/include/shared/irq_user.h        |    2 +-
 arch/um/include/shared/kern.h            |    2 +-
 arch/um/include/shared/kern_util.h       |    2 +-
 arch/um/include/shared/longjmp.h         |    2 +-
 arch/um/include/shared/mem.h             |    2 +-
 arch/um/include/shared/net_kern.h        |    2 +-
 arch/um/include/shared/net_user.h        |    2 +-
 arch/um/include/shared/os.h              |   14 +-
 arch/um/include/shared/ptrace_user.h     |    2 +-
 arch/um/include/shared/registers.h       |    2 +-
 arch/um/include/shared/sigio.h           |    2 +-
 arch/um/include/shared/skas/mm_id.h      |    2 +-
 arch/um/include/shared/skas/skas.h       |    2 +-
 arch/um/include/shared/skas/stub-data.h  |    2 +-
 arch/um/include/shared/timer-internal.h  |   11 +-
 arch/um/include/shared/um_malloc.h       |    2 +-
 arch/um/include/shared/user.h            |    2 +-
 arch/um/kernel/Makefile                  |    3 +-
 arch/um/kernel/config.c.in               |    4 +-
 arch/um/kernel/dyn.lds.S                 |    3 +-
 arch/um/kernel/exec.c                    |    2 +-
 arch/um/kernel/exitcode.c                |    2 +-
 arch/um/kernel/gmon_syms.c               |    2 +-
 arch/um/kernel/gprof_syms.c              |    2 +-
 arch/um/kernel/initrd.c                  |    2 +-
 arch/um/kernel/irq.c                     |    4 +-
 arch/um/kernel/ksyms.c                   |    4 +-
 arch/um/kernel/mem.c                     |    3 +-
 arch/um/kernel/physmem.c                 |    3 +-
 arch/um/kernel/process.c                 |   18 +-
 arch/um/kernel/ptrace.c                  |    2 +-
 arch/um/kernel/reboot.c                  |    2 +-
 arch/um/kernel/sigio.c                   |    2 +-
 arch/um/kernel/signal.c                  |   30 +-
 arch/um/kernel/skas/Makefile             |    2 +-
 arch/um/kernel/skas/clone.c              |    2 +-
 arch/um/kernel/skas/mmu.c                |    6 +-
 arch/um/kernel/skas/process.c            |    4 +-
 arch/um/kernel/skas/syscall.c            |    2 +-
 arch/um/kernel/skas/uaccess.c            |    2 +-
 arch/um/kernel/syscall.c                 |    2 +-
 arch/um/kernel/time.c                    |   13 +-
 arch/um/kernel/tlb.c                     |    2 +-
 arch/um/kernel/trap.c                    |    2 +-
 arch/um/kernel/um_arch.c                 |    3 +-
 arch/um/kernel/umid.c                    |    2 +-
 arch/um/kernel/uml.lds.S                 |    2 +
 arch/um/os-Linux/Makefile                |    2 +-
 arch/um/os-Linux/drivers/Makefile        |    2 +-
 arch/um/os-Linux/drivers/etap.h          |    2 +-
 arch/um/os-Linux/drivers/ethertap_kern.c |    2 +-
 arch/um/os-Linux/drivers/ethertap_user.c |    2 +-
 arch/um/os-Linux/drivers/tuntap.h        |    2 +-
 arch/um/os-Linux/drivers/tuntap_kern.c   |    2 +-
 arch/um/os-Linux/drivers/tuntap_user.c   |    2 +-
 arch/um/os-Linux/file.c                  |   46 +-
 arch/um/os-Linux/helper.c                |    2 +-
 arch/um/os-Linux/irq.c                   |    2 +-
 arch/um/os-Linux/main.c                  |    4 +-
 arch/um/os-Linux/mem.c                   |    2 +-
 arch/um/os-Linux/process.c               |    2 +-
 arch/um/os-Linux/registers.c             |    2 +-
 arch/um/os-Linux/sigio.c                 |    8 +-
 arch/um/os-Linux/signal.c                |   52 +-
 arch/um/os-Linux/skas/Makefile           |    2 +-
 arch/um/os-Linux/skas/mem.c              |    2 +-
 arch/um/os-Linux/skas/process.c          |   14 +-
 arch/um/os-Linux/start_up.c              |    2 +-
 arch/um/os-Linux/time.c                  |    2 +-
 arch/um/os-Linux/tty.c                   |    2 +-
 arch/um/os-Linux/umid.c                  |    2 +-
 arch/um/os-Linux/util.c                  |    2 +-
 arch/x86/um/asm/barrier.h                |   12 +-
 arch/x86/um/vdso/um_vdso.c               |    2 +-
 init/Kconfig                             |    1 -
 kernel/gcov/Kconfig                      |    2 +-
 154 files changed, 1913 insertions(+), 291 deletions(-)
 create mode 100644 arch/um/drivers/vhost_user.h
 create mode 100644 arch/um/drivers/virtio_uml.c

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
