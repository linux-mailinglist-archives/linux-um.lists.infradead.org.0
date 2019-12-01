Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CAB10E36A
	for <lists+linux-um@lfdr.de>; Sun,  1 Dec 2019 21:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/soZxXnI02JE5HQFQOBgpOp9kwkCBesTGeLSDDWtFfE=; b=RQn7GuP1JQcbmF
	U3ELp7sCyM9/ZfzKbYq6zb6kxdkLnW+neJhC7CRaCB3RqpEVlf45RynL1UHHcScDCBFjwb4zez45q
	wjkgYlJybhvo0Efg0nPz+MGkewf0bitPW2gse6Jv3KkdztLzA5UX58VrQcgHaBxozSCacpzQ+utOO
	UpjTn3+ZMxxzEU8OWMmkNLqWZOx1fWZVwQmhiqr2y1uKTDf3kDFvqreo7Qmq0BWALRB7Mb8SiEeJy
	e8VmR98lznV22getdEkTOQou9mMwjEu4o9MxIcp2MNfbBlfXvHnOh/Q7SKhcE7avwHOZ9QTYkw7NK
	MaOSRQsLe7nC4Lp2n/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibVgP-0007YB-8P; Sun, 01 Dec 2019 20:19:05 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibVgG-0007Pb-AI
 for linux-um@lists.infradead.org; Sun, 01 Dec 2019 20:18:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 23B196075EB6;
 Sun,  1 Dec 2019 21:18:55 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Xx61N7WiFue1; Sun,  1 Dec 2019 21:18:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CF17D609D2D9;
 Sun,  1 Dec 2019 21:18:54 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gvqUPrLA80Gv; Sun,  1 Dec 2019 21:18:54 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id B72596094C4B;
 Sun,  1 Dec 2019 21:18:54 +0100 (CET)
Date: Sun, 1 Dec 2019 21:18:54 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1468911323.103246.1575231534725.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML changes for v5.5-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: 76qbsLMIGCl1qWUEP3cLHVH+nD3HKw==
Thread-Topic: UML changes for v5.5-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_121856_503398_0C38EE1F 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Linus,

The following changes since commit e472c64aa4fa6150c6076fd36d101d667d71c30a:

  Merge tag 'dmaengine-fix-5.4-rc6' of git://git.infradead.org/users/vkoul/slave-dma (2019-10-31 07:34:09 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.5-rc1

for you to fetch changes up to 9807019a62dc670c73ce8e59e09b41ae458c34b3:

  um: Loadable BPF "Firmware" for vector drivers (2019-11-25 22:43:31 +0100)

----------------------------------------------------------------
This pull request contains the following changes for UML:

- Fixes for our new virtio code
- Fix for the irqflags tracer
- Kconfig coding style fixes
- Allow BPF firmware loading in our vector driver

----------------------------------------------------------------
Anton Ivanov (1):
      um: Loadable BPF "Firmware" for vector drivers

Johannes Berg (4):
      um: Don't trace irqflags during shutdown
      um: virtio: Remove device on disconnect
      um: virtio: Keep reading on -EAGAIN
      um: virtio_uml: Disallow modular build

Krzysztof Kozlowski (1):
      um: Fix Kconfig indentation

 arch/um/Kconfig               |   2 +-
 arch/um/drivers/Kconfig       |   2 +-
 arch/um/drivers/vector_kern.c | 113 ++++++++++++++++++++++++++++++++++++++----
 arch/um/drivers/vector_kern.h |   8 ++-
 arch/um/drivers/vector_user.c |  94 ++++++++++++++++++++++++++++-------
 arch/um/drivers/vector_user.h |   8 ++-
 arch/um/drivers/virtio_uml.c  |  76 ++++++++++++++++++----------
 arch/um/os-Linux/main.c       |   2 +-
 8 files changed, 247 insertions(+), 58 deletions(-)

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
