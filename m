Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D231BE749
	for <lists+linux-um@lfdr.de>; Wed, 29 Apr 2020 21:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcteB0HTr79Ge5XCM/nNv+QTr1NvG5XX3UM580r1PKI=; b=rWK1YZ+A8zHKxM
	Kau5cM4el+nHcHkPGl+prSatI9FV4pxb5gLq2/jYxr0pbwQC1BqnxdmkperGq+FWgzUgfTj1mWyiA
	NI8bUqMio4UslW3da3oRmAvxDkzXQRcU3BEy1cGsxITBZOKvU0/rp17PZToq4dIUvxd4bcReWgPpf
	PNtJJlygreMq59a+f2nunNEJcQ6rvLKh+pixh6Ce7TmUiFO1Xp9+CsIYh6Fqula7vrXouj8pQhr7d
	N6WHsbHD5hk1yuZ7ysGt5N47d6lz2nFADziCWy6MXCnnS2pkkBYb7s18PlWLLxkyUy0bKq6m7x5Wp
	EcOFms8G+cTLp12Q7BjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsK7-0005bT-T7; Wed, 29 Apr 2020 19:24:47 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsK5-0005aN-G9
 for linux-um@lists.infradead.org; Wed, 29 Apr 2020 19:24:46 +0000
Received: by mail-qt1-x844.google.com with SMTP id x12so2892220qts.9
 for <linux-um@lists.infradead.org>; Wed, 29 Apr 2020 12:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFcKNc4rf3qqI71+Mw+iNOhXoRZR3LeQvvruao5gpLw=;
 b=hycZlLUvUlt8++82mN0aNNAA9JFesZL4CgzC3hDPtO0hVzJjAj4MT7nOW34YaI+rWL
 AQ5kAAEUrTdZO1IWIM+RAr60A+q2sOSiM9ukTQ/QbyhEyUCYDFjAVAxu2uHkKsWCUrY3
 AuACPo4Y6UcZM0AN8LcLoK/MFyWbjK2VQbvUFi5AwPFxKslnwdv6ix1l0Dx+Q9NSZZSq
 aynwvU9FX9hiGv7FYx7Bvg2mF6SKGYJnA+MFEFJcl+3PRgKVYcq85TRMeHFhw/2SYMbU
 RALw6rpju6XNiMYldCO4M2bxRAtiaF5oVMrriZIFv8mVHQzljfhCyO110/YDAh26sWB8
 oxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFcKNc4rf3qqI71+Mw+iNOhXoRZR3LeQvvruao5gpLw=;
 b=AfbmWw/zYNcKRwXLijBZo1lzqbaz8lMnj+BZ3EawpSV8k3xiq1GTPDjolsLS38dfuc
 7kKui26NMULkpUXhKwAggUYI/yIOKthvO6XS0uq1vVKAI/6HqTz+2m4jFcoCqG54UJaT
 CgyxTM1IC7SPw652BX4nLMH7WAdys7pDPIkrW/3+9xdmYgpZ3i4jAW37f9E7TLI72xnO
 3ZbIUrJYcrXLJPMyBnhjOtRcSo3PszhMYY3+d05uKsxGJcGJePkg9A02sL+iSgE4svja
 kNwSwlfZc7ByQIPEaPWa1MGRG3/BwyUXzhKvYpBwzTnEBd/EKeJc5DoqGSPbDmtQAs0Y
 gaOQ==
X-Gm-Message-State: AGi0Pub9nAYDRakHX3xAWEuOlhIJj4BxfjFtrE+pr/cyLChxx/Oswkfm
 DfUy+vFik6lmcDc6YuIUFbnTxgaCfeL1TpzCExs=
X-Google-Smtp-Source: APiQypL4iodO3w5H97Zqn9TuJJZK6tlmoINaAuaDryKSYB8eFhjvBf08xwsrfVnJbShwNmJpW+axwgvlQLtKccO8swk=
X-Received: by 2002:aed:3346:: with SMTP id u64mr35269260qtd.1.1588188282535; 
 Wed, 29 Apr 2020 12:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200415095152.85794f817f97.I289cb72f130c19e850d70eacca9e68eb84832600@changeid>
 <b7157cb3-ee7d-ac91-c755-ace63d617460@kot-begemot.co.uk>
In-Reply-To: <b7157cb3-ee7d-ac91-c755-ace63d617460@kot-begemot.co.uk>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 29 Apr 2020 21:24:31 +0200
Message-ID: <CAFLxGvyY22Pt8gfsujOTi=aLv1L8=kEOGo_18Hscs_rowKmSGw@mail.gmail.com>
Subject: Re: [PATCH] um: syscall.c: include <asm/unistd.h>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_122445_542044_77E69E8A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:39 AM Anton Ivanov
<anton.ivanov@kot-begemot.co.uk> wrote:
>
>
>
> On 15/04/2020 08:51, Johannes Berg wrote:
> > From: Johannes Berg <johannes.berg@intel.com>
> >
> > Without CONFIG_SECCOMP, we don't get this include recursively
> > through the existing includes, thus failing the build on not
> > having __NR_syscall_max defined. Add the necessary include to
> > fix this.
> >
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> > ---
> >   arch/um/kernel/skas/syscall.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/um/kernel/skas/syscall.c b/arch/um/kernel/skas/syscall.c
> > index 0a12d5a09217..3d91f89fd852 100644
> > --- a/arch/um/kernel/skas/syscall.c
> > +++ b/arch/um/kernel/skas/syscall.c
> > @@ -11,6 +11,7 @@
> >   #include <sysdep/ptrace_user.h>
> >   #include <sysdep/syscalls.h>
> >   #include <linux/time-internal.h>
> > +#include <asm/unistd.h>
> >
> >   void handle_syscall(struct uml_pt_regs *r)
> >   {
> >
>
> Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>
> --
> Anton R. Ivanov
> https://www.kot-begemot.co.uk/
>
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
