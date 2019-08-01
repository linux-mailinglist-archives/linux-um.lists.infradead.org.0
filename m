Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D547E4F3
	for <lists+linux-um@lfdr.de>; Thu,  1 Aug 2019 23:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQy4ULcuXX8uuncaqZksclmhBDFYhAaJh7htN7599qs=; b=ZppSa7+HRAYxT/
	0U9if/q894eL+41bkMO1Qf6TVj0FlxHbIbekhze2MeX9WZxLqTsLPnfBPuNTbc+7uv9bA5LuCmUnP
	O74BOOflIhYlEl8vue9U7oHvdVJxRkO7OGX4VbQWmRQpH6grzCPWWtCPkSQrIVHbJdlBQNc6sS3Ao
	emXRjV5ChVSE2LxlTIrw3yHGS0t0uEtWnmkr2hfbVT0tzew7Du11xrxB20mvWhT1wvoy5AG6mKXPh
	VNrRO+USUrQqXj2IKwwjT00T/7QNw/fWXOiOKpyInUCOtWURSEuclUMRd4IZJu/sU4f7d7FfPajfW
	ZOBGUFer9PvGnYg7yVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htIrf-0002rY-0T; Thu, 01 Aug 2019 21:43:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htIrc-0002r0-8t
 for linux-um@lists.infradead.org; Thu, 01 Aug 2019 21:43:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so32644776pls.8
 for <linux-um@lists.infradead.org>; Thu, 01 Aug 2019 14:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tRJWWqPxe4v7OGh5SzFgwfV47CyOeIABo0H7U+M+pdg=;
 b=S/P5gz+a9jUw7SwOiz84JEbZSB3baAlVLSphUNs8eZlN3ZPowtpH0MpNodRchncDaL
 h/pwktm3ZoMM5ur9uIqRsyskaBqjhXhPvxaJG//b32Uphj0PG1ynA9CUTm1TW0sAsjm6
 HvrHFAepLSyokzes/1ht5wjMSnlrEgSRbO09yXW02SG1IbAd8mAQKhoiLKJYr6VkLWg+
 7rO55CqVAf6utB/oO5cCFpNjfcdHsW2PZ6e5nZCbdexwb5KuZDKGxSTHr3F16NHksaHQ
 xyoTxMhvtaSYfpReQiXJpspTpAAqnNeKDN71dNMH70NnoXLk5zU84jZ89voAQsdAyikW
 53ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tRJWWqPxe4v7OGh5SzFgwfV47CyOeIABo0H7U+M+pdg=;
 b=uCynyVLVxixzdtj4/IHclmG4VNoiP+S43G4bfKoWeQpew/lie1DRmNNaKTEqRcmXYj
 zNRXTh8qXQrDabh5t+3X+HsatVQivsauXlhaoQkrpivuV/Ilpu3SnsgsVRYbMhSiAt1c
 O2FbC5R20qtUw+P/NNi/gisRhvbHerwVvLIav7fmdcgtx1H5pMKWJHeepBk9UTNvphPS
 79rZMQV02D7Hp9wJgyEz+8g4SFo5XoUYhcxu3bhsuAgZEMkTjEcyxCaHEW6bb6EKtXbZ
 6VKMQXNUvGPNRyhUpYXqc3umyWiW/BQyD7LVlVBBd25/pvTA7yRGmcVvgd0LJPiDB/we
 BkqA==
X-Gm-Message-State: APjAAAVKVXhdZRCM0bAJfys7nCgmDei3PelTk8l9EiLJbUw/ZJ/0S1qg
 +gYwJfwZxvkquFYIZmAl7GKmMv0kgRHerpfm2Pu8/A==
X-Google-Smtp-Source: APXvYqyQJ3oYuIkR4HxnjqcvX8HB7OCTCVhJ4Fku+hNPqOUYjGToK6i2G0j1xWhCd4v39RwFH1V7C/0k5dVHTOnW45I=
X-Received: by 2002:a17:902:347:: with SMTP id
 65mr32846391pld.232.1564695834770; 
 Thu, 01 Aug 2019 14:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190716175021.9CA412173C@mail.kernel.org>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
 <20190724073125.xyzfywctrcvg6fmh@pathway.suse.cz>
 <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
 <20190726083148.d4gf57w2nt5k7t6n@pathway.suse.cz>
 <CAFd5g46iAhDZ5C_chi7oYLVOkwcoj6+0nw+kPWuXhqWwWKd9jA@mail.gmail.com>
 <CAFd5g473iFfvBnJs2pcwuJYgY+DpgD6RLzyDFL1otUuScgKUag@mail.gmail.com>
 <20190801211447.6D3D7206A2@mail.kernel.org>
In-Reply-To: <20190801211447.6D3D7206A2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 1 Aug 2019 14:43:42 -0700
Message-ID: <CAFd5g47tk8x5iet=xfPVO6MphD3SsLtYQLrCi5O2h0bvdXwHtA@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_144356_341451_E5EBC612 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Timothy Bird <Tim.Bird@sony.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 2:14 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-01 11:59:57)
> > On Thu, Aug 1, 2019 at 11:55 AM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > On Fri, Jul 26, 2019 at 1:31 AM Petr Mladek <pmladek@suse.com> wrote:
> > >
> > > > To be honest I do not fully understand KUnit design. I am not
> > > > completely sure how the tested code is isolated from the running
> > > > system. Namely, I do not know if the tested code shares
> > > > the same locks with the system running the test.
> > >
> > > No worries, I don't expect printk to be the hang up in those cases. It
> > > sounds like KUnit has a long way to evolve before printk is going to
> > > be a limitation.
> >
> > So Stephen, what do you think?
> >
> > Do you want me to go forward with the new kunit_assert API wrapping
> > the string_stream as I have it now? Would you prefer to punt this to a
> > later patch? Or would you prefer something else?
> >
>
> I like the struct based approach. If anything, it can be adjusted to
> make the code throw some records into a spinlock later on and delay the
> formatting of the assertion if need be.

That's a fair point.

> Can you resend with that
> approach? I don't think I'll have any more comments after that.

Cool, will do.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
