Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E71D794D
	for <lists+linux-um@lfdr.de>; Mon, 18 May 2020 15:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tzL75ekfYjn2pKKdxUcWvT47kVPheF2eis0+ocG/9Nw=; b=cEdMbujHZpSWIk+C0nVwVH6rX
	0GdI6WVr/UXNpy5rruS4V/8NRfrl3jC7z57JiUETkuo4UiH5pooy6xrH+prTrNLr21hU9tfX0BK7T
	xRMy7bELt16jVOcr6+i/j3zX9UVDZvLJI+cr2y+WF/wfai0ZOf6Jc+S96lU4euhnHubsg4FpLLLmY
	0x0Dgj8bupXgt/FQsF7n7i6+7N3MO0yRP7vcU03MYW6uX6J01/mUZ5zqHUuHfWfp60IgweaCtkqzm
	q5YzNyc1i4U4iLIEjyIn+MIF9ibd0WOVo3TvmWq/DvXiVi+wUNCdohCTR+P0uFvvoQEDKm/M7VqGT
	kCIq1Wj5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafSX-000606-VC; Mon, 18 May 2020 13:05:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafRt-0002z0-0s; Mon, 18 May 2020 13:04:58 +0000
Received: from linux-8ccs.fritz.box (p57a239f2.dip0.t-ipconnect.de
 [87.162.57.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD592207D3;
 Mon, 18 May 2020 13:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589807091;
 bh=bQOel0Owh5Jsy7D7It/KRrP7k71oDOZIFpOrOzQ9AhA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YqZBNW7MWDqiTSCxmly8oMsUsg4WN7C2JY9aDcakJBGzWq/UP00eyjCdLpfBridZ5
 yEWjvi7dzrZTtKaXjd/2d6IuYc59csAsUVZSfRs5jq7Rr7rdKAsQZJF1Mc/s+At7dk
 CA/eN9nd7O70bEOB0H0VqgRfIrUmH9kT0XamFLi8=
Date: Mon, 18 May 2020 15:04:44 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 29/29] module: move the set_fs hack for
 flush_icache_range to m68k
Message-ID: <20200518130444.GA21096@linux-8ccs.fritz.box>
References: <20200515143646.3857579-1-hch@lst.de>
 <20200515143646.3857579-30-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515143646.3857579-30-hch@lst.de>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060453_129489_00B8F7D0 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Roman Zippel <zippel@linux-m68k.org>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

+++ Christoph Hellwig [15/05/20 16:36 +0200]:
>flush_icache_range generally operates on kernel addresses, but for some
>reason m68k needed a set_fs override.  Move that into the m68k code
>insted of keeping it in the module loader.
>
>Signed-off-by: Christoph Hellwig <hch@lst.de>
>Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
>Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
>---
> arch/m68k/mm/cache.c | 4 ++++
> kernel/module.c      | 8 --------
> 2 files changed, 4 insertions(+), 8 deletions(-)

Thanks for cleaning this up. For module.c:

Acked-by: Jessica Yu <jeyu@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
