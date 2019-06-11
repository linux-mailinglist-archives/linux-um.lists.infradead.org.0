Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AC03D5D0
	for <lists+linux-um@lfdr.de>; Tue, 11 Jun 2019 20:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MStvy1kmSEPALnQkFmMlZrTfuSztWGb6jUeM3jAmmlU=; b=n9UY4lsG2lMbIy
	CNZw4ASvMk/jbrZYwBK2PFduDKINj7NWsYgYGfpR24C21USp9eg8i7dENAyFpA9UV/edqXqfdFmzs
	zLpGDOUekPVajZmFCBn2mAY+3BE7nAKrCg/089uG8bq1KRuaLfBJt12SoIq6oWB80MOoeYjKeRAJu
	ZXAxvvgYP9OKV0zMKJHzFs3r1RvXZrQqklYnrNYVlqp61lTP6VtUikxg9dpq6ruvJ35xD3NVgtRgk
	xZByYyywjOkYLJuc6zfh0COzJMzCjsBRb37cQx6ujWYXcte4aHTTIqBjrNlQe+EbIHa3jl8ZNpJC4
	mKPLzFeo2hH1gkYOXoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halqg-0008Gr-5D; Tue, 11 Jun 2019 18:50:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halqd-0008G7-9q
 for linux-um@lists.infradead.org; Tue, 11 Jun 2019 18:50:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E1C021744;
 Tue, 11 Jun 2019 18:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279018;
 bh=KSPugbVcFVjo2LRDUR30DOGlfU301RbHfc51FMakphQ=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=eUcQmeuoyqCS292prTem1gEJTNrE/i4/3mRNGwiqnO3Tx9yQumA1yteW7iEE4JN1g
 eh2ADC167gKmUCTbEgDbjScSG5xLnIHWi5uWk5SVDUlKT9arAGeIY6q58Nsi/mtoWM
 Sissolu8Hy/cpsaYhChLTjhjFekH7GFD9BeulHFI=
MIME-Version: 1.0
In-Reply-To: <20190611175830.GA236872@google.com>
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
 <20190517182254.548EA20815@mail.kernel.org>
 <CAAXuY3p4qhKVsSpQ44_kQeGDMfg7OuFLgFyxhcFWS3yf-5A_7g@mail.gmail.com>
 <20190607190047.C3E7A20868@mail.kernel.org>
 <20190611175830.GA236872@google.com>
To: Brendan Higgins <brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
User-Agent: alot/0.8.1
Date: Tue, 11 Jun 2019 11:50:17 -0700
Message-Id: <20190611185018.2E1C021744@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_115019_381777_25226264 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, Iurii Zaikin <yzaikin@google.com>,
 jdike@addtoit.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-06-11 10:58:30)
> On Fri, Jun 07, 2019 at 12:00:47PM -0700, Stephen Boyd wrote:
> > Quoting Iurii Zaikin (2019-06-05 18:29:42)
> > > On Fri, May 17, 2019 at 11:22 AM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Brendan Higgins (2019-05-14 15:17:10)
> > > > > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > > > > new file mode 100644
> > > > > index 0000000000000..fe0f2bae66085
> > > > > --- /dev/null
> > > > > +++ b/kernel/sysctl-test.c
> > > > > +
> > > > > +
> > > > > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > > > > +{
> > > > > +       struct ctl_table table = {
> > > > > +               .procname = "foo",
> > > > > +               .data           = &test_data.int_0001,
> > > > > +               .maxlen         = sizeof(int),
> > > > > +               .mode           = 0644,
> > > > > +               .proc_handler   = proc_dointvec,
> > > > > +               .extra1         = &i_zero,
> > > > > +               .extra2         = &i_one_hundred,
> > > > > +       };
> > > > > +       char input[] = "-9";
> > > > > +       size_t len = sizeof(input) - 1;
> > > > > +       loff_t pos = 0;
> > > > > +
> > > > > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > > +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> > > > > +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
> > > >
> > > > Is the casting necessary? Or can the macro do a type coercion of the
> > > > second parameter based on the first type?
> > >  Data field is defined as void* so I believe casting is necessary to
> > > dereference it as a pointer to an array of ints. I don't think the
> > > macro should do any type coercion that == operator wouldn't do.
> > >  I did change the cast to make it more clear that it's a pointer to an
> > > array of ints being dereferenced.
> > 
> > Ok, I still wonder if we should make KUNIT_EXPECT_EQ check the types on
> > both sides and cause a build warning/error if the types aren't the same.
> > This would be similar to our min/max macros that complain about
> > mismatched types in the comparisons. Then if a test developer needs to
> > convert one type or the other they could do so with a
> > KUNIT_EXPECT_EQ_T() macro that lists the types to coerce both sides to
> > explicitly.
> 
> Do you think it would be better to do a phony compare similar to how
> min/max used to work prior to 4.17, or to use the new __typecheck(...)
> macro? This might seem like a dumb question (and maybe it is), but Iurii
> and I thought the former created an error message that was a bit easier
> to understand, whereas __typecheck is obviously superior in terms of
> code reuse.
> 
> This is what we are thinking right now; if you don't have any complaints
> I will squash it into the relevant commits on the next revision:

Can you provide the difference in error messages and describe that in
the commit text? The commit message is where you "sell" the patch, so
being able to compare the tradeoff of having another macro to do type
comparisons vs. reusing the one that's there in kernel.h would be useful
to allay concerns that we're duplicating logic for better error
messages.

Honestly, I'd prefer we just use the macros that we've developed in
kernel.h to do comparisons here so that we can get code reuse, but more
importantly so that we don't trip over problems that caused those macros
to be created in the first place. If the error message is bad, perhaps
that can be fixed with some sort of compiler directive to make the error
message a little more useful, i.e. compiletime_warning() thrown into
__typecheck() or something.

> ---
> From: Iurii Zaikin <yzaikin@google.com>
> 
> Adds a warning message when comparing values of different types similar
> to what min() / max() macros do.
> 
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
