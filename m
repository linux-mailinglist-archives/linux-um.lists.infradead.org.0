Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE0563C6
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 09:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk73v6ZxAwjKQiVkPsQiE0m1i7KopCoLGSZBA76t3qo=; b=TnqvDpFEFpC0zf
	WJbgUTtY5oWLYtH8wl8vH11SURNw45+sdc4rz7YeOIPpvwlbK1hGeRtFNBzWm4jwpswBIvdzIvGqq
	3bFwyFtmLZqFsNPxPzNyBpd61iIlU5tdsVPJKewH5mmTGIrAtY+w1gxTWTekJb5Q0TZKu2QF4CU44
	8suqSmtbgU3qtA7wln5L8hIxBciWckxbJ3GrzQ+r6f7MslXAZtscGRodR5EFq4FDvIy32jUJZ3A30
	DUNTZ9tmFn4PtyQohBrwi6w00B/ci7hcx1Gl9Xxti1oLJneuOuiXejMmYmEc+Q6HZ/eYxN7W5+bqp
	I5ALuwxO2EJ7TZeMNtcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2kI-0004ua-CQ; Wed, 26 Jun 2019 07:53:34 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2kF-0004tp-3t
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 07:53:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so962713plb.9
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 00:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JHqsYYLzLAosbxbz1ZkSkQroLN+I/zt1AzacawmONrY=;
 b=WyqM1jV2u/kxM67gNNChMCD/srWLt8UFxif+PHuGpzbgE3LpTJrt7rEbevH6EDg7EA
 xF8tH7Jbh3PLlZYXRvyhQyTIN9G45hD9SE3+nPI4rxVnH9lZ6Wb6PT2UPR9Z7e8qw5Vo
 j4hYPGbTDYxJLGb6+arVCfAloAtiPanpPW4Xadwr7qterJdRgNGgoWGT+JtgLvBc9l+M
 DYSnM5SC1DrNcCapOU3OT8L/UFesJC+ezl51GMqT04qGxB9qB/8ifxdT+misqvwEisfJ
 +/kivnaJfyaOnnN1uM1pke3PaHrKRWJDezKNt97NibKS5p1mAANOOVhiidQQgXRP+WeK
 EcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JHqsYYLzLAosbxbz1ZkSkQroLN+I/zt1AzacawmONrY=;
 b=M5qpCfNopjPN9KoHAzC6h59+d5L/aeR5plj6WATRvq9UaqXTnsE3We6nmzsJfAPR2y
 fIYOwunOi7EiacxEVCDqf1qhs70QnIpg3kRCIXCM2gun+pfIMXXP5dd6wvDnUEkwalNQ
 tbVMgU/oHAY9UUgn79Cgxu1n+cmZjlLra8V3GaSo4KOMd/jEpD+UbUHoCupIDFD6AcUu
 X2PalD7G/s3tVodTtebk5/ntC9ra+rveteRqsqbDLUrQZUKMLEuZO6+kTS170Td3vZP2
 dLu/3p8gWWPMe0lPb6rFEQmQq5bTQ9Yn/VXrUKIiqQw2O/JVOoZxq2umpRTSD9YWkWvb
 BoNA==
X-Gm-Message-State: APjAAAW1arp+CNfT4fOeA6Lyjb2Xh3YVQDrCWB1HvOLtOKgz1HD0Gyyb
 KkKqeLkKOVRDOFWINHsUMzT5wRVP4r/W3UIOo+pahQ==
X-Google-Smtp-Source: APXvYqx0OC49B+0u9fYvW2+xXIuYcGfgocchgfhlK03aaHz2u6I5PoagyCc52QVITc8deDrbZKlEXXtykOtZNEDzro4=
X-Received: by 2002:a17:902:1004:: with SMTP id
 b4mr3862082pla.325.1561535609164; 
 Wed, 26 Jun 2019 00:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-8-brendanhiggins@google.com>
 <20190625232249.GS19023@42.do-not-panic.com>
In-Reply-To: <20190625232249.GS19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 26 Jun 2019 00:53:18 -0700
Message-ID: <CAFd5g46mnd=a0OqFCx0hOHX+DxW+5yA2LXH5Q0gEg8yUZK=4FA@mail.gmail.com>
Subject: Re: [PATCH v5 07/18] kunit: test: add initial tests
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_005331_188161_046E1169 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jun 25, 2019 at 4:22 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:26:02AM -0700, Brendan Higgins wrote:
> > diff --git a/kunit/example-test.c b/kunit/example-test.c
> > new file mode 100644
> > index 0000000000000..f44b8ece488bb
> > --- /dev/null
> > +++ b/kunit/example-test.c
>
> <-- snip -->
>
> > +/*
> > + * This defines a suite or grouping of tests.
> > + *
> > + * Test cases are defined as belonging to the suite by adding them to
> > + * `kunit_cases`.
> > + *
> > + * Often it is desirable to run some function which will set up things which
> > + * will be used by every test; this is accomplished with an `init` function
> > + * which runs before each test case is invoked. Similarly, an `exit` function
> > + * may be specified which runs after every test case and can be used to for
> > + * cleanup. For clarity, running tests in a test module would behave as follows:
> > + *
>
> To be clear this is not the kernel module init, but rather the kunit
> module init. I think using kmodule would make this clearer to a reader.

Seems reasonable. Will fix in next revision.

> > + * module.init(test);
> > + * module.test_case[0](test);
> > + * module.exit(test);
> > + * module.init(test);
> > + * module.test_case[1](test);
> > + * module.exit(test);
> > + * ...;
> > + */
>
>   Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
