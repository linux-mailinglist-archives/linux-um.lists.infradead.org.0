Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678A31557CB
	for <lists+linux-um@lfdr.de>; Fri,  7 Feb 2020 13:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJ14iYOE57nlTty2YaaNhbdp1M9e4r1nJcqIfDWM1Aw=; b=kjaMJ2FaHs0+Me
	1RiVieoQFADDBzslaCIi9fCKnWbNejRKFlBH0zJ10A5SJW9i3WxKweTiXuBwq5lEUwMCy2rnpLByg
	9UM6rJ/ZHYvbInFaTQL+BxoVNe/Ou4epYYKjnnR+oG+YKb1maHhyp/x15Uv0/7VM9yNnHQZhWTPjW
	kWZLSKiENmR7OlpZbudhX7WdVOigVCLALpC4+ZcLpYZ3WyuKKWEQjog3uvRmw2gK25Yn7knIagYHo
	iITiEpFqT2fSUqVuImSkLEiLsnmMFjY+A+OyiOyFCXm8gS8xAw4KzPgzazbeqFj2SrFzgKlvXT7K/
	vwRVBqzU0QpJDnchUO7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02oG-0007kl-Ph; Fri, 07 Feb 2020 12:32:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02oE-0007kA-Cp
 for linux-um@lists.infradead.org; Fri, 07 Feb 2020 12:32:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so1932138ljj.11
 for <linux-um@lists.infradead.org>; Fri, 07 Feb 2020 04:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jER99mriC9vlsKgoniDzTDraWAtVeo79r1G1mcS9/yo=;
 b=i+KNNInhNeKgdwb4M2pZ43rlElAqgkerzlqqO8vbqu9DY403/yiJYC7CJv7HV7K+R1
 cdWqsM0SulytZS06dkivMpbdGm5r1e35uHvedTJEz3jc4dutBWo0VkfPA3vDw73Q51uv
 vG8QeC9akDg0ntULb0IZ3zlpc1DL2KGAIHwHPgm0wbXUJGJGvhVJSJ3PIkU1BnstJSMb
 mBBekgKBJY2f428zZ0oqw2uryFUc6RLyAGVTHmcqQdyRNKgdKtRHf0shZNq6bk37xMVo
 m8Z36HySfjjaqBG8fIcUkqIxuU3bCggcBt52uKwsPIEd6cwUraw7KVVTecMZN3G3ZJRI
 8umw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jER99mriC9vlsKgoniDzTDraWAtVeo79r1G1mcS9/yo=;
 b=uQg9CVEDHC9dDSJWY47hbP8fjLmo6HD/0J1YzoNIZW/pFFyFhINHO/UTeh79k3hmlB
 wZgQm9rAxKW1cwOunrYr0SVTFaanU38zvr0F5Wwjvc5qN0YxSo3Zs/nf96JV3RgJSOq/
 GT7uWi6qUxwrqlDqThBXLQlycouHfhwAU/oXcckLKEPNSVR3Qjmrz3BHfa7liZL5VgbI
 KO0ZAFwaKNnQ0KTYip3qToEvlql6rKAPw93LMFRG2nqPC0OksakRv2AcW7v3VEunFtCm
 a16EM59lYeZZLpVlccNWRyu4AwtEPsYNdi4fE2UgJn/loDZ6QFm/AzWbIqUKlPYB4yfS
 JovA==
X-Gm-Message-State: APjAAAWlLeE4L7PT+GPCxrGpu31w2LF71OYj1u8AEZL4JKDs9LfZ9LgC
 BdBA/6CEsuFZdYq/vR91fj5f1INhSlZvd6FNrDA=
X-Google-Smtp-Source: APXvYqyaBbTdhXSQyw3jwcBEFFQYhB5h606+WnuhtKg8Y0mSzTh4+NF28dn5xD83wmDCdbp3B+IJ3XryahbQefUCmVg=
X-Received: by 2002:a2e:58c:: with SMTP id 134mr5146580ljf.12.1581078751991;
 Fri, 07 Feb 2020 04:32:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
 <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
 <20200205124908.GL14879@hirez.programming.kicks-ass.net>
 <CAMoF9u12nko0rBGT_iOgXtapuRitS9jSMzAoo8tTykn2dZGK7g@mail.gmail.com>
 <20200205171306.GP14879@hirez.programming.kicks-ass.net>
In-Reply-To: <20200205171306.GP14879@hirez.programming.kicks-ass.net>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Fri, 7 Feb 2020 14:32:20 +0200
Message-ID: <CAMoF9u3qqJXwPiPnmbRXxs2NfPTVYxvHbbcdRnNR5+ZkTiAWuQ@mail.gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_043234_461357_27CA6474 
X-CRM114-Status: GOOD (  19.28  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Feb 5, 2020 at 7:13 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Feb 05, 2020 at 04:00:41PM +0200, Octavian Purdila wrote:
> > On Wed, Feb 5, 2020 at 2:49 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Wed, Feb 05, 2020 at 02:24:38PM +0200, Octavian Purdila wrote:
> > > > I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I
> > >
> > > It might not have been, but presented with this patch, I feel like it
> > > should've been :-)
> > >
> > > > understand your point that a 64 bit architecture that can't handle 64
> > > > bit atomic operation is broken.
> > >
> > > (sadly they actually exist, I shall name no names)
> > >
> > > > One way to deal with this in LKL would be to use GCC atomic builtins
> > > > or if that doesn't work expose them as host operations. This would
> > > > keep LKL as a meta-arch that can run on multiple physical
> > > > architectures. I'll give it a try.
> > >
> > > What is this LKL you speak of and how does it do the 32bit atomics?
> > >
> >
> > LKL is a build of the Linux kernel as a library that can run in many
> > environments including multiple architectures and OSes [1]
>
> Thanks, I'll put it on the to-read list.
>
> > For 32bit atomics LKL also uses the asm-generic implementation. It is
> > very similar with generic 64bit atomic implementation and it is used
> > by multiple 32bit arches. I think this was my original reasoning for
> > this patch and not going with C11 atomics.
>
> Uh no, asm-generic/atomic.h is radically different from lib/atomic64.c.
>
> asm-generic/atomic.h builds all required atomic operations from
> cmpxchg() (loops), while lib/atomic64.c builds 64bit atomics by using a
> hashed set of spinlocks.
>
> The asm-generic stuff gives you real atomic ops, albeit sub-optimal,
> lib/atomic64.c gives you a turd.

Ah, yes, I overlooked that.

(I think that they are equivalent for LKL because it is a non-SMP arch
only at this moment, but I agree that the better approach is to have a
proper implementation in LKL)

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
