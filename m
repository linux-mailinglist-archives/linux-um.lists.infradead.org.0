Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5397515B3A3
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 23:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7NJIvgiUOt3Sill4DO9lOk+ISzBXqbDtjK4fYTBwk4=; b=eiXzH3nlfb1iQi
	m0Afh+290wkqhqeVIweCVsK0xF2cwAqtvDpShXyUyQnDGvKNrsnjpo5d6uK+EmwwcGPPN9+z3Yx2j
	jlQqRpGm5Y5BJpiNQvWX8oBvGe+66KRPIaW64zlF+GgfhFEmEDKJSydkWJlEozLIR+DI0rE0Arz7F
	XM+5wXqH32BQPKCLcvFa+2ZpjTEythBiGBM6vK1n+ov7460KeisaXmlx6x4z+jM+Y6A4NGTWVL1YH
	6k4/vuA/jRHQ+gXXcewPIh79hSE87+mygwGLutS3vda02guvmp8phmWz/Z9rxdW3sNEZtbw1Gk5ha
	tkMq+Ulow2cek60vNH9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20SH-0003qg-DI; Wed, 12 Feb 2020 22:26:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20SA-0003gO-68
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 22:25:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so4318791wru.4
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 14:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kqLUL5r8C+tgnaPYz9HWPNgipcce1YW5/q3ifbXu5oA=;
 b=U76D1PMAXPdzH4McXJdNoTnfNeoSGktudQQ1kymC7k9nvj7Zk4vDoele3b2Lrz9Oya
 b54jfgEa7JSp061Us5huRzQQ5F0Rf103vwiM9otTrX5KJkmvmB+ApZE69JEXFEQBoL/r
 Ri7tNBp3bMiN2qRsHUnImekTPzSVfGWQuZP72HZRVmoGTCc2nbisVgVlRWhGaGs/2s2z
 F5hNx4EYeFNXVYM5nRZ2osI6aPGVkQkewa2ylVFo5X9XhIYeweuSSCrX2tVbQ3uHuL0Q
 ViDDI3K0pcWiwdwbVbAPW/uV51nAsJ5iL4W8K6azD3Y3DcdbDk6jopUjiCj21iVG9bQX
 q+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kqLUL5r8C+tgnaPYz9HWPNgipcce1YW5/q3ifbXu5oA=;
 b=apFHtLjA5uB+aky0qhHGIEEauOs+VLxmX8SD8so8ztvGo2p/G0X1hC0FBJedTpoqR8
 5EWubfUuV6cRFFxv387tjUt0lWtQ1ooiCOppEke3Z7wMHkXc6ei3GhVYJ/E1MGfR9cbI
 lI/8AJFd3gmD8ihtzJNjtpYz8WXbe7eteDmg+1nGBo3JN18nEJDNCYyMi7N0PetfszTF
 A8pPILvUKD1feAv1u7GeVGKvs1y1UuPCG4y/ji/s+TlTlyjeEjcr62e0CKxYPLjRmGau
 v6HuSe9mbVyWam8pnm6xqglVMnzg6G6Aw/bK5qWkXhWZI1mA0VsY4wBotamFSG4quRut
 Tsrg==
X-Gm-Message-State: APjAAAVd+YAp73qDeBSXv51vHEPzHTbMCm9+F8PGZKEp9bJVf6mfnlNm
 1yJEcOORwHc5VhNhiH9frirnjYmsQnKBH0J1abOw1g==
X-Google-Smtp-Source: APXvYqyKikEA7Oc5ye0Hcm8hVCfh8p99mW4CCfUw/3zz4/Aw4Wf+K1jVzp8VtANBdH3QvrdqXsRTpZE+8a0lgaOsAV4=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr16580061wra.23.1581546349050; 
 Wed, 12 Feb 2020 14:25:49 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
 <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
 <CACT4Y+aHRiR_7hiRE0DmaCQV2NzaqL0-kbMoVPJU=5-pcOBxJA@mail.gmail.com>
In-Reply-To: <CACT4Y+aHRiR_7hiRE0DmaCQV2NzaqL0-kbMoVPJU=5-pcOBxJA@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Wed, 12 Feb 2020 14:25:37 -0800
Message-ID: <CAKFsvUJ2w=re_-q5PTV8c30aVwot8zMOipRvhD9cCx-9cc-Ksw@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142554_279475_18CA5CDF 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Tue, Feb 11, 2020 at 10:24 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Feb 12, 2020 at 1:19 AM Patricia Alfonso
> <trishalfonso@google.com> wrote:
> >
> > On Thu, Jan 16, 2020 at 12:53 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > > +void kasan_init(void)
> > > > +{
> > > > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> > > > +
> > > > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > > > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> > > > +
> > > > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > > > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> > > > +
> > > > +       init_task.kasan_depth = 0;
> > > > +       pr_info("KernelAddressSanitizer initialized\n");
> > > > +}
> > >
> > > Was this tested with stack instrumentation? Stack instrumentation
> > > changes what shadow is being read/written and when. We don't need to
> > > get it working right now, but if it does not work it would be nice to
> > > restrict the setting and leave some comment traces for future
> > > generations.
> > If you are referring to KASAN_STACK_ENABLE, I just tested it and it
> > seems to work fine.
>
>
> I mean stack instrumentation which is enabled with CONFIG_KASAN_STACK.

I believe I was testing with CONFIG_KASAN_STACK set to 1 since that is
the default value when compiling with GCC.The syscall_stub_data error
disappears when the value of CONFIG_KASAN_STACK is 0, though.


-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
