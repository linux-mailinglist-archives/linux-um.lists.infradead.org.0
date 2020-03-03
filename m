Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1EE1777AB
	for <lists+linux-um@lfdr.de>; Tue,  3 Mar 2020 14:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVEgBdrKfE/Z2brfgWsdK4I0RwwjtGxeqO0EbvrKJ/M=; b=haP0at98vM6EBM
	tYUuGKHQuHMxh2DAxa2GtAmpN4tFMMYLkDpFW825VbyXIaRSxaQq2kTMN4FFdA3Cb64zRKSXiy/0N
	Z0dRIZ331cNjAIWtPaaYrn5eY4LrErgB0TTQbMbAHXvvMIy4r69o/VO6CZfnsNn5U5rajD2yQ8khG
	0SGMeFkfMJ5TtaUTFOuiPoEqImjNRc9OQXwje4rlRnbHJYTzkFPmBMrZTYmsMceaalu9kmcoDUo33
	cuYnoCM5aElfRI4MymQnyxQKT1jnI1ykY4Tsb5gCNt+AoXLviN5mwrO9a/C7WgRz50CE74/Ec5XFp
	0hxaZTpepkqZSBM/dThA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97tj-0001Gf-Px; Tue, 03 Mar 2020 13:47:47 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97tg-0001FV-9V
 for linux-um@lists.infradead.org; Tue, 03 Mar 2020 13:47:45 +0000
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 023DlO3g002116
 for <linux-um@lists.infradead.org>; Tue, 3 Mar 2020 22:47:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 023DlO3g002116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1583243245;
 bh=Im1aXfaJVOP8AAV34lGGh2aGYo+2cFWGzTI+un3OZe0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=paWEy8D44ttfQy8HYItnWwlVc0cBqa4WcjSr1xQrR43jKDiK3jnrjgYKxHnh8b1Lm
 nkuFC5T8hDGKbnIfT/TJzYuw/HG2PVVXIJiYRzfeuVOr108zIkkLi4FSG/8xwVP4Gl
 gFO6qLxhYjY58tJHJt9bR12UIQHCboaMYQrl2DksQszYwxXUh/kFXLmGm8SP6H7HNO
 KFGFXHTT/IxguJRVENcpDNmlRzbWj+7809KsufpF7Kn9GqMm0rGlcCRNAn8HPgr6ty
 q3sZIa8N1+4IdgNYXi+sJYOygSrFC5zKIDeTqW2lBrNla5O0q8tvOgO7QRH+9b1ObP
 2yHrI0ameJMMg==
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id a2so2382848vso.3
 for <linux-um@lists.infradead.org>; Tue, 03 Mar 2020 05:47:24 -0800 (PST)
X-Gm-Message-State: ANhLgQ0LlbLQzTI7B3G3v2/9OR3waAHUgs4gXOiCc9D9h4MIc1LgtnXb
 dRPe76JvAokgYDU9lEhvCuTNtgbyvL/VGCQzwwM=
X-Google-Smtp-Source: ADFU+vsOnczoGMXk0HGb7/YYFGR+pKutemWYtSXfgQEgdoEncfX8976RLmzzapPsqlF+H5ZWaIyvjYzI8co1XX5TRnY=
X-Received: by 2002:a67:2ed8:: with SMTP id u207mr2447716vsu.54.1583243243860; 
 Tue, 03 Mar 2020 05:47:23 -0800 (PST)
MIME-Version: 1.0
References: <20200228034640.25247-1-masahiroy@kernel.org>
 <CAK7LNAS9uWyvFeVkxtbkuBrnqumYzzLfcsUrVByHHyons4m8hA@mail.gmail.com>
In-Reply-To: <CAK7LNAS9uWyvFeVkxtbkuBrnqumYzzLfcsUrVByHHyons4m8hA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 3 Mar 2020 22:46:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNATyuyU46qXngDr80d51cs0-J=00jkgL1rdASUMfgmfKOw@mail.gmail.com>
Message-ID: <CAK7LNATyuyU46qXngDr80d51cs0-J=00jkgL1rdASUMfgmfKOw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_054744_549020_9592D92A 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sparclinux <sparclinux@vger.kernel.org>, X86 ML <x86@kernel.org>,
 linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:48 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Feb 28, 2020 at 12:47 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Most of the Kconfig commands (except defconfig and all*config) read
> > the .config file as a base set of CONFIG options.
> >
> > When it does not exist, the files in DEFCONFIG_LIST are searched in
> > this order and loaded if found.
> >
> > I do not see much sense in the last two lines in DEFCONFIG_LIST.
> >
> > [1] ARCH_DEFCONFIG
> >
> > The entry for DEFCONFIG_LIST is guarded by 'depends on !UML'. So, the
> > ARCH_DEFCONFIG definition in arch/x86/um/Kconfig is meaningless.
> >
> > arch/{sh,sparc,x86}/Kconfig define ARCH_DEFCONFIG depending on 32 or
> > 64 bit variant symbols. This is a little bit strange; ARCH_DEFCONFIG
> > should be a fixed string because the base config file is loaded before
> > the symbol evaluation stage.
> >
> > Using KBUILD_DEFCONFIG makes more sense because it is fixed before
> > Kconfig is invoked. Fortunately, arch/{sh,sparc,x86}/Makefile define it
> > in the same way, and it works as expected. Hence, replace ARCH_DEFCONFIG
> > with "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)".
> >
> > [2] arch/$(ARCH)/defconfig
> >
> > This file path is no longer valid. The defconfig files are always located
> > in the arch configs/ directories.
> >
> >   $ find arch -name defconfig | sort
> >   arch/alpha/configs/defconfig
> >   arch/arm64/configs/defconfig
> >   arch/csky/configs/defconfig
> >   arch/nds32/configs/defconfig
> >   arch/riscv/configs/defconfig
> >   arch/s390/configs/defconfig
> >   arch/unicore32/configs/defconfig
> >
> > The path arch/*/configs/defconfig is already covered by
> > "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)". So, this file path is
> > not necessary.
> >
> > I moved the default KBUILD_DEFCONFIG to the top Makefile. Otherwise,
> > the 7 architectures listed above would end up with endless loop of
> > syncconfig.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
>
> I forgot to say this.
> This is v2.
>
> Changes in v2:
>   - Move KBUILD_DEFCONFIG to fix endless loop of syncconfig
>
>

Applied to linux-kbuild.


Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
