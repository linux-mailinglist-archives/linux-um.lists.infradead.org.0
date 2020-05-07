Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D361C8164
	for <lists+linux-um@lfdr.de>; Thu,  7 May 2020 07:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DueWNvB07rOq5kbe26GNNrciUH4M3OwcN1HXkKKo1k=; b=gyWStSdUJZ7mnn
	9L19GP+10s+pX1kdyiwxHn6T4fFaszOOSztCQ6obdngYV3MmmYM2aIq4287LnBJbZY8yFqRYFw4Pr
	I/Bz2MkPyV9HEmF0upW6K75+Buu9A9SQzBbp1KJB5HQlyfOW5eA5a3aQiGVCOl9fe4fGsmYwEQL6v
	FaqlXXNtB2mrJZWuLS3Ag+g1ESkZMTOM6UnT4O6WV76FmwgYg3WLLIC3Q2JKwQtrFElMi09vL7ClP
	3UoKkLChreCpUqPilxfgFDiNwyQMlgHfVavADxazCFGwmVxtr6vTTtFtYJh2LTXnLrXQPE8igFdNX
	4od3JlUs4zCtbSMlaN/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWYpc-0001r5-UH; Thu, 07 May 2020 05:12:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWYpa-0001q0-7d
 for linux-um@lists.infradead.org; Thu, 07 May 2020 05:12:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 990EF68B05; Thu,  7 May 2020 07:12:13 +0200 (CEST)
Date: Thu, 7 May 2020 07:12:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 15/15] x86: use non-set_fs based maccess routines
Message-ID: <20200507051213.GB4501@lst.de>
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-16-hch@lst.de>
 <CAHk-=wi6E5z_aKr9NX+QcEJqJvSyrDbO3ypPugxstcPV5EPSMQ@mail.gmail.com>
 <20200506181543.GA7873@lst.de>
 <CAHk-=wghKpGdTmD4EDfwX2uyppwxksU+nFyS1B--kbopcQAgwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wghKpGdTmD4EDfwX2uyppwxksU+nFyS1B--kbopcQAgwg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_221222_428132_BB63BA93 
X-CRM114-Status: GOOD (  17.49  )
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

On Wed, May 06, 2020 at 12:01:32PM -0700, Linus Torvalds wrote:
> Oh, absolutely. I did *NOT* mean that you'd use "unsafe_get_user()" as
> the actual interface. I just meant that as an implementation detail on
> x86, using "unsafe_get_user()" instead of "__get_user_size()"
> internally both simplifies the implementation, and means that it
> doesn't clash horribly with my local changes.

I had a version that just wrapped them, but somehow wasn't able to
make it work due to all the side effects vs macros issues.  Maybe I
need to try again, the current version seemed like a nice way out
as it avoided a lot of the silly casting.


> Btw, that brings up another issue: so that people can't mis-use those
> kernel accessors and use them for user addresses, they probably should
> actually do something like
> 
>         if ((long)addr >= 0)
>                 goto error_label;
> 
> on x86. IOW, have the "strict" kernel pointer behavior.
> 
> Otherwise somebody will start using them for user pointers, and it
> will happen to work on old x86 without CLAC/STAC support.
> 
> Of course, maybe CLAC/STAC is so common these days (at least with
> developers) that we don't have to worry about it.

The actual public routines (probe_kernel_read and co) get these
checks through probe_kernel_read_allowed, which is implemented by
the x86 code.  Doing this for every 1-8 byte access might be a little
slow, though.  Do you really fear drivers starting to use the low-level
helper?  Maybe we need to move those into a different header than
<asm/uaccess.h> that makes it more clear that they are internal?

> But here you see what it is, if you want to. __get_user_size()
> technically still exists, but it has the "target branch" semantics in
> here, so your patch clashes badly with it.

The target branch semantics actually are what I want, that is how the
maccess code is structured.  This is the diff I'd need for the calling
conventions in your bundle:


diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
index 765e18417b3ba..d1c8aacedade1 100644
--- a/arch/x86/include/asm/uaccess.h
+++ b/arch/x86/include/asm/uaccess.h
@@ -526,14 +526,8 @@ do {									\
 #define HAVE_ARCH_PROBE_KERNEL
 
 #define arch_kernel_read(dst, src, type, err_label)			\
-do {									\
-        int __kr_err;							\
-									\
 	__get_user_size(*((type *)dst), (__force type __user *)src,	\
-			sizeof(type), __kr_err);			\
-        if (unlikely(__kr_err))						\
-		goto err_label;						\
-} while (0)
+			sizeof(type), err_label);			\
 
 #define arch_kernel_write(dst, src, type, err_label)			\
 	__put_user_size(*((type *)(src)), (__force type __user *)(dst),	\

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
