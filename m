Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A1CBB0DE
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 11:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Vx1RsochmB8WIvPcNeEQq1H6jRFXS2viKln1nhh7oY=; b=NyWaHhix6O/xAf
	Zl4BFS1blF52d5JCDkdnvOZsHcegcHcXdRXD2rUVi/uz8tytOHJfNs9XEgbPbXUZbvHUYbdobEagW
	wYPa8ipZPc7S7SYwaEi10rL46QvXSEkg6a7rYS+TxxnSJse9mfrwiUTBAwXZV1koGM3mtrHg061cG
	EzvvAHfiAYpwLa7EstCQl/0n29yiw8bi7ZjkLLW76wmHDloDYsJtXCkL0p+8k/wzvSiyJQpaUI69f
	uuCE7q3QccnGXNfBf4Na3xgwSqF9hhxTd0E5mgsuOPhiLqCxq+QNP020B3ACXqlCdMXIu0BSOAzpG
	Jk03CA99eLpiEbLErOdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKHg-00055z-HZ; Mon, 23 Sep 2019 09:05:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKHV-00053o-Hh
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 09:05:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id y5so8756906pfo.4
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 02:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v8pa0Tk6FlMlkzD8bXA6NA6bMdvmrzwl4PAFIDbVMYM=;
 b=NvXQgh6IW3soN2kC6YtQSTm4nJDtjH7T1g1wwUk4J2MMTXgFeWqE4zDVwCvgvthfAE
 WGgMCY+3F8tX2ulk7a71LHHwNjjj6szslWqQDPwjwKZALkV5YkTouU1UbPdDScjYS1A3
 tU4aEIFZK99BR3XOVeaN/cSOFn3rfi7yObVLV3PWs+NfL5qPlxMyeRQLXGH1oSX1DcR+
 Y00Kq9GxGhG7rrAxC5FyQBB+KSDkFMah1k7qmSzRXBnClfBw0q/Abrxnd2xhD8r5qEtT
 Tri2HbzI2Jc1bPenj4gaZNMu/v3ap/CxdJdQ2lrX7Qpp+yqg86whqYHZk9TgPcLogoid
 i1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v8pa0Tk6FlMlkzD8bXA6NA6bMdvmrzwl4PAFIDbVMYM=;
 b=HO+c2QGxdBSUTvU1HJn71R2+KEXTUonOHCsniL0iQClTPOY5VKfJ8XxzMkJfz24O+M
 iLQtFHwI6Kd/jGaz860R5l3Z8mGowlE5t8nIiuW6UFYQxm2aM4+n5EcylkLHAuWBkLs0
 v0ZGmL2VkbPSbLYptD0OmkSt24njz250XaA4s3w/T+gvIUPB1+emghIhjv0EdmRaUvSh
 N7hNbCpexIHONMbFMwtUEDHl8ClIJZXmfAfekxzsgM4WW0t/eUB88Xa2ENs+DUSv8s0E
 yaePTfPUIANQGK+wHeUHCUPKKjbpgXRh3b17dI60OaZNyfnmyJUQHPI6KCd9kyE6OnzL
 7+jg==
X-Gm-Message-State: APjAAAWzDDBLdNvE36D0gCgr/TlDckLom5Mn0nyGVds8havF6GolYgvz
 hfI3liawg7EmWe2Ve7Vwlfh3Pe1ZRvcl2AzcQwMebg==
X-Google-Smtp-Source: APXvYqwcsKtiLcxSzZRbvj/9c2PAwvr8gZTaDk07lPhILKUwjb/s/yL4yzfAO84TT2ZemaVLn8TDzTeRlveY2nu9F6o=
X-Received: by 2002:a17:90a:1746:: with SMTP id
 6mr5388129pjm.117.1569229513429; 
 Mon, 23 Sep 2019 02:05:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190921001855.200947-1-brendanhiggins@google.com>
 <20190921001855.200947-8-brendanhiggins@google.com>
 <944ac47d-1411-9ebd-d0d4-a616c88c9c20@infradead.org>
In-Reply-To: <944ac47d-1411-9ebd-d0d4-a616c88c9c20@infradead.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 23 Sep 2019 02:05:02 -0700
Message-ID: <CAFd5g44e9bdK8h5+U1MkqPNuf2k9vnu-iPFLTzGajEHPEcRpHQ@mail.gmail.com>
Subject: Re: [PATCH v17 07/19] kunit: test: add initial tests
To: Randy Dunlap <rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020517_792581_6C79678B 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Sep 22, 2019 at 9:28 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 9/20/19 5:18 PM, Brendan Higgins wrote:
> > Add a test for string stream along with a simpler example.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >  lib/kunit/Kconfig              | 25 ++++++++++
> >  lib/kunit/Makefile             |  4 ++
> >  lib/kunit/example-test.c       | 88 ++++++++++++++++++++++++++++++++++
> >  lib/kunit/string-stream-test.c | 52 ++++++++++++++++++++
> >  4 files changed, 169 insertions(+)
> >  create mode 100644 lib/kunit/example-test.c
> >  create mode 100644 lib/kunit/string-stream-test.c
> >
> > diff --git a/lib/kunit/Kconfig b/lib/kunit/Kconfig
> > index 666b9cb67a74..3868c226cf31 100644
> > --- a/lib/kunit/Kconfig
> > +++ b/lib/kunit/Kconfig
> > @@ -11,3 +11,28 @@ menuconfig KUNIT
> >         special hardware when using UML. Can also be used on most other
> >         architectures. For more information, please see
> >         Documentation/dev-tools/kunit/.
> > +
> > +if KUNIT
>
> The 'if' above provides the dependency clause, so the 2 'depends on KUNIT'
> below are not needed.  They are redundant.

Thanks for catching that. I fixed it in the new revision I just sent out.

> > +
> > +config KUNIT_TEST
> > +     bool "KUnit test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables the unit tests for the KUnit test framework. These tests test
> > +       the KUnit test framework itself; the tests are both written using
> > +       KUnit and test KUnit. This option should only be enabled for testing
> > +       purposes by developers interested in testing that KUnit works as
> > +       expected.
> > +
> > +config KUNIT_EXAMPLE_TEST
> > +     bool "Example test for KUnit"
> > +     depends on KUNIT
> > +     help
> > +       Enables an example unit test that illustrates some of the basic
> > +       features of KUnit. This test only exists to help new users understand
> > +       what KUnit is and how it is used. Please refer to the example test
> > +       itself, lib/kunit/example-test.c, for more information. This option
> > +       is intended for curious hackers who would like to understand how to
> > +       use KUnit for kernel development.
> > +
> > +endif # KUNIT

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
