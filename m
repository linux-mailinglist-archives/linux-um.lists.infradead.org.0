Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85AD1D0657
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 07:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8XowT6Mm2dxWR332lonz1Ku7cHZI6oA4R2FjxEUodA=; b=ao5QrUsE9ze3/Q
	EVZhIGryPKJsSJDTmS4FWCNZMyBL/6TiYX9GtLvz4H11pf5QvVMh7IvDtMdQJ9dKklS6BBVlHokks
	SMypBqhTlunIycgkdIqWuq35U725rRrUHZqJ9luX8AH8A8u3Uw+1cweZkiee7uCJwNl5tKipKOLOK
	Cx3PXKvUlbYRC7VLbrXMhKdHP1+5qZLa0g70pyU/pVBPsK6qmNjAarvS0Vry4V52M6ztzwV/89pB5
	Vry8gVfKajIqDOdTYKcfdYqFnw8UYsCPwazjaJP7oB+R4zROV6zQlKgecRJ9yYZBWS7G7bCPQExpi
	AD6FAxDEZcDg1kHKR+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYjqA-0006te-Jw; Wed, 13 May 2020 05:21:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYjq6-0006rf-0h; Wed, 13 May 2020 05:21:55 +0000
Received: from kernel.org (unknown [87.70.20.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06A0920675;
 Wed, 13 May 2020 05:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589347309;
 bh=eXxsFWMRwsjxCxIEwZvSMlzVp4JoExGumCwVZGQ437k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C67nj68nb/WBhkQSlanqvNkuKuI8DtxJ9ZixH0J1b2BuEaAk5a5wNzO7jtcEk7q0p
 JlpDcwhtcaCA3Vi5e8fc7aXovPbaDZ6qYnKJdRNeliw/je8Bz0w2ebGvIUy/BChi12
 FHMPcFva8/LxUc1i7w8oclm0hcf1j8ysLYGt5c9s=
Date: Wed, 13 May 2020 08:21:33 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 03/12] mm: reorder includes after introduction of
 linux/pgtable.h
Message-ID: <20200513052133.GN14260@kernel.org>
References: <20200512184422.12418-1-rppt@kernel.org>
 <20200512184422.12418-4-rppt@kernel.org>
 <20200512192013.GY16070@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512192013.GY16070@bombadil.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_222154_098426_05C336F8 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Thomas Gleixner <tglx@linutronix.de>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 12:20:13PM -0700, Matthew Wilcox wrote:
> On Tue, May 12, 2020 at 09:44:13PM +0300, Mike Rapoport wrote:
> > diff --git a/arch/alpha/kernel/proto.h b/arch/alpha/kernel/proto.h
> > index a093cd45ec79..701a05090141 100644
> > --- a/arch/alpha/kernel/proto.h
> > +++ b/arch/alpha/kernel/proto.h
> > @@ -2,8 +2,6 @@
> >  #include <linux/interrupt.h>
> >  #include <linux/io.h>
> >  
> > -#include <linux/pgtable.h>
> > -
> >  /* Prototypes of functions used across modules here in this directory.  */
> >  
> >  #define vucp	volatile unsigned char  *
> 
> Looks like your script has a bug if linux/pgtable.h is the last include
> in the file?

Script indeed cannot handle all the corner case, but this is not one of
them.
I've started initially to look into removing asm/pgtable.h if it was not
needed, but I've run out of patience very soon. This file is what
sneaked in from that attempt.

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
