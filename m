Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB80E2526
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 23:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWDtlRoORgF28MqPVINXwv6cwb0Jd+Cxz+zJAmj3eYU=; b=K25jXzyTx9YiP1
	yY7/BLdT3NW0rsCsbpzWIUKq/4ugQZemLXZKEmhcVRyUMP/psJBA0h38hV0TU+v+6CVNLMjvPJDfC
	SDe70dy7jye8jb7RL7Etu0Dk5NzawSGubA+ebOqkfBZjAfTnZrT/X43Spq8lsPJlwlxsCm8LYPBZ6
	Iya3PHM9uIzzqDNEPe+0kXADPcyl8MQrivCVCg/0MslCLyyfmTto6pd1hpffAYSnn00pqYy/Xu1Mt
	syh8ohmMVwP1tq7X6jVIHR6cx72J7L8kVEXsutVjaHbDpYCXjS5NBvTdQkEJ/gQB8ugbfJeQTjnMU
	yVbGbXxsbNTt9dvs9iUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO4q-0007u2-Qg; Wed, 23 Oct 2019 21:21:56 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO4d-0007k8-OA; Wed, 23 Oct 2019 21:21:45 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5FA2B148EA243;
 Wed, 23 Oct 2019 14:21:36 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:21:33 -0700 (PDT)
Message-Id: <20191023.142133.1980049426362664052.davem@davemloft.net>
To: rppt@kernel.org
Subject: Re: [PATCH v2 09/12] sparc32: use pgtable-nopud instead of
 4level-fixup
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191023195859.GA24394@rapoport-lnx>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-10-git-send-email-rppt@kernel.org>
 <20191023195859.GA24394@rapoport-lnx>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 23 Oct 2019 14:21:37 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142143_788822_B344B3FE 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: James.Bottomley@HansenPartnership.com, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, deanbo422@gmail.com, gerg@linux-m68k.org,
 anton.ivanov@cambridgegreys.com, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, richard@nod.at, deller@gmx.de,
 linux@armlinux.org.uk, rppt@linux.ibm.com, geert@linux-m68k.org,
 msalter@redhat.com, mattst88@gmail.com, jdike@addtoit.com, sammy@sammy.net,
 arnd@arndb.de, Vineet.Gupta1@synopsys.com, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, green.hu@gmail.com, kirill@shutemov.name,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@kernel.org>
Date: Wed, 23 Oct 2019 22:59:00 +0300

> I've just discovered that I've booted qemu-sparc with the wrong kernel and
> this patch crashes miserably :(
> 
> The better version that does allow qemu-sparc to boot with folded page
> tables is below:
> 
> 
> From a90e1d157b7f8786a4276ffc8553f2167c8bc0e7 Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Tue, 1 Oct 2019 17:14:38 +0300
> Subject: [PATCH v2] sparc32: use pgtable-nopud instead of 4level-fixup
> 
> 32-bit version of sparc has three-level page tables and can use
> pgtable-nopud and folding of the upper layers.
> 
> Replace usage of include/asm-generic/4level-fixup.h with
> include/asm-generic/pgtable-nopud.h and adjust page table manipulation
> macros and functions accordingly.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: David S. Miller <davem@davemloft.net>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
