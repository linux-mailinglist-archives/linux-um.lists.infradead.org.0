Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD9B8BF50
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 19:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArxCVCab1L9eR8JFu0N9IrYfqutDkBLEGZy6MfLlcss=; b=oVsYqWSCSvdXW9
	3Uuzxn0zsJ68h0FB9d6uwZx4hRo6LBJCperVehVYAj8of3D3xV4he9XcP0f0uBQiHfzOlH/7d7wNr
	A2C0n8wvXuvTvFnbd1ItFr8RNtdRNbnv9vx8d2winobM0ztpY2T2TyJL5cIymAd4IYv3djJf9wmLD
	GzjU5v+xuzy9v9wB7vwFiQekJgSh/NGrzn80YnBqPoTyoc7QM9spjzjr3SSpxms1ZF0C2eLxswKv6
	DA98vODRS17KJIrVBsD33/Z9CPcl/zgaeClkOPsN611VCSgBJyOZEt1QxRVCIhO/mAQCL/P+EPQx3
	TCIsuybINLtPCjYBYFzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaGS-0005J6-Db; Tue, 13 Aug 2019 17:07:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaGP-0005Hw-7J
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 17:07:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C89CA20679;
 Tue, 13 Aug 2019 17:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565716032;
 bh=fgW6Va1LDRwdq/a+4YEJkeWaGkuqaoxvU1J721UrWZU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=treWSrq2kr/VcJofxmrL4w25Mma1xe0c8v1GBc5/aXPXBX/Qh1u42KfGgRAMZ0E7B
 JnDwwQ837FHdqo8RQtK1lGQzBKI6OSJ9LmUHBI9Mkjtg2i718ItycmKZiAhZvxCmXX
 sM2LnPO88BoqSh26Dp8VQGdXD9L0EbFEm7nrZp44=
MIME-Version: 1.0
In-Reply-To: <CAFd5g44Es4emKyQSxUkqckGJ02_o3sAcDLwUCW8ZFGX14j5=xg@mail.gmail.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-13-brendanhiggins@google.com>
 <20190813043140.67FF320644@mail.kernel.org>
 <CAFd5g44Es4emKyQSxUkqckGJ02_o3sAcDLwUCW8ZFGX14j5=xg@mail.gmail.com>
Subject: Re: [PATCH v12 12/18] kunit: test: add tests for KUnit managed
 resources
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Tue, 13 Aug 2019 10:07:12 -0700
Message-Id: <20190813170712.C89CA20679@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100713_283669_02172FA9 
X-CRM114-Status: GOOD (  10.30  )
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
 Timothy" <Tim.Bird@sony.com>, Avinash Kondareddy <akndr41@gmail.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-08-13 00:57:33)
> On Mon, Aug 12, 2019 at 9:31 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > BTW, maybe kunit allocation APIs should
> > fail the test if they fail to allocate in general. Unless we're unit
> > testing failure to allocate problems.
> 
> Yeah, I thought about that. I wasn't sure how people would feel about
> it, and I thought it would be a pain to tease out all the issues
> arising from aborting in different contexts when someone might not
> expect it.
> 
> I am thinking later we can have kunit_kmalloc_or_abort variants? And
> then we can punt this issue to a later time?
> 

Sure. Sounds good.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
