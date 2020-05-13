Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DD21D22E5
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpw4RI8SEC5g1G6vztlNBoDTeUK1kfxnbuzSBffPPng=; b=WnGKPBDe2gw0Px
	tNugyK6jkV2XWTD96dgizXcqmervd7mIofBCAU4+wFkCksR7lMgBQRuhsgoGWLD+QXD7UF7dD2/sS
	RxTIOH5en5tRo4xIw6MCOQ7GwkmeZyLySkHRgPcOYbTwVV5YvhG10Q0Z4ClN2T/7gpCzIJdioifdw
	fb8NdXHdti7OfLdxjK+lLqAAhco2P4Gpk9dDZp+WOztLB1or2usUmsAtqXxeIAzKzO6AGNkWN6iEk
	8SHfET+qPUHcoRMbVIjES84jQ/GpfQDJhb59g+V0XzO0TKoPieKBP89jLzPUguDQ45nnvOgN6l6VN
	vVJ7G/YNU8uxs9nPeezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0gS-0008BX-Vi; Wed, 13 May 2020 23:21:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0gP-0008B0-Vh
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:21:03 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E88B0205ED;
 Wed, 13 May 2020 23:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589412060;
 bh=YDpY+oFCkFIHw2paw3aSACA9Hw6Wo+2HjdFDzhL6e38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VY6ReKk0+WrAeE5ZcMXyCwAji3tlYNb/nbD2ggy3exjFLZEjT+0+pc5M2WrrXmQH0
 JQWCoAo25rOLn65XcG+voP2CL/K9HMF/5jLJiguZCbvKj7Ig9RkfxHptSOAPl7eg+4
 c+G4ppBlY+/44iQvxYyUGGeiJfjGc2UNIDz5ZKPs=
Date: Thu, 14 May 2020 08:20:54 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Message-Id: <20200514082054.f817721ce196f134e6820644@kernel.org>
In-Reply-To: <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_162102_064106_78905C0D 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 14 May 2020 00:36:28 +0200
Daniel Borkmann <daniel@iogearbox.net> wrote:

> On 5/13/20 9:28 PM, Christoph Hellwig wrote:
> > On Wed, May 13, 2020 at 12:11:27PM -0700, Linus Torvalds wrote:
> >> On Wed, May 13, 2020 at 9:01 AM Christoph Hellwig <hch@lst.de> wrote:
> >>>
> >>> +static void bpf_strncpy(char *buf, long unsafe_addr)
> >>> +{
> >>> +       buf[0] = 0;
> >>> +       if (strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
> >>> +                       BPF_STRNCPY_LEN))
> >>> +               strncpy_from_user_nofault(buf, (void __user *)unsafe_addr,
> >>> +                               BPF_STRNCPY_LEN);
> >>> +}
> >>
> >> This seems buggy when I look at it.
> >>
> >> It seems to think that strncpy_from_kernel_nofault() returns an error code.
> >>
> >> Not so, unless I missed where you changed the rules.
> > 
> > I didn't change the rules, so yes, this is wrong.
> > 
> >> Also, I do wonder if we shouldn't gate this on TASK_SIZE, and do the
> >> user trial first. On architectures where this thing is valid in the
> >> first place (ie kernel and user addresses are separate), the test for
> >> address size would allow us to avoid a pointless fault due to an
> >> invalid kernel access to user space.
> >>
> >> So I think this function should look something like
> >>
> >>    static void bpf_strncpy(char *buf, long unsafe_addr)
> >>    {
> >>            /* Try user address */
> >>            if (unsafe_addr < TASK_SIZE) {
> >>                    void __user *ptr = (void __user *)unsafe_addr;
> >>                    if (strncpy_from_user_nofault(buf, ptr, BPF_STRNCPY_LEN) >= 0)
> >>                            return;
> >>            }
> >>
> >>            /* .. fall back on trying kernel access */
> >>            buf[0] = 0;
> >>            strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
> >> BPF_STRNCPY_LEN);
> >>    }
> >>
> >> or similar. No?
> > 
> > So on say s390 TASK_SIZE_USUALLy is (-PAGE_SIZE), which means we'd alway
> > try the user copy first, which seems odd.
> > 
> > I'd really like to here from the bpf folks what the expected use case
> > is here, and if the typical argument is kernel or user memory.
> 
> It's used for both. Given this is enabled on pretty much all program types, my
> assumption would be that usage is still more often on kernel memory than user one.

For trace_kprobe.c current order (kernel -> user fallback) is preferred
because it has another function dedicated for user memory.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
