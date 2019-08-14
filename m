Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4D58D042
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 12:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a36H6VKI22oWKbXhCrLufpkI76IoaEjPTX8pAr3muM=; b=tzlmsxc4yB3W9g
	ludCs8t/SWJf2WD3XUG9ZoGJKD7bbIguHehVTrzhr5nTczqShDl5xUQ6vWxGTSAYMnCOnIJekZska
	cHWc0WtLNG7Wb9v/rUW2hFz72igRU+Bv64hyrN3QRqq8Tls4Ilj4qj6um5qSsdnIkEo4P669/5Nr6
	uy4LgHY0fNsKxOwjMz7RTvcC+qiPiahys/yCj8v/Ht8h9E6/ScZwz3rPh7z6x18XxhAqqy9gxShCS
	SJmE9N2JPtegVPDRUWvocJSJK3u+0MLc80u1G8VwfN4hg8gnb4keci3dEsqp0+8xzTtr+jxeTS36v
	+bCVOJnVreAH0MspeNiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxq8Y-00028j-GS; Wed, 14 Aug 2019 10:04:10 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxq8V-00027K-Dl
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 10:04:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so46622071pgc.1
 for <linux-um@lists.infradead.org>; Wed, 14 Aug 2019 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A8hpxCTzvYAcZn9UvY3kAbimH8cB/wVPQT2NUqi4FTg=;
 b=mX9zQWTJ21YVDsg/IO/lw3vK/5gRG1WKeYfq5hAVfRdrbxBQb/LOP7585An8TcS5uX
 tQfD//4o9HuUJa0OuyeBf0yYOxvzPAaOMjQC0e2XsG/XzCmrU1JU4X/cHR16Fl4JFHLe
 Zi0Tt+GUrI9Wq+kCxNmISk1ZO0HC18yrn6Nwe48kfT9CiA+xyYq2zY+VKjPraHI0VO+y
 z/s0hx02KzWhdnSkkt85Mam6mmVNYQ/kS61kWPXi/v/57imnYMdAPEqFsVlbDExrl+Ld
 2hdI8g4c1e8Cjj/bm8uvF1dfC8bBYtWFJT7eA1eUTgYFQ5SiQc/BI8jH+SCjQE2t4VrR
 5trQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A8hpxCTzvYAcZn9UvY3kAbimH8cB/wVPQT2NUqi4FTg=;
 b=tWdyWPpMQ3paOhZZJXGbVwHjys0K/7ZOOLGQL/jEKdxAfdImf4ZKrC71yObUu02Djk
 NrLZpEOLoOwwWSaHEwEPAgvIuq+XCA1RvbG/JejjJzPDhaLuSZChLWP6T3FVhUorz8uV
 jQE3a6FNaS3GLkE/bTPjX3gyNRDRP8itS2LaE+YG2YQsmpqjIEcPvKNn/dUH1sxals5w
 MpNgziy0PiGGxG/XcnFHAQTX8uovgbuWOCGS7PlwnEmFMpK/QeZNmVPfPFFtYYurQEm3
 b5H8ONCDnX5Xv8oqz2FLOzCwn9zX4NRH7FLJQSX0s2FQtsTgw7aINq6FsuSuJ732xd5c
 Cd6g==
X-Gm-Message-State: APjAAAWlWhJz5/GPDPRjuU6ABisimUhQ6fjJIyAYx+NT9xNuv+VbzsY5
 NpeJq2jwG8QBHgNeDvLUgk3lAU7fAVvLs1uoV0ifrw==
X-Google-Smtp-Source: APXvYqxyXqiNwjdTK3oFKny5yM7CmoKjVDpDDnZBrvH4fSE28h1/JfZ1mGpG1xfSCFWK+kgS1gJNI6SNjgBRmNUJeQM=
X-Received: by 2002:a63:205f:: with SMTP id r31mr36074127pgm.159.1565777039574; 
 Wed, 14 Aug 2019 03:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 14 Aug 2019 03:03:47 -0700
Message-ID: <CAFd5g45NdQEcP0JQpZc3HYYgNZfsBsHL+ByXRK+OupWObwMuqg@mail.gmail.com>
Subject: Re: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Frank Rowand <frowand.list@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Kees Cook <keescook@google.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Luis Chamberlain <mcgrof@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, 
 shuah <shuah@kernel.org>, "Theodore Ts'o" <tytso@mit.edu>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030407_465099_AC3D0E14 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Bjorn Helgaas <bhelgaas@google.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:52 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> ## TL;DR
>
> This revision addresses comments from Stephen and Bjorn Helgaas. Most
> changes are pretty minor stuff that doesn't affect the API in anyway.
> One significant change, however, is that I added support for freeing
> kunit_resource managed resources before the test case is finished via
> kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
> KUnit on certain configurations (like the default one for x86, whoops).
>
> Based on Stephen's feedback on the previous change, I think we are
> pretty close. I am not expecting any significant changes from here on
> out.

Stephen, it looks like you have just replied with "Reviewed-bys" on
all the remaining emails that you looked at. Is there anything else
that we are missing? Or is this ready for Shuah to apply?

[...]

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
