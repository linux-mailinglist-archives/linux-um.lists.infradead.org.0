Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F37B9AF7
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aex9OKMbI083SMp2hbCz9MpeydQbm18UEBFu7iHeU3k=; b=nU0t0HZAe39Qyc
	vmwfNikAqywhAej8iTsdOlcWhem9jZPdX8JqDNOhjpjpvtkHXXNwuFZMAuGOgOuNZEAJpkQl9LMAF
	Zk8yvIg+HKs/qM33RZLdP+2PLZUI3vSXU3/Z3v0S4YtiAWst8traTYHDgUS6PnIwC5aPpSAPzlx6+
	/HRDu9wvD5x7mfNfMW1JJ2RU/1yxpK/ZUD1JsYmZEfxoTCvZbfcqnMmp0xytr8VXFaWs/6V/q7sI2
	2jIAP/E3NWTp6tPc19RVPhdsDSoFpz1mbvCpcnQ33R/YjyDfTpxCkr2gGoAIIbGFXkjapVfdnvgkD
	3ZbJ7ke2lWdcOudLHwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBShR-0006Z3-A4; Fri, 20 Sep 2019 23:52:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBShO-0006YH-UB
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:52:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so3922612pls.9
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 16:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8eg0Go6Vco6zmrMokIuCHT90eNcEj+1gkgwUozbRoOU=;
 b=C3ZFMMtvPf81TgLhiSeEgf2YDVeBRSaHW0FNEf+k4vFeia1DmItLwfEBHoOIfODtlF
 gEyN20SdH4KLHWwmhavoas54tR7qUqGUNdwwesdSM+wK3SyllrG5IxRh96WXtnnrfY7d
 pWKppGT1A1o2nr1VJ5fMakqYDf8QR5Hd9B9Tr6251H/ZqxARqyg4FG/IYVzwg6lZHgw9
 KjiL/8lm/frPH5jhCZqRRWZnbSsN2mWbWgq5azfITpuYNj1mNqmc8FRarPSRhSul8KEc
 RmmD1CROxNKOEtIbX+4Fprl/YK9aZC0HXh6DiK9VVU/3W0qEmA2PmqxFFb9ET+vFYLUq
 AVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8eg0Go6Vco6zmrMokIuCHT90eNcEj+1gkgwUozbRoOU=;
 b=ASqRbDQMx4gWjMJrF/keBkeA7k0ECB3ALt/rH0SFJZGteqzqEbUWTr44BL3wdVSwSa
 8kQFgegHY3WdGZ2SKKENelYW4Ciwo5woWvoa/iLS0vdz8x6wle9e67sckmOkSCl15+AS
 9KRY7k7ELdXNWKt0lQnfDdW839MZfFUYVtNmZVeI3Rg53gCWxNfKpLs+HQ6hRlTtoU52
 pWswofROo7rBvJfyCumu/QXJRTMhoiLe/krzr+jRROTOoVUJN1M5XsPT0wLL4oiuWIGp
 XV7ioJUZuiOGQm+cwLKiVX6Dnuec57yDbn/QKWRIRY6J5PCLt7bZvd+Jf4A5qXiUj0xE
 +Udw==
X-Gm-Message-State: APjAAAWzlOrFjoU0ZeTBM3nCN6q3KUiHzkWqYrKOWmsX3LBz9SMuDOYf
 6kIpJeACD3xeIHR7/tgT2E/L+MLpoYmlavGbgEXNUQ==
X-Google-Smtp-Source: APXvYqxVNfOs4Ho/5kXpPZVj8oP5ezLhr8UaD2UCudmwUKwPDFfSFY4+sFjwQIeK+urY5OGR284WgAH5zN0eWfy9OQU=
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr18912291plb.297.1569023545999; 
 Fri, 20 Sep 2019 16:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
 <20190920231923.141900-7-brendanhiggins@google.com>
 <20190920233600.48BBA20644@mail.kernel.org>
 <CAFd5g46pndA_gOD9i8M5e5fb8x4mSL9mcgMDujN7XufeFs8bmQ@mail.gmail.com>
In-Reply-To: <CAFd5g46pndA_gOD9i8M5e5fb8x4mSL9mcgMDujN7XufeFs8bmQ@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 20 Sep 2019 16:52:14 -0700
Message-ID: <CAFd5g44E9Z=wRLarzcirAMudQ5=_3d4gnYfAwM9T2XB+sr+_qg@mail.gmail.com>
Subject: Re: [PATCH v16 06/19] lib: enable building KUnit in lib/
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_165226_999634_7455E959 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 4:44 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Fri, Sep 20, 2019 at 4:36 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-09-20 16:19:10)
> > > KUnit is a new unit testing framework for the kernel and when used is
> > > built into the kernel as a part of it. Add KUnit to the lib Kconfig and
> > > Makefile to allow it to be actually built.
> > >
> > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > Cc: Randy Dunlap <rdunlap@infradead.org>
> > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > Cc: Kees Cook <keescook@chromium.org>
> > > ---
> > >  lib/Kconfig.debug | 2 ++
> > >  lib/Makefile      | 2 ++
> > >  2 files changed, 4 insertions(+)
> > >
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index 5960e2980a8a..5870fbe11e9b 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -2144,4 +2144,6 @@ config IO_STRICT_DEVMEM
> > >
> > >  source "arch/$(SRCARCH)/Kconfig.debug"
> > >
> > > +source "lib/kunit/Kconfig"
> > > +
> >
> > Perhaps this should go by the "Runtime Testing" part? Before or after.

Now I am actually thinking that it should be a menuconfig...

> > >  endmenu # Kernel hacking

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
