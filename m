Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5DC19708C
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqbaD6EQVfwbDf2d1qaWwzCj6k14Cta//AikSH6k7ZA=; b=pSqEf28tyuil6A
	D/H3yFKx6T2NWJuBcDesDgzjUGAz9gaSs00rexmg2JRso/hQHUDpmWZHXXnk7GVOCx2lT+a+8Ddm2
	MpBbqeeaqKCWHzY8UZb2W7FAWGqLBGFLc6wT+yDA9sJNVhSrGphyu1gkOjWIzSq6+XHmpNIHbSK/t
	N9BkUV741AbYqsaqWwrYk0Sqa3T2fZQcX+uZbFdP0QjnHrIOZS1LSeOff3Bs5+coQbGhPlFriatTW
	fWfsJttTdfdM7XVSGnBTEJVSxbGRrE8XMMTlC/kEoxZu32RPUVNvRP+U7VW/3omSIXycERm39erdm
	YPCmv8akJHFj20WoSNaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfaA-0006vR-3X; Sun, 29 Mar 2020 21:35:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfa5-0006tp-E4
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:35:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id j19so491077wmi.2
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HqI97KwouVLUykgib56VgjhadNusPMVXntdH202/zkg=;
 b=H0R8DJj79cYugU+JMSCk+PMfvWnfu+qBA6Lm1VpKFESZ5eri+C/Zp71+y3jjpzUK8S
 1jcNvrWpfVhlS62qH8RC8SfENOb5LNIM++/QfVZp1JWBbgySupN8C659dAPDD1vfb6xQ
 e3C0ovWyTuXnwA6RCBKffwXewyUK/gFAkcUhJ0aAtDMxf01sXxV3o9YzzFIkZ1YjTOjm
 sf8cQAFEFuEzzuKkyLTvEx0XYeC0m5v/ZzojmhvhGUpmlI7pBToRQgtFDw2g41p14w13
 MLMEZpWzWXCh1rLGBanEi+ERSV+eZ55sCPnzTJ3CHSuToVe18UeAWViV7WlwtVWzb0p1
 1UXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HqI97KwouVLUykgib56VgjhadNusPMVXntdH202/zkg=;
 b=bQryx3nH+bsEmbPkYJQ/iVmSqFuoNrh7Z2OdwXyzY4flTr+tXIEd424U8pHemp8Dyv
 lsX7h/knFGCR4gkrD3HMoKxiyfvjaBSufBN7WqgNikvOM7L9OCNYK6hkEz4nz6zqZvKK
 rqxubzRMyFrECrBTvBwJpauHeK9c6i4j59eOzBbg7xDX/ACKDt6ueHauqnei5Pp5BQnY
 gEniBtsAK2fastdD/nGruxSR1AnOwXfhK1SjAGiHJreu8zXn2DWqSb4Bsu2eR3JAgISi
 kAoZXQ1hdWrnHKgEOwPWJEPVq6ZiHNEdB5nbeSfHNuOt7bn2AOk+M2P7Vk7NwlJzfD5X
 nEiQ==
X-Gm-Message-State: ANhLgQ2D478jDRrjbbmYCXZZzL233N/uQl2Lluhdfmr3YP7/T38zEqmP
 HtDBq5bFLRyoJfnGP2YaqzWAYf2ZTDllImkndIk=
X-Google-Smtp-Source: ADFU+vsyJBras5OSJXoGoZm8/o1fdhgqkfwbzHwf1bgXfwNtTGQqcuYa4FZbfH4vPAVcoC4hnAWXVls8EQsTMwqKCxQ=
X-Received: by 2002:a05:600c:257:: with SMTP id
 23mr10398826wmj.155.1585517696243; 
 Sun, 29 Mar 2020 14:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200212100259.80438-1-andriy.shevchenko@linux.intel.com>
 <20200312170456.GG1922688@smile.fi.intel.com>
In-Reply-To: <20200312170456.GG1922688@smile.fi.intel.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:34:44 +0200
Message-ID: <CAFLxGvz7a5kZyP78+U1Dm=v2WpZMUjaU4sMo_6bcWd_fLM8VyQ@mail.gmail.com>
Subject: Re: [PATCH v2] um: Don't use console_drivers directly
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143457_479185_D151DAAE 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-um <linux-um@lists.infradead.org>, Thomas Meyer <thomas@m3y3r.de>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 6:05 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Feb 12, 2020 at 12:02:59PM +0200, Andy Shevchenko wrote:
> > console_drivers is kind of (semi-)private variable to the console code.
> > Direct use of it make us stuck with it being exported here and there.
> > Reduce use of console_drivers by replacing it with for_each_console().
>
> Any comments?
>
> > Cc: Thomas Meyer <thomas@m3y3r.de>
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> > v2: fix condition (we do NOT want to have a console), remove confusing comment
> >  arch/um/kernel/kmsg_dump.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/um/kernel/kmsg_dump.c b/arch/um/kernel/kmsg_dump.c
> > index 98bdf69e4c2e..e4abac6c9727 100644
> > --- a/arch/um/kernel/kmsg_dump.c
> > +++ b/arch/um/kernel/kmsg_dump.c
> > @@ -9,20 +9,19 @@ static void kmsg_dumper_stdout(struct kmsg_dumper *dumper,
> >                               enum kmsg_dump_reason reason)
> >  {
> >       static char line[1024];
> > -
> > +     struct console *con;
> >       size_t len = 0;
> > -     bool con_available = false;
> >
> >       /* only dump kmsg when no console is available */
> >       if (!console_trylock())
> >               return;
> >
> > -     if (console_drivers != NULL)
> > -             con_available = true;
> > +     for_each_console(con)
> > +             break;
> >
> >       console_unlock();
> >
> > -     if (con_available == true)
> > +     if (con)
> >               return;
> >
> >       printf("kmsg_dump:\n");
> > --

Thanks for cleaning this up, applied.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
