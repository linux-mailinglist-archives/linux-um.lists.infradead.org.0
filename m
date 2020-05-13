Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5615B1D230A
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4vYGtNuq+Xe4yuq4Mv1YCnCa0Qvi4I9HQXncFjUXxc=; b=JC4zh0olbGItC9
	lWM1dUw174HEq6S4xKb/DFT35uCluUAw0wNYZpTJJgK5KJae+5vF6KQTN6oH8/jdnV8jYwCpR4LrF
	bfs6GeX48KtBKgoU0AbYf6Exblu3gHc+v/Oqv706dgL+xt83UrZEIAKCTS2aXAgXuPDLa8U4JMhx3
	yE0DC/PnlDF/VKrhpH6+iFbnIMtfwd9O0AMEa+zkersFcIuW0UGkVT8VWbY5ULSODPtDKxmA+jjv0
	/kHRrKt0MAlhTQL6J41JsZNCDOxc4idDsDrH8MtHeYf6b4uYjshzEArKGHd1R5Z8VHssOk9ed0lMj
	kSwTFMinGY0Q9zM853iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0ng-0002f0-1b; Wed, 13 May 2020 23:28:32 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0nc-0002dG-Nt
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:28:30 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jZ0nQ-007rFB-Ju; Wed, 13 May 2020 23:28:16 +0000
Date: Thu, 14 May 2020 00:28:16 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Message-ID: <20200513232816.GZ23230@ZenIV.linux.org.uk>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_162828_775330_925CEA24 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bpf@vger.kernel.org, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 12:36:28AM +0200, Daniel Borkmann wrote:

> > So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
> > try the user copy first, which seems odd.
> > 
> > I'd really like to here from the bpf folks what the expected use case
> > is here, and if the typical argument is kernel or user memory.
> 
> It's used for both. Given this is enabled on pretty much all program types, my
> assumption would be that usage is still more often on kernel memory than user one.

Then it needs an argument telling it which one to use.  Look at sparc64.
Or s390.  Or parisc.  Et sodding cetera.

The underlying model is that the kernel lives in a separate address space.
Yes, on x86 it's actually sharing the page tables with userland, but that's
not universal.  The same address can be both a valid userland one _and_
a valid kernel one.  You need to tell which one do you want.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
