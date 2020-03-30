Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB451976A9
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 10:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShkRmVQrz+QR/bpkQ9LjSE5BNIBrT426qyw236uCWm4=; b=ksHHG2V9XWLylx
	Y16wl5LF9f0bx0b16MB6iAcezOR3rKTyoZH4vBtPkBkvtL9MvoBm4eYr965Q/7l3y+qr0rSYjay/S
	AvAXVTfVSlIp8Jj5OWWQIzTo49+x3JwM3s7Zd8fY6ZDV3hfEgcXMS5aOya/XdEXjnQfqGPxfMp9LE
	a4VAHwnjLG7Gaf1SxV5MLdAhaLTEPyT6wvoKuC10yddcUJ3nUNRNUcK64kts7PpdlpJtcpsnH939f
	pjE5x8+aSMgVRt52IE0Tny7MLFu80vaz87IZQivBNBeVSFS8pC6LRMSs0sgq8jBEKuwlkf9hVF3gx
	0OvMSx0mkBpr42TzNinw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpwr-0004Eq-DE; Mon, 30 Mar 2020 08:39:09 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpwo-0004D4-7e
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 08:39:07 +0000
Received: by mail-qk1-x741.google.com with SMTP id h14so18093869qke.5
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 01:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4xCc6G1fjYHS6JfynXvIUwvrt/yvbN0xlTjIkaNy98k=;
 b=wLmWxuLqn8KyJaQMB7X5bKCXwFjzc5aFDK54p9NPQtlgVlF2qRui1Xn+J/PqS4qYdz
 AxLC7N7UABn9fGxFWDIPvFekDu1Jaj4Qqquj0+qYV0+jNm47Nrh9Q+ql9OERMuHOW64I
 fXbROUpYZvtnx4heJlLaJK3lpjs7IcUK32hoVLJ7BhWF+SlCKPVU69yTC3EVQ/ag7puD
 TAF29OMOzh0T0AXrI6jehsr68PwCEZaIJQTR7XzZ74rB7ZNyGsC60Z+W+p8LcQD5e4lu
 HgU3SCJiO2lyWPfTmxhKfiTLO37E6vKkEY4EpCU7mbYrmffaw03ZICFZK8CGiE9d08mH
 iIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4xCc6G1fjYHS6JfynXvIUwvrt/yvbN0xlTjIkaNy98k=;
 b=jB0whCTMTBEX1/JeqZFle6cyvBWara7Q8fo5wDyCwYosDfnbbuopop+le95nfhP/gh
 YBCjT33b5rUy+sfS/BMUHBqft1eBh3xtRkzmt+oTlJoH+iXNL+TRIu3FopOQErLQXSyh
 EfSsmT4tpzxBjLp0roPoidbElnztKuVwuZI+l2sVWNDnjxSSOaIbTGxPoNtI8iq+GqQj
 WRM8jf1x6+GvFqR6RpWbL4oTVBCCGj2KssvF/D9mFYQvirzEWsGmu4iCtfmrRA/r0XAc
 vvEii9Nir3h3fFgqCXI5EQakh40bJNRfFq5Pqq01NyCGkF9tmvFUoaHIOlEh6OI4ycuc
 U2gQ==
X-Gm-Message-State: ANhLgQ1iyPkDCxZzZQ5D1J7XxOH5ibXaQbDw2JZPFbq8NurkE6NlznnE
 jZ5BsoC24TTapxKGXQDSLFCAwLhS2RawHvyJhvO9fg==
X-Google-Smtp-Source: ADFU+vsrAoMtOj8G6dIUBTBViI6fwRdVWLliO+YLNi//6orndEbw72BFL0/0zwZiAeZ2r2/mJJfmAyqGgtwIMhlb/hY=
X-Received: by 2002:a37:bc47:: with SMTP id m68mr10748443qkf.8.1585557542372; 
 Mon, 30 Mar 2020 01:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
In-Reply-To: <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 30 Mar 2020 10:38:50 +0200
Message-ID: <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_013906_298000_F9B692E1 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 9:44 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Fri, 2020-03-20 at 16:18 +0100, Dmitry Vyukov wrote:
> >
> > > Wait ... Now you say 0x7fbfffc000, but that is almost fine? I think you
> > > confused the values - because I see, on userspace, the following:
> >
> > Oh, sorry, I copy-pasted wrong number. I meant 0x7fff8000.
>
> Right, ok.
>
> > Then I would expect 0x1000 0000 0000 to work, but you say it doesn't...
>
> So it just occurred to me - as I was mentioning this whole thing to
> Richard - that there's probably somewhere some check about whether some
> space is userspace or not.
>
> I'm beginning to think that we shouldn't just map this outside of the
> kernel memory system, but properly treat it as part of the memory that's
> inside. And also use KASAN_VMALLOC.
>
> We can probably still have it at 0x7fff8000, just need to make sure we
> actually map it? I tried with vm_area_add_early() but it didn't really
> work once you have vmalloc() stuff...

But we do mmap it, no? See kasan_init() -> kasan_map_memory() -> mmap.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
