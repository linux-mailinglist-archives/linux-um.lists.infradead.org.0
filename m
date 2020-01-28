Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B02814B030
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ickIAZoeOiYG0r+H3iQF/NnjXLnlVN18HEeL4xefQyU=; b=qeD8QmcUbIolwY
	0dR+XBnV79efo8YoI95TzAqEwi3OKLH+lZhR/m5AZuzXpIrYC7doVjCwNZ0AwF2xjrpi0NPPRlXI6
	ihrbSY5O5QnebZix6fVpfoXkdCc5b9Ds4N8OubdIlbCdbSlbx4Ei4P3xn0SUsOKc2oeUACGVxtUEv
	D+G+ZOAIfvwNwQDMVj3fTN6H23O9QELCJvHO+HUyODnxg6LVAasGplNp379c8xgh8Rer5tTCCfepQ
	0NJXL52xH2hVIw4eAJgbzsXHOPUMgurf7ohS2acjCFvhTOMtRHCmDrO+Ziugf8W0qUrSQjHpBWLGS
	ll+5xn3AANfpk4wbh8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwL9z-0003VY-BK; Tue, 28 Jan 2020 07:19:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwL9w-0003UX-Kf
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:19:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id s1so5557356pfh.10
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3k6NKPH7fR4pIU1iDhzXIE3sCOzlwL1ZN9ZIEkKxkCM=;
 b=srujTkRlXcMYfFAU4ajeK8XzFxdSFdtymlFDHFWwtjl6RYYdXfct49yGfp0R3Ft/Gk
 b21LQneptyAycuw/QTxfkxRds7UsDs0nOcvfIjhPf5kg6HG/fumf1p+SOyhPDP/nWgeP
 N5AwCoyysSHeNcp/4iev4K0SThnflmL0sS9bNw5CfETHliSa70QE6XwKZ6Bfqiixt3vq
 zSUjHO7HdXpF/GNVk0WVWL+Zc6eaGXSoDWtvFQJdB+9aFEzKZ4wrtQexneK+aEI716Ld
 KNu+IVGouW2wF3H1iVqEscIlzXyahFYpfZmS4xEkSoV7/uFbghBbqV5xBi32Vua8xClE
 x64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3k6NKPH7fR4pIU1iDhzXIE3sCOzlwL1ZN9ZIEkKxkCM=;
 b=YU+58TJMF1ZNJdkkY6RvZNELCPUX+cKghAAsJTvUJWcwSMxyorneubed4uBYHQx43x
 uScDKwQHNy9IPcrrdOHSuJ7fBiMeL5Nlsyk7ZmFA4TxBZxI4rKuZUmH/HxKzxzDetWve
 Q4FJ7DRbGj5+ordEnlMsLyAcFOXTXVYMqoxNleqfU0HixtZH7o6PdqN09ouUZGMcudsU
 ZkZdKokyqk1hKNknLHpqQUmN0pR2YKTQdP3KDlJZMN8HjM4VuH5+B8b9blhTWTT97L/Q
 VfwbQup/G/ESEZLLL07Gae/o7RHT/wKcVg0hsl9sgjV+Kx+vyUqVJiiS/Lg5QRNvOvGQ
 wYpA==
X-Gm-Message-State: APjAAAUtdToYHK646aVDXMJFYMpznRspYpdbqycvWYa/RHoqSbw5XaNm
 NaWiMxt/eqHdDC9yFL5HStKWE4XdjC3AJVBHeiqZnQ==
X-Google-Smtp-Source: APXvYqy6yh7GNcB6s7imvcW4J3ThOHyV8BHpXsRpcDoPYs5OW9TxXs3eEbw4y8pGn08q7d0OirpiVqtM1t8RAzdN/Q8=
X-Received: by 2002:a63:597:: with SMTP id 145mr22603404pgf.384.1580195978166; 
 Mon, 27 Jan 2020 23:19:38 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
In-Reply-To: <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 27 Jan 2020 23:19:27 -0800
Message-ID: <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_231940_705643_551AD38B 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Logan Gunthorpe <logang@deltatee.com>, linux-arch@vger.kernel.org,
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
 Alan Maguire <alan.maguire@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/23/20 4:40 PM, Brendan Higgins wrote:
> > Sorry for the late reply. I am still catching up from being on vacation.
> >> > On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >> It does beg the question if this means kunit is happy to not be a tool
> >> to test pre basic setup stuff (terminology used in init.c, meaning prior
> >> to running all init levels). I suspect this is the case.
> >
> > Not sure. I still haven't seen any cases where this is necessary, so I
> > am not super worried about it. Regardless, I don't think this patchset
> > really changes anything in that regard, we are moving from late_init
> > to after late_init, so it isn't that big of a change for most use
> > cases.
> >
> > Please share if you can think of some things that need to be tested in
> > early init.
>
> I don't have a specific need for this right now.  I had not thought about
> how the current kunit implementation forces all kunit tests to run at a
> specific initcall level before reading this email thread.
>
> I can see the value of being able to have some tests run at different
> initcall levels to verify what functionality is available and working
> at different points in the boot sequence.

Let's cross that bridge when we get there. It should be fairly easy to
add that functionality.

> But more important than early initcall levels, I do not want the
> framework to prevent using or testing code and data that are marked
> as '__init'.  So it is important to retain a way to invoke the tests
> while __init code and data are available, if there is also a change
> to generally invoke the tests later.

Definitely. For now that still works as long as you don't build KUnit
as a module, but I think Alan's new patches which allow KUnit to be
run at runtime via debugfs could cause some difficulty there. Again,
we could add Kconfigs to control this, but the compiler nevertheless
complains because it doesn't know what phase KUnit runs in.

Is there any way to tell the compiler that it is okay for non __init
code to call __init code? I would prefer not to have a duplicate
version of all the KUnit libraries with all the symbols marked __init.
Thoughts?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
