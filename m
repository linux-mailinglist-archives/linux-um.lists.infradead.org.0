Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B5119872F
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 00:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+v4q7LucDL95qdlP0A1pLzJZ6K2AkD5c9Xn5zLhRs2A=; b=Cf73jL2vcVrL+O
	7DjNqFBOBZ+SJQyzWLvq9STVS6Q02CP7KGI6YGo44HkKUUyNEuc2D99wZxmlnRNlqCr/z5+9OPhdN
	1T5N5CWEEKQOYHngw2y9qdCxpQyoh4hb3lnv7ujNhQ9qlBN1207Fhh+PCY4DMsyLTDH/SHLepzinE
	5usaJbus6wNF/FMkvomPtoKUKWSWPRch4tRAyQ8D8Hxejz7vDGkUJUjwDzm94EerlOIZQEpRcTh53
	W1ZS75N/Oe3XGlau+qeUKEADPaaG+3axImVBYK5p/Q/ORMqm0UvcOX50OLtb4uPwtPMS8VrCxTPSx
	VUs3x3VTr3G/hi0XDirQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2ey-0003mk-S6; Mon, 30 Mar 2020 22:13:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2eJ-00039n-Tu
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 22:12:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id c187so497797wme.1
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 15:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L38ZufUAeeWqGX3EMWl9gTrNlkwDK5WSvnGnXqaOY4c=;
 b=EjdirZ7oYqjE1/6bUUj1QakLJh+mphM2G3TJ+JY4GTI95XicMIEE6DooKZ4Lg/9qj+
 rRacN2UPTVt49/zglWtuvOdK0vfBmlyB4skljcWnk+wfc5N2XmMWUtvIxv9Fl5tNN7Z7
 LYHcFW/nJLH9R12Vo7FqBRcEawN1m9vps49c3ThcMAOwwyz+kEEdpld8RpnjXwuqrdNg
 DewNW6RnmJmNQJ1d3G2lOHOoXPfUpZZcDlo49GICjsxgA3IqHRlwPuJ1Wb/EhVqa3Ih5
 SZqrEyLsvs5iuNkLDP4H7aZVlIimIajVNX5shIybIsq/DEz4bpM1M9A+QpheS6FbpKxv
 VUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L38ZufUAeeWqGX3EMWl9gTrNlkwDK5WSvnGnXqaOY4c=;
 b=PMHW/4tGa7gZv2sdGyHmQfwWzjAjmBXrtfvMxI5Pza/QhllRl78dNeTtsM+5L4xGUt
 bhQyIP/tOQq4dXm7q7HulkNtMWAsvK9QSVbry4MZmCrHyb+V9tuzofhO/l3MShRixV1R
 UROIagbJEVi50Tc5Emxne33FaXcTX+ezbp/j7y6zqk5KmF/1mQ5hweeEVugiCs1tHIXB
 nITRkomUMnY8WZpWxqWwIzuVwz2/iZr4mTzjYFaG1PjRDcH1+7mHRi5I/IPfUIkIe2JO
 Ns84l4PTwAxmxjmg5no9hhEx6asRzXOFfgNOYsko48djjZah/SPM3/ntGMwLs8DWzn1g
 DMnw==
X-Gm-Message-State: ANhLgQ0LMI+Oo9hEI6k+zeoeZO1p6dcwb7JSpiobaUk8pxBzurFIAHx0
 rn0+PHmfxChrWd2oj1hfMy5BnzFdoCccBReBtZw=
X-Google-Smtp-Source: ADFU+vsjAb67I2NV3ssiFq/RQxkrswg3Qlu0QTr/npjhyZXQiwL16smG26uxTQO6toQ0jENCHPUOhrdFpX5Y0L7lt64=
X-Received: by 2002:a05:600c:257:: with SMTP id
 23mr207008wmj.155.1585606370369; 
 Mon, 30 Mar 2020 15:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585579244.git.thehajime@gmail.com>
 <dca6ea7260830a03c060f57e6ab9961f16ad55ed.1585579244.git.thehajime@gmail.com>
 <a84f3d7bcddbaa6125349c4bcdec6e3e07d6b783.camel@sipsolutions.net>
In-Reply-To: <a84f3d7bcddbaa6125349c4bcdec6e3e07d6b783.camel@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 31 Mar 2020 00:12:38 +0200
Message-ID: <CAFLxGvyFqXZSmMcD_=o81AHLzdM_u2iH8h412w7VZrxON7Ohig@mail.gmail.com>
Subject: Re: [RFC v4 02/25] um lkl: architecture skeleton for Linux kernel
 library
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151252_142116_F1CAFD6E 
X-CRM114-Status: GOOD (  31.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Yuan Liu <liuyuan@google.com>,
 Levente Kurusa <levex@linux.com>, Matthieu Coudron <mattator@gmail.com>,
 Conrad Meyer <cem@freebsd.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Jens Staal <staal1978@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 "Edison M . Castro" <edisonmcastro@hotmail.com>, Xiao Jia <xiaoj@google.com>,
 Mark Stillwell <mark@stillwell.me>, Patrick Collins <pscollins@google.com>,
 linux-kernel-library@freelists.org, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Johannes, Hajime,

On Mon, Mar 30, 2020 at 11:53 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Mon, 2020-03-30 at 23:45 +0900, Hajime Tazaki wrote:
> > From: Octavian Purdila <tavi.purdila@gmail.com>
> >
> > Adds the LKL Kconfig, vmlinux linker script, basic architecture
> > headers and miscellaneous basic functions or stubs such as
> > dump_stack(), show_regs() and cpuinfo proc ops.
> >
> > The headers we introduce in this patch are simple wrappers to the
> > asm-generic headers or stubs for things we don't support, such as
> > ptrace, DMA, signals, ELF handling and low level processor operations.
> >
> > The kernel configuration is automatically updated to reflect the
> > endianness of the host, 64bit support or the output format for
> > vmlinux's linker script. We do this by looking at the ld's default
> > output format.
>
> Can you elaborate what the plan is here?
>
> I mean, you're not actually "unifying" anything with ARCH=um, you're
> just basically splitting ARCH=um into ARCH=um-um and ARCH=um-lkl or
> something. Is there much point?
>
> Even the basic underlying building blocks are _very_ different, e.g. in
> UML the host interface is just a bunch of functions that must be
> implemented (os_*()), while you have a "struct lkl_host_operations". If
> we can't even unify at that trivial level, is there any point in it at
> all? I'm not even really sure what those ops are used for - are all of
> those things that the *application* using LKL necessarily must provide?
>
> Similarly with the IRQ routing mechanism - two completely different
> concepts. Where's the "unifying"?
>
> Ultimately, I can see two ways this goes:
>
> 1) We give up, and get ARCH=lkl, sharing just (some of) the drivers
>    while moving them into the right drivers/somewhere/ place. Even that
>    looks somewhat awkward looking at the later patches in this set, but
>    seems like that at *least* should be done.

Yeah, this would be a goal.
UML and LKL are quite different but they should share at least their userspace
drivers.
I also don't mind if we don't share every driver at the beginning but
it should be
a feasible goal for the future.

> 2) Ideally, instead, we actually unify: LKL grows support for userspace
>    processes using UML infrastructure, the "in-kernel" IRQ mechanisms
>    are unified, UML stuff moves into lkl-ops, and the UML binary
>    basically becomes a user of the LKL library to start everything up.
>    There may be some bits remaining that are just not interesting (e.g.
>    some drivers you don't care about would continue to make direct calls
>    to the user side instead of lkl-ops, and then they're just not
>    compatible with lkl, only with the uml special case of lkl), but then
>    things are clean.

A few months ago I though this is doable but now I'm not so sure anymore.

>
> Now, of course it seems like (2) would actually be better - LKL would
> actually get support for userspace processes using UML's tricks, most of
> the code is unified, and even LKL's users can take advantage of new
> things. At the same time, all of the duplication is avoided.
>
> However, I just don't know if it's actually _possible_ to do that
> though. Conceptually, it seems like it should be - why shouldn't a
> library be able to spawn other userspace processes - I mean, it's not
> really in the model that LKL really _wants_ since it's supposed to offer
> the syscall API, but you could make a "bool run_normal_init" or
> something in the lkl-ops for the user of the library to determine what
> should happen, right?
>
> However, there clearly are huge differences between LKL and UML in all
> respects, and I don't know if this wouldn't conflict with the library
> model, e.g. there may be linker issues etc. Or maybe the specific UML
> interrupt handling is required in UML and cannot be done in LKL (but
> then perhaps it could be put into the hypothetical UML-application vs.
> UML-the-LKL-library?)
>
>
> Ultimately, personally I think it's going to have to be one or the other
> of those two options though, I don't really see much value in what
> you're doing here in the patchset now. This way just messes up
> everything, it's not clear what's UML and what's LKL, and they're
> intertwined with ifdefs everywhere; just look at where you have to add
> ifdefs in patch 23 - how would anyone later understand which part gets
> compiled for which of them?
>
> johannes
>
> PS: actually having something like lkl-ops in UML would've been nice
> also for my "time-travel" work, since it neatly abstracts the timers
> out. I do wonder a bit about the overhead of jumping through function
> pointers all the time though, it may be worth rethinking that overall
> anyway!

Agreed. UML can also learn from LKL. :-)

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
