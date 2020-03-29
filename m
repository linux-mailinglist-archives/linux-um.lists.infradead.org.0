Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7605C196FBF
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 21:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUrbtkDLERSyRk687UU9rodzB5QUKjjWNTG476DNhcw=; b=tRD4MbDnvPWlJQ
	NwKwP+0oBl5s59i/P14IEz+ex6v9vW0qqavs14gXLjyCvNFWgy2k9y3pgzCKaA/e7afNq7vlzzn3F
	pWiD5qD3Lw4wYS4Ej9BhcC4rYaWl9S4bj3GC1Ited1RF8YEn9BvbsfbRgskVZ/O5DhUOuYgt+hoSR
	cq39yNaEg8yJ2R7+ga6Hsh0UtBPW2tCG9S8Jx0cmjoLuD2YTibkeBS/9f8VtWd2W0teb+iho0nsuN
	8XwVlZcvMuMH73xVpc2UvqrnxWrBk6oa6JRMIBAy4D7k4eDaf0GB2wHDRYuU/yDJypeIuNf6zDIbg
	Hxu9Vb8boVRnkDbxJb3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIdkg-00072Q-Tj; Sun, 29 Mar 2020 19:37:46 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIdke-00071b-25
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 19:37:45 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jIdkc-003mEg-Bj; Sun, 29 Mar 2020 21:37:42 +0200
Message-ID: <07016efc79212aa1b1584b45f3e6bfdbacbfe5c9.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] um: implement CONFIG_CONSTRUCTORS for modules
From: Johannes Berg <johannes@sipsolutions.net>
To: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 21:37:41 +0200
In-Reply-To: <CAFLxGvw7ucjGr0xv2_KRg3G7jBmL+bv+H3jMqFShFbWpP-xxbg@mail.gmail.com>
 (sfid-20200329_213643_619110_F211A951)
References: <20200206204018.98f745aed1a1.I986f68ddedf1cb4ef59abf4fbcb5931ce99bc2e8@changeid>
 <CAFLxGvz+vs+zD8=Y+eE1RA=QhkWYPea5R9o5vrhLs3jz4G-wGg@mail.gmail.com>
 <738a7f3393e1b161521777e3422513f9b6ac7c7b.camel@sipsolutions.net>
 <CAFLxGvw7ucjGr0xv2_KRg3G7jBmL+bv+H3jMqFShFbWpP-xxbg@mail.gmail.com>
 (sfid-20200329_213643_619110_F211A951)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_123744_097242_95B4D155 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, 2020-03-29 at 21:36 +0200, Richard Weinberger wrote:
> On Sun, Mar 29, 2020 at 9:32 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> > On Sun, 2020-03-29 at 21:31 +0200, Richard Weinberger wrote:
> > > On Thu, Feb 6, 2020 at 8:40 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > > From: Johannes Berg <johannes.berg@intel.com>
> > > > 
> > > > My previous attempt at implementing CONFIG_CONSTRUCTORS failed,
> > > > in part because it was badly done, but also because we just need
> > > > the gcc/libc constructors to run really early for what is really
> > > > a relatively normal userspace program. For some more details, see
> > > > commit 87c9366e1725 ("Revert "um: Enable CONFIG_CONSTRUCTORS"").
> > > > 
> > > > On the other hand, we *do* need constructors for modules, if we
> > > > want GCOV_KERNEL (and eventually KASAN) to work there, since the
> > > > constructors that gcc emits will need to be run.
> > > > 
> > > > So here's another attempt to implement CONFIG_CONSTRUCTORS: don't
> > > > touch the ones in the main binary, and don't do anything in the
> > > > main init code (do_ctors()), but still allow enabling the symbol
> > > > and associated code for modules.
> > > 
> > > I have to admit I don't know all details about constructors.
> > > Do I understand this correctly that constructor code is never code which
> > > depends on kernel internals? So it will always be gcc internal stuff?
> > 
> > Yeah, more or less. You *can* mark something as
> > __attribute__((constructor)) and the compiler will emit it properly, but
> > that's not really something we do in the kernel.
> 
> Yeah, I grepped for that gcc attribute and didn't find anything because first
> I thought the main use cause of CONFIG_CONSTRUCTORS is supporting
> such things.
> As soon this is the case, UML will fail badly. But this can always happen. ;-)

:)

I think even in the normal kernel many things will fail - it's pretty
early even there.

For now, I think this is fine... Maybe we should remove some of the gcov
hacks though? Haven't looked at that closely.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
