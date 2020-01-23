Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFED147400
	for <lists+linux-um@lfdr.de>; Thu, 23 Jan 2020 23:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJImEunTLJUUGoMlLuPngWSOXWMmwdK+IABtvvz3JLc=; b=lI+IH0oNUmfyid
	e/QG9QIk4i08MWrB/YDjq+rJQRtD/7mwvHSbvfW9dyLCuMtHlFD1MqwCfjpVFXfb+5UxI5lalsHMS
	nhsZ4inktHtBcW3AYxuBMhdnI3xACyvR8Dw3dLf/rQdZWJe78qm6MF575wsfiHqAKMetLAbq3ZaQy
	IK01JmbiM5BkD5/u9Mb7A3PaPJpqhsFf4589SbxA1ziKDS6U4rfLMk9OJ3189kfP6TXeEC0pj/vu6
	DZu071Y8ptQHb7yUKaeKnDqsHU/D5gTTJUWecR568+r7yzW4TemK8uMA6upUYCo4gXG8eVJidVb/N
	xmclaqRPeENm9CRhlHnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulEb-0006TJ-QJ; Thu, 23 Jan 2020 22:45:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulEZ-0006Sl-IB
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 22:45:56 +0000
Received: by mail-pj1-x1042.google.com with SMTP id r67so142035pjb.0
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 14:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lDS+3WSPujoShC7doDseBAcn2qbrDXuKgW17o9svkCE=;
 b=cHIAbkjiGYyGWlr3Qz9vajplT0PI/Z+8Fu/987ccE+I6XbK1j4skJ2XgVqKVyg0WCE
 ExvFumHeQgiYha4XHUjAOLhyreLsvwM4jgACWap39lK/AWGFloVw4Hr5STe9eoFyCWUc
 I/+yqinWGOTw/eo9zFj3l98TQryNcCi7uFIjGzyqFr3N70b0pQqrLd6TzhugV5MwVXId
 TYgVR9BKfj5YodqfA9q20jXt0V8aXLDs8mY8TxdF9GpDTG8MsOxUgdFSjrwLlM6GvNO/
 sBf/y2aQhew8mrLgtCJYyOsHpz8+lKJkco0uulnwq9ln9kwGFrnE61XkMVvKfbxUedwL
 slzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lDS+3WSPujoShC7doDseBAcn2qbrDXuKgW17o9svkCE=;
 b=WqeX9m1OeYCd/sB5yDC9u5DMcDset4e6StZUodUHQoNCEAZwFjGKJMUNp6ah4uqUeQ
 x0Lgyp3KIBbQguK7Tz8D8hnmS3kMTilpIo1SiJC26Z0mxrO//e9AiuF9K1ciinH+mVDC
 3u5KdoEwTxyCV1SeIp5uFT7hoUYGC6T0Cpx6TfdRGCPhbEqzysz3W++trRTd3mGxU8mT
 u49aIJJLb4Dw9oXAvZy9nZYgBCtFugVd0UAee+zy0TrZ1LrhfXWMDjsiledIvk3wFOQ9
 SzC/1vwxblZKSLa4GzkSzCge0piUggCs6i2Z6z6B36ztXO+b6ujHNur67/fR1ISJkUMi
 Zc6A==
X-Gm-Message-State: APjAAAWOUTnGgJ8GFt/pPLVRZCZdn+tWsYZgBNbGmPBo+Y3EVYR2hm7U
 wjNXk0MR14Rkk46fQrBMy4HUY2UmtSTgYNsbZKujLQ==
X-Google-Smtp-Source: APXvYqw7Z3x2noRBQ2heUDMAvH6d/E7XrpibeDUNwqhuI6EQkiajmtzVh7BryjyvfCVGWCPH76TTKcMb42RHhJibjjc=
X-Received: by 2002:a17:902:9f98:: with SMTP id
 g24mr393688plq.325.1579819554213; 
 Thu, 23 Jan 2020 14:45:54 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-5-brendanhiggins@google.com>
 <20191217075836.C76942072D@mail.kernel.org>
In-Reply-To: <20191217075836.C76942072D@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:45:43 -0800
Message-ID: <CAFd5g47=FxbKtm9rA3zKvnipdTdP_VR8zJ3pad-QukL5Ottrjw@mail.gmail.com>
Subject: Re: [RFC v1 4/6] init: main: add KUnit to kernel init
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_144555_626575_DDE543FA 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Knut Omang <knut.omang@oracle.com>,
 Luis Chamberlain <mcgrof@kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Sorry for the late reply. I sent this thinking I would check in over
vacation, and then didn't.

On Mon, Dec 16, 2019 at 11:58 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-12-16 14:05:53)
> > Remove KUnit from init calls entirely, instead call directly from
> > kernel_init().
>
> Yes, but why? Is it desired to run the unit tests earlier than opening
> the console or something?

I want to make sure it is called after late_init is done (so that you
can test things initialized in late_init). And I want to make sure it
runs before init*fs is loaded so that there is a mechanism to run
tests without having to put a userland together.

> > diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> > index 978086cfd257d..ca880224c0bab 100644
> > --- a/lib/kunit/executor.c
> > +++ b/lib/kunit/executor.c
> > @@ -32,12 +32,10 @@ static bool kunit_run_all_tests(void)
> >         return !has_test_failed;
> >  }
> >
> > -static int kunit_executor_init(void)
> > +int kunit_executor_init(void)
>
> Should be marked __init? Even before this patch presumably.

Just this function? No strong opinion.

If by "before this patch" you mean other stuff in this patchset?

> >  {
> >         if (kunit_run_all_tests())
> >                 return 0;
> >         else
> >                 return -EFAULT;
> >  }
> > -
> > -late_initcall(kunit_executor_init);

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
