Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E74595C7
	for <lists+linux-um@lfdr.de>; Fri, 28 Jun 2019 10:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBxYeQ7EBX5OrdN1EVKDh4EBNoDMgNMCyoKAuEj/sS4=; b=cazSwdsy4maIRY
	UZB/ZagtrgJrshdKNBzxMsWePsyvdcBSXx7BfzTLPaQIfnmzvXwfPMN9b+KhXUPTTD7WVo5fWSUZc
	u3FOtp0GtA57rUdR1h999PcdAnujj5v/eIpznkwr5ItuA7iZJmzn3OGXLpjMx7Apd4kcdU62yBcSh
	A9R0l7Z4nJrXgjRP5b2FugIRLdBRaHjinZZCC8Edf9mQzxd8yYi33XTUnTJcJUfv/aH5n8sV9f9Zq
	uirq/wq7+p2SJBdGe+9kKa01ZMMz/9C7kKGC+KKLr1LKiTIqW4NChos2wz5/zjgKQI8s+40O6PMF0
	PAJjC+S4k4vhFCj25JTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglxW-0007zS-HX; Fri, 28 Jun 2019 08:10:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglxE-0006bO-Ri
 for linux-um@lists.infradead.org; Fri, 28 Jun 2019 08:09:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id g15so341921pgi.4
 for <linux-um@lists.infradead.org>; Fri, 28 Jun 2019 01:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yibP/Iv6ps2Lbs4MfioQUnaQ1X0MZgCBiZaerRAAUs0=;
 b=e5kLlPi61UOlg3aWbm3hyHJ6zEvPrbJg4WaMTgr5J7N6beCFHbvMVMWvXm34zFIMK6
 sy+TCthgNvl6QKdGAvF199JWgLSzY0riL7Qema9Z8eQSMrEVD7QmDgObmKA9VnGm6jQk
 Qk9Vw4tG1NS/Rsaor+MwqJJtzbW9NLCCg64qdKIwo/lqdLjqjD0HoEJZR2UkGwIQNQU7
 B8LVi8olEdiEG1gQQPAGB3QH7tntl/R65/A9R5rItsLpolqg+IRJEp1Du/WH5LqoOfL3
 I3l8I0kuDspWHSG/V5vI+q5UJh9nND3VlxUlk753w0GhWsuvm1nMSIm2VqKl1wq8mbGo
 9uhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yibP/Iv6ps2Lbs4MfioQUnaQ1X0MZgCBiZaerRAAUs0=;
 b=l8n56Apj+/1euCGz1iWg5lxTzkgLgvGJuLNpFvGJw+z48q4IFPpNu6aoHwxUmwy4Rd
 2+HGIzlrQTVU/GLAUcLDoJkw4QkjZwa75Ltdr4PbbXPDeddtQ7OezDqN5SfqjAzOOn+L
 yur4is21LLcJg5+X3M2Q3WRTqHGFdEj1iBVqY5v3bdhhAdQHOrZHndQ4A8MJPn+C+Lhy
 Tb6gKKrjNhWPRXkzkUpEI6HXGfzIzMiKQ0p8nhDtYF2YSz8VIgBoQtcCOcwUT2doUPiR
 tpAyqj9fIFgFk3HHj6dh8/rKWpnVRWtXzDNhCFK93SukEL3t9DFM8hYnJA8gudqmzjYk
 dstg==
X-Gm-Message-State: APjAAAWkA4A1FWaRvC3tgZn5ToHXrRFVh5dTn3z3GJNAve9l/lTXmYuv
 yFS4aOxzwUGmW1NM8PxVvYjHnTM0L3RTyzYWxbM1Qg==
X-Google-Smtp-Source: APXvYqwa5Gi43WdeQYYulM3cScojWTt0/MI+kDN9NbNdt1CeW4jxKTFR3Algm98Jmh+XvwAADJqdAi9a1c1dDVA05Ew=
X-Received: by 2002:a17:90a:be0d:: with SMTP id
 a13mr11033056pjs.84.1561709395368; 
 Fri, 28 Jun 2019 01:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190626034100.B238520883@mail.kernel.org>
 <CAFd5g46zHAupdUh3wDuqPJti2M+_=oje_5weFe7AVLQfkDDM6A@mail.gmail.com>
 <20190627181636.5EA752064A@mail.kernel.org>
In-Reply-To: <20190627181636.5EA752064A@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 28 Jun 2019 01:09:44 -0700
Message-ID: <CAFd5g44V3ZLNazUOgOo2sFR3zzbNnTkH4e9uxGX4iHi7G73Mzw@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_010957_138945_6F385AC4 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
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

On Thu, Jun 27, 2019 at 11:16 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-06-26 16:00:40)
> > On Tue, Jun 25, 2019 at 8:41 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > > scenario like below, but where it is a problem. There could be three
> > > CPUs, or even one CPU and three threads if you want to describe the
> > > extra thread scenario.
> > >
> > > Here's my scenario where it isn't needed:
> > >
> > >     CPU0                                      CPU1
> > >     ----                                      ----
> > >     kunit_run_test(&test)
> > >                                               test_case_func()
> > >                                                 ....
> > >                                               [mock hardirq]
> > >                                                 kunit_set_success(&test)
> > >                                               [hardirq ends]
> > >                                                 ...
> > >                                                 complete(&test_done)
> > >       wait_for_completion(&test_done)
> > >       kunit_get_success(&test)
> > >
> > > We don't need to care about having locking here because success or
> > > failure only happens in one place and it's synchronized with the
> > > completion.
> >
> > Here is the scenario I am concerned about:
> >
> > CPU0                      CPU1                       CPU2
> > ----                      ----                       ----
> > kunit_run_test(&test)
> >                           test_case_func()
> >                             ....
> >                             schedule_work(foo_func)
> >                           [mock hardirq]             foo_func()
> >                             ...                        ...
> >                             kunit_set_success(false)   kunit_set_success(false)
> >                           [hardirq ends]               ...
> >                             ...
> >                             complete(&test_done)
> >   wait_for_completion(...)
> >   kunit_get_success(&test)
> >
> > In my scenario, since both CPU1 and CPU2 update the success status of
> > the test simultaneously, even though they are setting it to the same
> > value. If my understanding is correct, this could result in a
> > write-tear on some architectures in some circumstances. I suppose we
> > could just make it an atomic boolean, but I figured locking is also
> > fine, and generally preferred.
>
> This is what we have WRITE_ONCE() and READ_ONCE() for. Maybe you could
> just use that in the getter and setters and remove the lock if it isn't
> used for anything else.
>
> It may also be a good idea to have a kunit_fail_test() API that fails
> the test passed in with a WRITE_ONCE(false). Otherwise, the test is
> assumed successful and it isn't even possible for a test to change the
> state from failure to success due to a logical error because the API
> isn't available. Then we don't really need to have a generic
> kunit_set_success() function at all. We could have a kunit_test_failed()
> function too that replaces the kunit_get_success() function. That would
> read better in an if condition.

You know what, I think you are right.

Sorry, for not realizing this earlier, I think you mentioned something
along these lines a long time ago.

Thanks for your patience!

> >
> > Also, to be clear, I am onboard with dropping then IRQ stuff for now.
> > I am fine moving to a mutex for the time being.
> >
>
> Ok.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
