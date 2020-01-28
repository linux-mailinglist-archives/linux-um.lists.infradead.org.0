Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA15F14B063
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GHnNXIKmrlWd+3E4D8L3A5xpYnfrwHjzjRhQBzuZQs=; b=sD6G9Ya/4iPWSi
	Cqxi4QrAVkQwDNRnT94+PJbUmAXA9hyTNhYyLhKgS/IveN1N9ZtNO2RQPYtnUv5H+4h/O2IKmCUVs
	Vn+8RGROPCYKSgQboKSV8YuS/3zCHknJhyhb6ReQNBh/XrRY5kt3EQ0HaPz0aYqx/1hQjMyxmvJsr
	pbmfoe5I3OZYemBN5KK4tyC1rJ+6/yDLUc1glFQu6F2unmlxWjExZD6m/Ppemo/82Ss4C91qJ8Xqj
	iv5wSJzfiHjYyeCefyyoj7EYPmCe0Q/XIg66x16EkAVlOulVyzklimsTrYElJCf7SGjRyvPqNPPnc
	E2GsBxqUjaqia0YkTJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLFS-0006tJ-Q0; Tue, 28 Jan 2020 07:25:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLFM-0006sR-AR
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:25:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id 185so2396352pfv.3
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DeZTFb2+mSAxTYz3CEQPbL5r8uD0hmjwfhYDKzn7KHU=;
 b=Am17qSnkbB2/QkD+PNBV7d2GDKqzvC8FjU0arBxwbxh6n1C9H4RtyzBoDbzrYvqXLH
 +mhF7zYtUyt+CW4XxicKA8MI87/uIMV897oTuJAN9/n/V2T/5nd99niuOqNyiT2Emu8B
 DWBPY4Q4E3iOFEyQTYErISv/9pXWgmxjvla19RqkopUc6iU2OCn9IGImG85mby9yRBez
 YLVuoT42u+NG8QaXY1twMbu7GleyNk6BaJs30PxRUsIyxG0IAr8UVVXN4oNu7yHXTJMu
 vd8iOexlIqAxASPEtwWN3hlfYXKoWjxCqQNDSX1lnvYwhAznFGAqLx2vF3VYz2n+CVP8
 7EWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DeZTFb2+mSAxTYz3CEQPbL5r8uD0hmjwfhYDKzn7KHU=;
 b=fRqy4LYurnk5y0MiN1FR1T8K8mviL16CaDodi8AUFfpA0XDvi2b5iBjsvFa2jLUpPb
 M6VsoBZXlENOyG0VTieN1Zn80lkJldbv4J9W3LKiyoePo0dm1uYlGcB6AvswOzg/OL8u
 +vaLe9++NXb+gMsWjMx8M46KfUng4QOYdC2pcb7Qu8woBJpSXVN/SbSDQMPx91mNthNO
 s8wyz7P9alcjo2HmiiYBvlPur/LRh2AGToqdJhzdrTi0jiFgttwyAovk89X5RAqux0fX
 DiE0VOO5ocdmrpFPe8wCwXr6eV6JO22T8IGTREsV+pARULfnTACkSq58VhHN++pvC5ya
 irvw==
X-Gm-Message-State: APjAAAWZctwRKqvBAmk2UE0Ba7DW1QmwA6+0pkD9YDrnrAmOgLeUvOhF
 JRxuHNDMQEL7HCyXrUj0WZcm6iI+fId1JKPoCFAgkr18
X-Google-Smtp-Source: APXvYqzhDwtJNT/bYA0xB9hi/YED4F0baWbm6jieCSJoubq75bTBsJaQIbFNfHf6Vchc56tVkfTifNdIEiNND7TQyBk=
X-Received: by 2002:a63:480f:: with SMTP id v15mr23047248pga.201.1580196314249; 
 Mon, 27 Jan 2020 23:25:14 -0800 (PST)
MIME-Version: 1.0
References: <20200127193549.187419-1-brendanhiggins@google.com>
 <20200127193549.187419-2-brendanhiggins@google.com>
 <CAK7LNASR13WjasKPmq-8gURhNUpOsrsCN2ODUh56fpM9DKWq7A@mail.gmail.com>
In-Reply-To: <CAK7LNASR13WjasKPmq-8gURhNUpOsrsCN2ODUh56fpM9DKWq7A@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 27 Jan 2020 23:25:03 -0800
Message-ID: <CAFd5g47EOrbMdPFa2QO-5dEWZBq_N_MK5g4G2p3E8kEMmAECVw@mail.gmail.com>
Subject: Re: [RFC v1 1/2] kbuild: add arch specific dependency for BTF support
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232519_937937_BA26CE1F 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Heidi Fahim <heidifahim@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Randy Dunlap <rdunlap@infradead.org>, linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Changbin Du <changbin.du@intel.com>, David Gow <davidgow@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 7:28 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi.
>
> On Tue, Jan 28, 2020 at 4:36 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > Some archs (like UM) do not build with CONFIG_DEBUG_INFO_BTF=y, so add
> > an options for archs to select to opt-in or out of BTF typeinfo support.
>
>
> Could you use a different subject prefix (e.g. "btf:") ?
>
> This is unrelated to kbuild.

Sure. My apologies, I just used the kbuild subject prefix because
that's what the previous commit that touched BTF used. Will fix in
next revision.

Thanks!

> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> >  lib/Kconfig.debug | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index e4676b992eae9..f5bcb391f1b7d 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -238,9 +238,12 @@ config DEBUG_INFO_DWARF4
> >           But it significantly improves the success of resolving
> >           variables in gdb on optimized code.
> >
> > +config ARCH_NO_BTF_TYPEINFO
> > +       bool
> > +
> >  config DEBUG_INFO_BTF
> >         bool "Generate BTF typeinfo"
> > -       depends on DEBUG_INFO
> > +       depends on DEBUG_INFO && !ARCH_NO_BTF_TYPEINFO
> >         help
> >           Generate deduplicated BTF type information from DWARF debug info.
> >           Turning this on expects presence of pahole tool, which will convert
> > --
> > 2.25.0.341.g760bfbb309-goog
> >
>
>
> --
> Best Regards
> Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
