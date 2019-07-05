Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9377460C1F
	for <lists+linux-um@lfdr.de>; Fri,  5 Jul 2019 22:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd3Dmcbc7jbEwTYBF3YK/pond/yw++pq6ScvmuklhiA=; b=n3ccovpXkluZAn
	WZn94+wPvcIlbX5R/Rb6/AkBhlb1FsrVRsZEjLB+F6AZCJ73u0oWhh3oYjXdXfFkH1Phu+bWrlYDT
	CPs/km+SvWM0BGAETKuuD2tPq7rLBPrW5ETEe+bmNnU2GXnC0XorW7RRvm/DUVV+f+s1rDt2zIq63
	mIMHz2Rc6b1l7lZmxFMsCocgoxxn9TXAL0uuY3/DcpoOQW55m46kAMQIeMDNvngcpvFtf/bVjOSC6
	Ne5v41ZaHclTXwJu/H9N+duwQginPmWKLyEpq8qBiNs4lLTtEIVvtUKu9ceSBUQ8UDb/ViuiZuy6S
	06I7GzbskC2u2+4mJpVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUby-0007sS-TB; Fri, 05 Jul 2019 20:15:14 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUbv-0007rN-9b
 for linux-um@lists.infradead.org; Fri, 05 Jul 2019 20:15:12 +0000
Received: by mail-pl1-f195.google.com with SMTP id t14so1971087plr.11
 for <linux-um@lists.infradead.org>; Fri, 05 Jul 2019 13:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dg5Yvvp7NUrUvKeik0ledTLe2yGcHUO+ZrIPV2huI9Y=;
 b=efyVmsvAorUAx+eoPnuCmS8uMUv8fG+Sf1jRmNcgavtwwtZI1qXpvrCgUdzl2EC9m8
 VTslX59blLsiad4xID6UXjpFrZqdAHLLyb2egxKFYABDVx27CRAMudweZDv9n8HhRCza
 8dCfjOTIsHwgL9uXhFeFl0CpcpaLrzC8wiq4nQpWFMEh3UVz4NnXpg5ff3kDfivdu50D
 rslEsKl/JzrPWnIWjm5rAggQQo1ys4wXp4DgPU5zHWUaCzJB67t6aXMJWIae42BdjMlC
 xmNIPWyWaCPQZW2aUIVginAaV1lhTASVpL6Jb/h8dLWEMU3wZpEBcJMOqToigqVgUw+5
 KkZg==
X-Gm-Message-State: APjAAAVabQsUm+veQYFKbiBmuPSAj5nPG3h4UceqXgxBnIPN3saQMBv6
 2mWEmvRGt43cti8AGUjEc5s=
X-Google-Smtp-Source: APXvYqzH7c1mrZ0zttAPULzlg8jVTTmmhx/hVeHeJnG9PaMmHS0LdOn+bNDKbdY4NLyOIl1o3kOldA==
X-Received: by 2002:a17:902:2865:: with SMTP id
 e92mr7552625plb.264.1562357707679; 
 Fri, 05 Jul 2019 13:15:07 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 10sm17424980pfb.30.2019.07.05.13.15.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:15:06 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id C552E40190; Fri,  5 Jul 2019 20:15:05 +0000 (UTC)
Date: Fri, 5 Jul 2019 20:15:05 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v6 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190705201505.GA19023@42.do-not-panic.com>
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-2-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704003615.204860-2-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131511_337628_2FD95CD9 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:35:58PM -0700, Brendan Higgins wrote:
> Add core facilities for defining unit tests; this provides a common way
> to define test cases, functions that execute code which is under test
> and determine whether the code under test behaves as expected; this also
> provides a way to group together related test cases in test suites (here
> we call them test_modules).
> 
> Just define test cases and how to execute them for now; setting
> expectations on code will be defined later.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

But a nitpick below, I think that can be fixed later with a follow up
patch.

> +/**
> + * struct kunit - represents a running instance of a test.
> + * @priv: for user to store arbitrary data. Commonly used to pass data created
> + * in the init function (see &struct kunit_suite).
> + *
> + * Used to store information about the current context under which the test is
> + * running. Most of this data is private and should only be accessed indirectly
> + * via public functions; the one exception is @priv which can be used by the
> + * test writer to store arbitrary data.
> + *
> + * A brief note on locking:
> + *
> + * First off, we need to lock because in certain cases a user may want to use an
> + * expectation in a thread other than the thread that the test case is running
> + * in.

This as a prefix to the struct without a lock seems odd. It would be
clearer I think if you'd explain here what locking mechanism we decided
to use and why it suffices today.

> +/**
> + * suite_test() - used to register a &struct kunit_suite with KUnit.

You mean kunit_test_suite()?

> + * @suite: a statically allocated &struct kunit_suite.
> + *
> + * Registers @suite with the test framework. See &struct kunit_suite for more
> + * information.
> + *
> + * NOTE: Currently KUnit tests are all run as late_initcalls; this means that
> + * they cannot test anything where tests must run at a different init phase. One
> + * significant restriction resulting from this is that KUnit cannot reliably
> + * test anything that is initialize in the late_init phase.
                            initialize prior to the late init phase.


That is, this is useless to test things running early.

> + *
> + * TODO(brendanhiggins@google.com): Don't run all KUnit tests as late_initcalls.
> + * I have some future work planned to dispatch all KUnit tests from the same
> + * place, and at the very least to do so after everything else is definitely
> + * initialized.

TODOs are odd to be adding to documentation, this is just not common
place practice. The NOTE should suffice for you.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
