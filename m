Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF251E7AD
	for <lists+linux-um@lfdr.de>; Wed, 15 May 2019 06:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=659mU8Oi018Qh+K26syNowCmjv3/0JgNOs7sPwVykWc=; b=T5h0XbHKfA6cq/
	xgxVtuiFY6kvL5sAHZ2W2CuywmtYTl/jB/qOs4YDdVNFmamdtmYJFRyqlfvbDcuQFpVxCTd1a2d33
	L1UAXmjxH7fQXV7QjBOYnLbZU9dHVB3MS9pXTCmKyN1gqtBMBlsUVyxsBFCTaoC30+UdB0Wz/SQIK
	P1nO84+wzq3qYq2dtaQqN9qed/+FoW5n2i00dC+gIPhhXTecaET+ZHfX1ayh+WZlyJz9U0iSD7gu7
	jeTujmSfOvGem6LGe+qSsnQk/sP994kwJO+F4ugsLheda+jrBIrliyPHkHonZ4xUS83MWHWg4ICIt
	MXjrtStK5dEzfPH+/fyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQlYH-0004fi-Ge; Wed, 15 May 2019 04:30:01 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQlYD-0004eh-Kt
 for linux-um@lists.infradead.org; Wed, 15 May 2019 04:30:00 +0000
Received: from callcc.thunk.org (168-215-239-3.static.ctl.one [168.215.239.3]
 (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x4F4SdqA023241
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 May 2019 00:28:43 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 8480F420024; Wed, 15 May 2019 00:28:38 -0400 (EDT)
Date: Wed, 15 May 2019 00:28:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190515042838.GA26954@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Frank Rowand <frowand.list@gmail.com>, Tim.Bird@sony.com,
 knut.omang@oracle.com, gregkh@linuxfoundation.org,
 brendanhiggins@google.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 logang@deltatee.com, mpe@ellerman.id.au, pmladek@suse.com,
 richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
 <a305c732-9953-8724-b4a4-25aa50c89365@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a305c732-9953-8724-b4a4-25aa50c89365@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_212957_858695_4D9B6705 
X-CRM114-Status: GOOD (  14.05  )
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
 brendanhiggins@google.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 dan.j.williams@intel.com, kunit-dev@googlegroups.com, richard@nod.at,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 mcgrof@kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 05:26:47PM -0700, Frank Rowand wrote:
> On 5/11/19 10:33 AM, Theodore Ts'o wrote:
> > On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
> >> However, the reply is incorrect.  Kselftest in-kernel tests (which
> >> is the context here) can be configured as built in instead of as
> >> a module, and built in a UML kernel.  The UML kernel can boot,
> >> running the in-kernel tests before UML attempts to invoke the
> >> init process.
> > 
> > Um, Citation needed?
> 
> The paragraph that you quoted tells you exactly how to run a kselftest
> in-kernel test in a UML kernel.  Just to what that paragraph says.

I didn't quote a paragraph.  But I'll quote from it now:

  $ make -C tools/testing/selftests run_tests

This runs the kselftest harness, *in userspace*.  That means you have
to have a root file system, and it's run after init has started, by
default.  You asserted that kselftests allows you to run modules
before init has started.  There is absolutely zero, cero, nada, zilch
mentions of any of anything like that in Documentation/dev-tools/kselftests.rst

> > There exists test modules in the kernel that run before the init
> > scripts run --- but that's not strictly speaking part of kselftests,
> > and do not have any kind of infrastructure.  As noted, the
> > kselftests_harness header file fundamentally assumes that you are
> > running test code in userspace.
> 
> You are ignoring the kselftest in-kernel tests.

I'm talking specifically about what you have been *claiming* to be
kselftest in-kernel tests above.  And I'm asserting they are really
not kselftests.  They are just ad hoc tests that are run in kernel
space, which, when compiled as modules, can be loaded by a kselftest
shell script.  You can certainly hook in these ad hoc in-kernel tests
via kselftests --- but then they aren't run before init starts,
because kselftests is inherently a userspace-driven system.

If you build these tests (many of which existed before kselftests was
merged) into the kernel such that they are run before init starts,
without the kselftest harness, then they are not kselftests, by
definition.  Both in how they are run, and since many of these
in-kernel tests predate the introduction of kselftests --- in some
cases, by many years.

> We are talking in circles.  I'm done with this thread.

Yes, that sounds like it would be best.

						- Ted

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
