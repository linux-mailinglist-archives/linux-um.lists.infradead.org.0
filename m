Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E5DCC4E8
	for <lists+linux-um@lfdr.de>; Fri,  4 Oct 2019 23:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRPQr2JAcg7vO3nRmvf6T3iF5OILmZv/txKRAhkTrCY=; b=kiPDfkiUrA0uwR
	PiTmelwBmtpcvYpI2beVG/RpB5UUwxI9BC/efRP+v2CDYRoazOzsV6lS5yFOlUppUpkz/g9dSvS4+
	7M4+6F5e6Xt46IMGTaBof+lMcjTx2Yb6BogrwouTxl7LZwFuXEEwTsttWcp+iPsn2EUPFY8E4DVpv
	F/r3jQzGePoQhp1+nquYPkYYstU0hXwh8+Eq+v1x1dTgcWPgeaLyfMKxqYnMiPzT56fcxNd+x5wLS
	m3Zo9lD0s27vX0de2g0yIrTFrb0R3gWpCHmv+fns8CDp4lSNLNV9qA7m93DmQ6oc/6BN9sVz0x5X2
	MRLGAMbg4bYtXUAGmLwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVIo-00085X-Ad; Fri, 04 Oct 2019 21:39:54 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVIl-000854-MJ
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 21:39:53 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-98.corp.google.com
 [104.133.0.98] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x94LcCr9027392
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 4 Oct 2019 17:38:15 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 9FA7C42088C; Fri,  4 Oct 2019 17:38:12 -0400 (EDT)
Date: Fri, 4 Oct 2019 17:38:12 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20191004213812.GA24644@mit.edu>
References: <20190923090249.127984-1-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923090249.127984-1-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_143951_897977_E123AA5E 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com,
 torvalds@linux-foundation.org, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 jpoimboe@redhat.com, kunit-dev@googlegroups.com, richard@nod.at,
 sboyd@kernel.org, gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 02:02:30AM -0700, Brendan Higgins wrote:
> ## TL;DR
> 
> This revision addresses comments from Linus[1] and Randy[2], by moving
> top level `kunit/` directory to `lib/kunit/` and likewise moves top
> level Kconfig entry under lib/Kconfig.debug, so the KUnit submenu now
> shows up under the "Kernel Hacking" menu.

This question is primarily directed at Shuah and Linus....

What's the current status of the kunit series now that Brendan has
moved it out of the top-level kunit directory as Linus has requested?

There doesn't appear to have been many comments or changes since since
September 23rd, and I was very much hoping they could land before
-rc2, since I've been hoping to add unit tests for ext4.

Is kunit likely to be able to be landed in Linus's tree during this
development cycle?

Many thanks!

					- Ted

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
