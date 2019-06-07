Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6233988F
	for <lists+linux-um@lfdr.de>; Sat,  8 Jun 2019 00:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uYvMd56srBCuJMyVseFU4uDlDjeT3OQlGoMp64X/OQ=; b=sk4vO7SKuzuQcU
	pUjJ/p/l07CcgrMbyUhN/n1BLsriZyRAgdwPD6IckOK/HgTPT2XfS4v0hV0ebfNyIoBEOjpks3rVG
	Bsl5WvkfgLtWhLhySYIfElCw4lyECS8z5s1KSVUL/5aW+nXjG03gWbFiyFVgtllOKjp4rucDqVAxf
	01NJGlYFW48ikNTYh6a7XzqnAXJZRuG2zpJpWkRR8GHJWPF0xwjDVjOOFt13I0xvA/KPNsJISksYF
	Tqbd8e2926c4L/n3aDxMrluaoxEJyaaM7XaZiK774HD6W4GBevQx8EaEw1ucRgT+Z40elaptt1vnh
	0vOZHalSKFf0DATYLwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNGS-0007Hn-Ej; Fri, 07 Jun 2019 22:23:12 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNGP-0007GI-Ok
 for linux-um@lists.infradead.org; Fri, 07 Jun 2019 22:23:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so1332756plr.3
 for <linux-um@lists.infradead.org>; Fri, 07 Jun 2019 15:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OscIWC1H8BYVUTSTRMLtHcpa3RbQBWs93JhulNsk+jk=;
 b=kdR49OFNsFx7GSx/8YCa4OAXnuGm9wR3mA3FGM2j9z9kYOvNzqrt6gDMUmNTCF4V83
 UuY0GuaC7cU7suXulXpVOn5N4HicehNGLM2Gv1N1iXUCkOIxaL4tP0q7CFg3Zr0ELRoH
 c1K2fAfx/OZnoqY6EocLtP4K2Gyk7fJHcbAd5+nbSwsumoNC9uZdy1ZbqRPl2ZGb2KR0
 5790YANxN6yo4XDpToutn8HtDWJ9qc4x2RtxrkIe4yf2ys4A7CKPGFlNlR6vaeXcDbDI
 eCRkI67w15jEuFPGTFzQI8EIXARxKyvN1+GR9F9Qoev+vDDjbBqEj+ZoKNPmKxLF0J5U
 DgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OscIWC1H8BYVUTSTRMLtHcpa3RbQBWs93JhulNsk+jk=;
 b=jG5pZXD2awvdi3jQh6zSeak4rfsK2e+Q9yx6mTPDm5NArB5UT1RkHqY8AGYOOXAB6F
 so/npfav5SarMBpbwXUPR2n1ruXf7PN95AYT832A0RjpsrSEFLfurdBJHs9HzjcKcScP
 e5PI97HhNbmmKuezQqmFDF7JjPHVUjaXgvZm4zHiDvtm2BR8y4BWqxchSnnZ4CxdeSfj
 rn2Gferp2zaHBq2Ldi/4D3OzpXFveGMy1T9K/46cKCQzg7nlsF7xeIIt4ZmQSmZaYwOS
 +VfWqw0PgoR8g6wZNCAZFnbCIx0yW1vvEg8v2nJYW4bk2AIvyYWn46fAPFyToO8jrMeo
 93Ow==
X-Gm-Message-State: APjAAAV1yVXTAtHM4tnhYw69QFyqfJOGfDH1gwF1YbFeBvTUVdqlaEKQ
 c7wzeJWo2XZdcr4ZX8BAOXS1FmchwCw8HV3GtJYexA==
X-Google-Smtp-Source: APXvYqxqRVfuyQEdyfJNNkPVX/y1rXYgnEMZVKj/CtJa0Fm8bihW1BebEYmymKIH0C8/tAoxb6DpKUorgA1wvW4QAXM=
X-Received: by 2002:a17:902:624:: with SMTP id
 33mr59045206plg.325.1559946184199; 
 Fri, 07 Jun 2019 15:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
 <20190517182254.548EA20815@mail.kernel.org>
 <CAAXuY3p4qhKVsSpQ44_kQeGDMfg7OuFLgFyxhcFWS3yf-5A_7g@mail.gmail.com>
 <20190607190047.C3E7A20868@mail.kernel.org>
In-Reply-To: <20190607190047.C3E7A20868@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 7 Jun 2019 15:22:53 -0700
Message-ID: <CAFd5g475eUKnpNM3kDe_9PboCyZ=aanPeV2gTuzuJXRp-xbsWg@mail.gmail.com>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_152309_811206_59835C50 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
 Iurii Zaikin <yzaikin@google.com>, Jeff Dike <jdike@addtoit.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 12:00 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Iurii Zaikin (2019-06-05 18:29:42)
> > On Fri, May 17, 2019 at 11:22 AM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-05-14 15:17:10)
> > > > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > > > new file mode 100644
> > > > index 0000000000000..fe0f2bae66085
> > > > --- /dev/null
> > > > +++ b/kernel/sysctl-test.c
> > > > +
> > > > +
> > > > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > > > +{
> > > > +       struct ctl_table table = {
> > > > +               .procname = "foo",
> > > > +               .data           = &test_data.int_0001,
> > > > +               .maxlen         = sizeof(int),
> > > > +               .mode           = 0644,
> > > > +               .proc_handler   = proc_dointvec,
> > > > +               .extra1         = &i_zero,
> > > > +               .extra2         = &i_one_hundred,
> > > > +       };
> > > > +       char input[] = "-9";
> > > > +       size_t len = sizeof(input) - 1;
> > > > +       loff_t pos = 0;
> > > > +
> > > > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> > > > +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
> > >
> > > Is the casting necessary? Or can the macro do a type coercion of the
> > > second parameter based on the first type?
> >  Data field is defined as void* so I believe casting is necessary to
> > dereference it as a pointer to an array of ints. I don't think the
> > macro should do any type coercion that == operator wouldn't do.
> >  I did change the cast to make it more clear that it's a pointer to an
> > array of ints being dereferenced.
>
> Ok, I still wonder if we should make KUNIT_EXPECT_EQ check the types on
> both sides and cause a build warning/error if the types aren't the same.
> This would be similar to our min/max macros that complain about
> mismatched types in the comparisons. Then if a test developer needs to
> convert one type or the other they could do so with a
> KUNIT_EXPECT_EQ_T() macro that lists the types to coerce both sides to
> explicitly.

Good point. I would definitely like to do this, for me it is only a
question of how difficult it would be to make all that happen.

We will investigate and report back on it.

Thanks for the suggestion! It's a really good idea!

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
