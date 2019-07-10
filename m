Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC2063FC2
	for <lists+linux-um@lfdr.de>; Wed, 10 Jul 2019 06:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKfID5QdI93CEC522PFpIk9L0I1LxIzJmHWvMNHBqCk=; b=SbCIwLK9Avs1V3
	EY0Bu5+Q/liP0myPjpR4aBqH9YXgtuKcusiMTi4yApKHmoEOap/TUP9zdcgvyQIwVePFnNe9oAsv3
	HXy1pPtkuNh6vUW1ungfud9qqcYnUMjbiTJ5G+TA1GztC7T744Sd0wHCmorNAqubS/Yw8+N8u1+3J
	LUXrEsHnChUSGy9pTEq9YQFVxPpe2DpXupdtqUyKepnQoqSNalm6MmRCNsW+s+OKQkK+2ByYEuorR
	b9y8t88h728lTeRhWxcO34sxVlbmHtZZTgigILDac/ZUA6piE1zlVB9VLaTbo5D/X/O0XIHFddaO6
	2RlLsR8LRYAMDkWdjOeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3mk-00054u-N1; Wed, 10 Jul 2019 04:00:50 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3mg-00054A-UZ
 for linux-um@lists.infradead.org; Wed, 10 Jul 2019 04:00:48 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6A407EJ002764
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 13:00:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6A407EJ002764
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562731208;
 bh=KknRHaSkhBMpTs1BmzD59wJGTvSH88jZgscNwiE3MlQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Zcv8Y/m8P8X292YdVCGzvjt8eh3zKthkL/tKU8hgl0+kZFK/TCidt2YnUJeXwRY2C
 53gnnvfR1V5a/tZ3oft3dU87Wv/na0I6Cs7CUbLYQQ/tTgfsks7h1YrnLQlPvFedYE
 CUXVrkPfqD5VgYstJJ7CydXBopsxsIxYrwFsxgwx6d60uk5NaU0HmmUFrWcRa0Ma+X
 JP4vrMHlCl+oWvWoNYTtWzS8BRJaI99Vvewq8PDOryzMVp2NXYrBOU+OgPSCXtaQVR
 iBpoKf4mR5G2BIwMVbOsyg7IXjsTJdhgiZepcEUeuFghjpTnMBJ19Lf/0+rRb7AENC
 me1vWrlscZvww==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id u124so615596vsu.2
 for <linux-um@lists.infradead.org>; Tue, 09 Jul 2019 21:00:08 -0700 (PDT)
X-Gm-Message-State: APjAAAUSTotm+wbGyEAVp4aSO4yrwMm6e3l0/CCj+THkZxWUqJYmm0lG
 51SFmhgl2G3Q7WwgdwQON/tv62X55pmNq3u+qHw=
X-Google-Smtp-Source: APXvYqzEJesQV2n3K1HZLU8Wx1IHWCC1QIw58D6BP7vlVU/X0PRT9+zSoni+Ubl8ut/dwkZUzYEjYnFrduUZ0sj9y38=
X-Received: by 2002:a67:f495:: with SMTP id o21mr16708917vsn.54.1562731207027; 
 Tue, 09 Jul 2019 21:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190709063023.251446-1-brendanhiggins@google.com>
 <20190709063023.251446-7-brendanhiggins@google.com>
In-Reply-To: <20190709063023.251446-7-brendanhiggins@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 12:59:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNATx30AhZ51xozde=nO06-8UzuC0M9nfZXrqkyfmEFdu5w@mail.gmail.com>
Message-ID: <CAK7LNATx30AhZ51xozde=nO06-8UzuC0M9nfZXrqkyfmEFdu5w@mail.gmail.com>
Subject: Re: [PATCH v7 06/18] kbuild: enable building KUnit
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_210047_204390_B71BE7E4 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Cc: Shuah Khan" <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 DTML <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Tim Bird <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 3:34 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> KUnit is a new unit testing framework for the kernel and when used is
> built into the kernel as a part of it. Add KUnit to the root Kconfig and
> Makefile to allow it to be actually built.
>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Michal Marek <michal.lkml@markovi.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  Kconfig  | 2 ++
>  Makefile | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Kconfig b/Kconfig
> index 48a80beab6853..10428501edb78 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -30,3 +30,5 @@ source "crypto/Kconfig"
>  source "lib/Kconfig"
>
>  source "lib/Kconfig.debug"
> +
> +source "kunit/Kconfig"
> diff --git a/Makefile b/Makefile
> index 3e4868a6498b2..60cf4f0813e0d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -991,7 +991,7 @@ endif
>  PHONY += prepare0
>
>  ifeq ($(KBUILD_EXTMOD),)
> -core-y         += kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
> +core-y         += kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/ kunit/
>
>  vmlinux-dirs   := $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
>                      $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
> --
> 2.22.0.410.gd8fdbe21b5-goog


This is so trivial, and do not need to get ack from me.

Just a nit.


When CONFIG_KUNIT is disable, is there any point in descending into kunit/ ?

core-$(CONFIG_KUNIT) += kunit/

... might be useful to skip kunit/ entirely.

If you look at the top-level Makefile, some entries are doing this:


init-y          := init/
drivers-y       := drivers/ sound/
drivers-$(CONFIG_SAMPLES) += samples/
drivers-$(CONFIG_KERNEL_HEADER_TEST) += include/
net-y           := net/
libs-y          := lib/
core-y          := usr/





--
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
