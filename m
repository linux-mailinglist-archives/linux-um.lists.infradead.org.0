Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC009159676
	for <lists+linux-um@lfdr.de>; Tue, 11 Feb 2020 18:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eP/O6Xg9OXejv4ZZHSkTZyxnbCYMFKKhFF/1t6G2d7M=; b=f7/LKehktJ1M85
	wnWg3upF79f5NlwF/xlnT6PWl/X2+Giy3F/czmzWRZ8dIXcgKqXQcIcCxBxvE5g1TT67h1yvWaaQt
	GkwwFrKE8CggN0ShRAcTQ4GWw/1XTfka86jc8y5TxdM0DMA4zEN3tbTp0WssakCvf0L1ayhVQQvzR
	1w/Gmlgt3JHBjuWQZPNIJHN+NG4XmhRKG15hfuZayGa0x2cI5wpeSu3Kw8FoBY6mCLnY2ahPs0/0v
	HZ6GEe5UmUjC6C202GYbJcyvEvWDFu6s0UN4FSxHvVESW75c/2wv75C1pizltvubaq8zCW3vGgpav
	7ya4eC/wdh6muIq36iVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zcz-0006rF-Q1; Tue, 11 Feb 2020 17:47:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zcx-0006qs-3o
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 17:47:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so13539734wrw.8
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 09:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z0VAV2uAZn7cwf80RoSqvTXJTOGM5LDaGHKNSoNSGHk=;
 b=QbpBWdwYnoWn8aPZgHyKzn+JoeOVAW1n6DG5fzvmx6mK8CHu9eCILwvxBg6NBGJJuA
 d2B+KVtyYZWeH/pfbTDW3SyN5oE5YxrFt8hSPITYFciFg8mvz1zVCjHb5+hc8HX653zK
 411typsd9Iw2yaMmXdMoUhdBGJfJlr4dDNAHf1ntJO4ncSiyXK7t3Xzj5FIt3ho6ykRK
 wM3iX3nDhF4PYDhxcL1fFNGKifqtu7MWAuTALLPMGZO0YUmSR4hW6YAmp4gN8g2NrzgA
 6oYvxc9hPaEBtL8CnE/C+CbfbAp/uM16GHLyl52ENJ3wePSA3d8G+hxOB2z16iqjFKmD
 66Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z0VAV2uAZn7cwf80RoSqvTXJTOGM5LDaGHKNSoNSGHk=;
 b=iXcD2SyqDAJprMQyRbih8qbbw764VJfANgUv94SmZAZlSXuxdv4wNNsisoFv+4eoMw
 OeQBVsEGhQ9UZReq63Y+Q4DDyYsaeUKc9PuqbPppQhtAw3zP4T8Z9+keFG5za3+HF3jd
 3eTefLf+GCv442/Zjupoglk4ArDBXt8CIhZ+pRRL4rtI+lC4Dh1+unGL/WjPRb7bXvtz
 7sV8rDaDLqXLAPwMOXAeD8ceRJFTU82a9+j+jWPj1Bk45h+XPXhFSwwvBRIHrV7UY/TP
 5x0ivDyWvMCGWT1XFHmWP71O0/pmk6BcZ88dnHFNHk+1DngbV9g5zXIXr221cYO2SyfA
 KRUQ==
X-Gm-Message-State: APjAAAXk5vBN9fBRmG1TZYZ67zfENabffnaTVIR5l6RpiBrTyeFGQsFs
 QrcL1okZ5xVh+4plLhpzJreWZqzOkYx5vKEuZlv6Fg==
X-Google-Smtp-Source: APXvYqxTiLAPBWBNjRiDwwF9xb8l42ZHllnWyO8r959e7mF1P+DYyJAKnd4NjVEsEhnkhq37FyrMm+yEO5iwmmCmPy0=
X-Received: by 2002:a05:6000:108e:: with SMTP id
 y14mr9883732wrw.338.1581443230266; 
 Tue, 11 Feb 2020 09:47:10 -0800 (PST)
MIME-Version: 1.0
References: <20200210225806.249297-1-trishalfonso@google.com>
 <CACT4Y+Y=Qj6coWpY107Dj+TsUJK1nruWAC=QMZBDC5snNZRTOw@mail.gmail.com>
In-Reply-To: <CACT4Y+Y=Qj6coWpY107Dj+TsUJK1nruWAC=QMZBDC5snNZRTOw@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Tue, 11 Feb 2020 09:46:59 -0800
Message-ID: <CAKFsvUL=maBVZ7v_N6W1skZRkYm4GacRGn-ohbf-o84p598XNQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_094715_238429_D979A0B4 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Johannes Berg <johannes@sipsolutions.net>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> I started reviewing this, but I am spotting things that I already
> commented on, like shadow start and about shadow size const. Please
> either address them, or answer why they are not addressed, or add some
> kind of TODOs so that I don't write the same comment again.

I'm sorry; They must have gotten lost in all the emails. I'll go
through them all again.
-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
