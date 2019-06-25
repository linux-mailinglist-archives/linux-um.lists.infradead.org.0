Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1EC55BE1
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 01:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ3CB09fQnzawf+AZjWfRqlGyxiu+OzCqjYP8V5/ae8=; b=rXk9iAS287l6xx
	LNfan0A7aDyUQAJOwq6Zq6WfI7dxMGqnyKHlLZn5+q6A3TOW0JmFv6NpH2+l2HjyDYE1nnMG+AfUE
	eKr1c+Kg6OriUIgweW7UfIGJkzK/PlDBIZUXOymj17m3gvq9veL1rzzS1VcUo5wlMaRgtH4dbkJtA
	4TwHqSs+okawu3T7Fn9KmIY+4RYwUhL4lQJ4tfES+OSO8tRViMltldPJWXX+PXARk5+e2XGpbYp8B
	bt3yAPXZuenf/Wz6YE16Fl2igU2ZO6O5RmuYSw1vEBvN+lUdflDrQy76QSEn+NKBtWKE4LXm6ttZH
	2WPoFNNKzCE3+R263gYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuSp-0004xk-8P; Tue, 25 Jun 2019 23:02:59 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuSm-0004wU-Nn
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 23:02:58 +0000
Received: by mail-pf1-f196.google.com with SMTP id m30so181255pff.8
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 16:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IAVXlfOigyJbEa5HhE6BwBcpEncScOxFXJXYNv1k45k=;
 b=KeRxvC5HoYhIPRtR58dAxE/2zAEQx9fyX/j77jRhHqIyQ44YA1e3Vmqv7guj7DwV5w
 EzySAIJP0L2W9Npde/p7/hSOQvvq/6JMf7P4apH5SOP09wsejMuxt9+ZPn249Tbhi7BW
 Hu/brz8RdVT+0skkcpQvR9AizZ+K6YbcKtzIjydHWCkE4RnXHm06CO73NnDzB1ri1QMk
 jHzHMvnBVQ5p68QAtMkkw8zt338N4+RMR16unvwdxJDqGzLidGaSo/bTk/ubGAd7Eamk
 0+5I5DwtCcV4wnW89cdxKcfvtwNez0GZOZas6PEXu4F9jluXXEosUN+VEftJKYhaswl8
 KrMQ==
X-Gm-Message-State: APjAAAWm3T7py8D4fTIIkJ9r1Xg/SvyjjXwKAtbhiazOXUaJmD7mKCG+
 JMu9OUsOD/MlF8Xm5o++Tj4=
X-Google-Smtp-Source: APXvYqzZBw/dqZhBTNHNMDfHye5/2eZRaAS1PSupftYRQhWIaCqeSFUapN9xTbqyZVwDxqRVbGqHHQ==
X-Received: by 2002:a17:90a:ac13:: with SMTP id
 o19mr354796pjq.143.1561503775428; 
 Tue, 25 Jun 2019 16:02:55 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id r1sm92074pji.15.2019.06.25.16.02.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 16:02:54 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 64827401EB; Tue, 25 Jun 2019 23:02:53 +0000 (UTC)
Date: Tue, 25 Jun 2019 23:02:53 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190625230253.GQ19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-2-brendanhiggins@google.com>
 <20190620001526.93426218BE@mail.kernel.org>
 <CAFd5g46Jhxsz6_VXHEVYvTeDRwwzgKpr=aUWLL5b3S4kUukb8g@mail.gmail.com>
 <20190625214427.GN19023@42.do-not-panic.com>
 <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g47OABqN127cPKqoCOA_Wr9w=LFh_0XkF7LXu2iY9sFkSw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160256_789642_7D0AB27F 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:14:45PM -0700, Brendan Higgins wrote:
> On Tue, Jun 25, 2019 at 2:44 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > Since its a new architecture and since you seem to imply most tests
> > don't require locking or even IRQs disabled, I think its worth to
> > consider the impact of adding such extreme locking requirements for
> > an initial ramp up.
> 
> Fair enough, I can see the point of not wanting to use irq disabled
> until we get someone complaining about it, but I think making it
> thread safe is reasonable. It means there is one less thing to confuse
> a KUnit user and the only penalty paid is some very minor performance.

One reason I'm really excited about kunit is speed... so by all means I
think we're at a good point to analyze performance optimizationsm if
they do make sense.

While on the topic of parallization, what about support for running
different test cases in parallel? Or at the very least different kunit
modules in parallel.  Few questions come up based on this prospect:

  * Why not support parallelism from the start?
  * Are you opposed to eventually having this added? For instance, there is
    enough code on lib/test_kmod.c for batching tons of kthreads each
    one running its own thing for testing purposes which could be used
    as template.
  * If we eventually *did* support it:
    - Would logs be skewed?
    - Could we have a way to query: give me log for only kunit module
      named "foo"?

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
