Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB58C14B5C2
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 15:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRghI5WKI5sEyFRzxZZoDy8A/8jw+M048M6t4nJpwpg=; b=uySRzbm3ERgXNE
	OOJPe16mmo4pkObRnLMs6+RjsND7PC3FX9nCgd7ABR4vmgDZfPCzi7fI7Tq251SXHMWzo/EVFedOI
	U3NzJ1fPkcQ4e9J4FjC/mA4Bmp0GXq74XmrQ9GGaslxyT6YtOZH7f3bP3a22TCR8YfMj+bimxiMqd
	Ft4eYbxIbN7McE6nVEzVMztAf9LMVfYi9yLHii8w9YlnUGUbTGyezB43ureK+h0GJZATpf70sWreu
	yHx3OtTvdeSD7OhEE3kw7teVc9GJg3+Pa93WAf2q9CKFODxAI0V7/76gqfWI/vZQ4O/hoUhh6RTSA
	zRDqtyLXtgCr6rx5B8ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwRQ7-0007lZ-Gc; Tue, 28 Jan 2020 14:00:47 +0000
Received: from [177.41.103.99] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwRQ5-0007ia-UW; Tue, 28 Jan 2020 14:00:45 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1iwRPp-001BND-5V; Tue, 28 Jan 2020 15:00:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 00/27] docs: virt: convert text documents to ReST format
Date: Tue, 28 Jan 2020 15:00:01 +0100
Message-Id: <cover.1580219586.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-um@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Manually convert the documentation under Documentation/virt to ReST,
minimizing the usage of uneeded markups and preserving the documentation
writer's style.

PS.: Patches are against docs-next tree.

Mauro Carvalho Chehab (27):
  docs: kvm: add arm/pvtime.rst to index.rst
  docs: virt: convert UML documentation to ReST
  docs: virt: user_mode_linux.rst: update compiling instructions
  docs: virt: user_mode_linux.rst: fix URL references
  docs: virt: convert halt-polling.txt to ReST format
  docs: virt: Convert msr.txt to ReST format
  docs: kvm: devices/arm-vgic-its.txt to ReST format
  docs: kvm: devices/arm-vgit-v3.txt to ReST
  docs: kvm: convert devices/arm-vgit.txt to ReST
  docs: kvm: convert devices/mpic.txt to ReST
  docs: kvm: convert devices/s390_flic.txt to ReST
  docs: kvm: convert devices/vcpu.txt to ReST
  docs: kvm: convert devices/vcpu.txt to ReST
  docs: kvm: convert devices/vm.txt to ReST
  docs: kvm: convert devices/xics.txt to ReST
  docs: kvm: convert devices/xive.txt to ReST
  docs: kvm: Convert api.txt to ReST format
  docs: kvm: convert arm/hyp-abi.txt to ReST
  docs: kvm: arm/psci.txt: convert to ReST
  docs: kvm: Convert hypercalls.txt to ReST format
  docs: kvm: Convert locking.txt to ReST format
  docs: kvm: Convert mmu.txt to ReST format
  docs: kvm: Convert nested-vmx.txt to ReST format
  docs: kvm: Convert ppc-pv.txt to ReST format
  docs: kvm: Convert s390-diag.txt to ReST format
  docs: kvm: Convert timekeeping.txt to ReST format
  docs: kvm: review-checklist.txt: rename to ReST

 Documentation/virt/index.rst                  |    1 +
 Documentation/virt/kvm/{api.txt => api.rst}   | 3343 ++++++++++-------
 .../virt/kvm/arm/{hyp-abi.txt => hyp-abi.rst} |   26 +-
 Documentation/virt/kvm/arm/index.rst          |   12 +
 .../virt/kvm/arm/{psci.txt => psci.rst}       |   44 +-
 .../{arm-vgic-its.txt => arm-vgic-its.rst}    |  104 +-
 .../{arm-vgic-v3.txt => arm-vgic-v3.rst}      |  130 +-
 .../devices/{arm-vgic.txt => arm-vgic.rst}    |   87 +-
 Documentation/virt/kvm/devices/index.rst      |   19 +
 .../virt/kvm/devices/{mpic.txt => mpic.rst}   |    9 +-
 .../devices/{s390_flic.txt => s390_flic.rst}  |   68 +-
 Documentation/virt/kvm/devices/vcpu.rst       |  112 +
 Documentation/virt/kvm/devices/vcpu.txt       |   76 -
 .../virt/kvm/devices/{vfio.txt => vfio.rst}   |   23 +-
 .../virt/kvm/devices/{vm.txt => vm.rst}       |  204 +-
 .../virt/kvm/devices/{xics.txt => xics.rst}   |   26 +-
 .../virt/kvm/devices/{xive.txt => xive.rst}   |  146 +-
 .../{halt-polling.txt => halt-polling.rst}    |   84 +-
 .../kvm/{hypercalls.txt => hypercalls.rst}    |  127 +-
 Documentation/virt/kvm/index.rst              |   16 +
 .../virt/kvm/{locking.txt => locking.rst}     |  109 +-
 Documentation/virt/kvm/{mmu.txt => mmu.rst}   |   60 +-
 Documentation/virt/kvm/{msr.txt => msr.rst}   |  145 +-
 .../kvm/{nested-vmx.txt => nested-vmx.rst}    |   35 +-
 .../virt/kvm/{ppc-pv.txt => ppc-pv.rst}       |   24 +-
 ...iew-checklist.txt => review-checklist.rst} |    1 +
 .../virt/kvm/{s390-diag.txt => s390-diag.rst} |   11 +-
 .../kvm/{timekeeping.txt => timekeeping.rst}  |  221 +-
 ...odeLinux-HOWTO.txt => user_mode_linux.rst} | 1812 ++++-----
 29 files changed, 3954 insertions(+), 3121 deletions(-)
 rename Documentation/virt/kvm/{api.txt => api.rst} (71%)
 rename Documentation/virt/kvm/arm/{hyp-abi.txt => hyp-abi.rst} (80%)
 create mode 100644 Documentation/virt/kvm/arm/index.rst
 rename Documentation/virt/kvm/arm/{psci.txt => psci.rst} (61%)
 rename Documentation/virt/kvm/devices/{arm-vgic-its.txt => arm-vgic-its.rst} (71%)
 rename Documentation/virt/kvm/devices/{arm-vgic-v3.txt => arm-vgic-v3.rst} (77%)
 rename Documentation/virt/kvm/devices/{arm-vgic.txt => arm-vgic.rst} (66%)
 create mode 100644 Documentation/virt/kvm/devices/index.rst
 rename Documentation/virt/kvm/devices/{mpic.txt => mpic.rst} (92%)
 rename Documentation/virt/kvm/devices/{s390_flic.txt => s390_flic.rst} (88%)
 create mode 100644 Documentation/virt/kvm/devices/vcpu.rst
 delete mode 100644 Documentation/virt/kvm/devices/vcpu.txt
 rename Documentation/virt/kvm/devices/{vfio.txt => vfio.rst} (74%)
 rename Documentation/virt/kvm/devices/{vm.txt => vm.rst} (61%)
 rename Documentation/virt/kvm/devices/{xics.txt => xics.rst} (85%)
 rename Documentation/virt/kvm/devices/{xive.txt => xive.rst} (63%)
 rename Documentation/virt/kvm/{halt-polling.txt => halt-polling.rst} (64%)
 rename Documentation/virt/kvm/{hypercalls.txt => hypercalls.rst} (55%)
 rename Documentation/virt/kvm/{locking.txt => locking.rst} (79%)
 rename Documentation/virt/kvm/{mmu.txt => mmu.rst} (94%)
 rename Documentation/virt/kvm/{msr.txt => msr.rst} (75%)
 rename Documentation/virt/kvm/{nested-vmx.txt => nested-vmx.rst} (90%)
 rename Documentation/virt/kvm/{ppc-pv.txt => ppc-pv.rst} (91%)
 rename Documentation/virt/kvm/{review-checklist.txt => review-checklist.rst} (97%)
 rename Documentation/virt/kvm/{s390-diag.txt => s390-diag.rst} (91%)
 rename Documentation/virt/kvm/{timekeeping.txt => timekeeping.rst} (85%)
 rename Documentation/virt/uml/{UserModeLinux-HOWTO.txt => user_mode_linux.rst} (74%)

-- 
2.24.1



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
