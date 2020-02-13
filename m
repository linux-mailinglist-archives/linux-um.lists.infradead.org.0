Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0F115B922
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 06:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RGBJhPdjSkCoLhUirNSq/x1Dx4v/9pN5k3hqhc2G3U=; b=Yjzj0Bg29kGJT8
	GzLkOmycNXHAOVNOgSb7dw1kBXgRi1o4yrVyadAclQ2ET9on2hUix1HTqbX2qkpjSISDsslkOL34e
	ikyLTs4YLNaHxZyTP8FzsfbxQ7G1Cj9s1fjg0NZqkrvo70/FdIV/vwP/64PwEOKk82NhQdOmrQ2zy
	ohZjrEeyLZNYMMA5E90sX6O/zhoizNcMnvwnkXqCc03b9XXNI6IggX7OC+KyR5ZM+XIL/S50hs+1e
	M2TrfQ/ZxlNQAEsZ4ffAxOawuvPEJaIA3rX4LcksAOcz8Mtc5x1AmrqfbuIVd0i7hGrIaNc7fqx7r
	A7t94vG1PiDdk+P66Tzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27EP-0004Y1-1q; Thu, 13 Feb 2020 05:40:09 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27EM-0003Zd-A5
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 05:40:07 +0000
Received: by mail-qk1-x744.google.com with SMTP id u124so4047225qkh.13
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 21:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tFvB3dUHqlfWY0xdzQLpqooj9O1A8mgi9rJRJWCXmFQ=;
 b=vtBoid64kdWQODNZsUHlienhgxFYDOHEaJzpP6h14MdSty1RTBtrn1TQxj+u1qfYhr
 bRRlbvtlBlLfY6K0aFTZBm7MO3YcfKZ/bqP7MQLeM7MIH8UycmVZrN+cf0+TgFjMEvvt
 iD8NyrSZBWQ6ZQkN7WFDRZqKVYDHPaLejY7ZgT2CJjZp8d1Mr6eAifbIAFiBzOJMAr/P
 oV+4pks29Rczjh9mxbujVW8ohd0jGVH5hmMmJMFl4AyNfAVw6S9LzGTjuM6+X2widnnB
 3LelD14XVVCJpK8f+45SAFsWZMXt8VE6oLODNh56dWAGAHPyZmIdzO1C/nVFjESghItf
 AdFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tFvB3dUHqlfWY0xdzQLpqooj9O1A8mgi9rJRJWCXmFQ=;
 b=K6s9otedtR3BxKBC/fPVlhigxxYIzGQ1Ql1WlLRu0NxQPcUdw2lP6ZQozqMW0r/LUg
 tdZxQTZQi9HdSqShF3Ay28rO6zE3HYV7SECeVT//uUn3dQczPfnvtrIfhfKSlsjQp7k5
 ubQAw/b77fynyXXRS8rijJScbu8MMl1MkV8ro6nX1WA2g1atxpY2MsGwIexaiDzVdZYM
 k8nh6l50aOwNSuy4YfTPv7hEVhE8pumsTavtw3USrg3aM0CDYk7B0raJVLOLITEzG8vZ
 Y/2S0u/+zN0WVlQpapcSA1oXUeUtViOewE9iMeE9+iaijUK/rPWTrfIM0B3CT4lsrzNT
 ja4w==
X-Gm-Message-State: APjAAAU4fe8QBdPGIJmEKDpPStOH8W7LwUdn1sbMKtLIBmuBVZY8cYQC
 l/BfxH/kHugLz25waUxTStsywvOtJWleFCCj+480jA==
X-Google-Smtp-Source: APXvYqzaDFUay/tiN8A69YthVrVrEWVEDha05NgK4STp1bXgm/zLYLJTkCUvxRYlnfDoyj2J8GDWh2dpSA3hoJCgWSQ=
X-Received: by 2002:a37:4755:: with SMTP id u82mr13737500qka.43.1581572402214; 
 Wed, 12 Feb 2020 21:40:02 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
 <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
 <CACT4Y+aHRiR_7hiRE0DmaCQV2NzaqL0-kbMoVPJU=5-pcOBxJA@mail.gmail.com>
 <CAKFsvUJ2w=re_-q5PTV8c30aVwot8zMOipRvhD9cCx-9cc-Ksw@mail.gmail.com>
In-Reply-To: <CAKFsvUJ2w=re_-q5PTV8c30aVwot8zMOipRvhD9cCx-9cc-Ksw@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 13 Feb 2020 06:39:50 +0100
Message-ID: <CACT4Y+ZJeABriqRZkThVa-MNDBwe7cH=Hmq1vonNmyCTMZOu6w@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_214006_389546_59130B86 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 11:25 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
> > On Wed, Feb 12, 2020 at 1:19 AM Patricia Alfonso
> > <trishalfonso@google.com> wrote:
> > >
> > > On Thu, Jan 16, 2020 at 12:53 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > >
> > > > > +void kasan_init(void)
> > > > > +{
> > > > > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> > > > > +
> > > > > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > > > > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> > > > > +
> > > > > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > > > > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> > > > > +
> > > > > +       init_task.kasan_depth = 0;
> > > > > +       pr_info("KernelAddressSanitizer initialized\n");
> > > > > +}
> > > >
> > > > Was this tested with stack instrumentation? Stack instrumentation
> > > > changes what shadow is being read/written and when. We don't need to
> > > > get it working right now, but if it does not work it would be nice to
> > > > restrict the setting and leave some comment traces for future
> > > > generations.
> > > If you are referring to KASAN_STACK_ENABLE, I just tested it and it
> > > seems to work fine.
> >
> >
> > I mean stack instrumentation which is enabled with CONFIG_KASAN_STACK.
>
> I believe I was testing with CONFIG_KASAN_STACK set to 1 since that is
> the default value when compiling with GCC.The syscall_stub_data error
> disappears when the value of CONFIG_KASAN_STACK is 0, though.


Then I would either disable it for now for UML, or try to unpoision
stack or ignore accesses.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
