Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303A2125B4
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 02:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVJmqwZLodvIfpZ02C/OwDI6oRznZXMM6UM/bUOO/rw=; b=Hazqvy0/5cQcnZ
	V3gzh7vCrBe0K/VlrNimq+93qc8oiJY8DXgQ8XlYI/spleHMmXK3g9FNN7YZ+tN+5FZ+f8rjgElEP
	zwWtPzH4HXhqgwQnXbb7z6tSZ1jq3Iodqm1w4vDHNiK+C0iInufwL6J6GH7F+4XWEQx2bM+1MCAxm
	Ti3FcEWdhC9qfxF+Du9EhiBH7AXR0DlSgCuRWMmhUdY7CTBG/SSPx9CNGq+JMxYvJSAPK1qQWruj6
	DZjKJOAu+OpCDVkk/KL3d2H18ynOyVavNgNSztdYJxmsPoLIKumP6uz+wPtZEfDdjRR4y+cI92N9q
	OoYe/foBzyrxguvthbGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMJJ-0003Mj-BM; Fri, 03 May 2019 00:44:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMJG-0003Ln-3R
 for linux-um@lists.infradead.org; Fri, 03 May 2019 00:44:19 +0000
Received: by mail-oi1-x241.google.com with SMTP id v23so3221029oif.8
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 17:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A2hincFuCgvv5JHuCTV0zjcSgRetC4sQsA2RxJqwbHE=;
 b=OmqtnHqhiWeR9Oui8paJzv152rY6QABSkuQBz4HTi+7RcYfpqAMASWqQsmYpDFgDN6
 8u4QGxIX+281+PUfSj8hi/U7tm8NJ9VAxVw6f/1fIubO5IRk2JSVgWheDKh9YqA4Wsbf
 24sX8hJEdjs5npjlV/LbLiqkJxkPc5vfXFxPFLtHmaYVvwOT1Kl25XRCnzlFSWh2Q25H
 cUcrTa1e6pmnoMfZEaTHDQhpE68nGq58M6J2ln/kAXPBqhupBP9xcAgry1zyiFWDMuo5
 NRZs5NySNRdFsKgdLNe5bdoZ8f/LlUzn/ZIEd8r9DQV7aKNkXapSSaI0cJxyrsljswdm
 UMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2hincFuCgvv5JHuCTV0zjcSgRetC4sQsA2RxJqwbHE=;
 b=KMhJLD2sG84YaohCnKkCk1SzJGiG3zxyD8v8nN13iZj34qoD1YLRbkDpTRV5XW6KKJ
 Xw7yjDBTvY/kdfPupFKPzZPHrm1kuC9esLC8XjNr4mnjPfMAHXFVqjhxVSJOnR5QX+OK
 FG4jb3idKE/4Vy58Q7a3uye1szNcM+0zwfWQuk7oK94UH4zgDug+n1AIBZqCM/f2I6lM
 lX+i3HAD+OcnZ71divi/w12Qyq9Y1Uir3Cirm57rtcUQ1uICNtFQmdZTbCC15aBzUSvX
 XbIE3pmsHWdFny7UcJ2iANHAobKMcF6hUQeETnS6NujoknzAjlljWeucBom7XtWICS9N
 7y3w==
X-Gm-Message-State: APjAAAUTlDidxcpUtxdF61NJ73W1JPCDzgUoe5lQ6nz2E24Iisla57te
 jBSNqsLaCjd6Aja+AVMogxVrYb+MHV6f81QWqz2Gfg==
X-Google-Smtp-Source: APXvYqyH7XhI3a/DkRyh575w1BCN/DsRH5SQN4U4GjnrWhviWpfRz21kNlgkWO7kwhjd2fwRpqP4aZoATeVVAm4A6kc=
X-Received: by 2002:aca:4586:: with SMTP id s128mr4131634oia.148.1556844256812; 
 Thu, 02 May 2019 17:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190502105053.GA12416@kroah.com>
 <76e84d54-6b7e-8cc1-492b-43822fc43ac4@kernel.org>
In-Reply-To: <76e84d54-6b7e-8cc1-492b-43822fc43ac4@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 17:44:05 -0700
Message-ID: <CAFd5g47JiSXHvMEu9NovkGdG7ugMCwVO0pGwT7bC=NCghD0w-g@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_174418_170608_24D03A61 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 7:04 AM shuah <shuah@kernel.org> wrote:
>
> On 5/2/19 4:50 AM, Greg KH wrote:
> > On Wed, May 01, 2019 at 04:01:09PM -0700, Brendan Higgins wrote:
> >> ## TLDR
> >>
> >> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> >> 5.2.
> >
> > That might be rushing it, normally trees are already closed now for
> > 5.2-rc1 if 5.1-final comes out this Sunday.
> >
> >> Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
> >> we would merge through your tree when the time came? Am I remembering
> >> correctly?
> >
> > No objection from me.
> >
>
> Yes. I can take these through kselftest tree when the time comes.

Awesome.

> Agree with Greg that 5.2 might be rushing it. 5.3 would be a good
> target.

Whoops. I guess I should have sent this out a bit earlier. Oh well, as
long as we are on our way!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
