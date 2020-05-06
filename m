Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896111C7927
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 20:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZMvfsEI16HUp7bnnhFoeT8K7Nn0PxOYax3jirmXxLc=; b=ekdQnDAcCJXyWl
	er8azdIyOaOGkMkclWBmR7spgA846/GrsYsKR1GeKnjba2gSB+XD4/M8Or1pjCkkQGTyGDIaIy99O
	QUFf6qVSQv7tTxp8bFlGubbIFqVOCUFfZ2uFUQDElbtFIpksP10r3DOxPZqYSv2gdbVL9uEauE3l+
	RZcep605jObnoTq6KcP967sNYBJfdGTCmjXx2sXi8pG3g0L6Sz+KPvVCQTohyIYkdM3irIrgaX7JD
	5a2TMtN3wRZbgDIWwKE1IhhrUQ4/x72RqoTNX1hBvDqYCLUFw6ZksmSqdnaAS5Dty2gS8Qu1eU3KJ
	t6JfnENcaheJr7ey57Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOaM-0006Gy-1j; Wed, 06 May 2020 18:15:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOaB-00067p-6C
 for linux-um@lists.infradead.org; Wed, 06 May 2020 18:15:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E9BF768C7B; Wed,  6 May 2020 20:15:43 +0200 (CEST)
Date: Wed, 6 May 2020 20:15:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 15/15] x86: use non-set_fs based maccess routines
Message-ID: <20200506181543.GA7873@lst.de>
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-16-hch@lst.de>
 <CAHk-=wi6E5z_aKr9NX+QcEJqJvSyrDbO3ypPugxstcPV5EPSMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wi6E5z_aKr9NX+QcEJqJvSyrDbO3ypPugxstcPV5EPSMQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_111547_429071_76802D66 
X-CRM114-Status: GOOD (  13.82  )
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

On Wed, May 06, 2020 at 10:51:51AM -0700, Linus Torvalds wrote:
> My private tree no longer has those __get/put_user_size() things,
> because "unsafe_get/put_user()" is the only thing that remains with my
> conversion to asm goto.
> 
> And we're actively trying to get rid of the whole __get_user() mess.
> Admittedly "__get_user_size()" is just the internal helper that
> doesn't have the problem, but it really is an internal helper for a
> legacy operation, and the new op that uses it is that
> "unsafe_get_user()".
> 
> Also, because you use __get_user_size(), you then have to duplicate
> the error handling logic that we already have in unsafe_get_user().
> 
> IOW - is there some reason why you didn't just make these use
> "unsafe_get/put_user()" directly, and avoid both of those issues?

That was the first prototype, and or x86 it works great, just the
__user cases in maccess.c are a little ugly.  And they point to
the real problem - for architectures like sparc and s390 that use
an entirely separate address space for the kernel vs userspace
I dont think just use unsafe_{get,put}_user will work, as they need
different instructions.

Btw, where is you magic private tree and what is the plan for it?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
