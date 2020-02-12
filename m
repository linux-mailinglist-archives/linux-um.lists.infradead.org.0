Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C5015A141
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 07:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSaKG5+KA5lPM9oNxnL62/ilsOIOYxpodLULq5NMxLo=; b=dlvEwqlgul02oU
	g8FvEYFaCKI7PjFMa0Mg9b+ow9NyLBfShAetBPb5SV4IMgr77zIuDtCj5ZG+IXqDnhIVF0upGb9O+
	s2Vid2L+Of/pM2lViLk+1yNWx6q84gX/CIZZobybp/LxwxnVnm5Y0fEmkPxU5ggdfIu4+/xRilGON
	f0m7xZU5JtUNRiN37wbyX7ltVtvfPMyzwJbFVwnfKgAov2ymTb+9DEmANb17LYyDq7NJ9raG1oUjt
	YMfziZxnV6JRS7ZL84CU5CpXrFFY9WonXlcvMwL5X6oIuS6BgdqKitnJYVgQr1ZkATK42Of41Xg++
	QzMkuXIuuhiHe6Ir4dQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1lSB-00052p-Cl; Wed, 12 Feb 2020 06:24:55 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1lS8-00052N-DE
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 06:24:53 +0000
Received: by mail-qk1-x741.google.com with SMTP id q15so1008863qke.9
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 22:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2OOHsjtYMgDYJvlYtd6T0hN9gxm/R2JJYyhVvz7S9ig=;
 b=BfOuOrPLAsr5nPiUros+fQvJWZffy4fx7Z59zbk0cx5+OKQg34UlM5/h+CXZ0TCna8
 CUqsRCkfBG+pwj9ggsXSQw079MZMTwEpslqiwpi3RJCkBuS4tif8aYynZUSshq7WRZT8
 RqK5tzt0rL0id8YymwDCABXgp26VDa/AzZyw925xpnejf46khcqs7Xd4uz3lF3QwBEXQ
 C9YpQsPQobHPOENdtA48XM9/LOdcMWTPb7p1NdPqKBgMAYgbe/p2QHlacj4SL9WLvfL/
 R/eou232RNaB7/LkUwJ0p6kwSv9Xk8Kgcvb+V5/g5ogkb+VvXVW9lp3IYntUzhxKIWP0
 CRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2OOHsjtYMgDYJvlYtd6T0hN9gxm/R2JJYyhVvz7S9ig=;
 b=iICWhpYCyfNPwK7ziWAX4i15dTCQCpWS/v23fQja5yvS7G2YV36PbqtNCVOE5BaP+9
 F6C/lc0Oh4DsbUkkboUIJF/aBPEfW9JGoJgkRQNSr+KRTEg27pcgA+SLfntIOOBNwISI
 zlL31ok77cfJgw7CXw/SkKv0wjxnYkAO9kfhdVwhyZbwO+LtZi9sjScinr1bQWB+4nZX
 vCqhtnoLVHXJCTH4Hbzga4g4ubeJaWAQZoy7sW5I5AMI/osblj52oiauFrSpnG3cLYlT
 EIDpNNa2b/ar9GbfEXsoQKlLym4vwlpeHFYZu2HVrQNUFmbqNk9UcGebtTtjWa71jutv
 X3cQ==
X-Gm-Message-State: APjAAAW2lPjYi+yuOmCKCcDczu/y9p4u0Aj7h7hbnXaiAK9vHWV88+L6
 XcqtAMbKr21blZWKUsfQsR13T3yBGEQC59dSdBxUWphDpsHpJA==
X-Google-Smtp-Source: APXvYqzmZqyZFI5to+6MZOrXvgiAsZ8aWUJpmFanwe3RRu3ka0Ip5gWZ4OxE9/UWpAPihuEXUlXvxvvAIinLbZP3flo=
X-Received: by 2002:a37:9d95:: with SMTP id g143mr9264374qke.256.1581488690981; 
 Tue, 11 Feb 2020 22:24:50 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
 <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
In-Reply-To: <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 12 Feb 2020 07:24:39 +0100
Message-ID: <CACT4Y+aHRiR_7hiRE0DmaCQV2NzaqL0-kbMoVPJU=5-pcOBxJA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_222452_471493_AEA8F222 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 1:19 AM Patricia Alfonso
<trishalfonso@google.com> wrote:
>
> On Thu, Jan 16, 2020 at 12:53 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > > +void kasan_init(void)
> > > +{
> > > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> > > +
> > > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> > > +
> > > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> > > +
> > > +       init_task.kasan_depth = 0;
> > > +       pr_info("KernelAddressSanitizer initialized\n");
> > > +}
> >
> > Was this tested with stack instrumentation? Stack instrumentation
> > changes what shadow is being read/written and when. We don't need to
> > get it working right now, but if it does not work it would be nice to
> > restrict the setting and leave some comment traces for future
> > generations.
> If you are referring to KASAN_STACK_ENABLE, I just tested it and it
> seems to work fine.


I mean stack instrumentation which is enabled with CONFIG_KASAN_STACK.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
