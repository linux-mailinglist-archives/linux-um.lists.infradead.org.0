Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F3F14C14B
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 20:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w37GlRgY9ElaBYIN8VpKSX25q9rkdiFa3TISKuAayrw=; b=QyMwCGTM+erPUA
	9POr6yqdfprXJXgXYUQjwAsGw5o2I9AHJMTjHs1+3YDdPaWXNT6Wlo8BAMT0WbqzOwRhM8j9g+VES
	TDzQHTwT8c8M6EomJQGtI+Kd4Se/6y8fk6TMU03YqLpi3J/6QQ65EOP7bVclcGzKfhdlsocUT/Jbr
	aV8T4ThBbXgp00omBG9t9YhUPj7P0p4Hc7wAmEkchdv0t/cSnNqO5ISVDN+f2YGETUfSgR7cMdhWK
	vpU8RcfFlgaZ9bkw4BEWWOgd7X7WL9IyEnk4CAPUGl5Yo+NHqkCCTKn8XlbOy4BcjpXOy0lH9K4JB
	FGMOTY+KiV8hxt1lCJXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWw2-0000zJ-NT; Tue, 28 Jan 2020 19:54:06 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWvz-0000yN-9f
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 19:54:04 +0000
Received: by mail-pj1-x1043.google.com with SMTP id dw13so1527755pjb.4
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 11:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V/f5zRc++UUEl2oF7a/v6c3iW8+A1FaOUHgeSr1YnVs=;
 b=V3FY0oe6cawkXOzECXYXusqM1m9RESvFiJ318Zd1jyxpfbejY+CSUTAG0yDVae+gh7
 pYc3vMUzJ+h98Raq2Mf3MaJlkPS3Tq1kTEaVxRYxNtvNYvMIFeOQhAHA2IdylHb12t4O
 /Xyz1C6esVXDMnLz/jxMeZ051W5J+xMFr/TVseT7PIJ1Ykuj8JtuXkbEyg471Cv3xiyo
 IBdrZrDnfkkfbBfGnUduk8UZwMsrIx5XW2N13A4UEIBDsoED3fGtcpdZwubSJZPxsIvU
 K2iZbZPxbx7ZMoe/+aDnxn5RQhf9IVAHuYIr3D6N8L7T+IJ1VEFDze2+++I3nOi8MZ31
 WG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V/f5zRc++UUEl2oF7a/v6c3iW8+A1FaOUHgeSr1YnVs=;
 b=EsOorc1iQHoVx6W9QC4POr04l+VzG3acifWEdU2uwApkEMy7/UTTkyu8jQuPLF3/PV
 mX6/Yz6I1BhtC2KY5h3+giKg0q9nUNZl+/OE1kOzgCmyk9FXi9yMZb87JsQzcreR5KoO
 mxhl4hx4GCERZAo1gvl4a5ZKNNgEAP5slFpRFGnSjuHMKqmEUxEdqe6JuLZ2DZeYOCYj
 mzonANOeEbSp7oZlNGLywebZ+j8Opqd/cgxhBv5A9nqH+vgcLGCUwpGnbzJuBNB1r/tx
 Zxh3Lq5OiPKpKCHGfzSgmjMDo2JFu6nsuioThpjFpNU3LTtkQJdRdLGb9/1Iv0fABgxZ
 oABQ==
X-Gm-Message-State: APjAAAW/G745P8DW5FPJcOHyalcV8NbFCDW5cpogkCUFBixgAJBTRt/c
 Wg55xeamtO4ZXsjfkMDBZ7iRSoB4ne+qS/O1lOrB4w==
X-Google-Smtp-Source: APXvYqwsSX23sWF/7Cv3Xx+gB6ffHVSnTl6Sr/scnY3zT8fQnBaaunzuRNN1mXGoW9KHCLqS7PSV7ksn+8m5qxFFXXI=
X-Received: by 2002:a17:90a:858a:: with SMTP id
 m10mr6625852pjn.117.1580241239520; 
 Tue, 28 Jan 2020 11:53:59 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF982C9840@USCULXMSG17.am.sony.com>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF982C9840@USCULXMSG17.am.sony.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 28 Jan 2020 11:53:48 -0800
Message-ID: <CAFd5g46Ut9Suptmp_bBspkp=KKt2GP+=1C5zLu0FXJY9dGJbFQ@mail.gmail.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: "Bird, Timothy" <Tim.Bird@sony.com>, Frank Rowand <frowand.list@gmail.com>,
 Alan Maguire <alan.maguire@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_115403_340577_19BA92EF 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Luis Chamberlain <mcgrof@kernel.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 11:35 AM <Tim.Bird@sony.com> wrote:
>
> > -----Original Message-----
> > From:  Frank Rowand on January 28, 2020 11:37 AM
> >
> > On 1/28/20 1:19 AM, Brendan Higgins wrote:
> > > On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
> ...
> > > we could add Kconfigs to control this, but the compiler nevertheless
> > > complains because it doesn't know what phase KUnit runs in.
> > >
> > > Is there any way to tell the compiler that it is okay for non __init
> > > code to call __init code? I would prefer not to have a duplicate
> > > version of all the KUnit libraries with all the symbols marked __init.
> >
> > I'm not sure.  The build messages have always been useful and valid in
> > my context, so I never thought to consider that possibility.
> >
> > > Thoughts?
>
> I'm not sure there's a restriction on non __init code calling __init
> code.  In init/main.c arch_call_reset_init() is in __init, and it calls
> rest_init which is non __init, without any special handling.
>
> Is the compiler complaint mentioned above related to  calling
> into __init code, or with some other issue?

I distinctly remember having the compiler complain at me when I was
messing around with the device tree unit tests because of KUnit
calling code marked as __init. Maybe it's time to start converting
those to KUnit to force the issue? Frank, does that work for you?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
