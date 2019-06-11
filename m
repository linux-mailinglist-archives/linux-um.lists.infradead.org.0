Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A5C3DBD2
	for <lists+linux-um@lfdr.de>; Tue, 11 Jun 2019 22:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlbEXtFh+VVPvDihZp3VnuoH4c76ypL4kucoa3gPGAw=; b=Wb8JfZlbbctRtS
	Ga1J3TgnUqtfUGL/JlYSs7+QXpXWqk5PzhBvESOyWDdWIDMHMmWGEU+UyAZ4wcsYTRd1STFVZn/rv
	yLfRHkYoopyXhpkpCkKR5Y6myN1hNqolaOB3XaIasi0lYfv+6jf/5uGxCU1YtxLtpr9AfogyHGVk7
	1u5a9UkEeLs8hxLuh9dAEuKenPCyGh6CixDh1RpPvLY6Ubs+EHeWq0/uGgcAxO3tkO7v2Reb0rVgG
	V5YYPNe8aUenVHEzpPu5/S3zh4WTdVO9xsbE/6q/c83UbZZ1qOZfbu1jSjmeoFTrU/BvI2+ISKwDw
	ZFECI9EFvt5TTL+LB8bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanON-0002zW-EK; Tue, 11 Jun 2019 20:29:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanOL-0002z9-AZ
 for linux-um@lists.infradead.org; Tue, 11 Jun 2019 20:29:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id l19so4989438pgh.9
 for <linux-um@lists.infradead.org>; Tue, 11 Jun 2019 13:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dhnwSrdCPnvzoEVfuuVGqE83p7TnkQ5Modn2BNCoQD0=;
 b=Pp0Hq+hd8QA6syECahlCWtYv82jhOxBm0sr+fZ9Dkk8nXtHe7nrSiSj+V8u0FaITQ7
 84fXuzNXkrhzDQgkHPp26EjnsIzrDKXg48+xvOTrPv1gFdJxgRLOvcs0dwgoU2BGvzqE
 Liz3+gL3rcT7wqBUJosubNY4aHZAru2eeUFG6CtPZ2mbKIzTjquHFKUIQcWXvVk4hMLI
 7UB1amIr3aRGarnBUHse/35CwxBlRRF3qifo7BnhaOJV61RWbVqr0wA4GIowlDaA6gfT
 pWINRb5VwbD/mtNfms9GrZfwha/4G8tSCCTtYnHFhjTrLaOGAdTroClIT1QeFCWuqloy
 NJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhnwSrdCPnvzoEVfuuVGqE83p7TnkQ5Modn2BNCoQD0=;
 b=pt6NnXsdtF+xwnzUVNXBmTSomKVQDFzmi3bEx+KEBAzWtuZjIZ/KL84yMb8xsTuq/u
 j84htihgCk+g00WDcUshaqKQABpiaCDnK4PW1j47mgiLp8qAWwQ2CmH9ujIZk7/wrFKg
 7SLewEsGtErfi7cO9rOTvQVVQrjy+ObpR/aa911l/lcaOFjtg7Mu+QPrUvtrfhZKGz73
 xMV8qN64mWn0rGKQaOGWJBHwtG1UhQuIG3Vm/gbnKthg0uC4OdMYJsJ1o0/8lw+ET64q
 p+GQYVMwZnEpfNLtR8F1KTqbM1ZgaHgH8w/YfVZkTVK0IncyUosqCK2H/29tkanhTo9M
 XUTg==
X-Gm-Message-State: APjAAAWoGGwfBLGON188DQTHSxQWzqItyafKhVIgvFVygfpGC+/c/0Dj
 Vi5wNgXUK3+2+rtB1JhoSqTTZ9na6xKw/nvS+VrLHQ==
X-Google-Smtp-Source: APXvYqycBtJ32qbIn8pTyxMIAID5Xv7JTruAR7oTyIED4r622bu9rIlLgVdk0eekxjLa2OE4wVYL1Pw8y64Cqw0kRwU=
X-Received: by 2002:a17:90a:2e89:: with SMTP id
 r9mr28553830pjd.117.1560284952085; 
 Tue, 11 Jun 2019 13:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
 <20190517182254.548EA20815@mail.kernel.org>
 <CAAXuY3p4qhKVsSpQ44_kQeGDMfg7OuFLgFyxhcFWS3yf-5A_7g@mail.gmail.com>
 <20190607190047.C3E7A20868@mail.kernel.org>
 <20190611175830.GA236872@google.com>
 <20190611185018.2E1C021744@mail.kernel.org>
In-Reply-To: <20190611185018.2E1C021744@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 11 Jun 2019 13:29:01 -0700
Message-ID: <CAFd5g47dmcHOCX41cr2v9Kaj3xa_5-PoqUPX_1=AoQLUG90NkQ@mail.gmail.com>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_132913_394868_612F768C 
X-CRM114-Status: GOOD (  33.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Tue, Jun 11, 2019 at 11:50 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-06-11 10:58:30)
> > On Fri, Jun 07, 2019 at 12:00:47PM -0700, Stephen Boyd wrote:
> > > Quoting Iurii Zaikin (2019-06-05 18:29:42)
> > > > On Fri, May 17, 2019 at 11:22 AM Stephen Boyd <sboyd@kernel.org> wrote:
> > > > >
> > > > > Quoting Brendan Higgins (2019-05-14 15:17:10)
> > > > > > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > > > > > new file mode 100644
> > > > > > index 0000000000000..fe0f2bae66085
> > > > > > --- /dev/null
> > > > > > +++ b/kernel/sysctl-test.c
> > > > > > +
> > > > > > +
> > > > > > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > > > > > +{
> > > > > > +       struct ctl_table table = {
> > > > > > +               .procname = "foo",
> > > > > > +               .data           = &test_data.int_0001,
> > > > > > +               .maxlen         = sizeof(int),
> > > > > > +               .mode           = 0644,
> > > > > > +               .proc_handler   = proc_dointvec,
> > > > > > +               .extra1         = &i_zero,
> > > > > > +               .extra2         = &i_one_hundred,
> > > > > > +       };
> > > > > > +       char input[] = "-9";
> > > > > > +       size_t len = sizeof(input) - 1;
> > > > > > +       loff_t pos = 0;
> > > > > > +
> > > > > > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > > > +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > > > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> > > > > > +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
> > > > >
> > > > > Is the casting necessary? Or can the macro do a type coercion of the
> > > > > second parameter based on the first type?
> > > >  Data field is defined as void* so I believe casting is necessary to
> > > > dereference it as a pointer to an array of ints. I don't think the
> > > > macro should do any type coercion that == operator wouldn't do.
> > > >  I did change the cast to make it more clear that it's a pointer to an
> > > > array of ints being dereferenced.
> > >
> > > Ok, I still wonder if we should make KUNIT_EXPECT_EQ check the types on
> > > both sides and cause a build warning/error if the types aren't the same.
> > > This would be similar to our min/max macros that complain about
> > > mismatched types in the comparisons. Then if a test developer needs to
> > > convert one type or the other they could do so with a
> > > KUNIT_EXPECT_EQ_T() macro that lists the types to coerce both sides to
> > > explicitly.
> >
> > Do you think it would be better to do a phony compare similar to how
> > min/max used to work prior to 4.17, or to use the new __typecheck(...)
> > macro? This might seem like a dumb question (and maybe it is), but Iurii
> > and I thought the former created an error message that was a bit easier
> > to understand, whereas __typecheck is obviously superior in terms of
> > code reuse.
> >
> > This is what we are thinking right now; if you don't have any complaints
> > I will squash it into the relevant commits on the next revision:
>
> Can you provide the difference in error messages and describe that in
> the commit text? The commit message is where you "sell" the patch, so
> being able to compare the tradeoff of having another macro to do type
> comparisons vs. reusing the one that's there in kernel.h would be useful
> to allay concerns that we're duplicating logic for better error
> messages.

Oh sorry, I didn't think too hard about the commit message since I
figured it would get split up and squashed into the existing commits.
I just wanted to get it out sooner to discuss this before I post the
next revision (probably later this week).

> Honestly, I'd prefer we just use the macros that we've developed in
> kernel.h to do comparisons here so that we can get code reuse, but more
> importantly so that we don't trip over problems that caused those macros
> to be created in the first place. If the error message is bad, perhaps
> that can be fixed with some sort of compiler directive to make the error
> message a little more useful, i.e. compiletime_warning() thrown into
> __typecheck() or something.

That's a good point. I have no qualms sticking with __typecheck(...)
for now; if we later feel that it is causing problems, we can always
fix it later by supplying our own warning in the manner you suggest.

Iurii, do you have any additional thoughts on this?

>
> > ---
> > From: Iurii Zaikin <yzaikin@google.com>
> >
> > Adds a warning message when comparing values of different types similar
> > to what min() / max() macros do.
> >
> > Signed-off-by: Iurii Zaikin <yzaikin@google.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
