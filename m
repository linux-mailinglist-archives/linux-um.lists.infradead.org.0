Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83FF17636E
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 20:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWDjU9y8j0fEDslMhpPiaXCW9UHstNz8AMg/ms+5TCo=; b=KQVXRUthF+UMCv
	y9VMLvme34nIOjO1KFwN61C0akCgVDsFhF9XPirta304AOQYJ6viW48HrQ5EvwO3Wbb61guL5SuXD
	c+4Wpe00GKkzGEV2DynzUVhJIF3RTfVsUU1LxZ1/bZUcVtGp4+tdw88r0aT45n+JROmeQMSA6HEaf
	xh8bW4PyP2sPI3n655jSx3DhMNntP4KwV5rPZtSUAiEHthUmzIVgxRMMWg4XNEuJsFuPDVbuECnOE
	RrT0S8gLZnh9pWrQ026wKA+ga4EzJZTNJGxB6JUVUVN6SouYWH7zl6hfGedwXX4IH1stfsmLpuZjw
	xZqDALQJux0bewdmqa9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qNs-0003qI-CC; Mon, 02 Mar 2020 19:05:44 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qNo-0003pq-OP
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 19:05:42 +0000
Received: by mail-pj1-f65.google.com with SMTP id lt1so201438pjb.2
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 11:05:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gf4KSaQWKca7V96I6NmHZqh2rr9VA3G/cTKK6IvZdwg=;
 b=dsw1KyudsrCW8Za4mvHyJhZtObTUwtebv7i7keVvhaGPIfhquklXQPQqTRqiaRDWK4
 Rn52A+JFVYoMl2KAJUSDh+gloEor5XrS4FjTZZFsHqYs06EFpZuUjV+GfAN5vcA7IeGL
 ksR3xhEDFcOp3Clcbqa79jQjoAL8UKy6GED904BmYzJ+jhv0WckNY+in//QJk46d0YCV
 E7VeYVeHUSTjFWqpIwkwmuRdXuqcblUa2dkm3pRtW/KjGWVekG7C8GFnnDIQFqIE9ztg
 626KMrX7XDP7CH+VU1Mpd1uoFeE6BmNBiNsNAFdUvQAb1ue85lrCbkSrzsHkdVdoKAVk
 k5xA==
X-Gm-Message-State: ANhLgQ0y+kRsxZqnUkAgQF4KQc7UU25l5NYzLVzzz+YYf13TLr88jnb8
 QgVuNR0ZyYtevkb85/Vg1jA=
X-Google-Smtp-Source: ADFU+vvJYWwumZLWp/3ZGLRXKr5ovAW9HO2pLmZdmIrQgsVTzmXuWNa7nyU7uRH3KIT0vUQ5VwwsfA==
X-Received: by 2002:a17:90a:8915:: with SMTP id
 u21mr350863pjn.87.1583175939331; 
 Mon, 02 Mar 2020 11:05:39 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t63sm22345163pfb.70.2020.03.02.11.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 11:05:38 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 4C2C34035F; Mon,  2 Mar 2020 19:05:37 +0000 (UTC)
Date: Mon, 2 Mar 2020 19:05:37 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
Message-ID: <20200302190537.GC11244@42.do-not-panic.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_110540_793722_1FE5391A 
X-CRM114-Status: GOOD (  34.81  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 02:40:31PM -0800, Brendan Higgins wrote:
> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > On Mon, Dec 16, 2019 at 02:05:49PM -0800, Brendan Higgins wrote:
> > dispatcher could be configurable to run at an arbirary time after boot.
> > If there are not immediate use cases for that though, then I suppose
> > this is not a requirement for the dispatcher. But since there exists
> > another modular test framework with its own dispatcher and it seems the
> > goal is to merge the work long term, this might preempt the requirement
> > to define how and when we can dispatch tests post boot.
> >
> > And, if we're going to do that, I can suggest that a data structure
> > instead of just a function init call be used to describe tests to be
> > placed into an ELF section. With my linker table work this would be
> > easy, I define section ranges for code describing only executable
> > routines, but it defines linker tables for when a component in the
> > kernel would define a data structure, part of which can be a callback.
> > Such data structure stuffed into an ELF section could allow dynamic
> > configuration of the dipsatching, even post boot.
> 
> The linker table work does sound interesting. Do you have a link?

Sure

https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git/log/?h=20170620-linker-tables-v8

I had dropped this long ago mostly due to the fact that my use case
(removal of dead code) was more long term, and not immediate so the
use case wasn't there yet.

I have been meaning to pick this work up again.

> I was thinking about dynamic dispatching, actually. I thought it would
> be handy to be able to build all tests into a single kernel and then
> run different tests on different invocations.

For built-in code it would be up to it to manage that. The linker table
stuff would just allow a way for you to systematically aggregate
data into an ELF section in a generic way. It does have a built in
light weight sort mechanism, if you opt out of that and say wanted
to do your own order it'd be up to how you program it in on the data
structure and dispatching after that.

> Also, for post boot dynamic dispatching, you should check out Alan's
> debugfs patches:
> 
> https://lore.kernel.org/linux-kselftest/CAFd5g46657gZ36PaP8Pi999hPPgBU2Kz94nrMspS-AzGwdBF+g@mail.gmail.com/T/#m210cadbeee267e5c5a9253d83b7b7ca723d1f871
> 
> They look pretty handy!

Sure.

> > I think this is a good stepping stone forward then, and to allow
> > dynamic configuration of the dispatcher could mean eventual extensions
> > to kunit's init stuff to stuff init calls into a data structure which
> > can then allow configuration of the dispatching. One benefit that the
> > linker table work *may* be able to help here with is that it allows
> > an easy way to create kunit specific ordering, at linker time.
> > There is also an example of addressing / generalizing dynamic / run time
> > changes of ordering, by using the x86 IOMMU initialization as an
> > example case. We don't have an easy way to do this today, but if kunit
> > could benefit from such framework, it'd be another use case for
> > the linker table work. That is, the ability to easilly allow
> > dynamically modifying run time ordering of code through ELF sections.
> >
> > > In addition, by dispatching tests from a single location, we can
> > > guarantee that all KUnit tests run after late_init is complete, which
> > > was a concern during the initial KUnit patchset review (this has not
> > > been a problem in practice, but resolving with certainty is nevertheless
> > > desirable).
> >
> > Indeed, the concern is just a real semantics limitations. With the tests
> > *always* running after all subsystem init stuff, we know we'd have a
> > real full kernel ready.
> 
> Yep.
> 
> > It does beg the question if this means kunit is happy to not be a tool
> > to test pre basic setup stuff (terminology used in init.c, meaning prior
> > to running all init levels). I suspect this is the case.
> 
> Not sure. I still haven't seen any cases where this is necessary, so I
> am not super worried about it. Regardless, I don't think this patchset
> really changes anything in that regard, we are moving from late_init
> to after late_init, so it isn't that big of a change for most use
> cases.
> 
> Please share if you can think of some things that need to be tested in
> early init.

If and when we get to that point we can deal with it then. My instincts
tell me that for early init code we should probably be specially crafted
tests and have they should have their own hand crafted dispatchers.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
