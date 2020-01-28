Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9414B1B3
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 10:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2KeW3JszkOVhqku2PlwMNv4lBm+c/9/46XZwJu0KkrQ=; b=czJDAdJWeopPQGtnwgw05tx1M0
	XsMHa01h1bEB7YzbflsaOVUQTQ0ejUcWlxkEelPFV7qMSu6VTGMOhkpAUQuGFbLSHV2IMpchuCAMU
	qyS4CvDkdB0X2DEemD4XXB3LwHfUwzpQY6UXZzMXbv/Z7f8tJrmQJBb18554F5pMdwKfq91NkVr+J
	37Xyz36a/KADSGFh2i6osMAlK6jBuFjgPKI/4l7ca9oco1VeFSVMo0GeOoQyFxKl3NONEf6hoQ/hE
	CReATB/iVlKZmE8UHvSvtXdvG/DxDqYF3iAqvoHcX5KlvGEWW8TIiu4X9P6i9/jRuKA0RBf9hl5Oo
	gph01gRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwN6V-0000rG-8E; Tue, 28 Jan 2020 09:24:15 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwN6S-0000qn-0n
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 09:24:13 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iwN6P-00081e-UC; Tue, 28 Jan 2020 09:24:10 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iwN6N-00056c-9c; Tue, 28 Jan 2020 09:24:09 +0000
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [GIT PULL] uml updates for 5.6-rc1
To: torvalds@linux-foundation.org
Message-ID: <aaf07936-6fd2-be40-15dc-f87e8e84091d@cambridgegreys.com>
Date: Tue, 28 Jan 2020 09:24:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_012412_086662_7C1C6800 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, johannes@sipsolutions.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Linus,

I am sending this on behalf of Richard who is traveling.

Please pull the following uml updates for v5.6-rc1:

The following changes since commit b3a987b0264d3ddbb24293ebff10eddfc472f653:

   Linux 5.5-rc6 (2020-01-12 16:55:08 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.6-rc1

for you to fetch changes up to d65197ad52494bed3b5e64708281b8295f76c391:

   um: Fix time-travel=inf-cpu with xor/raid6 (2020-01-19 22:42:06 +0100)

----------------------------------------------------------------
This pull request contains the following changes for UML:

- Fix for time travel mode
- Disable CONFIG_CONSTRUCTORS again
- A new command line option to have an non-raw serial line
- Preparations to remove obsolete UML network drivers

----------------------------------------------------------------
Brendan Higgins (1):
       um: Mark non-vector net transports as obsolete

Johannes Berg (3):
       um: Add an option to make serial driver non-raw
       Revert "um: Enable CONFIG_CONSTRUCTORS"
       um: Fix time-travel=inf-cpu with xor/raid6

  arch/um/Kconfig                  |  2 +
  arch/um/drivers/Kconfig          | 81 ++++++++++++++++++++--------------------
  arch/um/drivers/chan_user.h      |  2 +-
  arch/um/drivers/ssl.c            |  8 ++++
  arch/um/include/asm/Kbuild       |  1 -
  arch/um/include/asm/common.lds.S |  2 +-
  arch/um/include/asm/xor.h        |  7 ++++
  arch/um/kernel/dyn.lds.S         |  1 +
  init/Kconfig                     |  1 +
  kernel/gcov/Kconfig              |  2 +-
  10 files changed, 63 insertions(+), 44 deletions(-)
  create mode 100644 arch/um/include/asm/xor.h




_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
