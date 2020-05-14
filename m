Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732951D2BB2
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 11:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLrj/oS7xARsM92eyDiXObJEWKyMsFz3j0alg0OwRB0=; b=FFE3FEilr1cuK7
	WFn9HjwTZVgEVG5Ytkkyry/ekX+imkR5e/+jPwO1VjRSIVS+PCSOt/JgLgk8UkfkBawGVIkQZsULv
	VYzHPmFeBvaprHuumBxHFdNKFC7ZjZLIf7pjOhFV3LAXACeE31TEQ2bPFg4nUQ/SGTg66EhdX8AjZ
	XBQVkomyRr0slLdgtHkcUSbU+CfP9SjH76YujknD2kNcUkmF01yoJ85VykM7mxqHQfR7bsoJY/jvy
	bCoOGwiS/477valBLu1Ed4vIECSQnx2Z94m3JLwqRaQ8T9uFrWoRhl/e+sNrdq46QJwLnOdy+RGKc
	n1Seg+/vLuu/bual9bgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAPl-0001s1-Jj; Thu, 14 May 2020 09:44:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAPj-0001qu-Or
 for linux-um@lists.infradead.org; Thu, 14 May 2020 09:44:28 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6A0D20671;
 Thu, 14 May 2020 09:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589449464;
 bh=F5xzM4P9ET4yKXEBz9PLWzDD7uANZxM9kOF6Hi0Phw0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jk6aTEoiSH2Mnk1a8lmx/pG+iP7t0ZtuYeeNlaBT8nrfRmPuNI0GvacMD/IuOomjY
 pOyeQAkAAiS0iTtbNPcuvt5G/Wr3M2YGy3VFqa+2II8TrrWHG3i20uAlz3jwxVHn2J
 wzQ54xIWj0eC9lQRZeFVyATuE2gt0dSEVAB8XocA=
Date: Thu, 14 May 2020 18:44:19 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Message-Id: <20200514184419.0fbf548ccf883c097d94573a@kernel.org>
In-Reply-To: <CAHk-=wjP8ysEZnNFi_+E1ZEFGpcbAN8kbYHrCnC93TX6XX+jEQ@mail.gmail.com>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200514082054.f817721ce196f134e6820644@kernel.org>
 <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
 <20200514100009.a8e6aa001f0ace5553c7904f@kernel.org>
 <CAHk-=wjP8ysEZnNFi_+E1ZEFGpcbAN8kbYHrCnC93TX6XX+jEQ@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_024427_846023_DEE1C123 
X-CRM114-Status: GOOD (  16.65  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, bpf@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 19:43:24 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Wed, May 13, 2020 at 6:00 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
> >
> > > But we should likely at least disallow it entirely on platforms where
> > > we really can't - or pick one hardcoded choice. On sparc, you really
> > > _have_ to specify one or the other.
> >
> > OK. BTW, is there any way to detect the kernel/user space overlap on
> > memory layout statically? If there, I can do it. (I don't like
> > "if (CONFIG_X86)" thing....)
> > Or, maybe we need CONFIG_ARCH_OVERLAP_ADDRESS_SPACE?
> 
> I think it would be better to have a CONFIG variable that
> architectures can just 'select' to show that they are ok with separate
> kernel and user addresses.
> 
> Because I don't think we have any way to say that right now as-is. You
> can probably come up with hacky ways to approximate it, ie something
> like
> 
>     if (TASK_SIZE_MAX > PAGE_OFFSET)
>         .... they overlap ..
> 
> which would almost work, but..

It seems TASK_SIZE_MAX is defined only on x86 and s390, what about
comparing STACK_TOP_MAX with PAGE_OFFSET ?
Anyway, I agree that the best way is introducing a CONFIG.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
