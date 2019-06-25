Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF96C55B72
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 00:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoaCc+ucPDX4PH3/29EnrCdZi9QQHVemVyVnI3F/1LQ=; b=Z6oCw1Bepyt21p
	pRuL45DflZxnKeMsJwSRExQGEH3STD0tPTuK2iV+GWmYSYkT9cD3AeJhzlGy49+bcqyKZMXTASOLn
	gR7jd5KHyuxrhJlQcwKaFPuXYewkpoWnVQUigAHNxocXl36m1a/RIMPl+n/eGFmkoifrWkfY3M4Za
	bxfL6HDM3mqhKuAU31+dJygKyJqTOC5UPDJAEpuNSWPcQ6JToxjkK1aGm/X+FitXa3WHSsVYl6P75
	5ZyvNOqIllTRiRgMF7aUP/hNZccBu9HGVJDg5Lv2iWyawkvzyJjgsf2E8nln54JzVJxPjQ9n2DKkp
	o/5TtnoyDCuhfXsbuzeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu8H-0005ZC-H1; Tue, 25 Jun 2019 22:41:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfu8E-0005Xm-FE
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 22:41:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id g4so225928plb.5
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 15:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZHzVm2a7c7UL6Qa6OAs8GEjMqpVhQyW6fXdYgD38tg=;
 b=WD+/u8ZZNxnSkIT8uW5k3AjwCTR/8Rul0p24/yrVxO5s2EytGRajAgq/3lh2tgJCoM
 vOOrZEi6S9bPRtEV0sQ50TTo+svFRl+vB4anHgBOhwDOhj/sKAavGpLkR9ZW/+8ZlccU
 UdMs6Z8Ga9hdSotzdUPEFVwI6IZ9G3K5novTFltGAZnxEjjToD6xbWblx/HifwrkfVwk
 hJ5e4XwNevJKRgf4O7t302ViaxWNKj1aXsprvBLH4sig979oKbLTzjrYSQpuQWmWeZ6j
 dP5tx4S2eAu98MeIeDuog/S9j0E1psO/k6tGCkOvr99nidb5QryIDQhLc5bRofLMt0FA
 FrzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZHzVm2a7c7UL6Qa6OAs8GEjMqpVhQyW6fXdYgD38tg=;
 b=qzAtq9z/gQvpKSjcm1mZ1HLZx2/gzvKvPRJXpbEMKP4iGD6znN06VGTbJzDBx5i088
 zjPuavNSlLsBN+opqG+7K/hxCkDRlsK1jhl1g+W+SNktK/uCrdc9ipPCwO4GgJ2ycHpa
 0RgB56a7/ZMGRijWY73D1UmxFEB3Lj13KII+ezB2ybXrIFWQvB9WoQhms224Zq8HasIH
 JPW/RGDf74zLFXezG1CaCKvUIgPQh26czQ/oa12w37p+LlsUztx1+QhvzJNyy1xrXkvh
 LcrnbEKTYKOZW4FgB9GprSpad5139HsPfOD8Vd7uNLR/kawkaf6WLANLt0E7HKDHu/Ls
 AJ9A==
X-Gm-Message-State: APjAAAWxsfgv3Y+6Z0XVPfnCCclw66Sq+oWNjjpOW4VG5Dk+kSVYeQI2
 KO3rnU+H4z5dpUnHDiw+tkODMuXccg1unFHdqyUIqQ==
X-Google-Smtp-Source: APXvYqy+cT1ZyNb5dbS97li+J3swfp3mEaFo87MllhiLnOnKUdNsGvjik4FBRsZ5dS4sFwdr9UIg/0trivOUWFuNZts=
X-Received: by 2002:a17:902:1004:: with SMTP id
 b4mr1155831pla.325.1561502500720; 
 Tue, 25 Jun 2019 15:41:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-7-brendanhiggins@google.com>
 <20190625221318.GO19023@42.do-not-panic.com>
In-Reply-To: <20190625221318.GO19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 25 Jun 2019 15:41:29 -0700
Message-ID: <CAFd5g448rYqr3PHg0cfoddr70nktkWXcRfJoZHmuPJjTW53YYg@mail.gmail.com>
Subject: Re: [PATCH v5 06/18] kbuild: enable building KUnit
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_154142_540121_6F4717AF 
X-CRM114-Status: GOOD (  15.92  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 3:13 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:26:01AM -0700, Brendan Higgins wrote:
> > diff --git a/Kconfig b/Kconfig
> > index 48a80beab6853..10428501edb78 100644
> > --- a/Kconfig
> > +++ b/Kconfig
> > @@ -30,3 +30,5 @@ source "crypto/Kconfig"
> >  source "lib/Kconfig"
> >
> >  source "lib/Kconfig.debug"
> > +
> > +source "kunit/Kconfig"
>
> This patch would break compilation as kunit/Kconfig is not introduced. This
> would would also break bisectability on this commit. This change should
> either be folded in to the next patch, or just be a separate patch after
> the next one.

Maybe my brain isn't working right now, but I am pretty darn sure that
I introduce kunit/Kconfig in the very first patch of this series.
Quoting from the change summary from the first commit:

>  include/kunit/test.h | 161 +++++++++++++++++++++++++++++++++
>  kunit/Kconfig        |  17 ++++
>  kunit/Makefile       |   1 +
>  kunit/test.c         | 210 +++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 389 insertions(+)
>  create mode 100644 include/kunit/test.h
>  create mode 100644 kunit/Kconfig

I am not crazy, right?

>  create mode 100644 kunit/Makefile
>  create mode 100644 kunit/test.c

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
