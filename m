Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B3296B71
	for <lists+linux-um@lfdr.de>; Tue, 20 Aug 2019 23:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKPNg8D4bQo6QSHlIXfKEdmL9lIGTGM3zmGyfQi++NY=; b=FrYVy1PGKTnjtu
	7ewbUIBVbE5L7LthYPwsRDGjd+w4vWnAW5FcoMrUBqqJoJMjDnl0CTBhihERG1gb6Lir/k/2z/qcT
	NNUXz53fWYZm5PxPztNx90iLxVk+QkI3rV9txCS60qfa3256iL+y4CMAydZv7G35nMs8CSoisfCOg
	IUjGdoLe1DmE6SZqHJD9mC6W1Ly4UHzrLy/qPKncFgf5rsndWm2CeDQS4uHtrj9swYupC1G7kqIFG
	+VQgf5fq3Oyg7jUlQtzovosm7iMU7gGCnx9Z2CNZ/E9n3Q8iaPoK0ZEsnRQBS/i0EAbMcd67gRcgA
	ksCv7RGqaqconJ5o2vSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BeR-0006Gg-6Y; Tue, 20 Aug 2019 21:26:47 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BeO-0006G6-6M
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 21:26:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so4151784pfq.0
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 14:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kfF4vdGcFJm/Wf6JQ1wcuplxthXZW1HNbOa1JyPqpZg=;
 b=YezYmx2WChZMi1DRr1XoN8XfZITumH+PgqY3JQdS5w4u2vwKLbtcH66ah2vjoQnnog
 QyUxcFY+vLpiQeDhK9KTH5U7uOLNo0vnuD4a52N1MJjkiOZI294BDWFVvwrEEKdhPBaO
 XVT2+i53gVsOodGBAl0E+xI0gCcD/lVNo3bqvB93NFaE/xG/irV6qGiYAx5Sa0TgkhIz
 Derb91GymDQKbZ5lMgnZKtNSZMjrGXdFpCsjUGQOYWWslojKah3JT/incq30S9xuCblQ
 rssihHZxJUKUKjpEGuvFLm+OHFk0eFFOuKdMDTyPyJe4rypnj3lPr/tiL1vR+LS2dnzq
 EaFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kfF4vdGcFJm/Wf6JQ1wcuplxthXZW1HNbOa1JyPqpZg=;
 b=oeFpMU8hNvgGcCfWjtujFoyDQ08k8mfPmNy8OhfSYiL1wojg8z8elpDXY0wXTcnkt4
 3iBLyzpcmQfvzEGdQBzwCWQ5N5qAksADZvLrkr8jOgIhK46NAMxvTp4fOQpPlV/WDR+d
 MXx5XFBvU6xPXgvOVpqk8YiuW4BrkoEqo5gQCD6B+wdG/GuFNhxEFCKqbk6QC2j+Cf3H
 SsafGWhxEV4QuD/ryG/MLrdv9yQLfzUxhxYh+PkHaY6gCv8tx6w5wnNm3C5deDdvFboV
 zwCyrev51p+pKO2TTcmxsyQisqrndat6lNwxeXR4xdtOk7f9uYGDLNxpeUDwMMbHdHcz
 LlQA==
X-Gm-Message-State: APjAAAWJ81JByLUfdPF/a5T2Eg20GIUTHLYFeamhTteA9nJoZiiThBAd
 cAlMlKpXipnmJiK0M1uIG6XtYzDwP+JRTsNUOBG27g==
X-Google-Smtp-Source: APXvYqzLsasEUUNlQqQQsMBDlcH+Tp5YqnFlWE8k2udTHXgEapZH91qiWX0NVeTeH8163H7ZgTGtPG9Wj/vODuCC5PA=
X-Received: by 2002:aa7:8f2e:: with SMTP id y14mr32322000pfr.113.1566336403144; 
 Tue, 20 Aug 2019 14:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
 <5b880f49-0213-1a6e-9c9f-153e6ab91eeb@kernel.org>
 <20190820182450.GA38078@google.com>
 <e8eaf28e-75df-c966-809a-2e3631353cc9@kernel.org>
In-Reply-To: <e8eaf28e-75df-c966-809a-2e3631353cc9@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 20 Aug 2019 14:26:32 -0700
Message-ID: <CAFd5g44JT_KQ+OxjVdG0qMWuaEB0Zq5x=r6tLsqJdncwZ_zbGA@mail.gmail.com>
Subject: Re: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_142644_260208_70010623 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 12:08 PM shuah <shuah@kernel.org> wrote:
>
> On 8/20/19 12:24 PM, Brendan Higgins wrote:
> > On Tue, Aug 20, 2019 at 11:24:45AM -0600, shuah wrote:
> >> On 8/13/19 11:50 PM, Brendan Higgins wrote:
> >>> ## TL;DR
> >>>
> >>> This revision addresses comments from Stephen and Bjorn Helgaas. Most
> >>> changes are pretty minor stuff that doesn't affect the API in anyway.
> >>> One significant change, however, is that I added support for freeing
> >>> kunit_resource managed resources before the test case is finished via
> >>> kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
> >>> KUnit on certain configurations (like the default one for x86, whoops).
> >>>
> >>> Based on Stephen's feedback on the previous change, I think we are
> >>> pretty close. I am not expecting any significant changes from here on
> >>> out.
> >>>
> >>
> >> Hi Brendan,
> >>
> >> I found checkpatch errors in one or two patches. Can you fix those and
> >> send v14.
> >
> > Hi Shuah,
> >
> > Are you refering to the following errors?
> >
> > ERROR: Macros with complex values should be enclosed in parentheses
> > #144: FILE: include/kunit/test.h:456:
> > +#define KUNIT_BINARY_CLASS \
> > +       kunit_binary_assert, KUNIT_INIT_BINARY_ASSERT_STRUCT
> >
> > ERROR: Macros with complex values should be enclosed in parentheses
> > #146: FILE: include/kunit/test.h:458:
> > +#define KUNIT_BINARY_PTR_CLASS \
> > +       kunit_binary_ptr_assert, KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT
> >
> > These values should *not* be in parentheses. I am guessing checkpatch is
> > getting confused and thinks that these are complex expressions, when
> > they are not.
> >
> > I ignored the errors since I figured checkpatch was complaining
> > erroneously.
> >
> > I could refactor the code to remove these macros entirely, but I think
> > the code is cleaner with them.
> >
>
> Please do. I am not veru sure what value these macros add.

Alright, I will have something for you later today.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
