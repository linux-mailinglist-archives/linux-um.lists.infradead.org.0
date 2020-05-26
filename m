Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B06199FDD
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFUdXTs/i9Lur8G1rAsnCarAUp60pYs06iPNrfTCerU=; b=Izevd1un5q5DCS
	2NfUDOCLL/f758ssO+xErvUyOXMO4c2vgBH2GjyjzXvLr4LoBhhv4kXQQQiJK3tHQ5v4vwKZ+hOHQ
	E3u3UJc+SHbl8XcbKNMlBKaSQr7Fzs+ZckL+BvAJTKJCxEDqx0KzwQViWvJSmbsqbTw/w2i6tt/wq
	Z/Im5u7Pz0/Y8UyB7/LLGEU2n/8qN8FVSSei+fUC8PRD0qeAQQ+SRdRbLVWsoA7qujUcT1Kt3pqMu
	0zjtiBjd8yimD1SY0ZK0dQ6+HiikQNZlZDFG97cc6wSM+w7r2uMNfF98tLY5wlrM+tW5gJ+NcbGCZ
	S3v58xWZkZ73r61hMF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJNJp-0005QR-Dy; Tue, 31 Mar 2020 20:17:05 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJNJm-0005Pe-3E
 for linux-um@lists.infradead.org; Tue, 31 Mar 2020 20:17:03 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jJNJk-00A277-1B; Tue, 31 Mar 2020 22:17:00 +0200
Message-ID: <ba2199bd17b6457c97305f6688b13ed36e7feac3.camel@sipsolutions.net>
Subject: Re: [RFC v4 02/25] um lkl: architecture skeleton for Linux kernel
 library
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>, richard.weinberger@gmail.com
Date: Tue, 31 Mar 2020 22:16:58 +0200
In-Reply-To: <m21rp9xaqt.wl-thehajime@gmail.com>
 (sfid-20200331_090821_732299_F2DE3B18)
References: <cover.1585579244.git.thehajime@gmail.com>
 <dca6ea7260830a03c060f57e6ab9961f16ad55ed.1585579244.git.thehajime@gmail.com>
 <a84f3d7bcddbaa6125349c4bcdec6e3e07d6b783.camel@sipsolutions.net>
 <CAFLxGvyFqXZSmMcD_=o81AHLzdM_u2iH8h412w7VZrxON7Ohig@mail.gmail.com>
 <m21rp9xaqt.wl-thehajime@gmail.com> (sfid-20200331_090821_732299_F2DE3B18)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_131702_292486_D83E8123 
X-CRM114-Status: GOOD (  33.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-arch@vger.kernel.org, levex@linux.com, mattator@gmail.com,
 cem@freebsd.org, tavi.purdila@gmail.com, jiangshanlai@gmail.com,
 staal1978@gmail.com, motomuman@gmail.com, linux-um@lists.infradead.org,
 retrage01@gmail.com, petrosagg@gmail.com, liuyuan@google.com, xiaoj@google.com,
 mark@stillwell.me, pscollins@google.com, linux-kernel-library@freelists.org,
 phh@phh.me, sigmaepsilon92@gmail.com, luca.dariz@gmail.com,
 edisonmcastro@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

> I always wrote down the current plan that I have in my mind in the
> cover letter (patch 00); please take a look at the "Milestone" block.

Right, sorry.

> > This patches is a first step toward upstreaming *library mode* of Linux kernel,
> > but we think we need to have several steps toward our goal, describing in the
> > below.
> > 
> > 1. Put LKL code under arch/um (arch/um/lkl), and build it in a separate way
> > from UML.
> > 2. Use UML driver implementations in LKL as a minimum set of patches
> > -  Only support x86 sub architecture (dependency to UML drivers)
> > 3. Support broader host supports
> > - add virtio device features
> > 
> > For the step 1, we put LKL as one of UMMODE in order to make less effort to
> > integrate (make ARCH=um UMMODE=library).  The modification to existing UML
> > code is trying to be minimized.

> The current step (1 in the milestone) tries to cover this goal:
> splitting ARCH=um into UMMODE_KERNEL and UMMODE_LIB.

So maybe we're doing this backwards?

I mean ... you're trying to minimize the UML code changes, while I'm
sort of arguing for maximizing them, to achieve a cleaner split.

In a sense, I think if this is to happen, then we're in it for the long
haul. Meaning that we don't actually need all of this working
immediately.

So I think conceptually we should answer the questions that I raised
below first (basically a kind of "can it be done?" question), and then
work towards that goal? IMHO.

> > > 1) We give up, and get ARCH=lkl, sharing just (some of) the drivers
> > >    while moving them into the right drivers/somewhere/ place. Even that
> > >    looks somewhat awkward looking at the later patches in this set, but
> > >    seems like that at *least* should be done.
> > 
> > Yeah, this would be a goal.
> > UML and LKL are quite different but they should share at least their userspace
> > drivers.
> > I also don't mind if we don't share every driver at the beginning but
> > it should be
> > a feasible goal for the future.
> 
> Sharing drivers code is also included in this patchset, step 2 in the
> milestone.
> 
> I was thinking that implementing os_*() functions with lkl_host_ops
> would be the further goal (e.g., step 3 or 4).

Personally, I think this is backwards. That step is the actually
*interesting* part, because if this turns out not to be possible, then
we should pick option (1) instead of trying to do option (2), failing,
and leaving the code a mess (at least personally I think that after this
patchset, the code is kinda a mess with all the ifdefs, duplication,
etc.) Yes, I know you're in this for the long haul, but still - it'd be
a shame to have to do that.

So in a sense, I myself would actually prefer to have an LKL _without_
drivers, but integrated well with UML, over the one that you have now.

> > > 2) Ideally, instead, we actually unify: LKL grows support for userspace
> > >    processes using UML infrastructure, the "in-kernel" IRQ mechanisms
> > >    are unified, UML stuff moves into lkl-ops, and the UML binary
> > >    basically becomes a user of the LKL library to start everything up.
> > >    There may be some bits remaining that are just not interesting (e.g.
> > >    some drivers you don't care about would continue to make direct calls
> > >    to the user side instead of lkl-ops, and then they're just not
> > >    compatible with lkl, only with the uml special case of lkl), but then
> > >    things are clean.
> > 
> > A few months ago I though this is doable but now I'm not so sure anymore.
> 
> For the part of (2) which Johannes pointed out (I mean the part "UML
> stuff moves into lkl-ops"), I become to think that implementing os_*()
> functions using lkl_host_ops would be also interesting if those
> re-implementation makes the glue code eliminated.
> 
> I'll work on that.

Don't go too fast :-)

I really think that this only makes sense if we can also share much of
the other code, e.g. the interrupt processing, thread model, etc. If we
just share the lkl ops underneath, and then end up implementing two IRQ
models and all on top of those, IMHO we've won nothing.

So I (at least) really see it as a choice between these two options:

1) add LKL as arch/lkl/ and share the drivers, but not the arch code

2) really unify LKL and UML, and have them share the arch code, and make
   UML a special case of LKL, but not in the sense that it has vastly
   different arch code (like special interrupt handling, etc.)

Now, you allude to the fact that UML is pretty much x86 only, and
perhaps that's a point where we can do (2) but only support userspace
programs on x86, or such? I don't know where the host architecture
actually comes in much in UML, and where that may or may not be the case
in LKL.

> For the other part of (2), I agree that your definition of the
> unification will be the best and final goal of this integration.

Fair, but the problem is that we have to decide *now* whether it's
actually possible or not. If not, then IMHO it's a bad choice to even
put LKL under arch/um/.

> But, especially the support for UML userspace processes in LKL is not
> easy as far as I can see

OK, I'll bite - why not? I mean, what's different enough in LKL and UML
to make this "not easy"?

I'm not trying to paint you into a corner here with that, I'm just
trying to understand the innards of LKL better. I have a _bit_ of a
grasp of the UML internals by now, but of course not LKL.

So where do they differ? Conceptually, they seem very similar, but the
details actually are different.

But I have the same question on e.g. the IRQ model. I mean, OK, I
understand that LKL started from a different base and all, but is it
actually *necessary* for LKL to have a different IRQ model? Or is that
"just" intertia?

> Or the title of the cover letter is somehow overstatement: instead,
> "Minimum integration of UML with LKL" or something like this would be
> better ?

Heh, well, doesn't really matter?

But again, there are a few different aspects here:
 - what's technically feasible
 - what this patchset achieves
 - where we want to be in the end

I think right now these are diverging enough that we can't even answer
that last question, much less find the road to get there.

> Since the patchset of LKL is relatively huge, I was trying to make a
> minimum patchset for the first step.  Because having #ifdefs and glue
> code makes existing arch/um code untouched, I took this way to make
> the patchset as small as possible.
> 
> But if this is not the case, I will look for the other way and touch
> arch/um code to fit the current LKL implementation.
> 
> What do you think ?

I think that'd be fine, if indeed that's what we want to do.

I really think we're beating around the bush, and need to first figure
out the technical differences between UML and LKL and decide between the
options (1) and (2) above. Maybe there's a compromise there somewhere,
where some small bits of code still _are_ different, but IMHO having two
(IRQ, thread, memory) models, two host interfaces (lkl-ops vs. os_*
functions), even two include/asm/ source trees (and so on) is not
appropriate.

This may take some patches, and some experimentation. I'd leave drivers
out of this initially - you should be able to test LKL with something
simpler, right? The API surface is basically the syscall interface as
functions, so you can start the library and call something simple
initially? Though I guess you need some driver for the IRQ model to make
sense, etc.

And like I said before, that decision will frame everything else. I
really don't think we can make significant progress here without having
decided whether this is possible.

Perhaps UML *can* become a "special case" of LKL, with a special API
function (that's not part of the syscall surface) to "boot(cmdline)" or
something. But if it can't, and has to remain as separated as the two
are today, I would argue we're better off just not calling them the same
architecture.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
