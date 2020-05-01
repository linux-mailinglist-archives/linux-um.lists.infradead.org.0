Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685441C0DE0
	for <lists+linux-um@lfdr.de>; Fri,  1 May 2020 07:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHTnX6Bxsxq9MhOBduQsXnvCYbpHM4XOQCED62PnLCE=; b=TK3nUW4OBm+Y11
	N6vqzLs6E+ctO1H/l3oiNltnHYF0xq9Hl/98COnmDQPbXcSKwcx4PPvcYDlAER9/+E2s5h/G79K73
	RR295B/c/6OLYQjSp51caDwYjjp69hu9UoC1P9C/aU8jG6mZwdNwlQITuBdpPVpbC4xEujCd+LwRG
	i+uk6RWaLn0HosgSPs+A1VuZ/I8hdNTxfTi0MihXQnHIpIkgA/8Z5Q4KXDcwXgNG9TNIRqZxa92J7
	76m9sjs25KsluVn6acDhv7BGnx+xhrH1CVY3Fk2mtPQa0R4tu+ORE7sYOlaMK185eEqnuiy5Zt5Zj
	an09meVgudf2yYJOWRyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUOU1-00006l-HY; Fri, 01 May 2020 05:45:09 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUOTy-0007FY-Ez
 for linux-um@lists.infradead.org; Fri, 01 May 2020 05:45:08 +0000
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 0415iglV011355
 for <linux-um@lists.infradead.org>; Fri, 1 May 2020 14:44:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0415iglV011355
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588311883;
 bh=qfzL0paOa0xcAfnxB0duAvkGtJs8i6sMQdMbhTy6L1E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tGdfOpm84vZIVVXFKw+09PgUAKGrYX2WJmG9HuxOWdPysRD8jUmP3deVWXFTN5swV
 3Hrx7CdoLi5xwlZ3IHrMCw9vsy3DmchXGvLedpCe3Q0QGW0RF2r63Jv+eM5CZxyo9H
 LTLFu7d/AzieOR9v00F15Z5ZsCt3nbcXscHpAT7U/F9h4Mx07a+QuVgEtbQ8PmwQev
 uW3dsLz51WCZdKO/sF/TIt5X4MX91arEDqS7xgC1YRFRq/Kf+2DDPFjzh2se9abfV4
 emkzKetMuJNWSbf4p5H97Oqlci+eabwymqiSzSZ59rMrLyEoohqQU2NaXLfsekiQXG
 UnAwOF4r602Aw==
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id x136so5755652vsx.2
 for <linux-um@lists.infradead.org>; Thu, 30 Apr 2020 22:44:43 -0700 (PDT)
X-Gm-Message-State: AGi0PubYtj/Z3Xp0QvEVz9QENlFth7d9PEbzNGWBSvGfaaMp0mcISYDQ
 /TcPyCVHBiIoMXZp1dNGXC1agqzNIxVPmQ9blsw=
X-Google-Smtp-Source: APiQypICSQsHjOgrB5HvgYBUa1hOiGuyrfu4TBLWjt6h9s22CPEZ6zD/HNLA61XgUUFrv8BY+cPNxy95N3kJPPeTAJU=
X-Received: by 2002:a05:6102:3c7:: with SMTP id
 n7mr2106127vsq.179.1588311882097; 
 Thu, 30 Apr 2020 22:44:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200417180455.1174340-1-masahiroy@kernel.org>
In-Reply-To: <20200417180455.1174340-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 1 May 2020 14:44:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQNwHW8=UQPCs7D=bEx2qKwfoNxVVMmHiOwmPy3j4aaGQ@mail.gmail.com>
Message-ID: <CAK7LNAQNwHW8=UQPCs7D=bEx2qKwfoNxVVMmHiOwmPy3j4aaGQ@mail.gmail.com>
Subject: Re: [PATCH] um: do not evaluate compiler's library path when cleaning
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_224506_745395_48437948 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Erel Geron <erelx.geron@intel.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alex Dewar <alex.dewar@gmx.co.uk>,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 3:06 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Since commit a83e4ca26af8 ("kbuild: remove cc-option switch from
> -Wframe-larger-than="), 'make ARCH=um clean' emits an error message
> as follows:
>
>   $ make ARCH=um clean
>   gcc: error: missing argument to '-Wframe-larger-than='
>
> We do not care compiler flags when cleaning.
>
> Use the '=' operator for lazy expansion because we do not use
> LDFLAGS_pcap.o or LDFLAGS_vde.o when cleaning.
>
> While I was here, I removed the redundant -r option because it
> already exists in the recipe.
>
> Fixes: a83e4ca26af8 ("kbuild: remove cc-option switch from -Wframe-larger-than=")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/um/drivers/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
> index a290821e355c..2a249f619467 100644
> --- a/arch/um/drivers/Makefile
> +++ b/arch/um/drivers/Makefile
> @@ -18,9 +18,9 @@ ubd-objs := ubd_kern.o ubd_user.o
>  port-objs := port_kern.o port_user.o
>  harddog-objs := harddog_kern.o harddog_user.o
>
> -LDFLAGS_pcap.o := -r $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
> +LDFLAGS_pcap.o = $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
>
> -LDFLAGS_vde.o := -r $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
> +LDFLAGS_vde.o = $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
>
>  targets := pcap_kern.o pcap_user.o vde_kern.o vde_user.o
>
> --
> 2.25.1
>


Applied to linux-kbuild.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
