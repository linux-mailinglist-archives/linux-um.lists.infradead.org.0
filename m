Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8BF196F2
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 05:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFlkTQAVcF2iUmcTgbC3C8hyE+ZvTxZvqfdUMZMovn0=; b=AHhvtwH3yMHyFp
	4kmFg/4uvNM0QSnkritFo13J95/0yXoKp3dNfpbnmd8YRBmkWIDuiGekl5oIR4B57RiV3lQb4oTN/
	a154JrMFrbew+GE8vlHUT9EMD1qdFFcT9m6nd70TvKNQD7IBy0wkk2EFSPZ+c7CpJ/xMCSy0s2RyQ
	aU8jCWkXHRSIhSnYwiI8HWhhVkQJgq1i1ECYsIFEzUtpBCPpYOhDJMvv70QCTt3Gb9NbU5huqbndn
	hOD3jqtqYHlr7j+51XSF7W/WeyJhb74QgpgPSMZLCR6H/Lhd4NfeNmit4xPylo9ez6pvbKD3acEGo
	4FiQ6keSzQ1sn2yBsedQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOvq9-0002kG-KR; Fri, 10 May 2019 03:04:53 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOvq5-0002il-Jy
 for linux-um@lists.infradead.org; Fri, 10 May 2019 03:04:51 +0000
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x4A34XfP008479
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 12:04:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x4A34XfP008479
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557457474;
 bh=DYJ0GRwyv9LQw+wYut+AKlESUHW5OcD/mZsMQ0v23g4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jupzuktqIfQz0vJS1GaSpRqu2LQlIojIZ6l/TI0jmjH+y1VkJRBs89e7uRAv6B1Ef
 uHXWjQCyh3QM1FLLkbOfmNDmcIDMv3Oq/FlPK1nJiwjkiN5C9tudnBuh0F8evz5qm8
 ZorME1HYwlKxsObBT8LwUNg5l1Fi86fQ7ffUtVkUvXf1TvrufFpYms99rIymu6dL/K
 hIlycbAJXfNN986oEc9iUdGhQ9gZ5CSC7yKV9BeU183dZd8/MJ0EQhq+4AgJe2J6jP
 TyF0SLqvX8D3dQhEIQDaNOjnh/QC3NF0r7D48IC/P5jvWFHuMVUbINwaFq0DbE19/a
 SQYZWBc5p+oIQ==
X-Nifty-SrcIP: [209.85.221.170]
Received: by mail-vk1-f170.google.com with SMTP id h127so1119235vkd.12
 for <linux-um@lists.infradead.org>; Thu, 09 May 2019 20:04:34 -0700 (PDT)
X-Gm-Message-State: APjAAAX7o0cPVb6jg8stZYMRpeDJ2pgb45xxY5quC702j2PPsFnG8Xm/
 /61XMfeJet6w4rZYboxc2PXthP0oux+IPINTj80=
X-Google-Smtp-Source: APXvYqy2m1+g4N+7CIk2iyVkz9i+viWE9nsO8OqKDhs3ADzAs5NWYmvIdraov4KIA0ibHwe/v+Jg8QmbzOy0PS2UyFc=
X-Received: by 2002:a1f:d585:: with SMTP id m127mr3859437vkg.34.1557457473272; 
 Thu, 09 May 2019 20:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-7-brendanhiggins@google.com>
In-Reply-To: <20190501230126.229218-7-brendanhiggins@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 10 May 2019 12:03:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ+SRMn8UFjW1dZv_TrL0qjD2v2S=rXgtUpiA-urr1DDA@mail.gmail.com>
Message-ID: <CAK7LNAQ+SRMn8UFjW1dZv_TrL0qjD2v2S=rXgtUpiA-urr1DDA@mail.gmail.com>
Subject: Re: [PATCH v2 06/17] kbuild: enable building KUnit
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_200449_879657_AC713BDB 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, amir73il@gmail.com,
 dri-devel <dri-devel@lists.freedesktop.org>, Alexander.Levin@microsoft.com,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Cc: Shuah Khan" <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm@lists.01.org, Frank Rowand <frowand.list@gmail.com>,
 Knut Omang <knut.omang@oracle.com>, kieran.bingham@ideasonboard.com,
 wfg@linux.intel.com, Joel Stanley <joel@jms.id.au>, rientjes@google.com,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 DTML <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Tim Bird <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 8:03 AM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> Add KUnit to root Kconfig and Makefile allowing it to actually be built.
>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

You need to make sure
to not break git-bisect'abililty.


With this commit, I see build error.

  CC      kunit/test.o
kunit/test.c:11:10: fatal error: os.h: No such file or directory
 #include <os.h>
          ^~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.build;279: kunit/test.o] Error 1
make: *** [Makefile;1763: kunit/] Error 2








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
> index 2b99679148dc7..77368f498d84c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -969,7 +969,7 @@ endif
>  PHONY += prepare0
>
>  ifeq ($(KBUILD_EXTMOD),)
> -core-y         += kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
> +core-y         += kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/ kunit/
>
>  vmlinux-dirs   := $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
>                      $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
> --
> 2.21.0.593.g511ec345e18-goog
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
