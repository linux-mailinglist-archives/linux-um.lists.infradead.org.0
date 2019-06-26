Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA8F57419
	for <lists+linux-um@lfdr.de>; Thu, 27 Jun 2019 00:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVQwVtVyCurHNGcMRBu3rNvkhIiBYG6I9rlaW/Qu1Pk=; b=dq+yLQCf5ZtnEq
	BSYt0QmmEh2BdPqe63B/K3MFgE+hpw9jQPVkHnwps71pUb4HREFR/vMoqghF5ygMPbqm2Zpi4vf04
	ZjBlCGrmUfPqKTa9ALVWmHn+Ad9peCeWOSm4Ox1fjfMg/YsE3bA62esb1x8vbkzeRuBQO0gHwYF+V
	cNZvpuKRcaITLfSWSiTdvGaveKLC4taXzs1eJ7mTAmwmaCizr0arowHp2WVtJWi3dplfmV+RSC02c
	CPMcvDoyaRLKnMg+YH8c5oW9TgUQptz1EUp3/5SKmwraxwI5EfPgGJFG3cibrsJpOJei89ZBSo/hX
	pf4CtqF7Q/YqMu0UOtog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgG1E-0001If-6j; Wed, 26 Jun 2019 22:03:56 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgG1B-0001I0-OL
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 22:03:55 +0000
Received: by mail-pf1-f194.google.com with SMTP id r7so135427pfl.3
 for <linux-um@lists.infradead.org>; Wed, 26 Jun 2019 15:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2/PNSJ1/n2Sf5XjBVfcC1JCMKtBWU3f+geLh+mw2r8k=;
 b=PAbhmpI3G3jyLQkNvCpnS6Bk3wa6pNQHcfxLcAbFAkf4HIA+hG78M45QXYb8dWpEWZ
 jULyfnDJJVv0Z+tSM7VsOTTLXlVF9taqBvCq5xTwBV8zMTNL+AhLrePN5G3YPQ/cL5+u
 JyzpYKhH+gAIgyTLcmaXHp2NHkqCUHhl79tNu9Hy5YfrArgneBVe9H+lPCSJZuXltbdu
 PUsfphLtHy84Kgv07D0Erj8B/ZbUQgmr/mg3Wzyntp+Jq87iFPcs3V4f6I0TiWFA4vKx
 JD9esYiLFhyy1/qpSP4xsrxZ13j3waeGuKNcwmCBviUQEL9PMVxxJZns5tXGr3IuImcf
 yOOg==
X-Gm-Message-State: APjAAAWN+Crlk8GJNmY8yXtC50mlxSL4T+jRr9Sjf5VOg+5kMKoqAF+Z
 4UQIiAwAaEk/7ZAOwxkCIgc=
X-Google-Smtp-Source: APXvYqw88JPlk1NMugJQCJe5YC3I+KLyTyrQ1NxeCgEmtlZtT8YwpdCjtZvQ3Q7z9dJOH+5nmM/tbA==
X-Received: by 2002:a63:6cc3:: with SMTP id h186mr215927pgc.292.1561586632642; 
 Wed, 26 Jun 2019 15:03:52 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id j23sm110168pgb.63.2019.06.26.15.03.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 15:03:51 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5B297401D0; Wed, 26 Jun 2019 22:03:50 +0000 (UTC)
Date: Wed, 26 Jun 2019 22:03:50 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 13/18] kunit: tool: add Python wrappers for running
 KUnit tests
Message-ID: <20190626220350.GA19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-14-brendanhiggins@google.com>
 <20190626000150.GT19023@42.do-not-panic.com>
 <CAFd5g44kkepB2hZcpYL-NB5ZHYE5tP7W-0yducGCX7Khd9gd9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g44kkepB2hZcpYL-NB5ZHYE5tP7W-0yducGCX7Khd9gd9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_150353_789609_BE277279 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
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

On Wed, Jun 26, 2019 at 01:02:55AM -0700, Brendan Higgins wrote:
> On Tue, Jun 25, 2019 at 5:01 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >
> > On Mon, Jun 17, 2019 at 01:26:08AM -0700, Brendan Higgins wrote:
> > >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
> > >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-crash.log
> > >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-failure.log
> > >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-no_tests_run.log
> > >  create mode 100644 tools/testing/kunit/test_data/test_output_isolated_correctly.log
> > >  create mode 100644 tools/testing/kunit/test_data/test_read_from_file.kconfig
> >
> > Why are these being added upstream? The commit log does not explain
> > this.
> 
> Oh sorry, those are for testing purposes. I thought that was clear
> from being in the test_data directory. I will reference it in the
> commit log in the next revision.

Still, I don't get it. They seem to be results from a prior run. Why do
we need them for testing purposes?

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
