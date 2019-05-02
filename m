Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A20121B0
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 20:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nk25rfpd8phHdO57hsfr5d3BKiCMAONib4YTJ8WV1K8=; b=lFGWStHfssja1z
	rDC0P83rsD7Pvl3j4kNu1X92I3OR/QbtuZHrp8x7D9EfdfzVwVhK0dpwMeUDCFPehNIKsOw0JMGTM
	Mex1N/woE7Knax3YRjsmf+sSqsBvy83JwSnAeKItJuzGC2BoSk+rc0W8GPYhf2SI6epe79WKPhlwi
	RAJVZbc13H6ONiMh249WKjzrmXqf7NPM1fnb+IfV065+1GHw4A8U5ZdVxjUZxZ/WeafT0EJueSrbu
	JdiAqzjuCL5/MUhgWUvcP0j4XcUxaEOwqVljryXLA75q8aLYBoE9l8oDVPBGArK37Im/hqdxL656H
	FEsteIS2WjwjqhUviY7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMG8C-00079s-Ez; Thu, 02 May 2019 18:08:28 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMG89-00078p-VS
 for linux-um@lists.infradead.org; Thu, 02 May 2019 18:08:27 +0000
Received: by mail-ot1-x343.google.com with SMTP id r20so2954195otg.4
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 11:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=79fGKeHlH9FAaVSR1O2RxcfKwTsSnTq5QCRHjsEaUQU=;
 b=p6+GkF2pa0r8kIFWr3Ue5xSJ4hl91lXS3nyMKkOj5gQv9nBUeqd4BeLUxnZv1anIlK
 lg1rsW/DG5+gG35Q6B+ZLV3xvGi60oYqbQR6qqrpeA01srJDWSHy+u56ea2PsXrn8x+q
 dAZDe0q27TZ76u7UainpJzKpuJcdKWXXDrVVYsacHOUkrblZnv39zmUQ3mgKo/PyMxtj
 cBGYHB2uWwE8NxbLX7q9WWmg2lFe3RBeI4j2lZBmhh5c2j8csXxGrExgKmjwwY08DAy9
 PMxuPc1keMhPOI13z500WCy1D+qUSgNiYEXKQhnXWgZ+09G9ndEGtieagtsVwWkzEqOt
 uIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=79fGKeHlH9FAaVSR1O2RxcfKwTsSnTq5QCRHjsEaUQU=;
 b=FqWpetynNiTX3Ugg36TvmQOaNOszqjHdgmPxMNJI8Zt483B8d+ys/1DgFyILYl+0Yp
 AdV4qSZBwt//BLtbdr70NRuJG8/IRQBCt4uEtKi2qw/DUA1zS1lT6JoKzEb4dKR53pu8
 KSnf0jnpC92OdanOQFaNmvJ4sMXQLw0ClewYRncLJfxwoGrQkk9NDHrSYiKyr2VKM2ci
 KbJzkPIz4aWQWd78NoGpeBcUvmip4rWmZyXq7TXc3PyldDlaS4WWeKAaxqzg9W2LaoYE
 vzl1P8BYx1I9U2bFY1Clv/czgWcEGF0F0i5TLcxEl6pTD8/zfvCzQ+Jp+zDyLszLzbp+
 3h4Q==
X-Gm-Message-State: APjAAAVRlDkHIbHX3w4Ei7oAMMVkF0+hZUrQJaY/8XaK1Q6G8EKW7d46
 2bgeG6IJBKpEx2T+XhEwiKqsdg/zQfP7RbBIHTWJhw==
X-Google-Smtp-Source: APXvYqw/nI7b+z83V0GIDl0oQazXtqsfs+CMRGbHgYqDLdBGzPB7zXqfHkbXMcNZ2dozl9lGwjO1NMDSJQAOJdRu1uE=
X-Received: by 2002:a9d:3621:: with SMTP id w30mr3409606otb.98.1556820502021; 
 Thu, 02 May 2019 11:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
In-Reply-To: <20190502110220.GD12416@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 11:07:57 -0700
Message-ID: <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_110826_013855_1EC8F0E0 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
> > From: Felix Guo <felixguoxiuping@gmail.com>
> >
> > The ultimate goal is to create minimal isolated test binaries; in the
> > meantime we are using UML to provide the infrastructure to run tests, so
> > define an abstract way to configure and run tests that allow us to
> > change the context in which tests are built without affecting the user.
> > This also makes pretty and dynamic error reporting, and a lot of other
> > nice features easier.
> >
> > kunit_config.py:
> >   - parse .config and Kconfig files.
> >
> > kunit_kernel.py: provides helper functions to:
> >   - configure the kernel using kunitconfig.
> >   - build the kernel with the appropriate configuration.
> >   - provide function to invoke the kernel and stream the output back.
> >
> > Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> Ah, here's probably my answer to my previous logging format question,
> right?  What's the chance that these wrappers output stuff in a standard
> format that test-framework-tools can already parse?  :)

It should be pretty easy to do. I had some patches that pack up the
results into a serialized format for a presubmit service; it should be
pretty straightforward to take the same logic and just change the
output format.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
