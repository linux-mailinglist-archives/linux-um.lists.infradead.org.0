Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BB157BC2
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 08:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQtS3X/cJDpUOP3IO4PqmqP4XORk9qHt9gD1T6+AZNU=; b=FlEKmgSQ5+N3Za
	C9/FuYN9bzPXBmG5KxFNl+yW083ldsNsUg3HAxYcxJwo5zKW+FadyGE4K0mwRnm7EbbL7p+NCsJQu
	grf+pmBnqw11MEZtOWEC9TXeQ+dzcvoTghKBFh1gS2YPzl+Kvv7YnFlcyrK6HIA5c6HJ0j6MGTHlR
	rpyzxQhTdgVRU+iHJDdS1e/FBx3mesLYVXuFLJ8cvc8s5J2i84HoLTpEmRa4vFUMp5YQxYgRnZYGK
	LhYUKonC7GxNWHmSdAjQIpoxNi/vyd1nCzgSw3DmwEfrcgpKjthRPDxbiNatO6REdNwZz7PQrwjD5
	mhfFda/qlukudWbQqQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNcB-0006mE-HE; Thu, 27 Jun 2019 06:10:35 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNc8-0006lu-CS
 for linux-um@lists.infradead.org; Thu, 27 Jun 2019 06:10:33 +0000
Received: by mail-pl1-f196.google.com with SMTP id ay6so669621plb.9
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 23:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZwcXPCGwZbn09o1uwc7hniPSeMrN6eJpmY4d6Wfxi5c=;
 b=FbtTaPwO/gKFVlVrTQ5mEV5KY27vojsDsIB0mGF2Go9W1nUDockWKwZb/o+iN9sW/H
 83G41TsBAaxE0FYktUnSRvPc9o/wk1ISsTyFSUebdiU7JL1cTe9He08z5ftxonbAlzIL
 fUvR7zvp1AV/+e9LB/DyMjOJfV+iXBx7zDMZwkdNhfMUeEEuhAe3PIfTAqdIObOTZMLt
 oMpS6TBr6B6PXgPZ9J9buYCq1bS6G23G/KTIlRsOZiVI7aihBtnhr9SZlPiY9F+NxY9D
 wZE4el7W4Gv8OEMTCYyOwxgZDr6iyL76qSwBW7gT8wJAf7ch8dXNi9pA3lHPcxyeKsKk
 nFag==
X-Gm-Message-State: APjAAAVkI/b9TyVR8uFnxYpzC+6qXqCbBSUXS5KrNusqgZlVFVqcQDEp
 wfTO+ZF/W14QUEYZYYHMfmQ=
X-Google-Smtp-Source: APXvYqwfDFSlOkWhmFZzzgQYetrDxzZaKzvd9ZX5n/88iknHRTMqvTXQfyQDDioGRxixBQmy4Bo+mg==
X-Received: by 2002:a17:902:8489:: with SMTP id
 c9mr2593873plo.327.1561615831154; 
 Wed, 26 Jun 2019 23:10:31 -0700 (PDT)
Received: from 42.do-not-panic.com ([157.230.128.187])
 by smtp.gmail.com with ESMTPSA id u21sm1323644pfm.70.2019.06.26.23.10.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 23:10:27 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 7944140256; Thu, 27 Jun 2019 06:10:21 +0000 (UTC)
Date: Thu, 27 Jun 2019 06:10:21 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Iurii Zaikin <yzaikin@google.com>, linux-api@vger.kernel.org,
 "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190627061021.GE19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-18-brendanhiggins@google.com>
 <20190626021744.GU19023@42.do-not-panic.com>
 <CAAXuY3p+kVhjQ4LYtzormqVcH2vKu1abc_K9Z0XY=JX=bp8NcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAXuY3p+kVhjQ4LYtzormqVcH2vKu1abc_K9Z0XY=JX=bp8NcQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_231032_430927_84CE3195 
X-CRM114-Status: GOOD (  30.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 amir73il@gmail.com, Brendan Higgins <brendanhiggins@google.com>,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, frowand.list@gmail.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 David Rientjes <rientjes@google.com>, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 Stephen Boyd <sboyd@kernel.org>, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 09:07:43PM -0700, Iurii Zaikin wrote:
> On Tue, Jun 25, 2019 at 7:17 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > +static void sysctl_test_dointvec_table_maxlen_unset(struct kunit *test)
> > > +{
> > > +     struct ctl_table table = {
> > > +             .procname = "foo",
> > > +             .data           = &test_data.int_0001,
> > > +             .maxlen         = 0,
> > > +             .mode           = 0644,
> > > +             .proc_handler   = proc_dointvec,
> > > +             .extra1         = &i_zero,
> > > +             .extra2         = &i_one_hundred,
> > > +     };
> > > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > +     size_t len;
> > > +     loff_t pos;
> > > +
> > > +     len = 1234;
> > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > +     len = 1234;
> > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > +}
> >
> > In a way this is also testing for general kernel API changes. This is and the
> > last one were good examples. So this is not just testing functionality
> > here. There is no wrong or write answer if 0 or -EINVAL was returned
> > other than the fact that we have been doing this for years.
> >
> > Its a perhaps small but important difference for some of these tests.  I
> > *do* think its worth clarifying through documentation which ones are
> > testing for API consistency Vs proper correctness.
>
> You make a good point that the test codifies the existing behavior of
> the function in lieu of formal documentation.  However, the test cases
> were derived from examining the source code of the function under test
> and attempting to cover all branches. The assertions were added only
> for the values that appeared to be set deliberately in the
> implementation. And it makes sense to me to test that the code does
> exactly what the implementation author intended.

I'm not arguing against adding them. I'm suggesting that it is different
to test for API than for correctness of intended functionality, and
it would be wise to make it clear which test cases are for API and which
for correctness.

This will come up later for other kunit tests and it would be great
to set precendent so that other kunit tests can follow similar
practices to ensure its clear what is API realted Vs correctness of
intended functionality.

In fact, I'm not yet sure if its possible to test public kernel API to
userspace with kunit, but if it is possible... well, that could make
linux-api folks happy as they could enable us to codify interpreation of
what is expected into kunit test cases, and we'd ensure that the
codified interpretation is not only documented in man pages but also
through formal kunit test cases.

A regression in linux-api then could be formalized through a proper
kunit tests case. And if an API evolves, it would force developers to
update the respective kunit which codifies that contract.

> > > +static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
> > > +{
> > > +     struct ctl_table table = {
> > > +             .procname = "foo",
> > > +             .data           = &test_data.int_0001,
> > > +             .maxlen         = sizeof(int),
> > > +             .mode           = 0644,
> > > +             .proc_handler   = proc_dointvec,
> > > +             .extra1         = &i_zero,
> > > +             .extra2         = &i_one_hundred,
> > > +     };
> > > +     char input[32];
> > > +     size_t len = sizeof(input) - 1;
> > > +     loff_t pos = 0;
> > > +     unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
> > > +                                          - (INT_MAX + INT_MIN) + 1;
> > > +
> > > +     KUNIT_EXPECT_LT(test,
> > > +                     (size_t)snprintf(input, sizeof(input), "-%lu",
> > > +                                      abs_of_less_than_min),
> > > +                     sizeof(input));
> > > +
> > > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > > +}
> >
> > API test.
> >
> Not sure why.

Because you are codifying that we *definitely* return -EINVAL on
overlow. Some parts of the kernel return -ERANGE for overflows for
instance.

It would be a generic test for overflow if it would just test
for any error.

It is a fine and good test to keep. All these tests are good to keep.

> I believe there has been a real bug with int overflow in
> proc_dointvec.
> Covering it with test seems like a good idea.

Oh definitely.

> > > +static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
> > > +{
> > > +     struct ctl_table table = {
> > > +             .procname = "foo",
> > > +             .data           = &test_data.int_0001,
> > > +             .maxlen         = sizeof(int),
> > > +             .mode           = 0644,
> > > +             .proc_handler   = proc_dointvec,
> > > +             .extra1         = &i_zero,
> > > +             .extra2         = &i_one_hundred,
> > > +     };
> > > +     char input[32];
> > > +     size_t len = sizeof(input) - 1;
> > > +     loff_t pos = 0;
> > > +     unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
> > > +
> > > +     KUNIT_EXPECT_GT(test, greater_than_max, (unsigned long)INT_MAX);
> > > +     KUNIT_EXPECT_LT(test, (size_t)snprintf(input, sizeof(input), "%lu",
> > > +                                            greater_than_max),
> > > +                     sizeof(input));
> > > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > > +}
> > > +
> >
> > API test.
> >
> > > +static struct kunit_case sysctl_test_cases[] = {
> > > +     KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
> > > +     KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
> > > +     KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
> > > +     KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
> > > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
> > > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
> > > +     KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
> > > +     KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
> > > +     {}
> > > +};
> >
> > Oh all are API tests.. perhaps then just rename then
> > sysctl_test_cases to sysctl_api_test_cases.
> >
> > Would be good to add at least *two* other tests cases for this
> > example, one which does a valid read and one which does a valid write.
> Added valid reads. There already are 2 valid writes.

Thanks.

> > If that is done either we add another kunit test module for correctness
> > or just extend the above and use prefix / postfixes on the functions
> > to distinguish between API / correctness somehow.
> >
> > > +
> > > +static struct kunit_module sysctl_test_module = {
> > > +     .name = "sysctl_test",
> > > +     .test_cases = sysctl_test_cases,
> > > +};
> > > +
> > > +module_test(sysctl_test_module);
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index cbdfae3798965..389b8986f5b77 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -1939,6 +1939,16 @@ config TEST_SYSCTL
> > >
> > >         If unsure, say N.
> > >
> > > +config SYSCTL_KUNIT_TEST
> > > +     bool "KUnit test for sysctl"
> > > +     depends on KUNIT
> > > +     help
> > > +       This builds the proc sysctl unit test, which runs on boot. For more
> > > +       information on KUnit and unit tests in general please refer to the
> > > +       KUnit documentation in Documentation/dev-tools/kunit/.
> >
> > A little more description here would help. It is testing for API and
> > hopefully also correctness (if extended with those two examples I
> > mentioned).
> >
> Added "Tests the API contract and implementation correctness of sysctl."

Yes, much clearer, thanks!

  Luis


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
