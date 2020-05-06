Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185E51C7885
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 19:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWPd+u7cU7c1e+UR8u40h4QphNY6w608V2A/fwiU6co=; b=Dl14WR8ehd9KeM
	g27E8Dqh1nbOuGgdMm9jnKH/JB4ye93UjfdDlxRHNuVzF9NNDxYvR9w0gUJyxXI4Bb47V1w9lPzJV
	T7gZ34BytF7guVWEAjkGfPU6totK+xlwR/WwYQxQHXOV1Mqfez90CCdAtHdyhH4+HG+1Byj6qtohf
	GKau+ZX4E8FNgT7NgKRgDg0fd9oxdM925N4A8qE+N2hmf/Wt/ruvmKBNHKwC7t5qqmzwUXF1DNY/h
	ZKPfn3b+DUm6OTKtwsCbtKGHLJMnrDTorbIqXZAGtA1t2OPi/Byu/14pAzSFajUvoZ/t32El0tG6U
	zcG4XfsThr9rkRR9UKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWO9D-0001Im-9A; Wed, 06 May 2020 17:47:55 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWO99-0001HZ-Fr
 for linux-um@lists.infradead.org; Wed, 06 May 2020 17:47:53 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C3AAB68C7B; Wed,  6 May 2020 19:47:47 +0200 (CEST)
Date: Wed, 6 May 2020 19:47:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 08/15] maccess: rename strnlen_unsafe_user to
 strnlen_user_unsafe
Message-ID: <20200506174747.GA7549@lst.de>
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-9-hch@lst.de>
 <CAHk-=wj3T6u_kj8r9f3aGXCjuyN210_gJC=AXPFm9=wL-dGALA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wj3T6u_kj8r9f3aGXCjuyN210_gJC=AXPFm9=wL-dGALA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_104751_678016_57EB10D9 
X-CRM114-Status: GOOD (  14.04  )
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

On Wed, May 06, 2020 at 10:44:15AM -0700, Linus Torvalds wrote:
> So while I think using a consistent convention is good, and it's true
> that there is a difference in the convention between the two cases
> ("unsafe" at the beginning vs end), one of them is actually about the
> safety and security of the operation (and we have automated logic
> these days to verify it on x86), the other has nothing to do with
> "safety", really.
> 
> Would it be better to standardize around a "probe_xyz()" naming?

So:

  probe_strncpy, probe_strncpy_user, probe_strnlen_user?

Sounds weird, but at least it is consistent.

> Or perhaps a "xyz_nofault()" naming?

That sounds a little better:

   strncpy_nofault, strncpy_user_nofault, strnlen_user_nofault

> I realize this is nit-picky, and I think the patch series as-is is
> already an improvement, but I do think our naming in this area is
> really quite bad.

Always open for improvements :)

> The fact that we have "probe_kernel_read()" but then
> "strncpy_from_user_unsafe()" for the _same_ conceptual difference
> really tells me how inconsistent the naming for these kinds of "we
> can't take page faults" is. No?

True.  If we wanted to do _nofaul, what would the basic read/write
versions be?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
