Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B541CEC2B
	for <lists+linux-um@lfdr.de>; Tue, 12 May 2020 06:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICQbcdbJklYptyxk74qKkHlYRdS/EU2O1py7MrEN1yM=; b=uwaRRVtQPTSkIt
	6YRdHfcJ/Ol6daT0JT3zh5xWssWQoKsAo48gYzKyVgCz1U1k4xMdx/aZlXmfQw0OseY0kYcUzjgDR
	+5hx++i/gB7+aNYdgiDsEwjpS2fjihq0sVgyNmpoCjSZ6zt3G4hAWDasbNFc8vtzKsd3lqnS6AZn3
	weXrvgT2ak87bZ9zh5olr309LO8Gzsx24T5xvQkBWIbb0qZhedd1F7gx0THNp2lKzUlUYE7woNB0e
	1OCawSmiPm8jGu9omXRBFBdiapwK5DifMDVrfo6ce02qpWm/Vs8PRouABodwP8BSr6wVnAaADUtbW
	h8XIlz2lv8KDSxBmMcNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYMpK-0000uh-VT; Tue, 12 May 2020 04:47:34 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYMpI-0000tc-5a
 for linux-um@lists.infradead.org; Tue, 12 May 2020 04:47:33 +0000
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
 [209.85.221.171]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 04C4lBnl027144
 for <linux-um@lists.infradead.org>; Tue, 12 May 2020 13:47:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 04C4lBnl027144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1589258832;
 bh=tWGwfGztD2z/RvAz3neBmOayn6cuxuG3PSxa/ZcJpbg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mOGHPmCDEdoqZsFvVYBBiKqPCcLq8N98UujriisSvYXJh5xucv8wuMmdWE0Vs/W65
 LMwlSc+NnuJfHXV+zSzIsRxYdOKGu3IkpL/YGF0Q8doKiRXzdQs7Jr41MkFFWrnXH1
 J2evvqyowN3Shtr7y6qza4qUOHG56Si9gP8tRhiv8SyljnZ+kgFXZCSNL343j/UWqi
 XK3iCTpceYQUWM7Rg6aMjlB+XjC7YVPKh45V0UNKEMoESO/5IfZckBgKaFyNtnNXPX
 l+KBU6WDocbUQqK5+h+Ew6HFo+IZZxXnQ4YGrquT2ROu+IjQ2R6egpkq2oqaDUyLrF
 tT+/kMXuyWMLw==
X-Nifty-SrcIP: [209.85.221.171]
Received: by mail-vk1-f171.google.com with SMTP id 134so1973716vky.2
 for <linux-um@lists.infradead.org>; Mon, 11 May 2020 21:47:11 -0700 (PDT)
X-Gm-Message-State: AOAM533138sRhWVIiyANTjaPt48cHsQ2WLfslJI7XFfSEWhHD32rnH2q
 LSQT2XUU6/ULiiXvxu61GGKMJtOLSyplalnqQd0=
X-Google-Smtp-Source: ABdhPJx9Bfa6MksNEoRe5t9wT2eICKX2B4d/8RFu+auloS9KsDHXOcvEkbuAo18ovUl5UV0ud/EQm9lTrtowvLXmDjU=
X-Received: by 2002:a1f:2e16:: with SMTP id u22mr6840176vku.12.1589258830441; 
 Mon, 11 May 2020 21:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200504080807.126396-1-masahiroy@kernel.org>
 <20200504080807.126396-2-masahiroy@kernel.org>
In-Reply-To: <20200504080807.126396-2-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 12 May 2020 13:46:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQmcUZtyYXiwPc8qet9harwtsFWUVXbznLHuYAO=VCG9w@mail.gmail.com>
Message-ID: <CAK7LNAQmcUZtyYXiwPc8qet9harwtsFWUVXbznLHuYAO=VCG9w@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: remove {CLEAN,MRPROPER,DISTCLEAN}_DIRS
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_214732_443188_C03CA786 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 5:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Merge {CLEAN,MRPROPER,DISTCLEAN}_DIRS into {CLEAN,MRPROPER,DISTCLEAN}_FILES
> because the difference is just the -r option passed to the 'rm' command.
>
> Do likewise as commit 1634f2bfdb84 ("kbuild: remove clean-dirs syntax").
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Applied to linux-kbuild.




> ---
>
>  Makefile         | 22 ++++++----------------
>  arch/um/Makefile |  2 +-
>  2 files changed, 7 insertions(+), 17 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index ffd80afcd0bb..8a7c931cc0d9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1389,14 +1389,14 @@ endif # CONFIG_MODULES
>  # make distclean Remove editor backup files, patch leftover files and the like
>
>  # Directories & files removed with 'make clean'
> -CLEAN_DIRS  += include/ksym
> -CLEAN_FILES += modules.builtin modules.builtin.modinfo modules.nsdeps
> +CLEAN_FILES += include/ksym \
> +              modules.builtin modules.builtin.modinfo modules.nsdeps
>
>  # Directories & files removed with 'make mrproper'
> -MRPROPER_DIRS  += include/config include/generated          \
> +MRPROPER_FILES += include/config include/generated          \
>                   arch/$(SRCARCH)/include/generated .tmp_objdiff \
> -                 debian/ snap/ tar-install/
> -MRPROPER_FILES += .config .config.old .version \
> +                 debian snap tar-install \
> +                 .config .config.old .version \
>                   Module.symvers \
>                   signing_key.pem signing_key.priv signing_key.x509     \
>                   x509.genkey extra_certificates signing_key.x509.keyid \
> @@ -1404,12 +1404,10 @@ MRPROPER_FILES += .config .config.old .version \
>                   *.spec
>
>  # Directories & files removed with 'make distclean'
> -DISTCLEAN_DIRS  +=
>  DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
>
>  # clean - Delete most, but leave enough to build external modules
>  #
> -clean: rm-dirs  := $(CLEAN_DIRS)
>  clean: rm-files := $(CLEAN_FILES)
>
>  PHONY += archclean vmlinuxclean
> @@ -1422,7 +1420,6 @@ clean: archclean vmlinuxclean
>
>  # mrproper - Delete all generated files, including .config
>  #
> -mrproper: rm-dirs  := $(wildcard $(MRPROPER_DIRS))
>  mrproper: rm-files := $(wildcard $(MRPROPER_FILES))
>  mrproper-dirs      := $(addprefix _mrproper_,scripts)
>
> @@ -1431,18 +1428,15 @@ $(mrproper-dirs):
>         $(Q)$(MAKE) $(clean)=$(patsubst _mrproper_%,%,$@)
>
>  mrproper: clean $(mrproper-dirs)
> -       $(call cmd,rmdirs)
>         $(call cmd,rmfiles)
>
>  # distclean
>  #
> -distclean: rm-dirs  := $(wildcard $(DISTCLEAN_DIRS))
>  distclean: rm-files := $(wildcard $(DISTCLEAN_FILES))
>
>  PHONY += distclean
>
>  distclean: mrproper
> -       $(call cmd,rmdirs)
>         $(call cmd,rmfiles)
>         @find $(srctree) $(RCS_FIND_IGNORE) \
>                 \( -name '*.orig' -o -name '*.rej' -o -name '*~' \
> @@ -1732,7 +1726,6 @@ $(clean-dirs):
>         $(Q)$(MAKE) $(clean)=$(patsubst _clean_%,%,$@)
>
>  clean: $(clean-dirs)
> -       $(call cmd,rmdirs)
>         $(call cmd,rmfiles)
>         @find $(if $(KBUILD_EXTMOD), $(KBUILD_EXTMOD), .) $(RCS_FIND_IGNORE) \
>                 \( -name '*.[aios]' -o -name '*.ko' -o -name '.*.cmd' \
> @@ -1827,11 +1820,8 @@ tools/%: FORCE
>         $(Q)mkdir -p $(objtree)/tools
>         $(Q)$(MAKE) LDFLAGS= MAKEFLAGS="$(tools_silent) $(filter --j% -j,$(MAKEFLAGS))" O=$(abspath $(objtree)) subdir=tools -C $(srctree)/tools/ $*
>
> -quiet_cmd_rmdirs = $(if $(wildcard $(rm-dirs)),CLEAN   $(wildcard $(rm-dirs)))
> -      cmd_rmdirs = rm -rf $(rm-dirs)
> -
>  quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files)))
> -      cmd_rmfiles = rm -f $(rm-files)
> +      cmd_rmfiles = rm -rf $(rm-files)
>
>  # Run depmod only if we have System.map and depmod is executable
>  quiet_cmd_depmod = DEPMOD  $(KERNELRELEASE)
> diff --git a/arch/um/Makefile b/arch/um/Makefile
> index 275f5ffdf6f0..3f27aa3ec0a6 100644
> --- a/arch/um/Makefile
> +++ b/arch/um/Makefile
> @@ -140,7 +140,7 @@ export CFLAGS_vmlinux := $(LINK-y) $(LINK_WRAPS) $(LD_FLAGS_CMDLINE)
>  # When cleaning we don't include .config, so we don't include
>  # TT or skas makefiles and don't clean skas_ptregs.h.
>  CLEAN_FILES += linux x.i gmon.out
> -MRPROPER_DIRS += arch/$(SUBARCH)/include/generated
> +MRPROPER_FILES += arch/$(SUBARCH)/include/generated
>
>  archclean:
>         @find . \( -name '*.bb' -o -name '*.bbg' -o -name '*.da' \
> --
> 2.25.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
