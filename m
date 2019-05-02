Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A7F117F0
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 13:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4N9+/nsZXtYn9iSyNKtToFjiy5uL+Qatbp/62mCrWI=; b=RQLcpTuPbZKsa0
	u5eoKWhHjtSRoPa15XW5uUkO6SADzweKnTN1ATx0cDtaE6wHmS7IqXet1dCFl/h9U5mG+v9uqDLDP
	9RdBEv0/tM+7k+88XREoH+FTiQRCtCperKJ/zk3WbgyceVE1I0Xt2ZPpx/LEgtJ+hwuq6KUh9PWDj
	+WUfBEjZZG6uwUp0dk+ohLldIPzMyOKnlgHzgNvrz/acoUH8DB7qGXvMG/h8xTyCk+c5gVy4kSZrs
	ibr41Xus4mltUZAwhfSnHaPrBbsMvqWLrQaATLsGQ5/5S9Y+g35ydblUS7e2w29huJns561q4pUDf
	GgxT63pqpWCOA6ugQMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9Wj-00035Z-I4; Thu, 02 May 2019 11:05:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9We-00034Z-2L
 for linux-um@lists.infradead.org; Thu, 02 May 2019 11:05:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4391720656;
 Thu,  2 May 2019 11:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556795115;
 bh=g52VJv58ny9inOghbRxttm2JEOFg/YzNJiIi1xgevz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=srcuUUfJlFr42/9IsMaL5I/QT1gc7U4FMTE1sI3n6k8wik0XOQdtZ3s/SmQvEj2j3
 nem5uAwCIgmlBdJqoOCKPYyD7+0J7m4Es/11yPHJKGUPXjz6aLsDABY2+K1HZTiH2j
 NwAGsAXg2Nr8uriB/0jqHcN2lzmFJtLPXJT3z5pc=
Date: Thu, 2 May 2019 13:05:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190502110513.GF12416@kroah.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190502105053.GA12416@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502105053.GA12416@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040519_160806_86F06339 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 12:50:53PM +0200, Greg KH wrote:
> On Wed, May 01, 2019 at 04:01:09PM -0700, Brendan Higgins wrote:
> > ## TLDR
> > 
> > I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> > 5.2.
> 
> That might be rushing it, normally trees are already closed now for
> 5.2-rc1 if 5.1-final comes out this Sunday.
> 
> > Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
> > we would merge through your tree when the time came? Am I remembering
> > correctly?
> 
> No objection from me.
> 
> Let me go review the latest round of patches now.

Overall, looks good to me, and provides a framework we can build on.
I'm a bit annoyed at the reliance on uml at the moment, but we can work
on that in the future :)

Thanks for sticking with this, now the real work begins...

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
