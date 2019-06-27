Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1362A589B2
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 20:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yx5sk4e5TlfJ6JMxz8b5zsIFmvlpXaKgFmSKsUU2GWc=; b=Oaspo5GkDt0oXP
	VbjGwXxRu8nviRkUkbLz5yPXA7GfemcVmkRkyUwaVYwPMEhd3nfa7oZQhWS1bfL1Saxo4PxvSL+n+
	y8UBBsBat+W4L5eS1Dcy9fjfeqxAifo1cSP8TsjxgS9qosAAGD5fL1rt27C4C9+IKvYe6raPztL00
	nB5AX7RgLOw46ybqPtPN/nF/6csPlxHbjcDhLL9Yr44/RmenywHwoPfpQ6Kd3+sPxyeZtxcZgJTv8
	79YB8APs/KnOjk+zzZ7Esg5PHMADBDMtX4U92mU8SsJpiYK9ZnmL9hgYvMV8g4T3wHb2LI71iU7eA
	1TnW4jnKXi1Obevm09Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYxW-00041f-Cf; Thu, 27 Jun 2019 18:17:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYwn-0003fi-Lk
 for linux-um@lists.infradead.org; Thu, 27 Jun 2019 18:16:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EA752064A;
 Thu, 27 Jun 2019 18:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561659396;
 bh=2oWUiLUFI+CqOolaOKVa4jJ21rR9UR/fuLhE4nLYjdw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=zM1PuCQOlI4msEkFixz730kc8/zFbvwJnRkqkjMyx+3IZ/8lQrJkX5bjK8+tcjTpD
 9YTsqw4mLY9MvEtPAy8WslYPIgMqfSsLuNDFSuTYyeTtiNsbbEN2c2e7JVMq1S+AoJ
 JJirWvQWTUXBy4OsdUUrOSg+eULRykDPesnCIHuI=
MIME-Version: 1.0
In-Reply-To: <CAFd5g46zHAupdUh3wDuqPJti2M+_=oje_5weFe7AVLQfkDDM6A@mail.gmail.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190626034100.B238520883@mail.kernel.org>
 <CAFd5g46zHAupdUh3wDuqPJti2M+_=oje_5weFe7AVLQfkDDM6A@mail.gmail.com>
To: Brendan Higgins <brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 11:16:35 -0700
Message-Id: <20190627181636.5EA752064A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_111638_169758_22795095 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

Quoting Brendan Higgins (2019-06-26 16:00:40)
> On Tue, Jun 25, 2019 at 8:41 PM Stephen Boyd <sboyd@kernel.org> wrote:
> 
> > scenario like below, but where it is a problem. There could be three
> > CPUs, or even one CPU and three threads if you want to describe the
> > extra thread scenario.
> >
> > Here's my scenario where it isn't needed:
> >
> >     CPU0                                      CPU1
> >     ----                                      ----
> >     kunit_run_test(&test)
> >                                               test_case_func()
> >                                                 ....
> >                                               [mock hardirq]
> >                                                 kunit_set_success(&test)
> >                                               [hardirq ends]
> >                                                 ...
> >                                                 complete(&test_done)
> >       wait_for_completion(&test_done)
> >       kunit_get_success(&test)
> >
> > We don't need to care about having locking here because success or
> > failure only happens in one place and it's synchronized with the
> > completion.
> 
> Here is the scenario I am concerned about:
> 
> CPU0                      CPU1                       CPU2
> ----                      ----                       ----
> kunit_run_test(&test)
>                           test_case_func()
>                             ....
>                             schedule_work(foo_func)
>                           [mock hardirq]             foo_func()
>                             ...                        ...
>                             kunit_set_success(false)   kunit_set_success(false)
>                           [hardirq ends]               ...
>                             ...
>                             complete(&test_done)
>   wait_for_completion(...)
>   kunit_get_success(&test)
> 
> In my scenario, since both CPU1 and CPU2 update the success status of
> the test simultaneously, even though they are setting it to the same
> value. If my understanding is correct, this could result in a
> write-tear on some architectures in some circumstances. I suppose we
> could just make it an atomic boolean, but I figured locking is also
> fine, and generally preferred.

This is what we have WRITE_ONCE() and READ_ONCE() for. Maybe you could
just use that in the getter and setters and remove the lock if it isn't
used for anything else.

It may also be a good idea to have a kunit_fail_test() API that fails
the test passed in with a WRITE_ONCE(false). Otherwise, the test is
assumed successful and it isn't even possible for a test to change the
state from failure to success due to a logical error because the API
isn't available. Then we don't really need to have a generic
kunit_set_success() function at all. We could have a kunit_test_failed()
function too that replaces the kunit_get_success() function. That would
read better in an if condition.

> 
> Also, to be clear, I am onboard with dropping then IRQ stuff for now.
> I am fine moving to a mutex for the time being.
> 

Ok.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
