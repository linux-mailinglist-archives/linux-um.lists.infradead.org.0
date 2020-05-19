Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E51D9D0C
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ilogthF1HFrNH3jf8FDNsZIR2bE8okm47pkXbwTfq8=; b=c/ynEJDRO2+YAV
	ou+m8Rqku+djD4fggJ6NmJDiSRAn7p9YoVwnwMIyXCrbQVx3psjUfK6mOd3oi1Ss5+e3Ofb+dOxK2
	vfPNzcro2RDC9qoSiG40Q29WWl5tHxGg0Hpl2DdHmjw7DgngKHh+TeMbJehKCx8x2jujCrA9pvAF5
	VQG52OweKGzw7redCbZXwATQmK28vyDcMsRqFg2iuca+cbuAAt0JVb+E8prREWR9A3F4cUWqIoAWB
	FlHQNWwWp2nClx0doOjyrjNj8wzQMdUOfXHwE+beC+9DqbPOfleN0987jtQ/Mjrk677+xxkniwgNV
	hZcKdIvUuZZPSrdtH5tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5JQ-0008G2-R5; Tue, 19 May 2020 16:41:52 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5JN-0008Ew-OI
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:41:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8FD3068B02; Tue, 19 May 2020 18:41:46 +0200 (CEST)
Date: Tue, 19 May 2020 18:41:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 12/20] maccess: remove strncpy_from_unsafe
Message-ID: <20200519164146.GA28313@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-13-hch@lst.de>
 <CAHk-=whE_C2JF0ywF09iMBWtquEfMM3aSxCeLrb5S75EdHr1JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whE_C2JF0ywF09iMBWtquEfMM3aSxCeLrb5S75EdHr1JA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_094149_937518_330CA8AE 
X-CRM114-Status: GOOD (  13.07  )
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

On Tue, May 19, 2020 at 09:25:57AM -0700, Linus Torvalds wrote:
> On Tue, May 19, 2020 at 6:45 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > +       if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> > +           compat && (unsigned long)unsafe_ptr < TASK_SIZE)
> > +               ret = strncpy_from_user_nofault(dst, user_ptr, size);
> > +       else
> > +               ret = strncpy_from_kernel_nofault(dst, unsafe_ptr, size);
> 
> These conditionals are completely illegible.

I had a lot of folks complaining about things like:

#ifdef CONFIG_FOO
	if (foo)
		do_stuff();
	else
#endif
		do_something_else();

which I personally don't mind at all, so I switched to this style.

>   static long bpf_strncpy_from_legacy(void *dest, const void
> *unsafe_ptr, long size, bool legacy)
>   {
>   #ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
>         if (legacy && addr < TASK_SIZE)
>             return strncpy_from_user_nofault(dst, (const void __user
> *) unsafe_ptr, size);
>   #endif
> 
>         return strncpy_from_kernel_nofault(dst, unsafe_ptr, size);
>   }
> 
> and then you'd just use
> 
>         if (bpf_strncpy_from_unsafe(dst, unsafe_ptr, size, compat) < 0)
>                 memset(dst, 0, size);
> 
> and avoid any complicated conditionals, goto's, and make the code much
> easier to understand thanks to having a big comment about the legacy
> case.

Sure.

> In fact, separately I'd probably want that "compat" naming to be
> scrapped entirely in that file.

Not my choice..  Maybe Daniel has a recommendation of what to change
there, but I'd love to not have to deal with that renaming as well
in this series.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
