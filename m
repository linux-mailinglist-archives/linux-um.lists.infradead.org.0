Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097AA1D1F2C
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtCjUKs5j9Hvq9yGko8dqr2hIIG2z+wHpk3ZecC1SM4=; b=tw26wzTteKVJme
	E9c0JJJ04oTWvluMsyiBrqnzFeGYr6t7PhDG5vBdyCTcXFklgO0534PkSkCvhh4jBUBVcQMSilpAE
	TtasQulgCdEULF+dyGRa4Q7LjnH9MEy/GgCJw188+yWqr+XiQ2MOQENVLRf1EmjECkOr8Vl+Gn/rt
	i3hpsUDYu0Nr1YrcYBI2ibfgae5LfYW7QKBGk4fQkGMXnU2NibEtRlBRSXEsvUYrSgN3qCXUmal1v
	Nz5HyOmi8DNpKYKtNkq8aCNQkEF2SsLIxyoaKAUUEH1flgpOx0AJWWO4UFjUlwSxgW/gHm6r9jaUd
	FwanR7s6gidSzkQN7qBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYx3B-0004DM-2W; Wed, 13 May 2020 19:28:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYx32-0004BL-Av
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:28:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3747968B05; Wed, 13 May 2020 21:28:05 +0200 (CEST)
Date: Wed, 13 May 2020 21:28:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Message-ID: <20200513192804.GA30751@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122813_101498_335C9609 
X-CRM114-Status: GOOD (  17.07  )
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

On Wed, May 13, 2020 at 12:11:27PM -0700, Linus Torvalds wrote:
> On Wed, May 13, 2020 at 9:01 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > +static void bpf_strncpy(char *buf, long unsafe_addr)
> > +{
> > +       buf[0] = 0;
> > +       if (strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
> > +                       BPF_STRNCPY_LEN))
> > +               strncpy_from_user_nofault(buf, (void __user *)unsafe_addr,
> > +                               BPF_STRNCPY_LEN);
> > +}
> 
> This seems buggy when I look at it.
> 
> It seems to think that strncpy_from_kernel_nofault() returns an error code.
> 
> Not so, unless I missed where you changed the rules.

I didn't change the rules, so yes, this is wrong.

> Also, I do wonder if we shouldn't gate this on TASK_SIZE, and do the
> user trial first. On architectures where this thing is valid in the
> first place (ie kernel and user addresses are separate), the test for
> address size would allow us to avoid a pointless fault due to an
> invalid kernel access to user space.
> 
> So I think this function should look something like
> 
>   static void bpf_strncpy(char *buf, long unsafe_addr)
>   {
>           /* Try user address */
>           if (unsafe_addr < TASK_SIZE) {
>                   void __user *ptr = (void __user *)unsafe_addr;
>                   if (strncpy_from_user_nofault(buf, ptr, BPF_STRNCPY_LEN) >= 0)
>                           return;
>           }
> 
>           /* .. fall back on trying kernel access */
>           buf[0] = 0;
>           strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
> BPF_STRNCPY_LEN);
>   }
> 
> or similar. No?

So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
try the user copy first, which seems odd.

I'd really like to here from the bpf folks what the expected use case
is here, and if the typical argument is kernel or user memory.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
