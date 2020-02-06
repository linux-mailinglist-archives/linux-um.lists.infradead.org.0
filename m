Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53258154AFC
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 19:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaavwUBxgxyJZzBxETpSd00msgouYu9kQ8RGfCLJlU0=; b=JH8A4JGfHUHZLJ
	IqJ+UbJYFLc1S6JQoHy1Y7CMOYXxjpj0oSiyACXAFiHgqRDyFpnSkuChhJSZr08wz2t9838mZN7iK
	xcDVN8uabEKtBDtML7mcp+i4U4ih6I9UFfpFHZNJEPXOivFyNngzGIe4v7JganJu+HryXTd+HwWAI
	aZHuGddrsxQADA2LX59jmNddFvwE+wVCJao0SsDha+naEIU+TkSGSZbcWkAXF2h23fx22JFkZZdwE
	id4kOYkFU1A05/UIWCnfoD+WJmiKco399AL4DKxqxcPKm1yMYJLQahtaAm8UUlBWaayXdwfmnmdGH
	wAB6QzdlGK4TF3AOSekQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izln7-0005FJ-4m; Thu, 06 Feb 2020 18:22:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izln5-0005EV-4p
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 18:22:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id c84so1169403wme.4
 for <linux-um@lists.infradead.org>; Thu, 06 Feb 2020 10:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d9qzkt0YHl1j1zQLYfgUtStKm8RvBNZBr/cpsyPQQSI=;
 b=of3NEExBfV2fM3I7sikgdT51i48Le7uGtsh0aom2rPnbXnlRVzXZslTrwBengkOpRM
 xzK9PhZ54PL14asPAWbWPNlJ0XAfSFKw6J6kaRrdWkqiEuWbJK8SFRCG9HF0bvux/Xuh
 3qKGCz/THV4rH4Oatl7fJiyyny9fVGqB3mVVzR4/VWmnxFJCgEddpFJ8btmrPAKOKttM
 on1g6h5SGxVJj/KVPgMz8gWdgpHugVI7ovgGKwP4yJtjPtt8mmIkspa3iqgztzpXaIje
 S4GLKh1iz044JTZVSGbLejM9DJIpQQXbTamJ3tlthKcVWzCAzNm95u5mI5/OTy+hRRdA
 6A2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d9qzkt0YHl1j1zQLYfgUtStKm8RvBNZBr/cpsyPQQSI=;
 b=JcL79n3pkCLSBdWqE9uIFChyYL3bkFrN/NmDbpyU4/epBlb6lQcpQrrRn68mo8oi9s
 UJD42Xqjvajd60aKZd/MTGn2DfVlvfNadZPs7lSRmu6+iMDjQeV2GrfRlJMOc+yScA6m
 ZMzxZMgFasyckkds+HQl/B8Mo5BQzL/bSTkcZwZ+aROzdLtu96K7PkRe/tFUzSSvMKS/
 0t0gvOENiKbhJseAzlijD1IkRRt8UDKi+3Pifjtpt2o8Iek2xiBTFr93iRxndfSzf7fr
 r/Wt8jaRLlq8Up9cO6oqQEN31BMjgu49N0C7gEtOseQwWqHahzEyD4TVP3ICqpLH7ey9
 IKEA==
X-Gm-Message-State: APjAAAWFh1H2JOK5BJ6O0HBpftpOa5VF8+0Y3jab16zFR8HpR12RUxCK
 LZcEZOtxyPjX6KJ1RhKmaL/F9hSN5D5YYBJUUBTvWg==
X-Google-Smtp-Source: APXvYqxWWrye1vWcP96iwDxzT2tJqI9xuz4NXwRoyq4OWYzF4N+GWFWa2hejgtOa5MtGKqBmdpTXY7Rv6Aq3NkdTIf4=
X-Received: by 2002:a7b:c119:: with SMTP id w25mr6125664wmi.112.1581013330505; 
 Thu, 06 Feb 2020 10:22:10 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
 <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
In-Reply-To: <b55720804de8e56febf48c7c3c11b578d06a8c9f.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 6 Feb 2020 10:21:59 -0800
Message-ID: <CAKFsvUJu7NZpM0ER45zhSzte3ovkAvXBKx3Tppxci7O=0TwJMg@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_102215_213577_B951E053 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: richard@nod.at, jdike@addtoit.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Dmitry Vyukov <dvyukov@google.com>, David Gow <davidgow@google.com>,
 aryabinin@virtuozzo.com, Brendan Higgins <brendanhiggins@google.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:03 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Thu, 2020-01-16 at 08:57 +0100, Johannes Berg wrote:
> >
> > And if I remember from looking at KASAN, some of the constructors there
> > depended on initializing after the KASAN data structures were set up (or
> > at least allocated)? It may be that you solved that by allocating the
> > shadow so very early though.
>
> Actually, no ... it's still after main(), and the constructors run
> before.
>
> So I _think_ with the CONFIG_CONSTRUCTORS revert, this will no longer
> work (but happy to be proven wrong!), if so then I guess we do have to
> find a way to initialize the KASAN things from another (somehow
> earlier?) constructor ...
>
> Or find a way to fix CONFIG_CONSTRUCTORS and not revert, but I looked at
> it quite a bit and didn't.
>
> johannes


I've looked at this quite extensively over the past week or so. I was
able to initialize KASAN as one of the first things that gets executed
in main(), but constructors are, in fact, needed before main(). I
think it might be best to reintroduce constructors in a limited way to
allow KASAN to work in UML. I have done as much testing as I can on my
machine and this limited version seems to work, except when
STATIC_LINK is set. I will send some patches of what I have done so
far and we can talk more about it there. I would like to add your
name, Johannes, as a co-developed-by on that patch. If there is a
better way to give you credit for this, please let me know.


-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
