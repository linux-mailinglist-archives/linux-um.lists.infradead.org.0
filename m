Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AE71D2462
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 03:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dwl8sGQSGBs7etLOkzpW64z9LDAfWqDYCHLv9KqZ4mQ=; b=bYGJu0ENg1sGLr
	3Vsac4fi5o9SqLKLOnu/sqzFuD4+Jfm2/vVqh3oLVpg5EAbaJV8V+AE7Zl7JL7X94LapQu9ljGkZj
	Mx2AZJkUQBA9W0Bk8PGRToHUYzA9wLOgJy9iDX1Cs0M1heqVK31hV48p93IsEEMv67KFbxe65/o+O
	1Rt0SMCu2SC1rpefywhSv8VnIPTVUDe2x9IuHQ+mJja3NCvRZuqupPu79yOlEmCKvuUps1LMap0O8
	rllzQCq4o7Gr/NF3wkt++y/+vmvpiC9Ed7UzP87QU+XCkUeicEsCGrcfNQk9XamNaRf4UtwdVNaAV
	M8e63sGjtt1x3LAE6j4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2ET-0001ED-NU; Thu, 14 May 2020 01:00:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2ER-0001DX-FN
 for linux-um@lists.infradead.org; Thu, 14 May 2020 01:00:16 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5F482054F;
 Thu, 14 May 2020 01:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589418014;
 bh=iL3qRo6PKMlX7MXjMuhMdIo6UsuawSg8IZnaTVQPWcw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eMXyaK/bX8VY/yTLe5XB8JtMJrtcjjev1fGQABBIMNzXe1l1nVaonllA6Js7jUFE/
 roA4DNirFqPNV8zYvxpE5SZpnZrPScPhYauQnT6eTn3ErV59izLzTc8zoDjhqVpUBV
 xIAKU4KFe9w7hOY+jhok+DYEHeqUtAEj9JByg/IQ=
Date: Thu, 14 May 2020 10:00:09 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
Message-Id: <20200514100009.a8e6aa001f0ace5553c7904f@kernel.org>
In-Reply-To: <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200514082054.f817721ce196f134e6820644@kernel.org>
 <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_180015_544024_AF7F0C06 
X-CRM114-Status: GOOD (  14.04  )
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

On Wed, 13 May 2020 16:59:40 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Wed, May 13, 2020 at 4:21 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
> >
> >
> > For trace_kprobe.c current order (kernel -> user fallback) is preferred
> > because it has another function dedicated for user memory.
> 
> Well, then it should just use the "strict" kernel-only one for the
> non-user memory.
> 
> But yes, if there are legacy interfaces, then we might want to say
> "these continue to work for the legacy case on platforms where we can
> tell which kind of pointer it is from the bit pattern".

Yes, that was why I changed my mind and send reviewed-by last time.

https://lore.kernel.org/bpf/20200511142716.f1ff6fc55220012982c47fec@kernel.org/

> But we should likely at least disallow it entirely on platforms where
> we really can't - or pick one hardcoded choice. On sparc, you really
> _have_ to specify one or the other.

OK. BTW, is there any way to detect the kernel/user space overlap on
memory layout statically? If there, I can do it. (I don't like
"if (CONFIG_X86)" thing....)
Or, maybe we need CONFIG_ARCH_OVERLAP_ADDRESS_SPACE?

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
