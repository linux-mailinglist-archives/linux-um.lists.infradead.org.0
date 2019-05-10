Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A2219BCF
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 12:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ypi/PSARHWf3Sc9SuX2qGy/J+HoF4n59GGfGhfI7pdo=; b=V8rVma+keH4Xr5
	UShDq+ofFhF2XDHPpbMs0xggvs2eJYVdoKi6vYkiJzZ6fMg6o3JqiHzeqPHBM2v0jUhs4Uyoo6o2A
	cOR7q8oKjtHZmGFEV2YW74c143/WYEURNj7Bv0iZ94cuNq1gHwhbx19YGbO8i2kBCqVfMlzY/X37i
	i/EPwgqwzrpLkraqSW5bPgJhkPLv9CackX7SOZ1Zke1kpwSRiNvK+vJDc3QGwss7ipv1ZaibGiMbj
	WCLVpXYt6HaRG6diNFsWdF1RX2mtYYMK90LBoPrEECjhd0MDVOu1r++8Z6n+UI0VwKnGjhLxXIvyI
	+gWpEbvAQdVTQIgi7d/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP31E-0001P8-E7; Fri, 10 May 2019 10:44:48 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP31B-0001Og-JM
 for linux-um@lists.infradead.org; Fri, 10 May 2019 10:44:47 +0000
Received: from callcc.thunk.org ([66.31.38.53]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x4AAhcGQ005268
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 May 2019 06:43:39 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 8AE2E420024; Fri, 10 May 2019 06:43:38 -0400 (EDT)
Date: Fri, 10 May 2019 06:43:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190510104338.GB6889@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Frank Rowand <frowand.list@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 Tim.Bird@sony.com, amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 knut.omang@oracle.com, logang@deltatee.com, mpe@ellerman.id.au,
 pmladek@suse.com, richard@nod.at, rientjes@google.com,
 rostedt@goodmis.org, wfg@linux.intel.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <78e4d46e-6212-9871-51d6-dd2126f39d45@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78e4d46e-6212-9871-51d6-dd2126f39d45@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_034445_808855_780020F1 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 dan.j.williams@intel.com, kunit-dev@googlegroups.com, richard@nod.at,
 sboyd@kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 10:11:01PM -0700, Frank Rowand wrote:
> >> You *can* run in-kernel test using modules; but there is no framework
> >> for the in-kernel code found in the test modules, which means each of
> >> the in-kernel code has to create their own in-kernel test
> >> infrastructure.
> 
> The kselftest in-kernel tests follow a common pattern.  As such, there
> is a framework.

So we may have different definitions of "framework".  In my book, code
reuse by "cut and paste" does not make a framework.  Could they be
rewritten to *use* a framework, whether it be KTF or KUnit?  Sure!
But they are not using a framework *today*.

> This next two paragraphs you ignored entirely in your reply:
> 
> > Why create an entire new subsystem (KUnit) when you can add a header
> > file (and .c code as appropriate) that outputs the proper TAP formatted
> > results from kselftest kernel test modules?

And you keep ignoring my main observation, which is that spinning up a
VM, letting systemd start, mounting a root file system, etc., is all
unnecessary overhead which takes time.  This is important to me,
because developer velocity is extremely important if you are doing
test driven development.

Yes, you can manually unload a module, recompile the module, somehow
get the module back into the VM (perhaps by using virtio-9p), and then
reloading the module with the in-kernel test code, and the restart the
test.  BUT: (a) even if it is faster, it requires a lot of manual
steps, and would be very hard to automate, and (b) if the test code
ever OOPS or triggers a lockdep warning, you will need to restart the
VM, and so this involves all of the VM restart overhead, plus trying
to automate determining when you actually do need to restart the VM
versus unloading and reloading the module.   It's clunky.

Being able to do the equivalent of "make && make check" is a really
big deal.  And "make check" needs to go fast.

You keep ignore this point, perhaps because you don't care about this
issue?  Which is fine, and why we may just need to agree to disagree.

Cheers,

						- Ted

P.S.  Running scripts is Turing-equivalent, so it's self-evident that
*anything* you can do with other test frameworks you can somehow do in
kselftests.  That argument doesn't impress me, and why I do consider
it quite flippant.  (Heck, /bin/vi is Turing equivalent so we could
use vi to as a kernel test framework.  Or we could use emacs.  Let's
not.  :-)

The question is whether it is the most best and most efficient way to
do that testing.  And developer velocity is a really big part of my
evaluation function when judging whether or a test framework is fit
for that purpose.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
