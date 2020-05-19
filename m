Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DB91D9C29
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/a70tUVO3Rl8RSrhgSIMVqD6tnD1OCCmepozN2nkiM=; b=FhWmRet8vpm0HB
	T9OssVie+r9tO1uOzaGqbU7aRUrU6uL3+652qyJ4kfJQkQevg4l9BjC05OpmETAjUNTqEFVxljpww
	fM4KKu2ZgYOm9dgACAOjhPvdeJYdc58BHpXUUnL0glDTn+/xRytjzpFS9rlZIkMXL8fOfHIBlzggK
	gM0OgfvTWzPVNwIf2t9eCeMv7hdUpHG/eRe1TjqwTeDTHMgqrp1oT7fBXwkugHriuWRT4VKe/iRL4
	PMN+ovxUZMU5QHtZF/16Zg4/75e4kD+LCWm41GvLmmZHx6pyTmh599yZoI9HHYDV/E/bAG1Mtdz8m
	FE5YSU/DszG+7cU2Jzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4st-0007nz-BJ; Tue, 19 May 2020 16:14:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4sp-0007mf-WA
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:14:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1F99968B02; Tue, 19 May 2020 18:14:19 +0200 (CEST)
Date: Tue, 19 May 2020 18:14:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 11/20] bpf: factor out a bpf_trace_copy_string helper
Message-ID: <20200519161418.GA26545@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-12-hch@lst.de>
 <CAHk-=wjm3HQy_awVX-WyF6KrSuE1pcFRaNX_XhiLKkBUFUZBtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjm3HQy_awVX-WyF6KrSuE1pcFRaNX_XhiLKkBUFUZBtQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091424_179285_60AE5CBD 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 09:07:55AM -0700, Linus Torvalds wrote:
> On Tue, May 19, 2020 at 6:45 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > +       switch (fmt_ptype) {
> > +       case 's':
> > +#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> > +               strncpy_from_unsafe(buf, unsafe_ptr, bufsz);
> > +               break;
> > +#endif
> > +       case 'k':
> > +               strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);
> > +               break;
> 
> That 's' case needs a "fallthrough;" for the overlapping case,
> methinks. Otherwise you'll get warnings.

I don't think we need it as the case of

	case 'a':
	case 'b':
		do_stuff();
		break;

has always been fine even with the fallthough warnings.  And the
rest of the stuff gets removed by cpp..

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
