Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629CD159DAA
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 00:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22fdyqF+sfxQKzFBN+OtKTX0/1sbCP6s6PA5pfQPx10=; b=ojVrawYMQUxtNT
	+LzvSJmxZOOMZDx7+JY5hI4Cx4ZLM6ZcDDEDcVeG/0SdhTtMWNZdh+Ew8f2XS3WwmAaB2eDYakUFH
	favSkqnCMErmAoi1AWEhXhxs5FX0a7p4LgybEwVASxfxMjw/0JTgNuoDV6wxnRn7E3zQ4mNQmiTBC
	Her3rCCaUtrPjnkcN38ZDzzO/Erkr9S70IKS/+cIY7FZr5ZUcBECZD5N5SpA9zMQW5c6yVwHORknM
	v749wDLMpUl8yzaKClV2Teq7YOtRzwHNOjPBC7VaJQal5XpLEziYBoSjpwIQCahR2mXODqU2mM88+
	RxuGdYqh0b9VAXcfTy1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fGd-0005ua-TA; Tue, 11 Feb 2020 23:48:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fGb-0005tL-G3
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 23:48:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so14760704wrr.1
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 15:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tKZVKd7LefiyWeQ0F2PuNMLHXMThkRotLuzYefuE5rc=;
 b=oJdxQzfCxBdsUpaXuR3MdBuCWDzZwSB+Jo1UxVNnw86Ms70GwIxxKD/6QYko2IyH2W
 yvF4XlGbc1jJfuDgM9BEJSme/WhY6lGm7BL7WKPG+5zBgNhGHoldlwm3eNzEI9lRBSsK
 OgVBN+dMbDU0frPADxuudeG1r4i8tcy9KbYcvpLsmYIkh/5qwYUsyIa0/8phC29yXqJE
 oFSnw9UkCLhShWSYyozwzNdXwzqMR+wKNN+NXrPnH19KTr9R4VKkCITGg257Z5JAfSwZ
 HfILBc5Jd1qt0PQ6irlIoHA1NYEhYB2zOKsGMp/Hh61sUvKBeLznK4i7be8TeXck/D7/
 QoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tKZVKd7LefiyWeQ0F2PuNMLHXMThkRotLuzYefuE5rc=;
 b=JAbzm0hrI+ssp5LtWb9Ub1yd/Z/82u0f2E3skPLYi0zPM2o4df3cQ3w3Lq6j18D9oQ
 HSAuj2xlGGRN8o5IKthISpMVUyPuV+PeytxXCtKOWuZmEel2G6wGjrTWH3H9gaZghOLB
 wqVEw46W7DSISnasarOdYfJQTQE2vKO/7kKwcxo98ozFiNMF+8g26rJhu9D7eywp2/KY
 1jGpermrvCf0NVxCC87EgccnSQAhUy93fm97vpDdeoqW3gGK6w7WtAzAOLQJazv6HVBI
 jnTZTma+8zIx/jiJURVQ+yF0eXQOnFGwEmdoM0RIUI1Frw1wuZnIlRCLmgoJiwIFsAf+
 5GkQ==
X-Gm-Message-State: APjAAAUNNHpWvlabdpGGX5P3/Gf/eqOn0mJfVP+Df/nqDUXCF9/aMwwz
 H8pxT9T5ne+ix4Opv6KImN5YpeNW/uZ8+rz/eL5IAQ==
X-Google-Smtp-Source: APXvYqzgPjm+6Ae93vV5GdgaxMOW+fUqoGME9hOeqCh/2kKErwHSyduMJTR409IMY5lgfqSel9EpaPO2WyLJIHU6PS8=
X-Received: by 2002:adf:dd51:: with SMTP id u17mr10871983wrm.290.1581464909891; 
 Tue, 11 Feb 2020 15:48:29 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+bPzRbWw-dPQkLVENPKy_DBdjrbSce0f6XE3=W7RhfhBA@mail.gmail.com>
In-Reply-To: <CACT4Y+bPzRbWw-dPQkLVENPKy_DBdjrbSce0f6XE3=W7RhfhBA@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Tue, 11 Feb 2020 15:48:18 -0800
Message-ID: <CAKFsvUKhwAOV9O+LWBr=-zLEJCFJvKOH-ePsXMMVJzHotqd3Ug@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_154833_562492_77F72F33 
X-CRM114-Status: GOOD (  13.63  )
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:44 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Jan 15, 2020 at 7:28 PM Patricia Alfonso
> <trishalfonso@google.com> wrote:
> > +config KASAN_SHADOW_OFFSET
> > +       hex
> > +       depends on KASAN
> > +       default 0x100000000000
> > +       help
> > +         This is the offset at which the ~2.25TB of shadow memory is
> > +         initialized and used by KASAN for memory debugging. The default
> > +         is 0x100000000000.
>
> What are restrictions on this value?
The only restriction is that there is enough space there to map all of
the KASAN shadow memory without conflicting with anything else.

> In user-space we use 0x7fff8000 as a base (just below 2GB) and it's
> extremely profitable wrt codegen since it fits into immediate of most
> instructions.
> We can load and add the base with a short instruction:
>     2d8c: 48 81 c2 00 80 ff 7f    add    $0x7fff8000,%rdx
> Or even add base, load shadow and check it with a single 7-byte instruction:
>      1e4: 80 b8 00 80 ff 7f 00    cmpb   $0x0,0x7fff8000(%rax)
>
I just tested with 0x7fff8000 as the KASAN_SHADOW_OFFSET and it worked
so I can make that the default if it will be more efficient.

-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
