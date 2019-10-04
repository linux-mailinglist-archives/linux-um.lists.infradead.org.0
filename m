Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F298CC63C
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 01:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQiF8tyUnP3hTlpTJMt4xxMwBn9AUa99RK6so5PqGM4=; b=Ov7X7odD24l1Dr
	yUBIy4jmdaajgEYpbzZ2KAOU9/C7DfJV+CBtPATk5XSoGGwV5zgw2nFERupiTrItWI6Oz8XVEW1Z/
	6SHh1IjThMVoVPoCo1zPnu2NH+A1MTRAwCk0aI2UicJYU/J5mvYqRWmIWUiK1NgzBRRGui6CB53VC
	+SPYhIbGspQ48tIo8SPKCAAlhk46anvuLXRTVKsc/x2NC9GaEXG8D7Uc/vCYvA3hDVfjXNiAPh7JR
	FAHlFCneASvAmHViMmpTKVg1kOEWPs2bNha3ufWZqFvDCVlB4kJ3uiTSnWfa8yLGLiJexTes83eMX
	LpbVTs1dIYiP10A+2Eqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGWim-00056T-K2; Fri, 04 Oct 2019 23:10:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGWik-00055L-6y
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 23:10:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id t10so3804110plr.8
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 16:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tysgl1R46fdU3OksVKZHpW9zLqbqvPnl2oWqc0PQOqg=;
 b=oPja2LZ+ZjzWwIIgczPMTwtg+FNGcSbm7xxAV/JCINpx/yp1vQ08IQzQiHGs4wRyly
 YbCXc4ZHHHV54r6XkfIGN2kCtHFVjwM+le57/4du+XEYDcy5wbcSN0nM+dJDI0b12LcX
 ZikwBUxxg3PiGd3obfKj/XNiIWOlooyLyOV9DjUwS3qE50KzPo9cDH1z7dSJIljdr/Z7
 tZQByU/xEELr2sdcAOpmxavLs2sFF6O48uaUgeMrxepiwS44UUpA/LYAKV5RslwaYo6g
 n/2r9eiMcS73JaD7vmFn8z6h6xmtSUZ7znleGhm4+7S7T8FLqi/xStUsiRfiN3NRdDY9
 6J6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tysgl1R46fdU3OksVKZHpW9zLqbqvPnl2oWqc0PQOqg=;
 b=V8hAHYO1VO94oRO1rOJNzrtlCWer01qlaiW3FcZfgaO/TPgZVVoLXbGSs6RN+hVVWq
 fXDb3+7fwqXYYJgzE6/YUG3T1rdHu7XmWMLtlHU3kDM+drNo+TLeXgFtrY8sjiwlf3KK
 pEOLnW6NXkTtDF0FWt4N+0js5bHgwFwREBEppCSc1ROdl0Ouk008GQffNjM8AsboTLOe
 cWDAr/vlFpeRcwzMGmuT6unzSu6kuDrOnNUgk9uXP5IVajIJg4Rv6NLLUNicZk/EO2gR
 DTxNaFTKn6CLcIskVO+pswBC3SrjeaGDFQ1u6aC0wPgcnmLbC3+zOtvULYRpW++n+hJ9
 WlIA==
X-Gm-Message-State: APjAAAU1rBl7X/y8H5XvEV0u11itNgb3HdQpo2m/80TsU769s3CdY7c9
 7Vbk+E+iZ8wcuddsLafNpy51/gb3/7RLVqAidlWarw==
X-Google-Smtp-Source: APXvYqy2qn5i4A0WcBwjew4hCMmMwzQqLgVpE7PF0Xq4XlJnxlfT1jMDjTbCtnSFUQdVesOmn5ze08RzDHkU7ftVGYQ=
X-Received: by 2002:a17:902:ff0e:: with SMTP id
 f14mr18021468plj.325.1570230641399; 
 Fri, 04 Oct 2019 16:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
In-Reply-To: <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 4 Oct 2019 16:10:30 -0700
Message-ID: <CAFd5g46pzu=Bh5X7-ttfhTP+NYNDCAxN16OCGFxc5ohjTL-v0g@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_161046_255881_43FCED1F 
X-CRM114-Status: GOOD (  25.40  )
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
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Logan Gunthorpe <logang@deltatee.com>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 3:47 PM shuah <shuah@kernel.org> wrote:
>
> On 10/4/19 4:27 PM, Brendan Higgins wrote:
> > On Fri, Oct 04, 2019 at 03:59:10PM -0600, shuah wrote:
> >> On 10/4/19 3:42 PM, Linus Torvalds wrote:
> >>> On Fri, Oct 4, 2019 at 2:39 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >>>>
> >>>> This question is primarily directed at Shuah and Linus....
> >>>>
> >>>> What's the current status of the kunit series now that Brendan has
> >>>> moved it out of the top-level kunit directory as Linus has requested?
> >>>
> >>
> >> The move happened smack in the middle of merge window and landed in
> >> linux-next towards the end of the merge window.
> >>
> >>> We seemed to decide to just wait for 5.5, but there is nothing that
> >>> looks to block that. And I encouraged Shuah to find more kunit cases
> >>> for when it _does_ get merged.
> >>>
> >>
> >> Right. I communicated that to Brendan that we could work on adding more
> >> kunit based tests which would help get more mileage on the kunit.
> >>
> >>> So if the kunit branch is stable, and people want to start using it
> >>> for their unit tests, then I think that would be a good idea, and then
> >>> during the 5.5 merge window we'll not just get the infrastructure,
> >>> we'll get a few more users too and not just examples.
> >
> > I was planning on holding off on accepting more tests/changes until
> > KUnit is in torvalds/master. As much as I would like to go around
> > promoting it, I don't really want to promote too much complexity in a
> > non-upstream branch before getting it upstream because I don't want to
> > risk adding something that might cause it to get rejected again.
> >
> > To be clear, I can understand from your perspective why getting more
> > tests/usage before accepting it is a good thing. The more people that
> > play around with it, the more likely that someone will find an issue
> > with it, and more likely that what is accepted into torvalds/master is
> > of high quality.
> >
> > However, if I encourage arbitrary tests/improvements into my KUnit
> > branch, it further diverges away from torvalds/master, and is more
> > likely that there will be a merge conflict or issue that is not related
> > to the core KUnit changes that will cause the whole thing to be
> > rejected again in v5.5.
> >
>
> The idea is that the new development will happen based on kunit in
> linux-kselftest next. It will work just fine. As we accepts patches,
> they will go on top of kunit that is in linux-next now.

But then wouldn't we want to limit what KUnit changes are going into
linux-kselftest next for v5.5? For example, we probably don't want to
do anymore feature development on it until it is in v5.5, since the
goal is to make it more stable, right?

I am guessing that it will probably be fine, but it still sounds like
we need to establish some ground rules, and play it *very* safe.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
