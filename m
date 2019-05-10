Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60519BAD
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 12:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8/DTsRVJc83+07Six/6r+IZFZMh43P6vDMEwxzgnNk=; b=MDF/QwecCgeQJ/
	xOtriK+XB7ySdS3SC4u86ufje06dbkGLPiQLMNbwUnYSBO2/olTzGd57h4Ub4Vv0nmjZHeN3TnDk3
	P+NccqTh/mL3qd6FHJtzd4lZFREY61rp7qJ4ojw608bm926Q35qCwH3IzWwMC+0G8nhYv6FH5fleL
	L3ufbUnuRvktNK6CzW9MxBROilwOw4GuCdPbzqCGUDqqqcqbnxHq6eeFd1FgxUwF1mJ1TYaR7IWR/
	A75X/x73fpoAtQfPlgavk0tQZV/xcmA7qubCVZFNFIo+0ILCC3VCsCVafmL6xce4DaF9sR0KFKLXo
	TX1GHhvhhathXEIBcWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2oI-00064W-Ld; Fri, 10 May 2019 10:31:26 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2oG-000634-Bi
 for linux-um@lists.infradead.org; Fri, 10 May 2019 10:31:26 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x4AAV06j031374
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 19:31:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x4AAV06j031374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557484261;
 bh=3yJH+cglIjNQq6vK0eeyN++1KXd8VHZRN7FQJbPltS8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QtaJmXuQJy7hctD/ahVAN5XPHN224n6/gqws6nJ/VotVw6eA+8vTJU3kSagTwyS1q
 DGlLyHog02uWurOxIIxKgcK7nayyO+bQha19Z/412N0ccdltUzKhcnlvU54r3rL2ZF
 /7yd3DaXEV3ThV74ZGgPMcATUIr2d8phlFXtq9OT03ColTy+eKxoiuz5y1uKzLvpMZ
 ALUOCKcCEOwtobtUg0Fk/k9pSf7fatmDB/w+cjz1n7pCZUkVL0J76Ro+TKCQTrlXnb
 Xi83Kavt+o++04Nbfu9iLvu2nvO+HmNfTEUZUgWP/kFkOPfZVl7zyvl75HUdzL9IoH
 xywoa2weFn44A==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id e2so3309543vsc.13
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 03:31:01 -0700 (PDT)
X-Gm-Message-State: APjAAAWhH2ZBKQ4upXgCm6kd7VwmKDvRVXlEScLspsVLl2Cj3R4kJDPp
 yEh7GltcznNkpmm9EtSeZCEPRRZzIaLdKEl6sJY=
X-Google-Smtp-Source: APXvYqxQg+YuYHeAdyD+cmoEqdlV9x3SqXv2NvZ+DbME3bD71rpckfASo32QB3ghErivNtiJLmZIR4uDTrUdlUap+zw=
X-Received: by 2002:a67:f109:: with SMTP id n9mr5064876vsk.181.1557484260150; 
 Fri, 10 May 2019 03:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-7-brendanhiggins@google.com>
 <CAK7LNAQ+SRMn8UFjW1dZv_TrL0qjD2v2S=rXgtUpiA-urr1DDA@mail.gmail.com>
 <CAFd5g47BNZ0gRz4SXb37XjyXF_LyNZrSmoqDbzaaCUrTg3O7Yg@mail.gmail.com>
In-Reply-To: <CAFd5g47BNZ0gRz4SXb37XjyXF_LyNZrSmoqDbzaaCUrTg3O7Yg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 10 May 2019 19:30:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR3DW5UxtsTNtW6mtQic8cukJwJ18=KitC2HX+jO5eo4g@mail.gmail.com>
Message-ID: <CAK7LNAR3DW5UxtsTNtW6mtQic8cukJwJ18=KitC2HX+jO5eo4g@mail.gmail.com>
Subject: Re: [PATCH v2 06/17] kbuild: enable building KUnit
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_033124_615751_F153D13C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
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
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
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

On Fri, May 10, 2019 at 7:27 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> > On Thu, May 2, 2019 at 8:03 AM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > Add KUnit to root Kconfig and Makefile allowing it to actually be built.
> > >
> > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >
> > You need to make sure
> > to not break git-bisect'abililty.
> >
> >
> > With this commit, I see build error.
> >
> >   CC      kunit/test.o
> > kunit/test.c:11:10: fatal error: os.h: No such file or directory
> >  #include <os.h>
> >           ^~~~~~
> > compilation terminated.
> > make[1]: *** [scripts/Makefile.build;279: kunit/test.o] Error 1
> > make: *** [Makefile;1763: kunit/] Error 2
>
> Nice catch! That header shouldn't even be in there.
>
> Sorry about that. I will have it fixed in the next revision.


BTW, I applied whole of this series
to my kernel.org repository.

0day bot started to report issues.
I hope several reports reached you,
and they are useful to fix your code.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
