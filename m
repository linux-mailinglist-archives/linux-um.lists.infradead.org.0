Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B4957B35
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 07:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3L7Q2rDlSEVTew54psQAos+qNUe88DTyqNA8IfBXd0=; b=gv7GRcTPxg5vr2
	kJssHjbCexxhV4ySv2MXIzv9ekvIm/gt1Xfsg8wARLeekLOn91iS0N6ELFnBvOo4sLso87MMxjwTR
	tecqMFiww1M0EdPo96rLnOLZ9cZ5tfc5y/Lum3pUGZoSOLNDSJmJ3TESijujqmYwGRKimNrA8SCuc
	nfyoXHsjir240upNLeHsJrfohElxNZYE2OqVuOW1fgmnTvo3nu4TMvfN5gJEvsd+plng3LQ/kUbBq
	jBQ5hmVDeHq91ys6ki8syHt7i93Nw7mgqbMPFilOHu6lzl3/U8qMq0WezUcH3CpIRSyp+J46Cuqbx
	eL8kPOoj+N+u0iJSFSVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMoV-0007Dc-P1; Thu, 27 Jun 2019 05:19:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMoQ-0006ep-7a
 for linux-um@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=peYrxHEjDyab54KKexkbjmIh5vv0AqxnEkYF1zQ41/0=; b=Pp6ZC3EWArGlJ2ymU3OzruzZR
 fQhrpuNmP21v9bt16pT3GsM/6J/MrQBWJsFaR5uOXr9/HTQ4vu95nBPSpBbv45WHj6fS6yo4nacak
 mPoiFAeAlVBXtQqqMPtWBz267xQRwhqDYF63hMIonOzr4tdJPJqQuz8vaBJDgQP5Sy/SZKHxi5XF7
 IgRKOWRGFZizy1ikxGn+sU2cDI+wi+KpA0TDs6KVxgMqScjel0nMVncCmsRnW7ULB6Txkl0nu8z9v
 FyMXVewDDFoVh8Bf8hfY/JmW1mi4XuSHuBDLsmbOw5M1/bPY2TGAn/OIsU1/WX8onxHQ5f6UZu6p+
 dPM6aboXQ==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLjD-0002UJ-RY
 for linux-um@lists.infradead.org; Thu, 27 Jun 2019 04:09:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so727465wru.10
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 21:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=peYrxHEjDyab54KKexkbjmIh5vv0AqxnEkYF1zQ41/0=;
 b=BpY0n3g7OCtKVTyCkELlz7i/FrshCPUMslUpgW0lb8ekxnEXA4BSzgMbmWKF1NUQTI
 jJj5V7v0m8kA2DWAARDLGE3vckNQ+tJGdI8V+tSDMnEXkBmFw4ttG3VOMrwrkiiuYWYP
 79yxurg3Ha9jaM9hueT207iXBaPs2Heqc5x+oNvdV0+0KsaO49EAcx7EXK7DZ6/jcvVT
 jhHAH0WOymRIBeD9BdUknQ7spWDkW8bi44E3WoVtbrA+RqhLNRWPEgt9PRa90IoXoQrW
 JQixu9ArqgQfXYU8KaOrBR8PpKWcdTjs11DCxn9p2a4UYFLd1HpNB8lG03iloBc4NxvB
 rpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=peYrxHEjDyab54KKexkbjmIh5vv0AqxnEkYF1zQ41/0=;
 b=lzCA1rYjpLGlhipX6Z+GsGDv71nQ/cVp7W1ejApL+7UbicRyTpZ96zEOWB4cOIUre6
 3jhLc6K6rFcW6K3GW5YyOfI36UWcjCZAGpw9whzJ+lrPHj/IlYO3v2fSlnwKSe/o6Fu6
 AfHB4iNB/IfqIv4ZlcYQeSpAVjDs9QXdDyzM30/wzIGgJ28YFUCsQusjZmTxmA3neJGw
 PztPSo1ZfCy4ilWSulDoX087sce5I4AbFxnX5q2Vq11ZWfdRfqYG2UKfUM/B7Ouj1gY5
 BCW39Oc5BIaj6eISBjXNsgBL0G48PN1Qv66NETe21I2yydKGe6cBZKH+D98k1G1MhKSt
 gbtg==
X-Gm-Message-State: APjAAAWh2Jnw5REyUE+0291x7h2HbaSWLuZIa3knGJj5pqPt3MBY55VV
 mtOh8Vr689k3jPNS6jrzJXd6cL2k8a3JCeFHXAE6
X-Google-Smtp-Source: APXvYqzJRzBUHyzbzCLyMW34lNC+PYJ6zOTaHEF91KW5X6rjaLo6CvfDngyrQpgoh96qd+IgLTc/PgkKeNkuHHkd+DI=
X-Received: by 2002:adf:f649:: with SMTP id x9mr950139wrp.86.1561608499699;
 Wed, 26 Jun 2019 21:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-18-brendanhiggins@google.com>
 <20190626021744.GU19023@42.do-not-panic.com>
In-Reply-To: <20190626021744.GU19023@42.do-not-panic.com>
From: Iurii Zaikin <yzaikin@google.com>
Date: Wed, 26 Jun 2019 21:07:43 -0700
Message-ID: <CAAXuY3p+kVhjQ4LYtzormqVcH2vKu1abc_K9Z0XY=JX=bp8NcQ@mail.gmail.com>
Subject: Re: [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_050943_969910_9A09100A 
X-CRM114-Status: GOOD (  56.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-15.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jun 25, 2019 at 7:17 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:26:12AM -0700, Brendan Higgins wrote:
> > From: Iurii Zaikin <yzaikin@google.com>
> >
> > KUnit tests for initialized data behavior of proc_dointvec that is
> > explicitly checked in the code. Includes basic parsing tests including
> > int min/max overflow.
>
> First, thanks for this work! My review below.
> >
> > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > ---
> > Changes Since Last Revision:
> >  - Iurii did some clean up (thanks Iurii!) as suggested by Stephen Boyd.
> > ---
> >  kernel/Makefile      |   2 +
> >  kernel/sysctl-test.c | 242 +++++++++++++++++++++++++++++++++++++++++++
> >  lib/Kconfig.debug    |  10 ++
> >  3 files changed, 254 insertions(+)
> >  create mode 100644 kernel/sysctl-test.c
> >
> > diff --git a/kernel/Makefile b/kernel/Makefile
> > index a8d923b5481ba..50fd511cd0ee0 100644
> > --- a/kernel/Makefile
> > +++ b/kernel/Makefile
> > @@ -114,6 +114,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
> >  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
> >  obj-$(CONFIG_RSEQ) += rseq.o
> >
> > +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
>
> And we have lib/test_sysctl.c of selftests.
>
> I'm fine with this going in as-is to its current place, but if we have
> to learn from selftests I'd say we try to stick to a convention so
> folks know what framework a test is for, and to ensure folks can
> easily tell if its test code or not.
>
> Perhaps simply a directory for kunit tests would suffice alone.
>
> > +
> >  obj-$(CONFIG_GCC_PLUGIN_STACKLEAK) += stackleak.o
> >  KASAN_SANITIZE_stackleak.o := n
> >  KCOV_INSTRUMENT_stackleak.o := n
> > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > new file mode 100644
> > index 0000000000000..cb61ad3c7db63
> > --- /dev/null
> > +++ b/kernel/sysctl-test.c
> > @@ -0,0 +1,242 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * KUnit test of proc sysctl.
> > + */
> > +
> > +#include <kunit/test.h>
> > +#include <linux/sysctl.h>
> > +
> > +static int i_zero;
> > +static int i_one_hundred = 100;
> > +
> > +struct test_sysctl_data {
> > +     int int_0001;
> > +     int int_0002;
> > +     int int_0003[4];
> > +
> > +     unsigned int uint_0001;
> > +
> > +     char string_0001[65];
> > +};
> > +
> > +static struct test_sysctl_data test_data = {
> > +     .int_0001 = 60,
> > +     .int_0002 = 1,
> > +
> > +     .int_0003[0] = 0,
> > +     .int_0003[1] = 1,
> > +     .int_0003[2] = 2,
> > +     .int_0003[3] = 3,
> > +
> > +     .uint_0001 = 314,
> > +
> > +     .string_0001 = "(none)",
> > +};
> > +
> > +static void sysctl_test_dointvec_null_tbl_data(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = NULL,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     size_t len;
> > +     loff_t pos;
> > +
> > +     len = 1234;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
>
> It is a bit odd, but it does happen, for a developer to be calling
> proc_dointvec() directly, instead typically folks just register a table
> and let it do its thing.  That said, someone not too familiar with proc
> code would see this and really have no clue exactly what is being
> tested.
>
> Even as a maintainer, I had to read the code for proc_dointvec() a bit
> to understand that the above is a *read* attempt to the .data field
> being allocated. Because its a write, the len set to a bogus does not
> matter as we are expecting the proc_dointvec() to update len for us.
>
> If a test fails, it would be good to for anyone to easily grasp what is
> being tested. So... a few words documenting each test case would be nice.
>
> > +     len = 1234;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
>
> And this is a write...
>
> A nice tests given the data on the table allocated is not assigned.
>
> I don't see any other areas in the kernel where we open code a
> proc_dointvec() call where the second argument is a digit, it
> always is with a variable. As such there would be no need for
> us to expose helpers to make it clear if one is a read or write.
> But for *this* case, I think it would be useful to add two wrappers
> inside this kunit test module which sprinkles the 0 or 1, this way
> a reader can easily know what mode is being tested.
>
> kunit_proc_dointvec_read()
> kunit_proc_dointvec_write()
>
> Or just use #define KUNIT_PROC_READ 0, #define KUNIT_PROC_WRITE 1.
> Whatever makes this code more legible.
Went with the #define * suggestion above to keep it clear what
function is being tested.

> > +}
> > +
> > +static void sysctl_test_dointvec_table_maxlen_unset(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = 0,
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     size_t len;
> > +     loff_t pos;
> > +
> > +     len = 1234;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > +     len = 1234;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > +}
>
> In a way this is also testing for general kernel API changes. This is and the
> last one were good examples. So this is not just testing functionality
> here. There is no wrong or write answer if 0 or -EINVAL was returned
> other than the fact that we have been doing this for years.
>
> Its a perhaps small but important difference for some of these tests.  I
> *do* think its worth clarifying through documentation which ones are
> testing for API consistency Vs proper correctness.
>
You make a good point that the test codifies the existing behavior of
the function
in lieu of formal documentation.
However, the test cases were derived from examining the source code
of the function under test and attempting to cover all branches. The
assertions were added
only for the values that appeared to be set deliberately in the
implementation. And it makes
sense to me to test that the code does exactly what the implementation
author intended.
> > +
> > +static void sysctl_test_dointvec_table_len_is_zero(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     size_t len;
> > +     loff_t pos;
> > +
> > +     len = 0;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > +}
>
> Likewise an API change test.
>
Same as the above, if the implementation author meant the function to
behave deterministically
with the given input, it makes sense to test the behavior. Otherwise,
why not just remove the branch in
 the function under test and say that the given input results in
undefined behavior?
> > +
> > +static void sysctl_test_dointvec_table_read_but_position_set(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     size_t len;
> > +     loff_t pos;
> > +
> > +     len = 1234;
> > +     pos = 1;
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > +}
>
> Likewise an API test.
>
> All the above kunit test cases are currently testing this call on
> __do_proc_dointvec():
>
>         if (!tbl_data || !table->maxlen || !*lenp || (*ppos && !write))
>         {
>                 *lenp = 0;
>                 return 0;
>         }
>
> Just an API test.
>
> Perhaps use an api prefix or postfix for these to help distinguish
> which are api tests Vs correctness. We want someone who runs into
> a failure to *easily* determine *what* went wrong.
>
> Right now this kunit test leaves no leashes around to help the reader.
>
> > +
> > +static void sysctl_test_dointvec_happy_single_positive(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     char input[] = "9";
> > +     size_t len = sizeof(input) - 1;
> > +     loff_t pos = 0;
> > +
> > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, (size_t)pos);
> > +     KUNIT_EXPECT_EQ(test, 9, ((int *)table.data)[0]);
> > +}
>
> Yeap, running these kunit test cases will surely be faster than stupid
> shell :) nice!
>
> > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     char input[] = "-9";
> > +     size_t len = sizeof(input) - 1;
> > +     loff_t pos = 0;
> > +
> > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, (size_t)pos);
> > +     KUNIT_EXPECT_EQ(test, -9, ((int *)table.data)[0]);
> > +}
> > +
> > +static void sysctl_test_dointvec_single_less_int_min(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     char input[32];
> > +     size_t len = sizeof(input) - 1;
> > +     loff_t pos = 0;
> > +     unsigned long abs_of_less_than_min = (unsigned long)INT_MAX
> > +                                          - (INT_MAX + INT_MIN) + 1;
> > +
> > +     KUNIT_EXPECT_LT(test,
> > +                     (size_t)snprintf(input, sizeof(input), "-%lu",
> > +                                      abs_of_less_than_min),
> > +                     sizeof(input));
> > +
> > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > +}
>
> API test.
>
Not sure why. I believe there has been a real bug with int overflow in
proc_dointvec.
Covering it with test seems like a good idea.
> > +static void sysctl_test_dointvec_single_greater_int_max(struct kunit *test)
> > +{
> > +     struct ctl_table table = {
> > +             .procname = "foo",
> > +             .data           = &test_data.int_0001,
> > +             .maxlen         = sizeof(int),
> > +             .mode           = 0644,
> > +             .proc_handler   = proc_dointvec,
> > +             .extra1         = &i_zero,
> > +             .extra2         = &i_one_hundred,
> > +     };
> > +     char input[32];
> > +     size_t len = sizeof(input) - 1;
> > +     loff_t pos = 0;
> > +     unsigned long greater_than_max = (unsigned long)INT_MAX + 1;
> > +
> > +     KUNIT_EXPECT_GT(test, greater_than_max, (unsigned long)INT_MAX);
> > +     KUNIT_EXPECT_LT(test, (size_t)snprintf(input, sizeof(input), "%lu",
> > +                                            greater_than_max),
> > +                     sizeof(input));
> > +     table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > +     KUNIT_EXPECT_EQ(test, -EINVAL,
> > +                     proc_dointvec(&table, 1, input, &len, &pos));
> > +     KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > +     KUNIT_EXPECT_EQ(test, 0, ((int *)table.data)[0]);
> > +}
> > +
>
> API test.
>
> > +static struct kunit_case sysctl_test_cases[] = {
> > +     KUNIT_CASE(sysctl_test_dointvec_null_tbl_data),
> > +     KUNIT_CASE(sysctl_test_dointvec_table_maxlen_unset),
> > +     KUNIT_CASE(sysctl_test_dointvec_table_len_is_zero),
> > +     KUNIT_CASE(sysctl_test_dointvec_table_read_but_position_set),
> > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_positive),
> > +     KUNIT_CASE(sysctl_test_dointvec_happy_single_negative),
> > +     KUNIT_CASE(sysctl_test_dointvec_single_less_int_min),
> > +     KUNIT_CASE(sysctl_test_dointvec_single_greater_int_max),
> > +     {}
> > +};
>
> Oh all are API tests.. perhaps then just rename then
> sysctl_test_cases to sysctl_api_test_cases.
>
> Would be good to add at least *two* other tests cases for this
> example, one which does a valid read and one which does a valid write.
Added valid reads. There already are 2 valid writes.
> If that is done either we add another kunit test module for correctness
> or just extend the above and use prefix / postfixes on the functions
> to distinguish between API / correctness somehow.
>
> > +
> > +static struct kunit_module sysctl_test_module = {
> > +     .name = "sysctl_test",
> > +     .test_cases = sysctl_test_cases,
> > +};
> > +
> > +module_test(sysctl_test_module);
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index cbdfae3798965..389b8986f5b77 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -1939,6 +1939,16 @@ config TEST_SYSCTL
> >
> >         If unsure, say N.
> >
> > +config SYSCTL_KUNIT_TEST
> > +     bool "KUnit test for sysctl"
> > +     depends on KUNIT
> > +     help
> > +       This builds the proc sysctl unit test, which runs on boot. For more
> > +       information on KUnit and unit tests in general please refer to the
> > +       KUnit documentation in Documentation/dev-tools/kunit/.
>
> A little more description here would help. It is testing for API and
> hopefully also correctness (if extended with those two examples I
> mentioned).
>
Added "Tests the API contract and implementation correctness of sysctl."
> > +
> > +       If unsure, say N.
> > +
> >  config TEST_UDELAY
> >       tristate "udelay test driver"
> >       help
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >
>
> Thanks for the work, it is very much appreciated and gives a clearer
> appreciation of value of kunit and what can be done and not. Another
> random test idea that comes up, would be to use different memory types
> for the table data. In case the kernel API users does something odd,
> we should be ensuring we do something proper.
>
>   Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
