Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46A513D5E8
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 09:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NC/bhKRTc09RdorvtaPHbIkWNAha6zM5ttI63yo0MQM=; b=Sgcu8iARk2BLId
	3wreFNAncfRgPNxG2BexVFOtwVPED70PL/Q8jR8ChPjTZlLnO6A5QwPBKukE0RrOlTE78L0P4eZsT
	vTlh+WHT31IW69o3IGpwenn8vJJCfTW6gPH0kY6BAbQeBQJH2ggCLe1/XWgDcocfHjqTlLF+omyFQ
	evutAQz/anpu/cRVSLCZ2PyXFHa2/dYxmTyrA+fNmFqtE2dUCb/f/13urWVrOPntlQSeB7dDsQd//
	rXAVicPSqIls2W1A/jODHg3gujfLeTY7fszayoe/XjPUaW6h4y47b6X2XCFghVFigtRPEsEzPhRcs
	gYEW6NkQV9+nF9Uk7m6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0SG-0004Bq-EZ; Thu, 16 Jan 2020 08:24:40 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0S9-00047P-AH
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 08:24:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id w8so3794246qts.11
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 00:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tlgKvEyVkOCk+r5Hpx71WwyKD+4RnBChT7TjkISGEd8=;
 b=ln5la+m0459rW4oIReHBrAulHCeyb5EIDcaKL2zj3XDUElfWMPalHGBaSxYkG6YBrT
 lXc+VyHfETNRZ8fmbMrDNZZ/K7gJZqlC4EWx1KNZJD8wfYGXis15mHJ8Wt+1EDJfPB4C
 kSl6bgIW7GdfEsgwZ5JBJnqQxW1/KrN3VE7Zeqhobzg8gCwV+5INFkELSHMLRRkcJ4vL
 DHrmRrug5lSp617kLsBNUKMm3NargYY0e4kyLF1TKUwCXZO6UTYv8cHCNon1qxQf5yax
 1r7oGHh037Q9QOCSMyXGijGKDr4VkABEiv9PFCyIsZKma9m0/okJ/MX8tFIcbwDPblGp
 NRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tlgKvEyVkOCk+r5Hpx71WwyKD+4RnBChT7TjkISGEd8=;
 b=pMKtdkwSDplljSe9NSpKCQxXjg+wLV0KZ+dc0YH4uNv5ieMpJoBh8plqP+iyIy2bo2
 /5LCMva8V9TOWQatZvZp2NkNOqcGtAtpWMfwpeGvKbImsQnUvHmpp/x0H0SXuETgkyu6
 kTAiCR6zmaEXvBa7OKyaXv4e0hkWmrPdYfoz7nniL82SLzHEap0DnOWB+1hPgfs9FeUa
 EJ3I4Gg1cZlSLjU7nbyYoxDB6zKy7JGFXwiAj/5PanV0/GBWPYivv+bphPBgaW1sraFL
 VX1z5TkGo3pwGGuu0dZOiFN+54Tk/r0Xe6d84/XPtUuQCYhSUlNcU9yT/cuWWTdJssC3
 /yFw==
X-Gm-Message-State: APjAAAVU1KOXu40auH7vDIfWjdC8Pc55lWX1NlQU0HlsSCDZfoErqo+K
 wEOBiCF2SEZWGa5aQsgZz5hS4X8lfBSlLa9hW87EU+S4kF4=
X-Google-Smtp-Source: APXvYqwXJiw0lfRsbwrvY4+AdPWdOcFdfOxGx4J6PeDwx1aPQxv/90sPodirMRKFVlbbGsDt/ifQFQRm5bbBJumGq4Y=
X-Received: by 2002:aed:3b6e:: with SMTP id q43mr1220224qte.57.1579163071242; 
 Thu, 16 Jan 2020 00:24:31 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
In-Reply-To: <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:24:20 +0100
Message-ID: <CACT4Y+ZDRtFrm5jfD+a9X=frGM=WKpoeJJZ6MRhZsATbG8aDTA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_002433_379901_5F3F0206 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Johannes Berg <johannes@sipsolutions.net>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 11:56 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
> > > +++ b/kernel/Makefile
> > > @@ -32,6 +32,12 @@ KCOV_INSTRUMENT_kcov.o := n
> > >  KASAN_SANITIZE_kcov.o := n
> > >  CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
> > >
> > > +ifdef CONFIG_UML
> > > +# Do not istrument kasan on panic because it can be called before KASAN
> >
> > typo there - 'instrument'
> >
>
> Thanks for catching that!

Hi Patricia,

Very cool indeed! And will be a kunit killer feature!

I can't parse this sentence (even with fixed), what is "kasan on panic"?
Did you want to say "Do not instrument panic because it can be called
before KASAN is initialized"?
Or  "Do not KASAN-instrument panic because it can be called before
KASAN is initialized"? Though, "KASAN-instrument" looks somewhat
redundant in this context.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
