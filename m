Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9B2153260
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 15:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBwUw/zxEev65FJ0zNG8sTgKLfP6Okn1zh3xpQxLw80=; b=V/KRvFzZ/qBrdm
	o5QyQLCfLFj2Jff9/yQhoJd7goc2AmKDhfbyjGR0dwnGos+tXl8jKWgbyz3MOiiNpjLv+tNWUri/l
	lB8ieMxIduJJT1qLUmEUDXKKaqEem38ZSKFFN46s7O2RokZgk8pHgtKRdpnV7ukTPOxOELH7fZ/UE
	l0NXl/sSLVrbsR9C8JqhzZKcerVgI2f3/U7mp6+8KWxbuEy2eQIblFhBKZaUqwiqubOYHuCjgaNZv
	DhNeriH303F3TMLLEz/juXZWqrzdIGpXl8gLI2T/3LphcnLIG3d+ZbWwCkxXiPkGm1zkCIx/NP0DW
	YS8BO6AnzEgQqdqSY2eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLEg-0005CT-E8; Wed, 05 Feb 2020 14:00:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLEd-0005BN-9Q
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 14:00:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so2413803ljh.5
 for <linux-um@lists.infradead.org>; Wed, 05 Feb 2020 06:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T6BKqmll16sOInobfU6VyCkhuSwCXAOJUDDJ8K0lOl0=;
 b=VgG4hoC6yd/IUqmqQbcNuGA7+KHrljNP38zXsPCrMieBIgjrAwhhfdzcaF0wELZ8RL
 yBVIuQrb1oWG6ojeJaSY9Ay+dtpaaVoRFC4s0n+6K4wRcOipGmJw9XbP1D3pGz75OqXe
 V/rECAXvaGkGvN/sE0K2hEIc2aBWkhWtqgh/3KH2XjN7hNu2aMaPIoxcT8yqwbdVN6UZ
 9mjXkGz8+g+Z/dJMXhbel0kN65lMuCSVnefy7m5oOBZn/Cp0EnQELFF6Zroe2wOC/Zis
 Po2bKcVwcccJexK0sqpRJrb8tjmJQpQGxoMen3XYk7u89M60ePE67TE9Je4dHkyIaLsp
 MiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T6BKqmll16sOInobfU6VyCkhuSwCXAOJUDDJ8K0lOl0=;
 b=CDT3TOR/LyWxlF4aGb62AOmWTJX9x0W5qDzXONU47KSt4F8pSucO4qS246jf2clRDz
 Ea0UEZWI2cKKFzjTfo+ahCq4xFafofhWFHInZeFlDjc+rWVXEX3LF7VFoLqgZDPbJ1+u
 4c4Bv8WtB1xFv8QavYHzARmzFwXYGMorH0Mvy7mpgjn1AQufjEgj9y2OlWtslmAjqIOQ
 elb3xjCgXM2g+pxWb8E0sHTTY15kSlV7YH3C/s5bSwQ/bhO6dI5+khn1+KC/cK/+G5Da
 oR2a5gdtY5wsICVsAtdRXffEHdRQDpz0ctld4mMY1IwJyO9QNLZsfiv49UWyXudA8AAq
 Ji+w==
X-Gm-Message-State: APjAAAUULBG4uO8boiwrIgcrAjIHbmHwD/lqhxKDc8W3fNkJw7xT76KV
 F5JdrmRU95A7y1W9K7iYwGfJdXw1eML6lHwPfoJK/DbeUCzeUA==
X-Google-Smtp-Source: APXvYqzj7tuFJADMUMOVkY2HqHSaxJjv9q5s2AymZMtv0xgeFVL4tGw81sR0rNxMr/ssyCV83GUHYuORFKpo+Iupddc=
X-Received: by 2002:a2e:865a:: with SMTP id i26mr20719314ljj.236.1580911252143; 
 Wed, 05 Feb 2020 06:00:52 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
 <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
 <20200205124908.GL14879@hirez.programming.kicks-ass.net>
In-Reply-To: <20200205124908.GL14879@hirez.programming.kicks-ass.net>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Wed, 5 Feb 2020 16:00:41 +0200
Message-ID: <CAMoF9u12nko0rBGT_iOgXtapuRitS9jSMzAoo8tTykn2dZGK7g@mail.gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_060055_359576_72A8BB0B 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tavi.purdila[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, Akira Moroo <retrage01@gmail.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 Will Deacon <will@kernel.org>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 5, 2020 at 2:49 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Feb 05, 2020 at 02:24:38PM +0200, Octavian Purdila wrote:
> > I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I
>
> It might not have been, but presented with this patch, I feel like it
> should've been :-)
>
> > understand your point that a 64 bit architecture that can't handle 64
> > bit atomic operation is broken.
>
> (sadly they actually exist, I shall name no names)
>
> > One way to deal with this in LKL would be to use GCC atomic builtins
> > or if that doesn't work expose them as host operations. This would
> > keep LKL as a meta-arch that can run on multiple physical
> > architectures. I'll give it a try.
>
> What is this LKL you speak of and how does it do the 32bit atomics?
>

LKL is a build of the Linux kernel as a library that can run in many
environments including multiple architectures and OSes [1]

For 32bit atomics LKL also uses the asm-generic implementation. It is
very similar with generic 64bit atomic implementation and it is used
by multiple 32bit arches. I think this was my original reasoning for
this patch and not going with C11 atomics.

> One thing to keep in mind is that the C11 atomics (_Atomic) don't
> trivially map to the LKMM -- although I keep forgetting the exact
> details, there is a paper on it somewhere.  Also, once you're limited to
> a specific arch the issue also becomes much easier than C11 vs LKMM in
> general.

Thanks, I will look it up.

[1] https://github.com/lkl/linux

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
