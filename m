Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7985131BA3
	for <lists+linux-um@lfdr.de>; Mon,  6 Jan 2020 23:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxQBUqlD+/k8/HG3ttYfKAACJq1VKNwL7Ndx30LvbL8=; b=oe45hJX+KeqwCP
	gS+XP5/hcAkQpmf6Dj5nOo0zxO02Jt5yytFrxRjtM8e4rHqMLUVjk8lFYmc7X+O3jzBFhX+JKeiXi
	DjqbacUk7tWrrPEWjTTDXe/1IAXYTx/yE0BN3O62PbLeCBblEoTT2rEwY1Wh6zcCDqhNoDTvfXCdt
	6ktoKnr90C38JqhZBG7Yjln7XrP0pedULlIwQh94wduhfySn8esnr+7W74q1N0QY6eW74w9x1H9FQ
	l92F0qCPOphpDkn1Pr8POM0qLxR3g0iBHf+BUlFRBu55owGA9bd6ADHc3ne5P320FqQjhjaPbFeMK
	wMoyub56gSscZ/vKdajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iob2z-0008P3-AY; Mon, 06 Jan 2020 22:40:29 +0000
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iob2w-0008OA-3k
 for linux-um@lists.infradead.org; Mon, 06 Jan 2020 22:40:27 +0000
Received: by mail-pj1-f66.google.com with SMTP id m13so8354700pjb.2
 for <linux-um@lists.infradead.org>; Mon, 06 Jan 2020 14:40:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J3SHa4E3cS4gmRhRrRRBbMGMmQ7Swg+W9fTvK+8fgbo=;
 b=CjHix+Dbgd3hIGQGMDUJvwx8u59Mg0SRfcowYtKuARNuTut2BlCyJD4FBTPxYc1TEc
 BjtRor1cRZJN4vp3NC5i3GJHbyZ119WUyGPv8yjt/L1xKcTY3szuxpdgil3gH2o6JLVz
 W5uLvKfp12AE3KEtTEAkp71MhDbe0yRDw7e2nMqNKbjJ5SVJTQ5bjp9mH4iFYA0RZ3wm
 /nkBDkGndeWP7GDvJDcvdBxMd9K1dZTGP/22uhqMz56wwZD0O4QrPI2dd5Q6QbldxKUF
 DzxSsiksl19WKueqaOiQhZbvo8dGC3qIYmc5YxjMC5Pf1nWv3oRiBwotRaTiniyelf9n
 8ORg==
X-Gm-Message-State: APjAAAVzvcb6OpT5rnyDRBsem5S8mI6qLglSvRozcAiwcqmIMRBUhyLd
 liZ9Bw5AFnXWIVOhlH0UyV8=
X-Google-Smtp-Source: APXvYqzL/Or94L+UYrmZszgXQkyK1iniMt70cGilBDndaFa7eg0lzxl/eodRL6mwFRsCXTaDCoazNg==
X-Received: by 2002:a17:902:8f85:: with SMTP id
 z5mr108553143plo.43.1578350424536; 
 Mon, 06 Jan 2020 14:40:24 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id s24sm81687763pfd.161.2020.01.06.14.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:40:23 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9822040321; Mon,  6 Jan 2020 22:40:22 +0000 (UTC)
Date: Mon, 6 Jan 2020 22:40:22 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
Message-ID: <20200106224022.GX11244@42.do-not-panic.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_144026_157264_5A4085B7 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org,
 keescook@chromium.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 sboyd@kernel.org, richard@nod.at, jdike@addtoit.com, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, linux-um@lists.infradead.org,
 logang@deltatee.com, kunit-dev@googlegroups.com, davidgow@google.com,
 skhan@linuxfoundation.org, akpm@linux-foundation.org, yzaikin@google.com,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:05:49PM -0800, Brendan Higgins wrote:
> ## TL;DR
> 
> This patchset adds a centralized executor to dispatch tests rather than
> relying on late_initcall to schedule each test suite separately along
> with a couple of new features that depend on it.
> 
> ## What am I trying to do?
> 
> Conceptually, I am trying to provide a mechanism by which test suites
> can be grouped together so that they can be reasoned about collectively.
> The last two patches in this series add features which depend on this:
> 
> RFC 5/6 Prints out a test plan right before KUnit tests are run[1]; this
>         is valuable because it makes it possible for a test harness to
>         detect whether the number of tests run matches the number of
>         tests expected to be run, ensuring that no tests silently
>         failed.
> 
> RFC 6/6 Add a new kernel command-line option which allows the user to
>         specify that the kernel poweroff, halt, or reboot after
>         completing all KUnit tests; this is very handy for running KUnit
>         tests on UML or a VM so that the UML/VM process exits cleanly
>         immediately after running all tests without needing a special
>         initramfs.

The approach seems sensible to me given that it separates from a
semantics perspective kernel subsystem init work from *testing*, and
so we are sure we'd run the *test* stuff *after* all subsystem init
stuff.

Dispatching, however is still immediate, and with a bit of work, this
dispatcher could be configurable to run at an arbirary time after boot.
If there are not immediate use cases for that though, then I suppose
this is not a requirement for the dispatcher. But since there exists
another modular test framework with its own dispatcher and it seems the
goal is to merge the work long term, this might preempt the requirement
to define how and when we can dispatch tests post boot.

And, if we're going to do that, I can suggest that a data structure
instead of just a function init call be used to describe tests to be
placed into an ELF section. With my linker table work this would be
easy, I define section ranges for code describing only executable
routines, but it defines linker tables for when a component in the
kernel would define a data structure, part of which can be a callback.
Such data structure stuffed into an ELF section could allow dynamic
configuration of the dipsatching, even post boot.

I think this is a good stepping stone forward then, and to allow
dynamic configuration of the dispatcher could mean eventual extensions
to kunit's init stuff to stuff init calls into a data structure which
can then allow configuration of the dispatching. One benefit that the
linker table work *may* be able to help here with is that it allows
an easy way to create kunit specific ordering, at linker time.
There is also an example of addressing / generalizing dynamic / run time
changes of ordering, by using the x86 IOMMU initialization as an
example case. We don't have an easy way to do this today, but if kunit
could benefit from such framework, it'd be another use case for
the linker table work. That is, the ability to easilly allow
dynamically modifying run time ordering of code through ELF sections.

> In addition, by dispatching tests from a single location, we can
> guarantee that all KUnit tests run after late_init is complete, which
> was a concern during the initial KUnit patchset review (this has not
> been a problem in practice, but resolving with certainty is nevertheless
> desirable).

Indeed, the concern is just a real semantics limitations. With the tests
*always* running after all subsystem init stuff, we know we'd have a
real full kernel ready.

It does beg the question if this means kunit is happy to not be a tool
to test pre basic setup stuff (terminology used in init.c, meaning prior
to running all init levels). I suspect this is the case.

> Other use cases for this exist, but the above features should provide an
> idea of the value that this could provide.
> 
> ## What work remains to be done?
> 
> These patches were based on patches in our non-upstream branch[2], so we
> have a pretty good idea that they are useable as presented;
> nevertheless, some of the changes done in this patchset could
> *definitely* use some review by subsystem experts (linker scripts, init,
> etc), and will likely change a lot after getting feedback.
> 
> The biggest thing that I know will require additional attention is
> integrating this patchset with the KUnit module support patchset[3]. I
> have not even attempted to build these patches on top of the module
> support patches as I would like to get people's initial thoughts first
> (especially Alan's :-) ). I think that making these patches work with
> module support should be fairly straight forward, nevertheless.

Modules just have their own sections too. That's all. So it'd be a
matter of extending the linker script for modules too. But a module's
init is different than the core kernel's for vmlinux.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
