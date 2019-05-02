Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D8A12224
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 20:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nXAuEkdm9ZP0nea8zKVWLvxPNzAVIQp53+ecQ+On10=; b=f9a4Lw6HQceyds
	+JJRRgUi1AJmuPmgCoagtMtbKzPN7UMqj9w3YAMsxsrcs9LQuY23stTqloien0FMC7UjiVYB7kcfR
	ayNpXNJgpHzhXiDId8ovil2jsgFIVxSg+c/qIdPRaVzqUjFhgz5HhwVvyfFyPccZMwGEgwP6QgTiN
	oEJtppwfE0TzpLpLW9TDRrRUvUHEPkPTrKQ5p8H/XIL0bQdy1tF4tOOaq07khbJmpwU/xLZQHBfWg
	/5Sx8S5wOSvNqDXcuObn32zl2hYVWAsGah1vizYkYGcvuEUp0HT4xFuii26bgEHQhgNqTFoqh+r3c
	lNQllQetchwmtZVsSFJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGiX-0004Db-Gl; Thu, 02 May 2019 18:46:01 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGiR-0004CX-Sg
 for linux-um@lists.infradead.org; Thu, 02 May 2019 18:46:00 +0000
Received: by mail-oi1-x241.google.com with SMTP id t184so2475330oie.11
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 11:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=17OVt5sF62dgswwCTgJsxP7RAt3WsAf5VJ4Ut9AHOnQ=;
 b=P9mmkEctGFviK6NgZSHwMcUWXoaX/YoeIAK9bJMcE3Lx9wj9ioBeHG7azUaTRvfMEz
 TY2RHOx0ThWPnz2RyK/JeVea8tpHo/vQkabwSgIPQaucOPCDrRgdtpJvHIeyfXSXZIdh
 EEpMDUWFYZWhjIh9jDc8FJvMTlSL8vQ8VfgY4koM+if0RzgjLUM+G7N96Iar9oJO2RWW
 y2bZo1FvLirTsbvZcF5UvfSKsfdjWdxyGHNZOdT8DOFyQvGPVysWQaUTlUo3hkMnOD0e
 RSC2W/FJE39vCVMCViynhllAgBlnR6+D6q04cTiRfgx2IG0+4k0zkzJ9Spq984jh3G9l
 lWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=17OVt5sF62dgswwCTgJsxP7RAt3WsAf5VJ4Ut9AHOnQ=;
 b=f3c9XK9CK2OGp4zQYq9g+P69JxkqfA79k6OXgxOn0V1OSD3nOnJuypeQZfMlx6MQLH
 CyCVDq/gdFgAXA6rMBz4TGYvB2auvF0PTaogEZNEA7ZOBDha5n3Nb+n6nI0sY49QF8kg
 WFqgFr7+7HrKKUzHwWzFO9jUdtr2KpPG2hig1RFXInV8BjAW9AH/N1MXcwD2zZw4/asI
 5zzl1mJyxWeIH8999k2RNcLBl7TGbv+kydXAcJ2zSpnkuSRzXC14LptLYihUgGoneZ3G
 gWIb0QRzF+jX9vq36I6Os4cV5rZgZRYAxE7qEg5MsNb7Agx/22nE1le8CLDYLUqiFuA8
 NK9A==
X-Gm-Message-State: APjAAAVStqP4mnyOosaycMJJTcstXK8/gRHG7lB7z8sy2OxuA6kVj08+
 RfGLIIlRdmdnxEclMzysc8+Jc9nNDZXkRKU7fwvgQw==
X-Google-Smtp-Source: APXvYqzC6lEhFzCwba9WNGtoNJlN2/sxNxsRqKIHnQJUgSQQ4oc4XCI9kW3OGRwazcEXau+lGinuQZlka+T3d8xNOxI=
X-Received: by 2002:aca:4586:: with SMTP id s128mr3264542oia.148.1556822754511; 
 Thu, 02 May 2019 11:45:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-17-brendanhiggins@google.com>
 <20190502110347.GE12416@kroah.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770A3A0@USCULXMSG01.am.sony.com>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF9770A3A0@USCULXMSG01.am.sony.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 11:45:43 -0700
Message-ID: <CAFd5g471Wawu6g14p0AO3aY8VPBKLA0mjHSdfR1qStFGzp3iGQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: "Bird, Timothy" <Tim.Bird@sony.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_114558_959661_403948AF 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Iurii Zaikin <yzaikin@google.com>, Kevin Hilman <khilman@baylibre.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 11:15 AM <Tim.Bird@sony.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Greg KH
> >
> > On Wed, May 01, 2019 at 04:01:25PM -0700, Brendan Higgins wrote:
> > > From: Iurii Zaikin <yzaikin@google.com>
> > >
> > > KUnit tests for initialized data behavior of proc_dointvec that is
> > > explicitly checked in the code. Includes basic parsing tests including
> > > int min/max overflow.
> > >
> > > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > > ---
> > >  kernel/Makefile      |   2 +
> > >  kernel/sysctl-test.c | 292
> > +++++++++++++++++++++++++++++++++++++++++++
> > >  lib/Kconfig.debug    |   6 +
> > >  3 files changed, 300 insertions(+)
> > >  create mode 100644 kernel/sysctl-test.c
> > >
> > > diff --git a/kernel/Makefile b/kernel/Makefile
> > > index 6c57e78817dad..c81a8976b6a4b 100644
> > > --- a/kernel/Makefile
> > > +++ b/kernel/Makefile
> > > @@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
> > >  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
> > >  obj-$(CONFIG_RSEQ) += rseq.o
> > >
> > > +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
> >
> > You are going to have to have a "standard" naming scheme for test
> > modules, are you going to recommend "foo-test" over "test-foo"?  If so,
> > that's fine, we should just be consistant and document it somewhere.
> >
> > Personally, I'd prefer "test-foo", but that's just me, naming is hard...
>
> My preference would be "test-foo" as well.  Just my 2 cents.

I definitely agree we should be consistent. My personal bias
(unsurprisingly) is "foo-test," but this is just because that is the
convention I am used to in other projects I have worked on.

On an unbiased note, we are currently almost evenly split between the
two conventions with *slight* preference for "foo-test": I ran the two
following grep commands on v5.1-rc7:

grep -Hrn --exclude-dir="build" -e "config [a-zA-Z_0-9]\+_TEST$" | wc -l
grep -Hrn --exclude-dir="build" -e "config TEST_[a-zA-Z_0-9]\+" | wc -l

"foo-test" has 36 occurrences.
"test-foo" has 33 occurrences.

The things I am more concerned about is how this would affect file
naming. If we have a unit test for foo.c, I think foo_test.c is more
consistent with our namespacing conventions. The other thing, is if we
already have a Kconfig symbol called FOO_TEST (or TEST_FOO) what
should we name the KUnit test in this case? FOO_UNIT_TEST?
FOO_KUNIT_TEST, like I did above?

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
