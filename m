Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CB51E17D4
	for <lists+linux-um@lfdr.de>; Tue, 26 May 2020 00:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5wulzXNSV8NPJkEz+5ivbmTpft3Pg4SwDDl5GGJZlU=; b=c3CptYOWAEuPGz
	N+MZidIeKWMtDPWAnAaL8bHHMJkJ6YqoWWLOpa+2xkGzMhq3yToQRHmP4uCG9klIYqHrvUbpuTanf
	4nzl5ewm7vwXVDkTirXmnovU7zrQJq+UqUBPvporEnN+RMNZX1YLGz7FFTJDhSQb2YvQiTpY3FEZU
	00ZaCjrdcAvoyWRXl54HfQ6MRWcQOUjafiIky/9o4Go3CVIzWoO8vOetkNusPecwgOlB6hT7UXXbd
	+vkg9gcbh+2pZ8GS9du6a83YI8my0KTlf69MINRVrWiMb18TKIkYtkuzpkR9qP4g+VIsMBcCFYk7D
	tcYXD3S5Tay9YhGaR2+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdLRK-0007Ov-87; Mon, 25 May 2020 22:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdLRH-0007NO-1o
 for linux-um@lists.infradead.org; Mon, 25 May 2020 22:19:20 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03D43206B6;
 Mon, 25 May 2020 22:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590445153;
 bh=x65ra5HzllGpMWpGBDQlV6WYtu45OT9qLLEzkF7Sj4I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NcJFtnwNx4e0s9ZwJL4cLO0xBzD7n5HdSdPtZCXXajTuoquh5l284befI43hQi6i/
 t2tEJWOuysgTmZPxEfphxQz2b70faDivb9e2/2k2EgJrV9o+NW9QcuDi6vhWmGV/ws
 6sb6xAz5aRmW/QGtmF4kQf3EkLYbja1bkLUuzuZE=
Date: Mon, 25 May 2020 15:19:12 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: clean up and streamline probe_kernel_* and friends v4
Message-Id: <20200525151912.34b20b978617e2893e484fa3@linux-foundation.org>
In-Reply-To: <20200521152301.2587579-1-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_151919_114739_DBEF5811 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 bpf@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 17:22:38 +0200 Christoph Hellwig <hch@lst.de> wrote:

> this series start cleaning up the safe kernel and user memory probing
> helpers in mm/maccess.c, and then allows architectures to implement
> the kernel probing without overriding the address space limit and
> temporarily allowing access to user memory.  It then switches x86
> over to this new mechanism by reusing the unsafe_* uaccess logic.
> 
> This version also switches to the saner copy_{from,to}_kernel_nofault
> naming suggested by Linus.
> 
> I kept the x86 helpers as-is without calling unsage_{get,put}_user as
> that avoids a number of hard to trace casts, and it will still work
> with the asm-goto based version easily.

hm.  Applying linux-next to this series generates a lot of rejects against
powerpc:

-rw-rw-r-- 1 akpm akpm  493 May 25 15:06 arch/powerpc/kernel/kgdb.c.rej
-rw-rw-r-- 1 akpm akpm 6461 May 25 15:06 arch/powerpc/kernel/trace/ftrace.c.rej
-rw-rw-r-- 1 akpm akpm  447 May 25 15:06 arch/powerpc/mm/fault.c.rej
-rw-rw-r-- 1 akpm akpm  623 May 25 15:06 arch/powerpc/perf/core-book3s.c.rej
-rw-rw-r-- 1 akpm akpm 1408 May 25 15:06 arch/riscv/kernel/patch.c.rej

the arch/powerpc/kernel/trace/ftrace.c ones aren't very trivial.

It's -rc7.  Perhaps we should park all this until 5.8-rc1?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
