Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B8EC870B
	for <lists+linux-um@lfdr.de>; Wed,  2 Oct 2019 13:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8h3r4eJfz+7PykYP3QAdRbLfoGTySSxzWPSXp10ANo=; b=bG2JmfgD7tN7sO
	6R5pBhbh0Sl2XwhwOILiujOfWAM3kp9YbqmtHZLz49AK3fMHBXOW+ivBanmUSf5YUty6lX7MRtb/z
	LxkzbTWIjHeMHnwDpNpdKie2FRYVmclhBoCCHoQguXRKmFWIdY9mk9HRgLEz4OX38ldssU/EK8imT
	JFZaaQlCBi6JR9QvSuqllonctShztwTiZSb2SQZ1ypGv7uPsEa1zRxAiBBJeYcXn/g3Yt54hS7i7Q
	Ves7ZZgmBBXoX5abFZu08Z8Vuc3qVR4mnc9iNiO4n2woKkC32Q68dbyT0/4BHbSueiA1akiha28Sv
	GI/JiRq6zaHcCmBecnWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcaR-0000Og-Th; Wed, 02 Oct 2019 11:14:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcaO-0000Ny-Iz; Wed, 02 Oct 2019 11:14:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id c6so55773328ioo.13;
 Wed, 02 Oct 2019 04:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZB4/wBe40ScWLOPnOnO2A5CCUN+N+AU8kGY9PrjNkCo=;
 b=vHy1Q0oWcWtdLVhbCIPh+2w9YyGU1ImOhLI5IYNI26dpCY56cp4nN11g6QdPghxgrv
 20fT4a0g6KLE9VPM1GGk5WEkaW3W8ibLplns+b38ULo0BgoOcLLXCa7vMq/06HlDu8EM
 gYtJnvLmiztT9H85Z2TULtV8b8ID9SIHxTpPosRs4q7FgHjyH3IZpBXpQDID+/dgBUC+
 En2Hlb2QAEqtnUaaBxS39e5+tgbBqdCQ3zi0GiT0+9AVVWt7MrDThyBGFLlAOVN5ZDXh
 tLAOiZcErI98+RWq/9yucOO1d/qVlE8fzwQR20ke0rf9w1JhzdrTYUO+QEJ+9ZevRBiw
 SNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZB4/wBe40ScWLOPnOnO2A5CCUN+N+AU8kGY9PrjNkCo=;
 b=rt2uiV2BbYKh6Pn66iwoVUOTL8MV1CuBJqdyUrUWilRSlwB2rXqAvW4yLLCUZRXFnm
 jijEQKsKbLfYu/Gfo3yyL90jUWaLq8yklmDcm7esGQMwr7z5h7Ca6mPnL+522ZEBcZBF
 hI0OWqU/QuwYJO/lP1jsOqGuxx/4SpTNMbDf1wnoeFeZ13FfNJWQcYgJMTeIdhr2UB7N
 uF4Z2n8HRs9E25C2NXOhG4krRZZifXrbyczLNo0bwHEbhfFS58BYiXsLLNTaOz1WVpBN
 BCrnFpxRt24w1vV3oWgSBSqfxxKxMOfep4kGJupPFsVD/CfKQfKDyFjAOEjVEnGJJw5/
 Lqog==
X-Gm-Message-State: APjAAAXJ1vNThCczDe+UOsGYONxjSS5eWVKj0bQHX3d/mNyWejDzIyGY
 4o9pc8TzTnZcvIUYdItjfiZqlbGmeWN4Un6Od2o=
X-Google-Smtp-Source: APXvYqxt3TCdlj0r7UU5RMh1pKp58F/EEIucnVtIKTi1s6mnbV7Wt5Su0S7y51mDcoVCyuPplnln+o3jSRMB6j2CKEI=
X-Received: by 2002:a6b:d601:: with SMTP id w1mr2668972ioa.158.1570014862922; 
 Wed, 02 Oct 2019 04:14:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
 <CAOMZO5A_U4aYC4XZXK1r9JaLg-eRdXy8m6z4GatQp62rK4HZ6A@mail.gmail.com>
 <CAHCN7xJdzEppn8-74SvzACsA25bUHGdV7v=CfS08xzSi59Z2uw@mail.gmail.com>
 <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
 <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
In-Reply-To: <20191002073605.GA30433@linux.ibm.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 2 Oct 2019 06:14:11 -0500
Message-ID: <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_041424_651110_2CEB721A 
X-CRM114-Status: GOOD (  39.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Dennis Zhou <dennis@kernel.org>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, Chris Healy <cphealy@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Petr Mladek <pmladek@suse.com>,
 linux-xtensa@linux-xtensa.org, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 linux-m68k@lists.linux-m68k.org, Rob Herring <robh+dt@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, xen-devel@lists.xenproject.org,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, openrisc@lists.librecores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> Hi Adam,
>
> On Tue, Oct 01, 2019 at 07:14:13PM -0500, Adam Ford wrote:
> > On Sun, Sep 29, 2019 at 8:33 AM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > I am attaching two logs.  I now the mailing lists will be unhappy, but
> > >  don't want to try and spam a bunch of log through the mailing liast.
> > > The two logs show the differences between the working and non-working
> > > imx6q 3D accelerator when trying to run a simple glmark2-es2-drm demo.
> > >
> > > The only change between them is the 2 line code change you suggested.
> > >
> > > In both cases, I have cma=128M set in my bootargs.  Historically this
> > > has been sufficient, but cma=256M has not made a difference.
> > >
> >
> > Mike any suggestions on how to move forward?
> > I was hoping to get the fixes tested and pushed before 5.4 is released
> > if at all possible
>
> I have a fix (below) that kinda restores the original behaviour, but I
> still would like to double check to make sure it's not a band aid and I
> haven't missed the actual root cause.
>
> Can you please send me your device tree definition and the output of
>
> cat /sys/kernel/debug/memblock/memory
>
> and
>
> cat /sys/kernel/debug/memblock/reserved
>
> Thanks!
>

Before the patch:

# cat /sys/kernel/debug/memblock/memory
   0: 0x10000000..0x8fffffff
# cat /sys/kernel/debug/memblock/reserved
   0: 0x10004000..0x10007fff
   1: 0x10100000..0x11ab141f
   2: 0x1fff1000..0x1fffcfff
   3: 0x2ee40000..0x2ef53fff
   4: 0x2ef56940..0x2ef56c43
   5: 0x2ef56c48..0x2fffefff
   6: 0x2ffff0c0..0x2ffff4d8
   7: 0x2ffff500..0x2ffff55f
   8: 0x2ffff580..0x2ffff703
   9: 0x2ffff740..0x2ffff918
  10: 0x2ffff940..0x2ffff9cf
  11: 0x2ffffa00..0x2ffffa0f
  12: 0x2ffffa40..0x2ffffa43
  13: 0x2ffffa80..0x2ffffad5
  14: 0x2ffffb00..0x2ffffb55
  15: 0x2ffffb80..0x2ffffbd5
  16: 0x2ffffc00..0x2ffffc4e
  17: 0x2ffffc50..0x2ffffc6a
  18: 0x2ffffc6c..0x2ffffce6
  19: 0x2ffffce8..0x2ffffd02
  20: 0x2ffffd04..0x2ffffd1e
  21: 0x2ffffd20..0x2ffffd3a
  22: 0x2ffffd3c..0x2ffffd56
  23: 0x2ffffd58..0x2ffffe30
  24: 0x2ffffe34..0x2ffffe4c
  25: 0x2ffffe50..0x2ffffe68
  26: 0x2ffffe6c..0x2ffffe84
  27: 0x2ffffe88..0x2ffffea0
  28: 0x2ffffea4..0x2ffffebc
  29: 0x2ffffec0..0x2ffffedf
  30: 0x2ffffee4..0x2ffffefc
  31: 0x2fffff00..0x2fffff13
  32: 0x2fffff28..0x2fffff4b
  33: 0x2fffff50..0x2fffff84
  34: 0x2fffff88..0x3fffffff


After the patch:
# cat /sys/kernel/debug/memblock/memory
   0: 0x10000000..0x8fffffff
# cat /sys/kernel/debug/memblock/reserved
   0: 0x10004000..0x10007fff
   1: 0x10100000..0x11ab141f
   2: 0x1fff1000..0x1fffcfff
   3: 0x3eec0000..0x3efd3fff
   4: 0x3efd6940..0x3efd6c43
   5: 0x3efd6c48..0x3fffbfff
   6: 0x3fffc0c0..0x3fffc4d8
   7: 0x3fffc500..0x3fffc55f
   8: 0x3fffc580..0x3fffc703
   9: 0x3fffc740..0x3fffc918
  10: 0x3fffc940..0x3fffc9cf
  11: 0x3fffca00..0x3fffca0f
  12: 0x3fffca40..0x3fffca43
  13: 0x3fffca80..0x3fffca83
  14: 0x3fffcac0..0x3fffcb15
  15: 0x3fffcb40..0x3fffcb95
  16: 0x3fffcbc0..0x3fffcc15
  17: 0x3fffcc28..0x3fffcc72
  18: 0x3fffcc74..0x3fffcc8e
  19: 0x3fffcc90..0x3fffcd0a
  20: 0x3fffcd0c..0x3fffcd26
  21: 0x3fffcd28..0x3fffcd42
  22: 0x3fffcd44..0x3fffcd5e
  23: 0x3fffcd60..0x3fffcd7a
  24: 0x3fffcd7c..0x3fffce54
  25: 0x3fffce58..0x3fffce70
  26: 0x3fffce74..0x3fffce8c
  27: 0x3fffce90..0x3fffcea8
  28: 0x3fffceac..0x3fffcec4
  29: 0x3fffcec8..0x3fffcee0
  30: 0x3fffcee4..0x3fffcefc
  31: 0x3fffcf00..0x3fffcf1f
  32: 0x3fffcf28..0x3fffcf53
  33: 0x3fffcf68..0x3fffcf8b
  34: 0x3fffcf90..0x3fffcfac
  35: 0x3fffcfb0..0x3fffffff
  36: 0x80000000..0x8fffffff

> From 06529f861772b7dea2912fc2245debe4690139b8 Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Wed, 2 Oct 2019 10:14:17 +0300
> Subject: [PATCH] mm: memblock: do not enforce current limit for memblock_phys*
>  family
>
> Until commit 92d12f9544b7 ("memblock: refactor internal allocation
> functions") the maximal address for memblock allocations was forced to
> memblock.current_limit only for the allocation functions returning virtual
> address. The changes introduced by that commit moved the limit enforcement
> into the allocation core and as a result the allocation functions returning
> physical address also started to limit allocations to
> memblock.current_limit.
>
> This caused breakage of etnaviv GPU driver:
>
> [    3.682347] etnaviv etnaviv: bound 130000.gpu (ops gpu_ops)
> [    3.688669] etnaviv etnaviv: bound 134000.gpu (ops gpu_ops)
> [    3.695099] etnaviv etnaviv: bound 2204000.gpu (ops gpu_ops)
> [    3.700800] etnaviv-gpu 130000.gpu: model: GC2000, revision: 5108
> [    3.723013] etnaviv-gpu 130000.gpu: command buffer outside valid
> memory window
> [    3.731308] etnaviv-gpu 134000.gpu: model: GC320, revision: 5007
> [    3.752437] etnaviv-gpu 134000.gpu: command buffer outside valid
> memory window
> [    3.760583] etnaviv-gpu 2204000.gpu: model: GC355, revision: 1215
> [    3.766766] etnaviv-gpu 2204000.gpu: Ignoring GPU with VG and FE2.0
>
> Restore the behaviour of memblock_phys* family so that these functions will
> not enforce memblock.current_limit.
>

This fixed the issue.  Thank you

Tested-by: Adam Ford <aford173@gmail.com> #imx6q-logicpd

> Fixes: 92d12f9544b7 ("memblock: refactor internal allocation functions")
> Reported-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  mm/memblock.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 7d4f61a..c4b16ca 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
>                 align = SMP_CACHE_BYTES;
>         }
>
> -       if (end > memblock.current_limit)
> -               end = memblock.current_limit;
> -
>  again:
>         found = memblock_find_in_range_node(size, align, start, end, nid,
>                                             flags);
> @@ -1469,6 +1466,9 @@ static void * __init memblock_alloc_internal(
>         if (WARN_ON_ONCE(slab_is_available()))
>                 return kzalloc_node(size, GFP_NOWAIT, nid);
>
> +       if (max_addr > memblock.current_limit)
> +               max_addr = memblock.current_limit;
> +
>         alloc = memblock_alloc_range_nid(size, align, min_addr, max_addr, nid);
>
>         /* retry allocation without lower limit */
> --
> 2.7.4
>
>
> > > adam
> > >
> > > On Sat, Sep 28, 2019 at 2:33 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > >
> > > > On Thu, Sep 26, 2019 at 02:35:53PM -0500, Adam Ford wrote:
> > > > > On Thu, Sep 26, 2019 at 11:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > On Thu, Sep 26, 2019 at 08:09:52AM -0500, Adam Ford wrote:
> > > > > > > On Wed, Sep 25, 2019 at 10:17 AM Fabio Estevam <festevam@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Wed, Sep 25, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
> > > > > > > >
> > > > > > > > > I tried cma=256M and noticed the cma dump at the beginning didn't
> > > > > > > > > change.  Do we need to setup a reserved-memory node like
> > > > > > > > > imx6ul-ccimx6ulsom.dtsi did?
> > > > > > > >
> > > > > > > > I don't think so.
> > > > > > > >
> > > > > > > > Were you able to identify what was the exact commit that caused such regression?
> > > > > > >
> > > > > > > I was able to narrow it down the 92d12f9544b7 ("memblock: refactor
> > > > > > > internal allocation functions") that caused the regression with
> > > > > > > Etnaviv.
> > > > > >
> > > > > >
> > > > > > Can you please test with this change:
> > > > > >
> > > > >
> > > > > That appears to have fixed my issue.  I am not sure what the impact
> > > > > is, but is this a safe option?
> > > >
> > > > It's not really a fix, I just wanted to see how exactly 92d12f9544b7 ("memblock:
> > > > refactor internal allocation functions") broke your setup.
> > > >
> > > > Can you share the dts you are using and the full kernel log?
> > > >
> > > > > adam
> > > > >
> > > > > > diff --git a/mm/memblock.c b/mm/memblock.c
> > > > > > index 7d4f61a..1f5a0eb 100644
> > > > > > --- a/mm/memblock.c
> > > > > > +++ b/mm/memblock.c
> > > > > > @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
> > > > > >                 align = SMP_CACHE_BYTES;
> > > > > >         }
> > > > > >
> > > > > > -       if (end > memblock.current_limit)
> > > > > > -               end = memblock.current_limit;
> > > > > > -
> > > > > >  again:
> > > > > >         found = memblock_find_in_range_node(size, align, start, end, nid,
> > > > > >                                             flags);
> > > > > >
> > > > > > > I also noticed that if I create a reserved memory node as was done one
> > > > > > > imx6ul-ccimx6ulsom.dtsi the 3D seems to work again, but without it, I
> > > > > > > was getting errors regardless of the 'cma=256M' or not.
> > > > > > > I don't have a problem using the reserved memory, but I guess I am not
> > > > > > > sure what the amount should be.  I know for the video decoding 1080p,
> > > > > > > I have historically used cma=128M, but with the 3D also needing some
> > > > > > > memory allocation, is that enough or should I use 256M?
> > > > > > >
> > > > > > > adam
> > > > > >
> > > > > > --
> > > > > > Sincerely yours,
> > > > > > Mike.
> > > > > >
> > > >
> > > > --
> > > > Sincerely yours,
> > > > Mike.
> > > >
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
