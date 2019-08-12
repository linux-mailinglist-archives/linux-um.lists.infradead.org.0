Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C858A886
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 22:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+5kdUBZC6gGmOE37mhAzojYnCNaIz6+HhDPGr2n5Y0=; b=Je/fjokXbPxaXQ
	th6YQprwILVf/IEtUGCgqAJBtAmFTYWFVdJ5I+QkdzrR7LlIaZwciSVEG4NkLXOOjB70roUZRpTQQ
	hRzVY15z1s0SkY9cKp1P8OHTqwXljdodYPOrrPyMMSxFAPamNbP/6EwazL+S8/4LNJxh/HZ7o5+Hb
	uD2Qygm3xR1HU7qw42bO3wKEMXJNUW76aBV1ds3/NCu9V0COAhm6coWhHziJV5RdK1s7UkLOm31de
	Jmzhs5h5fIvdj0Hm64yRpn2C1KzoJch43hwX11UTaeEHMdunZtGBTfOVWj5OMHvELW2980pIYPCQb
	YBjNK3dgyg20zB/CWm5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxH8R-0003mN-7S; Mon, 12 Aug 2019 20:41:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxH8O-0003lB-OJ
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 20:41:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so50288771pfp.7
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 13:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MJnh/DbbwUp2ykhuWtKroei6fTXCscBWC620YMU78kw=;
 b=vB8BBLTcHyR/6MmManbwUwxuFJIulQIi8ssstEWavyxVjDjZTqCdDV4k+GvQznx2Gu
 BYrmoSxq/p6EpObadBuog/qnQED0Er2g3FPY/R5mmU2+6prANR/EPeaPhjZJhguiIiRP
 laVlnix+3k3ldsZoV0C1xagsklVYtYidBM9aE1xGrFVcLjBbwRpW6HahGY9+Avp/kWLm
 T5NAN/tqvOLG0auDu2paiIhDdkHD9xVBreQFe50Qz3Fk4VEdJTBMNP4enXfrvN3t06qW
 EUgtNhbhUYFQV5XLv75AMMsdUTUbhRhJq5GaejhlsHjGOrbIRPayAm9bBTghIOMPNAZO
 gGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MJnh/DbbwUp2ykhuWtKroei6fTXCscBWC620YMU78kw=;
 b=epNczAmit7KJrAhFQuDR3l5k0b6Z8kMCTFahCPEy7mjIvhj9184WM89Qn6TOBI5Vqu
 3jpvetHH5km09dYVhxvA4SxfZhr2L5BGidZLnJotlqxzv8I8H2Y9BpLksJ1vxmr1G/gX
 snEhQZGbnw8sknli7fLtWVgVG2nYD5GI6fFYdAvmKFw+RBPzo/M3tL4HyHNGp/0uSZnM
 S/mMqScpi4or5aBZUTjx3yy3Ou9P/n1n9H5GqE1VYvxHyb+mKQfT9qNcBEKMcuQlF8y+
 ThU9VJc4xTVaIXlu/lJagqG2kCzZ9gMt644tpHrAOCvkqsTWepM/n1NWld5+BD4wqgUM
 3C0Q==
X-Gm-Message-State: APjAAAVbHtuxius2P+SZy39mxbalki9rR4T5xEDcf8GBphP4zEh3tMn+
 6pKHvQ5RIcRmG3sYNYfCsWiEUj5/Ar+mLqSE0to0hw==
X-Google-Smtp-Source: APXvYqzmkY3rA1NydAKLLowsftOVMQA6KoE5ccWG/aJPzsMG71zwm21zQ2Wdnhb2Togz1F6UwE1Me36C6jQdnlOZ3bs=
X-Received: by 2002:a63:b919:: with SMTP id z25mr31379684pge.201.1565642496668; 
 Mon, 12 Aug 2019 13:41:36 -0700 (PDT)
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
 <CAFd5g47tk8x5iet=xfPVO6MphD3SsLtYQLrCi5O2h0bvdXwHtA@mail.gmail.com>
In-Reply-To: <CAFd5g47tk8x5iet=xfPVO6MphD3SsLtYQLrCi5O2h0bvdXwHtA@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 13:41:24 -0700
Message-ID: <CAFd5g44bovSiiqGCip1Q4zBOUauXMcryxnPs8miOa0-QrPW61Q@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_134140_794388_32E55849 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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

On Thu, Aug 1, 2019 at 2:43 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Thu, Aug 1, 2019 at 2:14 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-08-01 11:59:57)
> > > On Thu, Aug 1, 2019 at 11:55 AM Brendan Higgins
> > > <brendanhiggins@google.com> wrote:
> > > >
> > > > On Fri, Jul 26, 2019 at 1:31 AM Petr Mladek <pmladek@suse.com> wrote:
> > > >
> > > > > To be honest I do not fully understand KUnit design. I am not
> > > > > completely sure how the tested code is isolated from the running
> > > > > system. Namely, I do not know if the tested code shares
> > > > > the same locks with the system running the test.
> > > >
> > > > No worries, I don't expect printk to be the hang up in those cases. It
> > > > sounds like KUnit has a long way to evolve before printk is going to
> > > > be a limitation.
> > >
> > > So Stephen, what do you think?
> > >
> > > Do you want me to go forward with the new kunit_assert API wrapping
> > > the string_stream as I have it now? Would you prefer to punt this to a
> > > later patch? Or would you prefer something else?
> > >
> >
> > I like the struct based approach. If anything, it can be adjusted to
> > make the code throw some records into a spinlock later on and delay the
> > formatting of the assertion if need be.
>
> That's a fair point.
>
> > Can you resend with that
> > approach? I don't think I'll have any more comments after that.

I sent a new revision, v12, that incorporates the kunit_assert stuff.

Let me know what you think!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
