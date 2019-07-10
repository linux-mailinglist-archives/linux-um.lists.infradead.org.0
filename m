Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECF16431C
	for <lists+linux-um@lfdr.de>; Wed, 10 Jul 2019 09:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SDwYx/NNlJu9ruaVmn/gAKQIKMfC3SdWhQaFl4epFw=; b=BPwDEkA6i7H2bS
	SihcFSLtY5VDXeWFLkfcVMNYSLj990vK6Gk/QhW4PFBVj8AT8HwLl7gBjHSvou/HdFm+GcrHBSn8U
	pWRHtuE85Hy45uT6/NWT9q6wctB18laxiFI8podYAZYDUNQojtBwitbjnPJ+XCfXyOtCwxD4ijJwl
	dyGBNwF/F7S3POyDs1/zGA/xpxrwiqzAloWNaMceE0Mo4AlMwYx2pJvSt/2x0JsZj7f7ioRwVfQnr
	i4YAJu2KHq9Xjp6yfK0fU/iM5u8Jfw3LzslnTGnaS9Q5olutQ3nk29pRhkgjovRqTCQpxY8rzgLc3
	Iq1CBNhKNSq4fiBn7OcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7N0-00053z-JR; Wed, 10 Jul 2019 07:50:30 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7Mx-00053a-Tg
 for linux-um@lists.infradead.org; Wed, 10 Jul 2019 07:50:29 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x6A7o7TF011138
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 16:50:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x6A7o7TF011138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562745009;
 bh=PI9vAU5DZ4pm8uk/LZDalZiWfwOYBnqaRPHYLckDX4g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2ywnhCcubslCMSbok4IBv2KIwYYqycUeH9Fwg0llimITGc4zPiTGerLyfmaMQrNV5
 rDxkdY495X8MVqN2HoEjSorCUfBBBQ7t93zy9AyUGZYED22v6iTckBKJuCI6FNAqRE
 tP4PPd+lv/bd1r26mSgrjzCY8RGygqLA+N/rpizoOwd+oXgO6D1ac17Wi4qejEN0sI
 qZcj6ydHehdgIIL196Wa+DhvxponFcCP9CtvEpW18hBIKnecNcuPyM1IxZtTOb+mfK
 nWSzNS9p3dARp+57OVA40vl4ErUur84kMHuZc2i+Y9RzbA6iRZ/U/yBk/QmiJP+1XL
 DZ/QsXKwdQ3tQ==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id r3so874985vsr.13
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 00:50:08 -0700 (PDT)
X-Gm-Message-State: APjAAAX8scLe3JvqpXfizpoyYLaP5M9atPWAwm1H8lPRVqI6nwqjixd5
 OEAlugA1kkOfe8fnP0+VccG8xgLynkAQxfTtELQ=
X-Google-Smtp-Source: APXvYqw2lrh+5DK/jJwMNeRrzarB0aSECJBPOWsWFIa2/e5Dx+WrHYOuiqBpjnzOBa000Fw4cKQimfq9Auvs/nIayt0=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr17019011vsd.215.1562745007249; 
 Wed, 10 Jul 2019 00:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190710071508.173491-1-brendanhiggins@google.com>
 <20190710071508.173491-7-brendanhiggins@google.com>
In-Reply-To: <20190710071508.173491-7-brendanhiggins@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 16:49:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASywq+RhEisuPbqOjFoBh7WNvMEgy55iacizrgNB-uBfA@mail.gmail.com>
Message-ID: <CAK7LNASywq+RhEisuPbqOjFoBh7WNvMEgy55iacizrgNB-uBfA@mail.gmail.com>
Subject: Re: [PATCH v8 06/18] kbuild: enable building KUnit
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_005028_284691_79B4BFCB 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Cc: Shuah Khan" <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 DTML <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Tim Bird <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:16 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> KUnit is a new unit testing framework for the kernel and when used is
> built into the kernel as a part of it. Add KUnit to the root Kconfig and
> Makefile to allow it to be actually built.
>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>

Please feel free to replace this with:

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


> Cc: Michal Marek <michal.lkml@markovi.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
