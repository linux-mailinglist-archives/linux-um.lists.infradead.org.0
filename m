Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2705C14E5B6
	for <lists+linux-um@lfdr.de>; Thu, 30 Jan 2020 23:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oST0c9EkJzy/BCKOvDkrv/wejTaZHJntWbxPSBo5Hxg=; b=mnRj1q08LTSeOF
	To+LhSfDg2LF7JFakU1ZXwJEHlFBX1trUXxIm+AxLH+3qI0+rdihzwCEevxZ5GcR4LKSSZcA4lrk8
	i6HAxW8R9jVVIUEBeoCNk3goYGTcHymFCFigFLKPB5vKMhSomfeRyb8jZ95aQUv+zPmobV9HG/OY1
	9PNZxPcmpFbbhOrmGtP/s1b71XFjaPpXTAC7rPGbvmI7P3GFUVECCusNXjnfQqNNLsqbN/5ZX4hHU
	+rLIMR6niwQ8Z6ft9rFjtFQ5eu79ZPybIUwx3UkpUig0MprkJO7bWyIevVCzHv3cQcVv1er5sGGMd
	VliNpA1yOMKAqkVFy13w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIkA-0002Hs-KP; Thu, 30 Jan 2020 22:57:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIk8-0002HE-6j
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 22:57:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so1903661pll.13
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 14:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F0OASKqvkAbKhPJi+8BLbJXf7NsJuVGG2F01NRx4uXs=;
 b=uVpoLgWjGXuzd5yfcWM9lhJIpdK7H/ed03v0i4oe6ecKcTEcyUagDQonSnpspNqBrg
 vzRW3ikS7UJQyY4Dj4PvpzbOlFmWNIQh30F18QIPfzj4FV1GaUcHqdOzZ3waSZX28dFR
 owP1VctM6Zpi+bhXbngtnNxU5Npm2UP3BFLONGvIskBJ+Hso+Gm7uzXKWMzhnG1Wu8Zr
 3raQdUvOYsYH0Sw1qO1QgwRs+xaKfx7EYur5a3+Wfbi0ZwyEdL1Yu5dOLhbV7Pnmq3Wo
 HmdITpnr8Myjlm7LxKgu2hN0B/4IlgJdB1tejGrAsObwA/gpPvKq22x5TFLXzj7T6OSa
 Nmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F0OASKqvkAbKhPJi+8BLbJXf7NsJuVGG2F01NRx4uXs=;
 b=kfPdQg6uuJeNSOteEcBfsHpmEA11k+7yf0XhatqNVPbRcfNCBj6XNsQgscJAgaRuli
 0XbfF65HEi9eDsUX+Mu+Zhb+HYYgwRaJg5E8Ug/4lzvVGf7aPOHddV+YQzJP84evoMgb
 LMPYgU1s4k5wQVFRwEo7i3psztFoQFDiugk480bNcZKByqgVnME+IVJVwHf9111rwvW8
 NiUGHGHCCfJTbnII1d95j3J/Hm/kgdxP+Ldh6sKOEz4ZXVwD5hc2rMqfNOkjg6IiS/Ix
 Shx18IsEaQDStoFiNSGW4ZqJwOCPwthiNLRqR5IVnkJ5pefbNTUOCyUE6VXx2SPNOQuY
 70DQ==
X-Gm-Message-State: APjAAAWk7MieM45iAh+1539eQjZ94JHQ0KeiukjGmWcJgbxwZ5lairkq
 lLIxRn/kFvxtiuxyn7FRo0o54Z/hXsjQ/qmK7qY67A==
X-Google-Smtp-Source: APXvYqx06rRfdAGESGvFlaOpt4QDt5bLwuCNfe3+zYpcszJFW6Zuk8yX4mjZtgIJVufRQ/Br8R02iQzC8Gfj3f2ErLY=
X-Received: by 2002:a17:902:9a4c:: with SMTP id
 x12mr6694919plv.297.1580425018923; 
 Thu, 30 Jan 2020 14:56:58 -0800 (PST)
MIME-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-7-brendanhiggins@google.com>
 <20200129063307.19CB4206F0@mail.kernel.org>
In-Reply-To: <20200129063307.19CB4206F0@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 30 Jan 2020 14:56:47 -0800
Message-ID: <CAFd5g44OO7Lany3U9dn-Axbsf2YBQ4fynvRpkqYYf-N1AhNMQQ@mail.gmail.com>
Subject: Re: [PATCH v1 6/7] kunit: Add 'kunit_shutdown' option
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_145700_271341_3BAA0E29 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>,
 Alan Maguire <alan.maguire@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 10:33 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2020-01-27 23:20:01)
> > From: David Gow <davidgow@google.com>
> >
> > Add a new kernel command-line option, 'kunit_shutdown', which allows the
> > user to specify that the kernel poweroff, halt, or reboot after
> > completing all KUnit tests; this is very handy for running KUnit tests
> > on UML or a VM so that the UML/VM process exits cleanly immediately
> > after running all tests without needing a special initramfs.
> >
> > Signed-off-by: David Gow <davidgow@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
>
> Two nitpicks below
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>
> > diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> > index 7fd16feff157e..d3ec1265a72fd 100644
> > --- a/lib/kunit/executor.c
> > +++ b/lib/kunit/executor.c
> > @@ -1,6 +1,7 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >
> >  #include <kunit/test.h>
> > +#include <linux/reboot.h>
>
> Should this include come before kunit/test.h? I imagine the order of
> includes would be linux, kunit, local?

I think some reviewers/maintainers want them all to be alphabetical.
So I have probably done it both ways in the past. Will fix.

> >
> >  /*
> >   * These symbols point to the .kunit_test_suites section and are defined in
> > @@ -11,6 +12,23 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
> >
> >  #if IS_BUILTIN(CONFIG_KUNIT)
> >
> > +static char *kunit_shutdown;
> > +core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
> > +
> > +static void kunit_handle_shutdown(void)
> > +{
> > +       if (!kunit_shutdown)
> > +               return;
> > +
> > +       if (!strcmp(kunit_shutdown, "poweroff")) {
> > +               kernel_power_off();
> > +       } else if (!strcmp(kunit_shutdown, "halt")) {
> > +               kernel_halt();
> > +       } else if (!strcmp(kunit_shutdown, "reboot")) {
> > +               kernel_restart(NULL);
> > +       }
>
> Kernel style would be to not have braces on single line if statements.

Whoops. Sometimes I forget :-)

> > +}
> > +
> >  static void kunit_print_tap_header(void)
> >  {
> >         struct kunit_suite * const * const *suites, * const *subsuite;

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
