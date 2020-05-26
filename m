Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5551E1B10
	for <lists+linux-um@lfdr.de>; Tue, 26 May 2020 08:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YgJghSEP22VuhWUsn5ULB4Oxli6pjVCe2WNn2yHeDY=; b=uGk2NFG74jMO3C
	KeukFHt/UTkBhmUCrOT62sgUJSvNGPWkrrGptV7zPH5B2sm5ubBAzxl/dVIZKEFomoZ4QI1D+DfG0
	FbxrwhcxjA7oM90c/43Av8PPIIX1y6pObnq/JIItU5i4nlNott5iy/Lt9jxmoC7a4gdiL6hJi097B
	iX1HeH5DtvqnTSrM82xP9515Y7X9u3YDxdDuDIW7wPRRt7gA97ellAQ0f2yJvh7cQwlGhieYU2R+X
	+cFmFcoBq1YhIAmabCW8QY0d0zX65LfMKA90GWFxuhIlvnaHSc+YCCxuWVOf9anonK6bFxU2xAKb2
	Kcuv6PDo34Sy6f9ujDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdSpz-0001lP-Dy; Tue, 26 May 2020 06:13:19 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdSpv-0001k9-St
 for linux-um@lists.infradead.org; Tue, 26 May 2020 06:13:17 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BE22268BEB; Tue, 26 May 2020 08:13:09 +0200 (CEST)
Date: Tue, 26 May 2020 08:13:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: clean up and streamline probe_kernel_* and friends v4
Message-ID: <20200526061309.GA15549@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200525151912.34b20b978617e2893e484fa3@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525151912.34b20b978617e2893e484fa3@linux-foundation.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_231316_085781_3F1ECD9A 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 bpf@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 03:19:12PM -0700, Andrew Morton wrote:
> hm.  Applying linux-next to this series generates a lot of rejects against
> powerpc:
> 
> -rw-rw-r-- 1 akpm akpm  493 May 25 15:06 arch/powerpc/kernel/kgdb.c.rej
> -rw-rw-r-- 1 akpm akpm 6461 May 25 15:06 arch/powerpc/kernel/trace/ftrace.c.rej
> -rw-rw-r-- 1 akpm akpm  447 May 25 15:06 arch/powerpc/mm/fault.c.rej
> -rw-rw-r-- 1 akpm akpm  623 May 25 15:06 arch/powerpc/perf/core-book3s.c.rej
> -rw-rw-r-- 1 akpm akpm 1408 May 25 15:06 arch/riscv/kernel/patch.c.rej
> 
> the arch/powerpc/kernel/trace/ftrace.c ones aren't very trivial.
> 
> It's -rc7.  Perhaps we should park all this until 5.8-rc1?

As this is a pre-condition for the set_fs removal I'd really like to
get the actual changes in.  All these conflicts seem to be about the
last three cleanup patches just doing renaming, so can we just skip
those three for now?  Then we can do the rename right after 5.8-rc1
when we have the least chances for conflicts.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
