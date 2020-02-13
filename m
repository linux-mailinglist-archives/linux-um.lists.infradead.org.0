Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233BB15CE5D
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 23:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1s2psaqK+1X/oeHqycQ+QBFsuvBTwvn8PaIKreTWIM=; b=Yv8dA8x0dvS3hc
	qIYlUC9TEj7i6whtp2xDamSPaeOdlbqNUrTuzVZFRlP5pDH/eZWRDFUds8dkzRgTxvA/RU75vK8/Y
	bBAFRwk5eUhIKE/FbXiwPlEc+m7xP6yNbHFHdNggYKY9YI+1BRLABmoJyrCMzAgy8AKsRgQSNmn1A
	q1nPrEY/qXd2ELiCs+3cyv9ql7OgU6LZwLgEOYKK3DrU3Qk6p1HImQXPTEVzSonYlMj1rPNhF0quB
	PrRQdmQsD3FScs7dW3cTfov6xN6O5CAy7FDgn+IQoC5JKGteJO6wV45p828SGBUie6kGy26sYQYX9
	3Cj5nzXKDRCVm1dB3mmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2NP8-00026h-VD; Thu, 13 Feb 2020 22:56:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2NP5-00025q-Ia
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 22:56:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id a9so8617929wmj.3
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 14:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L6x9Zqpmo0Kh0pEK6dhHMoc2fR4pHbKz2xssvvuJ+eg=;
 b=urydw5lYY5vJgwd8FRvILoQGCMlRsTDfAVEfOaierEk2RVXOD2/09OboVi0HE7EkCg
 iGmcf+lE97XETbj3sy4SqtxylcG4IpEDtYaxgyn9UojTV2yuWyp6K6yu1EhygSaMNAmi
 VVb/VfHcJoMA0Y6pQO/UTET2mRw9IlgaP0FKJnItCSRFlGg9APANB6qflmdpWbpgHGUg
 DuwQ3YxGplNx0/E1yBc5i1oaKkCfOutOkC4ty5CwXZ4kVap6b250vhuBJl0w0zsL5V5+
 fRt2h1soQ0iVMjuZrGljZBFpS2VQskQdiaXSLff/N09RyP48wkikkZmHSRBddNe1Ze3h
 QZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L6x9Zqpmo0Kh0pEK6dhHMoc2fR4pHbKz2xssvvuJ+eg=;
 b=nIOtDAGqwauCjji22RzguJPjj3w4ldpGTOSkUouAEyNP/E5Qf8urvdOKAuxuXgf+xH
 zbL7QDdwQH2Vl0rBP6E41HYnrU/ZF5QDWWgAUAdyh8uwLqOx2V7fYkHoymNUEe1AJXBD
 +mfV70Uzw2p6t/OlMEdQRGxvSv1UzM2AaNeL1mZivb8WIAJOEcNBd/TSyZYWs7NvPI3I
 rSnsOAypavIA4Hpr4IhDzdXTDW28+FQdfhXKl+dqy15hauiXFa4dhAaL9TnVWoqhlRjA
 zhvCmr30YSiqhJRpmx9E5lH0PxUX1laZcXTeHx1jEOX0f9Drvgtm2ugtn8KzQV/rq2AX
 yjYg==
X-Gm-Message-State: APjAAAXi9PPkP0lqI1hKOSYVFXhqWCPsVuvNYew2IretnyhNfXwT+AnL
 Om40jM/hwtZWTEx1qdWc00YSYIa30/I8t7IDCQu6pQ==
X-Google-Smtp-Source: APXvYqx06jZt8vrbv6eVBnnD7GocL1hRyTRGSv1YPeYRd/X71vnxpByWoxW4f+U9Te7bcne7rl2M+KF0MFCiAq07b3k=
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr352785wml.110.1581634570688; 
 Thu, 13 Feb 2020 14:56:10 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
 <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
 <CACT4Y+aHRiR_7hiRE0DmaCQV2NzaqL0-kbMoVPJU=5-pcOBxJA@mail.gmail.com>
 <CAKFsvUJ2w=re_-q5PTV8c30aVwot8zMOipRvhD9cCx-9cc-Ksw@mail.gmail.com>
 <CACT4Y+ZJeABriqRZkThVa-MNDBwe7cH=Hmq1vonNmyCTMZOu6w@mail.gmail.com>
In-Reply-To: <CACT4Y+ZJeABriqRZkThVa-MNDBwe7cH=Hmq1vonNmyCTMZOu6w@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 13 Feb 2020 14:55:59 -0800
Message-ID: <CAKFsvUKun6HOk_9ocZ81YebEp90jr3WsAah24HDQQQqY9eamjg@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_145615_614917_26E697C6 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Wed, Feb 12, 2020 at 9:40 PM 'Dmitry Vyukov' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Wed, Feb 12, 2020 at 11:25 PM Patricia Alfonso
> <trishalfonso@google.com> wrote:
> > > On Wed, Feb 12, 2020 at 1:19 AM Patricia Alfonso
> > > <trishalfonso@google.com> wrote:
> > > >
> > > > On Thu, Jan 16, 2020 at 12:53 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > > >
> > > > > > +void kasan_init(void)
> > > > > > +{
> > > > > > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> > > > > > +
> > > > > > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > > > > > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> > > > > > +
> > > > > > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > > > > > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> > > > > > +
> > > > > > +       init_task.kasan_depth = 0;
> > > > > > +       pr_info("KernelAddressSanitizer initialized\n");
> > > > > > +}
> > > > >
> > > > > Was this tested with stack instrumentation? Stack instrumentation
> > > > > changes what shadow is being read/written and when. We don't need to
> > > > > get it working right now, but if it does not work it would be nice to
> > > > > restrict the setting and leave some comment traces for future
> > > > > generations.
> > > > If you are referring to KASAN_STACK_ENABLE, I just tested it and it
> > > > seems to work fine.
> > >
> > >
> > > I mean stack instrumentation which is enabled with CONFIG_KASAN_STACK.
> >
> > I believe I was testing with CONFIG_KASAN_STACK set to 1 since that is
> > the default value when compiling with GCC.The syscall_stub_data error
> > disappears when the value of CONFIG_KASAN_STACK is 0, though.
>
>
> Then I would either disable it for now for UML, or try to unpoision
> stack or ignore accesses.
>
Okay, I'll probably disable it in UML for now.


-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
