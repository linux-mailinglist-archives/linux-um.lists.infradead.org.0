Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8321526D8
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JluRtF2ljo3tURbGg3F9w8i6oANYMtFuEZK1x9/o6gg=; b=VKdiNKFvtdSE0j
	pWEROYC2i6XNx2amerLrxKncu2py3AvpGwsSV+qVynwnFeThGm7okNFs3tWkwiRCOPTnsYmkZjpWY
	a7eTd33OqHgpDoxf/wa7zxgkqBEF6UFfNMwMR8WwthCmqlsiUD2rdrnik9uKRRjy78t765WSkA+/Y
	e99JgOgr/OE50SUwvvv6ZaR97DU5v0ulzSeOWjv9PpRSC4HZQG5xjjsmDXNqb20Ex54CLA6pbZQ1H
	7CJOoEPGz14e5xvaC5WuqeV2MqdSR9INmaNb9tIexCW8SeAentVm4Qy2XLD6joCeW+SfyPpJxRDm0
	hzwZd/RclzoDkVxMW0Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9A-00081x-HD; Wed, 05 Feb 2020 07:30:52 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF95-0007zs-Bq
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:30:51 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9so505346plo.11
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E7Mtp/BalioRcimnichIfHCB8FWCdhbMM4v9/DNNa8U=;
 b=r3qUO50b4Eesn5tOnC/icnE9Yhlt98PQdJPZy3QEGNvCMtVUEop9z0HBMTzGm6o7Ty
 AnJmKAvAsnR9seVEQ/H0bB6YN5GL7a83LBhfM3rrLBR0Vaq8U+IMnDt1iyiZOcPr0zzz
 dqVcLLSkE+Ch1S3xpbPYieBCQFTT2Dp4IXlo7pMkVyz6tBH0Myinbz3vZk86Z++OCDkY
 yNHy7EUkLe+CH70N+KQR6gakCFavDPO1FbT6AkjUt5ZZ2yPFWzzxGxMUfJypYHLAnKE8
 KekXBbutDpMK9G9SucKhQlWaZPzcMlCfyu8kHYbAeYUX2YsQKwu/btiVr/dQRzMRf8hT
 1DrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E7Mtp/BalioRcimnichIfHCB8FWCdhbMM4v9/DNNa8U=;
 b=lFKoVYCGoX51UWhXnn6okD58BJ3ZG/LKn+5H+nC8Y1GlRXsNW1p9IxFqnn7XAu/0QY
 754TO6aU9XlE+AuL7jwBLfWLKCCIPBx/6LgGVwkWbdMjH1GHws3QWGnU1hjwoIVKcxVJ
 tz3majvJp3papbmI96Xky7Y6cFTwNt1wU+CDCyLrpt/yF/E+OJSmedfRJ2ZJxVuDAjDl
 O8CrMvz/LjHAotaIoUzsN8QQ5/u7ADgSBsCJEI7YeuawQyJgpajeJocfc1f53+asL4CT
 IbBzcnb6ZDETXPGhyQBLKvnV626TXu9lA2ix3ab3JqlhMO7XpmMbti24B8WcelxAU/zo
 Ofhg==
X-Gm-Message-State: APjAAAVZmWktHLK4e2mGxiK1jpScBCYSy7a2sxxhvajMsS0Q98gP9Cii
 s14DrN2853KJLFq80bf8XhM=
X-Google-Smtp-Source: APXvYqwPsycmpF07ogPWu1XTdO5E5/99L9qkQDkwvzGc1KhDIwm+vKYTsOhlegS+iLGeFtrC0P9i2w==
X-Received: by 2002:a17:90a:db0b:: with SMTP id
 g11mr3969679pjv.140.1580887846180; 
 Tue, 04 Feb 2020 23:30:46 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id x65sm28245425pfb.171.2020.02.04.23.30.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:30:44 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 3E7AE202572F98; Wed,  5 Feb 2020 16:30:43 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 00/26] Unifying LKL into UML
Date: Wed,  5 Feb 2020 16:30:09 +0900
Message-Id: <cover.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233047_404153_B9968971 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

This patchset is to ask opinions from folks, whether LKL codes is good to
integrate into UML code base.  We wish to have any kind of feedback from
your kind reviews.  There are numbers of commits which should be asked for
reviews to other mailing lists; we will do it later once we got discussed
in this mailing list.

Changes in rfc v3:
- use UML drivers (net, block) from LKL programs
- drop virtio device implementations
- drop mingw32 (Windows) host
- drop android (arm/aarch64) host
- drop FreeBSD (x86_64) host
- drop LD_PRELOAD (hijack) support
- update milestone

rfc v2:
- use UMMODE instead of SUBARCH to switch UML or LKL
- tools/lkl directory is still there. I confirmed we can move under arch/um
  (e.g., arch/um/lkl/hosts).  I will move it IF this is preferable.
- drop several patches involved non-uml directory
- drop several patches which are not required
- refine commit logs
- document updated




LKL (Linux Kernel Library) is aiming to allow reusing the Linux kernel code
as extensively as possible with minimal effort and reduced maintenance
overhead.

Examples of how LKL can be used are: creating userspace applications
(running on Linux and other operating systems) that can read or write Linux
filesystems or can use the Linux networking stack, creating kernel drivers
for other operating systems that can read Linux filesystems, bootloaders
support for reading/writing Linux filesystems, etc.

With LKL, the kernel code is compiled into an object file that can be
directly linked by applications. The API offered by LKL is based on the
Linux system call interface.

LKL is originally implemented as an architecture port in arch/lkl, but this
series of commits tries to integrate this into arch/um as one of the mode
of UML.  This was discussed during RFC email of LKL (*1).

The latest LKL version can be found at https://github.com/lkl/linux

Milestone
=========
This patches is a first step toward upstreaming *library mode* of Linux kernel,
but we think we need to have several steps toward our goal, describing in the
below.

1. Put LKL code under arch/um (arch/um/lkl), and build it in a separate way
from UML.
2. Use UML driver implementations in LKL as a minimum set of patches
-  Only support x86 sub architecture (dependency to UML drivers)
3. Support broader host supports
- add virtio device features

For the step 1, we put LKL as one of UMMODE in order to make less effort to
integrate (make ARCH=um UMMODE=library).  The modification to existing UML
code is trying to be minimized.



Building LKL the host library and LKL applications
==================================================

% cd tools/lkl
% make

will build LKL as a object file, it will install it in tools/lkl/lib together
with the headers files in tools/lkl/include then will build the host library,
tests and a few of application examples:

* tests/boot - a simple applications that uses LKL and exercises the basic
  LKL APIs

* tests/net-test - a simple applications that uses network feature of
  LKL and exercises the basic network-related APIs

* fs2tar - a tool that converts a filesystem image to a tar archive

* cptofs/cpfromfs - a tool that copies files to/from a filesystem image

* lklfuse - a tool that can mount a filesystem image in userspace,
  without root priviledges, using FUSE

% make run-tests

should run the above `tests/boot` and `tests/net-test` and report errors if
there are any.

Supported hosts
===============

Currently LKL supports Linux userspace applications. New hosts can be added
relatively easy if the host supports gcc and GNU ld. Previous versions of
LKL supported Windows kernel and Haiku kernel hosts, and we also have WIP
patches with rump-hypercall interface, used in UEFI, as well as macOS
userspace (part of POSIX).

There is also musl-libc port for LKL, which might be interested in for some
folks.


Further readings about LKL
=========================

- Discussion in github LKL issue
https://github.com/lkl/linux/issues/304

- LKL (an article)
https://www.researchgate.net/profile/Nicolae_Tapus2/publication/224164682_LKL_The_Linux_kernel_library/links/02bfe50fd921ab4f7c000000.pdf

*1 RFC email to LKML (back in 2015)
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1012277.html



Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit d65197ad52494bed3b5e64708281b8295f76c391:

  um: Fix time-travel=inf-cpu with xor/raid6 (2020-01-19 22:42:06 +0100)

are available in the Git repository at:

  git://github.com/thehajime/linux b3072caaef01f2cef5f34bc012e066826798500c
  https://github.com/thehajime/linux/tree/upstream-to-uml-5.6-rc1-v3

Hajime Tazaki (6):
  lkl tools: host lib: filesystem helpers
  lkl tools: host lib: networking helpers
  um lkl: add CI scripts to conduct regression tests
  um lkl: add UML network driver for lkl
  um lkl: add UML block device driver (ubd) for lkl
  um: fix clone flags to be familar with valgrind

Octavian Purdila (20):
  asm-generic: atomic64: allow using generic atomic64 on 64bit platforms
  arch: add __SYSCALL_DEFINE_ARCH
  um lkl: architecture skeleton for Linux kernel library
  um lkl: host interface
  um lkl: memory handling
  um lkl: kernel threads support
  um lkl: interrupt support
  um lkl: system call interface and application API
  um lkl: timers, time and delay support
  um lkl: basic kernel console support
  um lkl: initialization and cleanup
  um lkl: plug in the build system
  lkl tools: skeleton for host side library
  lkl tools: host lib: add utilities functions
  lkl tools: host lib: posix host operations
  lkl tools: add test programs
  lkl tools: cptofs that reads/writes to/from a filesystem image
  lkl tools: fs2tar that converts a filesystem image to tar
  lkl tools: add lklfuse
  um lkl: add documentation

 .circleci/config.yml                       |  198 ++++
 Documentation/virt/uml/lkl.txt             |   64 ++
 MAINTAINERS                                |    8 +
 arch/um/Kconfig                            |   13 +
 arch/um/Makefile                           |   19 +-
 arch/um/Makefile.um                        |   10 +
 arch/um/drivers/Makefile                   |    2 +
 arch/um/drivers/ubd_kern.c                 |    6 +-
 arch/um/drivers/ubd_user.c                 |    3 +-
 arch/um/kernel/Makefile                    |    4 +
 arch/um/kernel/irq.c                       |    4 +
 arch/um/lkl/.gitignore                     |    2 +
 arch/um/lkl/Kconfig                        |   88 ++
 arch/um/lkl/Kconfig.debug                  |    0
 arch/um/lkl/Makefile                       |   69 ++
 arch/um/lkl/auto.conf                      |    1 +
 arch/um/lkl/configs/lkl_defconfig          | 1052 ++++++++++++++++++++
 arch/um/lkl/include/asm/Kbuild             |   80 ++
 arch/um/lkl/include/asm/bitsperlong.h      |   11 +
 arch/um/lkl/include/asm/byteorder.h        |    7 +
 arch/um/lkl/include/asm/cpu.h              |   14 +
 arch/um/lkl/include/asm/elf.h              |   15 +
 arch/um/lkl/include/asm/host_ops.h         |   10 +
 arch/um/lkl/include/asm/irq.h              |   13 +
 arch/um/lkl/include/asm/page.h             |   14 +
 arch/um/lkl/include/asm/pgtable.h          |   57 ++
 arch/um/lkl/include/asm/processor.h        |   60 ++
 arch/um/lkl/include/asm/ptrace.h           |   25 +
 arch/um/lkl/include/asm/sched.h            |   23 +
 arch/um/lkl/include/asm/setup.h            |    7 +
 arch/um/lkl/include/asm/syscalls.h         |   18 +
 arch/um/lkl/include/asm/syscalls_32.h      |   43 +
 arch/um/lkl/include/asm/thread_info.h      |   70 ++
 arch/um/lkl/include/asm/tlb.h              |   12 +
 arch/um/lkl/include/asm/uaccess.h          |   64 ++
 arch/um/lkl/include/asm/unistd.h           |   27 +
 arch/um/lkl/include/asm/unistd_32.h        |   31 +
 arch/um/lkl/include/asm/vmlinux.lds.h      |   14 +
 arch/um/lkl/include/asm/xor.h              |    9 +
 arch/um/lkl/include/uapi/asm/Kbuild        |    9 +
 arch/um/lkl/include/uapi/asm/bitsperlong.h |   13 +
 arch/um/lkl/include/uapi/asm/byteorder.h   |   11 +
 arch/um/lkl/include/uapi/asm/host_ops.h    |  143 +++
 arch/um/lkl/include/uapi/asm/irq.h         |   36 +
 arch/um/lkl/include/uapi/asm/sigcontext.h  |   16 +
 arch/um/lkl/include/uapi/asm/siginfo.h     |   11 +
 arch/um/lkl/include/uapi/asm/swab.h        |   11 +
 arch/um/lkl/include/uapi/asm/syscalls.h    |  349 +++++++
 arch/um/lkl/include/uapi/asm/unistd.h      |   16 +
 arch/um/lkl/kernel/Makefile                |    4 +
 arch/um/lkl/kernel/asm-offsets.c           |    3 +
 arch/um/lkl/kernel/console.c               |   42 +
 arch/um/lkl/kernel/cpu.c                   |  223 +++++
 arch/um/lkl/kernel/irq.c                   |  209 ++++
 arch/um/lkl/kernel/misc.c                  |   60 ++
 arch/um/lkl/kernel/setup.c                 |  198 ++++
 arch/um/lkl/kernel/syscalls.c              |  192 ++++
 arch/um/lkl/kernel/syscalls_32.c           |  159 +++
 arch/um/lkl/kernel/threads.c               |  227 +++++
 arch/um/lkl/kernel/time.c                  |  145 +++
 arch/um/lkl/kernel/vmlinux.lds.S           |   51 +
 arch/um/lkl/mm/Makefile                    |    1 +
 arch/um/lkl/mm/bootmem.c                   |   99 ++
 arch/um/lkl/scripts/headers_install.py     |  196 ++++
 arch/um/os-Linux/Makefile                  |    5 +
 arch/um/os-Linux/file.c                    |    9 +
 include/asm-generic/atomic64.h             |    2 +
 include/linux/syscalls.h                   |    6 +
 tools/lkl/.gitignore                       |   13 +
 tools/lkl/Build                            |    6 +
 tools/lkl/Makefile                         |  131 +++
 tools/lkl/Makefile.autoconf                |   67 ++
 tools/lkl/Targets                          |   17 +
 tools/lkl/cptofs.c                         |  636 ++++++++++++
 tools/lkl/fs2tar.c                         |  412 ++++++++
 tools/lkl/include/.gitignore               |    1 +
 tools/lkl/include/lkl.h                    |  788 +++++++++++++++
 tools/lkl/include/lkl_config.h             |   61 ++
 tools/lkl/include/lkl_host.h               |  112 +++
 tools/lkl/lib/.gitignore                   |    3 +
 tools/lkl/lib/Build                        |   13 +
 tools/lkl/lib/config.c                     |  750 ++++++++++++++
 tools/lkl/lib/dbg.c                        |  300 ++++++
 tools/lkl/lib/dbg_handler.c                |   44 +
 tools/lkl/lib/endian.h                     |   31 +
 tools/lkl/lib/fs.c                         |  471 +++++++++
 tools/lkl/lib/jmp_buf.c                    |   14 +
 tools/lkl/lib/jmp_buf.h                    |    8 +
 tools/lkl/lib/net.c                        |  818 +++++++++++++++
 tools/lkl/lib/posix-host.c                 |  356 +++++++
 tools/lkl/lib/um/Build                     |    3 +
 tools/lkl/lib/um/um_block.c                |   17 +
 tools/lkl/lib/um/um_glue.c                 |   58 ++
 tools/lkl/lib/um/um_net.c                  |   25 +
 tools/lkl/lib/utils.c                      |  266 +++++
 tools/lkl/lklfuse.c                        |  659 ++++++++++++
 tools/lkl/scripts/checkpatch.sh            |   60 ++
 tools/lkl/scripts/lkl-jenkins.sh           |   21 +
 tools/lkl/tests/Build                      |    3 +
 tools/lkl/tests/boot.c                     |  562 +++++++++++
 tools/lkl/tests/boot.sh                    |    9 +
 tools/lkl/tests/cla.c                      |  159 +++
 tools/lkl/tests/cla.h                      |   33 +
 tools/lkl/tests/disk.c                     |  203 ++++
 tools/lkl/tests/disk.sh                    |   61 ++
 tools/lkl/tests/lklfuse.sh                 |  110 ++
 tools/lkl/tests/net-setup.sh               |   74 ++
 tools/lkl/tests/net-test.c                 |  291 ++++++
 tools/lkl/tests/net.sh                     |  108 ++
 tools/lkl/tests/run.py                     |  180 ++++
 tools/lkl/tests/tap13.py                   |  209 ++++
 tools/lkl/tests/test.c                     |  126 +++
 tools/lkl/tests/test.h                     |   72 ++
 tools/lkl/tests/test.sh                    |  182 ++++
 tools/lkl/tests/valgrind.supp              |  105 ++
 tools/lkl/tests/valgrind2xunit.py          |   69 ++
 116 files changed, 13327 insertions(+), 3 deletions(-)
 create mode 100644 .circleci/config.yml
 create mode 100644 Documentation/virt/uml/lkl.txt
 create mode 100644 arch/um/Makefile.um
 create mode 100644 arch/um/lkl/.gitignore
 create mode 100644 arch/um/lkl/Kconfig
 create mode 100644 arch/um/lkl/Kconfig.debug
 create mode 100644 arch/um/lkl/Makefile
 create mode 100644 arch/um/lkl/auto.conf
 create mode 100644 arch/um/lkl/configs/lkl_defconfig
 create mode 100644 arch/um/lkl/include/asm/Kbuild
 create mode 100644 arch/um/lkl/include/asm/bitsperlong.h
 create mode 100644 arch/um/lkl/include/asm/byteorder.h
 create mode 100644 arch/um/lkl/include/asm/cpu.h
 create mode 100644 arch/um/lkl/include/asm/elf.h
 create mode 100644 arch/um/lkl/include/asm/host_ops.h
 create mode 100644 arch/um/lkl/include/asm/irq.h
 create mode 100644 arch/um/lkl/include/asm/page.h
 create mode 100644 arch/um/lkl/include/asm/pgtable.h
 create mode 100644 arch/um/lkl/include/asm/processor.h
 create mode 100644 arch/um/lkl/include/asm/ptrace.h
 create mode 100644 arch/um/lkl/include/asm/sched.h
 create mode 100644 arch/um/lkl/include/asm/setup.h
 create mode 100644 arch/um/lkl/include/asm/syscalls.h
 create mode 100644 arch/um/lkl/include/asm/syscalls_32.h
 create mode 100644 arch/um/lkl/include/asm/thread_info.h
 create mode 100644 arch/um/lkl/include/asm/tlb.h
 create mode 100644 arch/um/lkl/include/asm/uaccess.h
 create mode 100644 arch/um/lkl/include/asm/unistd.h
 create mode 100644 arch/um/lkl/include/asm/unistd_32.h
 create mode 100644 arch/um/lkl/include/asm/vmlinux.lds.h
 create mode 100644 arch/um/lkl/include/asm/xor.h
 create mode 100644 arch/um/lkl/include/uapi/asm/Kbuild
 create mode 100644 arch/um/lkl/include/uapi/asm/bitsperlong.h
 create mode 100644 arch/um/lkl/include/uapi/asm/byteorder.h
 create mode 100644 arch/um/lkl/include/uapi/asm/host_ops.h
 create mode 100644 arch/um/lkl/include/uapi/asm/irq.h
 create mode 100644 arch/um/lkl/include/uapi/asm/sigcontext.h
 create mode 100644 arch/um/lkl/include/uapi/asm/siginfo.h
 create mode 100644 arch/um/lkl/include/uapi/asm/swab.h
 create mode 100644 arch/um/lkl/include/uapi/asm/syscalls.h
 create mode 100644 arch/um/lkl/include/uapi/asm/unistd.h
 create mode 100644 arch/um/lkl/kernel/Makefile
 create mode 100644 arch/um/lkl/kernel/asm-offsets.c
 create mode 100644 arch/um/lkl/kernel/console.c
 create mode 100644 arch/um/lkl/kernel/cpu.c
 create mode 100644 arch/um/lkl/kernel/irq.c
 create mode 100644 arch/um/lkl/kernel/misc.c
 create mode 100644 arch/um/lkl/kernel/setup.c
 create mode 100644 arch/um/lkl/kernel/syscalls.c
 create mode 100644 arch/um/lkl/kernel/syscalls_32.c
 create mode 100644 arch/um/lkl/kernel/threads.c
 create mode 100644 arch/um/lkl/kernel/time.c
 create mode 100644 arch/um/lkl/kernel/vmlinux.lds.S
 create mode 100644 arch/um/lkl/mm/Makefile
 create mode 100644 arch/um/lkl/mm/bootmem.c
 create mode 100755 arch/um/lkl/scripts/headers_install.py
 create mode 100644 tools/lkl/.gitignore
 create mode 100644 tools/lkl/Build
 create mode 100644 tools/lkl/Makefile
 create mode 100644 tools/lkl/Makefile.autoconf
 create mode 100644 tools/lkl/Targets
 create mode 100644 tools/lkl/cptofs.c
 create mode 100644 tools/lkl/fs2tar.c
 create mode 100644 tools/lkl/include/.gitignore
 create mode 100644 tools/lkl/include/lkl.h
 create mode 100644 tools/lkl/include/lkl_config.h
 create mode 100644 tools/lkl/include/lkl_host.h
 create mode 100644 tools/lkl/lib/.gitignore
 create mode 100644 tools/lkl/lib/Build
 create mode 100644 tools/lkl/lib/config.c
 create mode 100644 tools/lkl/lib/dbg.c
 create mode 100644 tools/lkl/lib/dbg_handler.c
 create mode 100644 tools/lkl/lib/endian.h
 create mode 100644 tools/lkl/lib/fs.c
 create mode 100644 tools/lkl/lib/jmp_buf.c
 create mode 100644 tools/lkl/lib/jmp_buf.h
 create mode 100644 tools/lkl/lib/net.c
 create mode 100644 tools/lkl/lib/posix-host.c
 create mode 100644 tools/lkl/lib/um/Build
 create mode 100644 tools/lkl/lib/um/um_block.c
 create mode 100644 tools/lkl/lib/um/um_glue.c
 create mode 100644 tools/lkl/lib/um/um_net.c
 create mode 100644 tools/lkl/lib/utils.c
 create mode 100644 tools/lkl/lklfuse.c
 create mode 100755 tools/lkl/scripts/checkpatch.sh
 create mode 100755 tools/lkl/scripts/lkl-jenkins.sh
 create mode 100644 tools/lkl/tests/Build
 create mode 100644 tools/lkl/tests/boot.c
 create mode 100755 tools/lkl/tests/boot.sh
 create mode 100644 tools/lkl/tests/cla.c
 create mode 100644 tools/lkl/tests/cla.h
 create mode 100644 tools/lkl/tests/disk.c
 create mode 100755 tools/lkl/tests/disk.sh
 create mode 100755 tools/lkl/tests/lklfuse.sh
 create mode 100644 tools/lkl/tests/net-setup.sh
 create mode 100644 tools/lkl/tests/net-test.c
 create mode 100755 tools/lkl/tests/net.sh
 create mode 100755 tools/lkl/tests/run.py
 create mode 100644 tools/lkl/tests/tap13.py
 create mode 100644 tools/lkl/tests/test.c
 create mode 100644 tools/lkl/tests/test.h
 create mode 100644 tools/lkl/tests/test.sh
 create mode 100644 tools/lkl/tests/valgrind.supp
 create mode 100755 tools/lkl/tests/valgrind2xunit.py

-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
