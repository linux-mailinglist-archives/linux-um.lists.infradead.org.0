Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4771D1FB8
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pHqQQJrj1ZjexBshRKK/n8adXsxiubCbGd4E6EpGh8=; b=trIqzNHiHVxpfP
	nLDRI9gBSLTms3KiGSTBYdheWko0FE6MZff3OnfEL4ipeCnMWT2nydePvnYRBcI45C9QoDZkyLwR6
	NF9x4okc3mDoNoB9GwSHD+cCOANsT77FuTf6e6ViPOdkG90ZsWoigSTj9Hjjbs6LGozN4agzcJDjt
	b3PS2gRpYhit1X5tsG9iKKeBP4SZsPQyzYNdgbDvwnNa4hhNypO5Dp6txxg5+4CITf+yp/cGta+OK
	9Sgk7yd3/eBNLkoGuyMTB/Tpg+kCdn0eRnpRgejyGlVmaCBtZ2fuanBVE9ATIxMe9OqCNT5+A29TI
	zRcuMTL2OGj5YfeZSBPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxT5-00056t-2j; Wed, 13 May 2020 19:55:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxT2-0004wv-Ac
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:55:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2D25668B05; Wed, 13 May 2020 21:54:57 +0200 (CEST)
Date: Wed, 13 May 2020 21:54:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 14/18] maccess: allow architectures to provide kernel
 probing directly
Message-ID: <20200513195456.GA31096@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-15-hch@lst.de>
 <CAHk-=wgzXqgYQQt2NCdZTtxLmV1FV1nbZ_gKw0O_mRkXZj57zg@mail.gmail.com>
 <20200513194003.GA31028@lst.de>
 <CAHk-=whtGLxezkdMP6+859LFDgb++6dgYa6Vrc=zJ9+GB7UMFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whtGLxezkdMP6+859LFDgb++6dgYa6Vrc=zJ9+GB7UMFQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_125500_518906_9AE9A198 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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

On Wed, May 13, 2020 at 12:48:54PM -0700, Linus Torvalds wrote:
> Looking at the current users of "probe_kernel_read()", it looks like
> it's almost mostly things that just want a single byte or word.
> 
> It's not 100% that: we definitely do several things that want the
> "copy" semantics vs the "get" semantics: on the x86 side we have
> CALL_INSN_SIZE and MAX_INSN_SIZE, and the ldttss_desc.
> 
> But the bulk of them do seem to be a single value.
> 
> I don't know if performance really matters here, but to me the whole
> "most users seem to want to read a single value" is what makes me
> think that maybe that should be the primary model, rather than have
> the copy model be the primary one and then we implement the single
> value case (badly) with a copy.
> 
> It probably doesn't matter that much. I certainly wouldn't hold this
> series up over it - it can be a future thing.

I can make the get_kernel_nofault implementation suck a little less :)

Note that the arch helper (we could call it unsafe_get_kernel_nofault)
we still need to have a pagefault_disable / pagefault_enable pair
around the calls.  So maybe keep the get_kernel_nofault interface
as-is (without the goto label), and prepare the arch helpers for
being used similar to unsafe_get_user once all architectures are
converted.  And I can throw in a few patches to convert callers
from the copy semantics to the get semantics.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
