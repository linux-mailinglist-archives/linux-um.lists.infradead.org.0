Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7AE5957F
	for <lists+linux-um@lfdr.de>; Fri, 28 Jun 2019 10:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPtAG/rBtuDYI5QxnkskEhYHoJbUpNNduyYhLX47js4=; b=kChNsBEOw9dHqm
	ZyIWVgOIPR9bHSn952H481mBiQ09uc+P6yyVn9m11Gog5GNg0U+/yyKcx/FsMqzhB5NKh4IV0lHf7
	cb/HudBPFfmLdgB2P1be0wzwBuyz3IvIJrQzFGrsM+s4G4Ys0PtaLIkiDZXYJ/3g09YHP/4+TQ57V
	hcjEgCgH8sXJSRKYyXSkUEeM1Xx/XMsnA+RPldPSUAbBCYKcBnxd6E/aUaP7aa03KlkniowGKXTV7
	XNzj4cFXll6SgddVXWYfjyMgSw2rtDevNs5kHg+s4CCBm/B/4v4PsSCdFf+D2HgFfqt4aBrnaNo34
	MATtLKqDczGBOLPjzz4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglpn-0001kF-Ui; Fri, 28 Jun 2019 08:02:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglph-0001iY-Gr
 for linux-um@lists.infradead.org; Fri, 28 Jun 2019 08:02:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id k8so2802950plt.3
 for <linux-um@lists.infradead.org>; Fri, 28 Jun 2019 01:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WZq6BCzx2oAYKBXZwpH6LRexuDJ0/444+0e0Mc/hDbY=;
 b=Rd9lRP9zAd/kbl3ZE7qYqE71uAPpqI08y9O8Z8POPjewUXfV5BkcxB5GlkY7Lz2EvR
 L0vi5OB036U4FKFCgIDZv8F3y6lztLOxmk0kwy/NUBPaZkq+ECaVF1Jt2lfubLgAj49H
 Uk6C/xmHOoJyYfOl2AD99Cc4Ji0bJcI5iEK/IOzTvY7wn8alGsOUKlv4FIhRP3sRGF55
 fIMKwrwTaQtuY+hOsydah24wbl/mQVSW6sltZZBybHwghcYUR14MnHCnTHXmgdqPSQtw
 agAI8RdzSUB0Onytip3sOEuouLaTLd1x4D+UiNdsy+ktLsNeIwWlm9Q+91kPa3V5g02W
 Z4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WZq6BCzx2oAYKBXZwpH6LRexuDJ0/444+0e0Mc/hDbY=;
 b=QQzWz8MKAuFsRTSTrtQKSDgiBv4Jjwh5o1QyY3N1bQt1ofyPygQryIfqGlT1rMI42l
 jyYU2M93ciSh97SFkcAvRPOXQf3mWlIz9knJiUYwDbkCkGwi0pC4RN05RxPO+WIKwDiX
 3mcjhDeydFDvquDC8Gc/OT6FJbYwZFYW/Ck4anEAHGzJXcjMD73T7ibyUss9g5AVX38o
 wRyapQuEVikSECeGpSIi3KyRs+mXHLs/x9joOdyPTash7oPQ8Utf2XxUK4bz37VSnLB8
 Nq5Y0dYF9kc1Z44HD0+P0R60tt2A4WahDWTMQLxNxj1+1qWTYQacyruOiHTJGKtTOQS4
 opyA==
X-Gm-Message-State: APjAAAWsOEA4soApdgRXtI1T+Hie+MXQzwg4lIv1ZiqEXQPix5gc14gf
 PmZV4va0ERH2gGKPPgYaeM5esJRMdH2lUakZLj4bJg==
X-Google-Smtp-Source: APXvYqwmEZtlGKAjiLJWvizo9Zwmik6FWTQ62cPvtwGWDViEZL1wVsPAEfk8YLKeNB7mUaMkZVTde4hFd59dR/Vcw90=
X-Received: by 2002:a17:902:2006:: with SMTP id
 n6mr10173684pla.232.1561708925220; 
 Fri, 28 Jun 2019 01:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-18-brendanhiggins@google.com>
 <20190626021744.GU19023@42.do-not-panic.com>
 <CAAXuY3p+kVhjQ4LYtzormqVcH2vKu1abc_K9Z0XY=JX=bp8NcQ@mail.gmail.com>
 <20190627061021.GE19023@42.do-not-panic.com>
In-Reply-To: <20190627061021.GE19023@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 28 Jun 2019 01:01:54 -0700
Message-ID: <CAFd5g45VJ9yfuESUc=E0ydJyN+mk1b1kyHSCYvO2x9KPC7+3GQ@mail.gmail.com>
Subject: Re: [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_010209_574830_676F7BE0 
X-CRM114-Status: GOOD (  39.13  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
 David Rientjes <rientjes@google.com>, Iurii Zaikin <yzaikin@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Joel Stanley <joel@jms.id.au>, devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, Kees Cook <keescook@google.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-api@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:10 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Wed, Jun 26, 2019 at 09:07:43PM -0700, Iurii Zaikin wrote:
> > On Tue, Jun 25, 2019 at 7:17 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > > +static void sysctl_test_dointvec_table_maxlen_unset(struct kunit *test)
> > > > +{
> > > > +     struct ctl_table table = {
> > > > +             .procname = "foo",
> > > > +             .data           = &test_data.int_0001,
> > > > +             .maxlen         = 0,
> > > > +             .mode           = 0644,
> > > > +             .proc_handler   = proc_dointvec,
> > > > +             .extra1         = &i_zero,
> > > > +             .extra2         = &i_one_hundred,
> > > > +     };
> > > > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > +     size_t len;
> > > > +     loff_t pos;
> > > > +
> > > > +     len = 1234;
> > > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > > +     len = 1234;
> > > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > > +}
> > >
> > > In a way this is also testing for general kernel API changes. This is and the
> > > last one were good examples. So this is not just testing functionality
> > > here. There is no wrong or write answer if 0 or -EINVAL was returned
> > > other than the fact that we have been doing this for years.
> > >
> > > Its a perhaps small but important difference for some of these tests.  I
> > > *do* think its worth clarifying through documentation which ones are
> > > testing for API consistency Vs proper correctness.
> >
> > You make a good point that the test codifies the existing behavior of
> > the function in lieu of formal documentation.  However, the test cases
> > were derived from examining the source code of the function under test
> > and attempting to cover all branches. The assertions were added only
> > for the values that appeared to be set deliberately in the
> > implementation. And it makes sense to me to test that the code does
> > exactly what the implementation author intended.
>
> I'm not arguing against adding them. I'm suggesting that it is different
> to test for API than for correctness of intended functionality, and
> it would be wise to make it clear which test cases are for API and which
> for correctness.

I see later on that some of the API stuff you are talking about is
public APIs from the standpoint of user (outside of LInux) visible. To
be clear, is that what you mean by public APIs throughout, or would
you distinguish between correctness tests, internal API tests, and
external API tests?

> This will come up later for other kunit tests and it would be great
> to set precendent so that other kunit tests can follow similar
> practices to ensure its clear what is API realted Vs correctness of
> intended functionality.
>
> In fact, I'm not yet sure if its possible to test public kernel API to
> userspace with kunit, but if it is possible... well, that could make
> linux-api folks happy as they could enable us to codify interpreation of
> what is expected into kunit test cases, and we'd ensure that the
> codified interpretation is not only documented in man pages but also
> through formal kunit test cases.
>
> A regression in linux-api then could be formalized through a proper
> kunit tests case. And if an API evolves, it would force developers to
> update the respective kunit which codifies that contract.

Yep, I think that is long term hope. Some of the file system interface
stuff that requires a filesystem to be mounted somewhere might get a
little weird/difficult, but I suspect we should be able to do it
eventually. I mean it's all just C code right? Should mostly boil down
to someone figuring out how to do it the first time.

> > > > +static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
> > > > +{
> > > > +     struct ctl_table table = {
> > > > +             .procname = "foo",
> > > > +             .data           = &test_data.int_0001,
> > > > +             .maxlen         = sizeof(int),
> > > > +             .mode           = 0644,
> > > > +             .proc_handler   = proc_dointvec,
> > > > +             .extra1         = &i_zero,
> > > > +             .extra2         = &i_one_hundred,
> > > > +     };
> > > > +     char input[32];
> > > > +     size_t len = sizeof(input) - 1;
> > > > +     loff_t pos = 0;
> > > > +     unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
> > > > +                                          - (INT_MAX + INT_MIN) + 1;
> > > > +
> > > > +     KUNIT_EXPECT_LT(test,
> > > > +                     (size_t)snprintf(input, sizeof(input), "-%lu",
> > > > +                                      abs_of_less_than_min),
> > > > +                     sizeof(input));
> > > > +
> > > > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > > > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > > > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > > > +}
> > >
> > > API test.
> > >
> > Not sure why.
>
> Because you are codifying that we *definitely* return -EINVAL on
> overlow. Some parts of the kernel return -ERANGE for overflows for
> instance.
>
> It would be a generic test for overflow if it would just test
> for any error.
>
> It is a fine and good test to keep. All these tests are good to keep.
>
> > I believe there has been a real bug with int overflow in
> > proc_dointvec.
> > Covering it with test seems like a good idea.
>
> Oh definitely.
>
> > > > +static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
> > > > +{
> > > > +     struct ctl_table table = {
> > > > +             .procname = "foo",
> > > > +             .data           = &test_data.int_0001,
> > > > +             .maxlen         = sizeof(int),
> > > > +             .mode           = 0644,
> > > > +             .proc_handler   = proc_dointvec,
> > > > +             .extra1         = &i_zero,
> > > > +             .extra2         = &i_one_hundred,
> > > > +     };
> > > > +     char input[32];
> > > > +     size_t len = sizeof(input) - 1;
> > > > +     loff_t pos = 0;
> > > > +     unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
> > > > +
> > > > +     KUNIT_EXPECT_GT(test, greater_than_max, (unsigned long)INT_MAX);
> > > > +     KUNIT_EXPECT_LT(test, (size_t)snprintf(input, sizeof(input), "%lu",
> > > > +                                            greater_than_max),
> > > > +                     sizeof(input));
> > > > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > > > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > > > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > > > +}
> > > > +
> > >
> > > API test.
> > >
> > > > +static struct kunit_case sysctl_test_cases[] = {
> > > > +     KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
> > > > +     KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
> > > > +     {}
> > > > +};
> > >
> > > Oh all are API tests.. perhaps then just rename then
> > > sysctl_test_cases to sysctl_api_test_cases.
> > >
> > > Would be good to add at least *two* other tests cases for this
> > > example, one which does a valid read and one which does a valid write.
> > Added valid reads. There already are 2 valid writes.
>
> Thanks.
>
> > > If that is done either we add another kunit test module for correctness
> > > or just extend the above and use prefix / postfixes on the functions
> > > to distinguish between API / correctness somehow.
> > >
> > > > +
> > > > +static struct kunit_module sysctl_test_module = {
> > > > +     .name = "sysctl_test",
> > > > +     .test_cases = sysctl_test_cases,
> > > > +};
> > > > +
> > > > +module_test(sysctl_test_module);
> > > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > > index cbdfae3798965..389b8986f5b77 100644
> > > > --- a/lib/Kconfig.debug
> > > > +++ b/lib/Kconfig.debug
> > > > @@ -1939,6 +1939,16 @@ config TEST_SYSCTL
> > > >
> > > >         If unsure, say N.
> > > >
> > > > +config SYSCTL_KUNIT_TEST
> > > > +     bool "KUnit test for sysctl"
> > > > +     depends on KUNIT
> > > > +     help
> > > > +       This builds the proc sysctl unit test, which runs on boot. For more
> > > > +       information on KUnit and unit tests in general please refer to the
> > > > +       KUnit documentation in Documentation/dev-tools/kunit/.
> > >
> > > A little more description here would help. It is testing for API and
> > > hopefully also correctness (if extended with those two examples I
> > > mentioned).
> > >
> > Added "Tests the API contract and implementation correctness of sysctl."
>
> Yes, much clearer, thanks!

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
