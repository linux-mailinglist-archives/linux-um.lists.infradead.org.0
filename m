Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985B51E524C
	for <lists+linux-um@lfdr.de>; Thu, 28 May 2020 02:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGG9+xyI80VrBiNpF9mH6av5fcU553jD3Yck1658vVQ=; b=PzbBLQokf8xGrz
	TU1tFaQstwJa7bLacd8Dns7pyJCtmVExOAdtDTHWMx6PM2tj9a+EF3n1N/BQr79cNTTQ+YAwcBr22
	mmpK48z9fDhOyrHvYzaAkezkgBq5pDbxHxY9a0WfZL5mSHLF87M4SmMAFsdQr5O6QVXekzz5KOmZa
	ra0BNgeclRyUeH1mS9lUd/0SYPMOjYU2U3YlMImBe6uePk1m08Uo+Y7H5FU0jgjlsyVt/W+hpfBQX
	yhtAdI3i9Bv/Dog89aZuJsj3cs0bn/SRkEeG5121gemrMwS43YkU5pagUovrgprtOXwkUyGM9RMZk
	uucT9urz2FLZYJ+COcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6XK-0007LM-Lf; Thu, 28 May 2020 00:36:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6XI-0007L3-L1
 for linux-um@lists.infradead.org; Thu, 28 May 2020 00:36:41 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7336D206DF;
 Thu, 28 May 2020 00:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590626199;
 bh=l5wZRM+En9EhTkWEiIUiMBwxkTXPk7INqbMM1OHAcws=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h9Wd+eaorp2Qz1deBfKgqA3uJOQcd+/XPw+cKZslTF9e2MNRlQptp2ULVCE554v2Q
 EsKlXKubui96Zpk/k1BivDNxlCT/MlJQpIL0y+jTkugMACJ89bPTVHqU+d5Q3Uk7wS
 mUWE9EeNxOMGUDTZmCY4+goDCM4jfZN3efWrQMbY=
Date: Wed, 27 May 2020 17:36:38 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: clean up and streamline probe_kernel_* and friends v4
Message-Id: <20200527173638.156eccece443d8e98c646310@linux-foundation.org>
In-Reply-To: <20200526061309.GA15549@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200525151912.34b20b978617e2893e484fa3@linux-foundation.org>
 <20200526061309.GA15549@lst.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_173640_707029_51F6B84A 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, 26 May 2020 08:13:09 +0200 Christoph Hellwig <hch@lst.de> wrote:

> On Mon, May 25, 2020 at 03:19:12PM -0700, Andrew Morton wrote:
> > hm.  Applying linux-next to this series generates a lot of rejects against
> > powerpc:
> > 
> > -rw-rw-r-- 1 akpm akpm  493 May 25 15:06 arch/powerpc/kernel/kgdb.c.rej
> > -rw-rw-r-- 1 akpm akpm 6461 May 25 15:06 arch/powerpc/kernel/trace/ftrace.c.rej
> > -rw-rw-r-- 1 akpm akpm  447 May 25 15:06 arch/powerpc/mm/fault.c.rej
> > -rw-rw-r-- 1 akpm akpm  623 May 25 15:06 arch/powerpc/perf/core-book3s.c.rej
> > -rw-rw-r-- 1 akpm akpm 1408 May 25 15:06 arch/riscv/kernel/patch.c.rej
> > 
> > the arch/powerpc/kernel/trace/ftrace.c ones aren't very trivial.
> > 
> > It's -rc7.  Perhaps we should park all this until 5.8-rc1?
> 
> As this is a pre-condition for the set_fs removal I'd really like to
> get the actual changes in.  All these conflicts seem to be about the
> last three cleanup patches just doing renaming, so can we just skip
> those three for now?  Then we can do the rename right after 5.8-rc1
> when we have the least chances for conflicts.

That seems to have worked.  "[PATCH 23/23] maccess: return -ERANGE when
copy_from_kernel_nofault_allowed fails" needed a bit of massaging to both
the patch and to the patch title.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
