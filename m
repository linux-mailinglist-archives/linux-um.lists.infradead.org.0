Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B192154C10
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 20:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXjW4y4i4U3erigqalvscSzvUpjsXSvre7cNWRx5FZE=; b=kfXf1L3VP28soX
	4/6aBPlaImuZ6bH6uWeJ4SE6lUCmb6M7LY9YLxJW3ru7Tl1A4HwtlIm7/bT+MDobz/Iigcd/Mf57K
	VWYJ44CF+l3ZC9s9iuHBPCfWAr+zl2kz1i8ZxB7YAB4JUV368YoMab6jaRO4sIVJMh6UspQXm2M/3
	0Fq4zV2uKK0GgMiAqQA1K9hmWLoQdRRxf6IlTNpWv7TnaFHzAxaxMCxTO/tkRvw5Bg+ESSrPoJgKa
	Cc1Qvlz8+nqHs7uqoN23Ds9jtvvX5exOuAIDtz0ji+z8zuc+kfq01CdDEMCIdHYplKsqFIHNGCros
	XEQg0wP8eE68tOGh3FMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmk2-0002HS-OX; Thu, 06 Feb 2020 19:23:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmjz-0002G8-Tx
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 19:23:09 +0000
Received: by mail-wm1-x32a.google.com with SMTP id t23so1243091wmi.1
 for <linux-um@lists.infradead.org>; Thu, 06 Feb 2020 11:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OFxWhBE8bCLkAqt3LltRZI+Cx2EWphixiKp7DcpUO/0=;
 b=EPfii1aYTJIzjpQ7Ag+p8JdkObOGGXjn000PKaanUZFEK/9ZTopIuUpSYjMABv6D2t
 DYoVeBOVMd6JNFsPnKwXEGAm41Ux1DNvqRD5yWArwSwaiHcT150ahPWydxSH46gFP4wG
 W/gW1e0FBvf73ONT40/pARQLAAmS0vil8HaJTQ41ZyuW+5ezSWvNz1xwRRtrwrGYM/nQ
 bhy684fiJSYAXVJFOHd6+vp3zRNeJSXavFxPfhRVJdGKPVaUDEZE3GijvNFikGu6MG3f
 wkbqINqNfPCOqB/aQSajogPme/1aZ6WNuUaH13Vjeva8tdunxbscU3y84RYKlOO+GT5D
 7GOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OFxWhBE8bCLkAqt3LltRZI+Cx2EWphixiKp7DcpUO/0=;
 b=soBWJ8HivYLgogyCE4FayPhuujdhQnMWlq3R0Mzra5q8nYxwNyqJ8b1LunoYwkRXeE
 IvsVTRZ7gFryT0qLTqbuEFLJqQFSCAtmez1+Csnkq54+SqZsRdyucvfUya5eJpULoqkX
 twK9vCGZLpoZBmswkGOxp/DtCkRq13WK2GgN6yUO5HIPo54m1ymUCpdcOlwPFKE2zEi9
 seMMjSD3nziRIaNetxaVCnFl4bkz7DEezhHbcGgT8g3xTlQddVyMNenoSZwjLtHapwBA
 hjVSghN87KT04pdxx4Nm1h50g7ER1wqC87hCEO1fIZOLuxPdAOMVk3ModLpXbGwx7ZVc
 y0qw==
X-Gm-Message-State: APjAAAXBwGK3Lax6Px46/3ikysQy6zop/Jlw7RuV8WUwrbDO9QlJp2rB
 cZJWdUJoG/Xa3lqvYW9TXkynk9T0Ym6M7/NwRe5q4A==
X-Google-Smtp-Source: APXvYqwiaUUJbmWMm5tH32QPYYnFh9/ZzKme5n+D6QrxLS3rAho5DSsyxWHFSjxijisjTB59RnopY5Mkmq0zskdlFCc=
X-Received: by 2002:a05:600c:2942:: with SMTP id
 n2mr5993040wmd.87.1581016983392; 
 Thu, 06 Feb 2020 11:23:03 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-3-brendanhiggins@google.com>
 <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
 <CAFd5g46irbQ7j_DOY+bQPoo1TWjwvu6n9iyQ7abe9pfqydeMYg@mail.gmail.com>
 <1da1538d-2e4c-0ed0-5fae-6f9033230c46@gmail.com>
 <CAFd5g45=m9Rvqf__5FW6HXjSytHJwX=mue-BO+TZMg0JP-BGmw@mail.gmail.com>
In-Reply-To: <CAFd5g45=m9Rvqf__5FW6HXjSytHJwX=mue-BO+TZMg0JP-BGmw@mail.gmail.com>
From: David Gow <davidgow@google.com>
Date: Thu, 6 Feb 2020 11:22:51 -0800
Message-ID: <CABVgOSkiLi0UNijH1xTSvmsJEE5+ocCZ7nkzmKzxDLzzfqBSzQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_112307_968636_E02573C1 
X-CRM114-Status: GOOD (  38.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Logan Gunthorpe <logang@deltatee.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Alan Maguire <alan.maguire@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 5:17 PM 'Brendan Higgins' via KUnit Development
<kunit-dev@googlegroups.com> wrote:
>
> On Tue, Feb 4, 2020 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > On 2/4/20 4:30 PM, Brendan Higgins wrote:
> > > On Tue, Feb 4, 2020 at 1:59 PM Frank Rowand <frowand.list@gmail.com> wrote:
> > >>
> > >> Can you please add a section to the KUnit documentation that lists things
> > >> like the expectations, requirements, limitations, etc for a test case that
> > >> is run by KUnit?  Some examples that pop to mind from recent discussions
> > >> and my own experiences:
> > >>
> > >>   - Each test case is invoked after late_init is complete.
> > >>       + Exception: the possible value of being able to run a unit test
> > >>         at a specific runlevel has been expressed.  If an actual unit
> > >>         test can be shown to require running earlier, this restriction
> > >>         will be re-visited.
> > >>
> > >>   - Each test case must be idempotent.  Each test case may be called
> > >>     multiple times, and must generate the same result each time it
> > >>     is called.
> > >>       + Exception 1: a test case can be declared to not be idempotent
> > >>         [[ mechanism TBD ]], in which case KUnit will not call the
> > >>         test case a second time without the kernel rebooting.
> > >>       + Exception 2: hardware may not be deterministic, so a test that
> > >>         always passes or fails when run under UML may not always to
> > >>         so on real hardware.  <--- sentence copied from
> > >>         Documentation/dev-tools/kunit/usage.rst
> > >>           [[ This item and 1st exception do not exist yet, but will exist
> > >>           in some form if the proposed proc filesystem interface is
> > >>           added. ]]
> > >>
> > >>   - KUnit provides a helpful wrapper to simplify building a UML kernel
> > >>     containing the KUnit test cases, booting the UML kernel, and
> > >>     formatting the output from the test cases.  This wrapper MUST NOT
> > >>     be required to run the test cases or to determine a test result.
> > >>     The formatting may provide additional analysis and improve
> > >>     readability of a test result.
> > >>
> > >>   - .... There is more that belongs here, but I'm getting side tracked
> > >>     here, when I'm trying to instead convert devicetree unittests to
> > >>     KUnit and want to get back to that.
> > >
> > > Sure, I think that's a great start! Thanks for that. I hope you don't
> > > mind if I copy and paste some of it.
> >
> > Please do.  And no need to credit me.
> >
> >
> > > It kind of sounds like you are talking about more of a requirements
> > > doc than the design doc I was imagining in my reply to you on the
> > > cover letter, which is fine. The documentation is primarily for people
> > > other than me, so whatever you and others think is useful, I will do.
> > >
> >
> > I wasn't really sure what to label it as.  My inspiration was based
> > a little bit on reading through the Linux 5.5 KUnit source and
> > documentation, and trying to understand the expectations of the
> > KUnit framework and what the test cases have to either obey or
> > can expect.
> >
> > I think there is a lot of history that you know, but is only visible
> > to test implementors if they read through the past couple of years
> > email threads.
>
> Yeah, that's no good. We need to provide a better experience than
> that. David has gotten deeply involved relatively recently: I suspect
> that he might have some good insight on this.
>
> David, you mentioned offline that there are some philosophical changes
> in how we think about KUnit that has happened that you feel have never
> quite been captured in the docs. Do you think this is part of what
> Frank has pointed out here? If not, do you have any thoughts about
> what we should call this documentation section?
>
> Shuah's first KUnit PR seemed to imply that KUnit was primarily for
> UML, or only fully supported under UML. So I think I might be the odd
> one out thinking that that has changed and the documentation properly
> conveys that.

Yeah: I think the documentation could do with some improvements on
these fronts: there are a few places which imply that KUnit requires
UML, which is definitely not the case. We still want to encourage
people to try UML: it's usually the quickest way of running tests, but
KUnit itself should remain architecture-independent, as should as many
tests as possible.

I think there are probably (at least) two different things that need
doing to make these sorts of miscommunications less likely. The bulk
of the documentation needs to stop referring to KUnit as something
built upon or using UML (while still making it clear that some of our
tooling defaults to or requires UML at the moment). This shows up in a
lot of the "What is KUnit/Why use KUnit" sections in both the kernel
docs and the KUnit website.

Secondly, we need to document the test environment (possibly alongside
some test style best practises, possibly separately). Given that work
like the debugfs stuff and how to support tests which need __init data
or need to only run once is still ongoing, I'm not sure if we can
definitively state what the solutions there will be yet, but noting
that tests should not depend on a specific architecture like UML
(unless they're testing architecture-specific code in a way that can't
reasonably be made architecture independent) is worth doing sooner
rather than later.

I'll see if I can put a few doc patches together to update/fix at
least some of the most egregious examples.

Cheers,
-- David

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
