Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A42147421
	for <lists+linux-um@lfdr.de>; Thu, 23 Jan 2020 23:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcOhRZaAUycz7HWErngdDVqCOakBwZK5102gpuIwYMw=; b=jg+zubbj12HhXF
	Cj743r5MU/xi6h391J+XbC0biCMoARBulcFsYU+DDm1tCsvmZ1FAbcbK+Abgxh+ZzPdl9KfPHf7Wd
	IjDIcovdKD1m6lwYd+AzWEZVVQA83E+ai5fdPsVd7L0pcAEcsM5rbk+7M3nN5zygjKgbIWfYnAQrI
	OmcYbUG1QRqX0HCZG46vIdgxvsj56fRfDirpzF/UiYCmgFSFiZUgMsCbXYbpGE+qI9zAFR77Q/Z/i
	koZWi5ffSsCt7ydquaYMsHzfePDWFfUmz7OAbwYHHrd/4siNe3su8Ni5KWbR79TM3nbflXOVdVaBF
	yn+0asJ/d/9/FJh6Devg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulPF-0000w0-5Q; Thu, 23 Jan 2020 22:56:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulPD-0000vX-Ab
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 22:56:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so2153122pgk.2
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 14:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KDyx4Ql8/Qn5VAoH2DVKut2V/mwsU6XM8Sb1jgu629k=;
 b=tplaEJ1vep6oo8dV1s9BOPDmRx7jCDz9+N3FKj3myXdVaRz6YvIrUsNyv5jg9YToT/
 pZ5HtpJWhlSL3p7j8WnO4gS9eQAO7GalnteaC+BCkCqtvuiTfGTnjccLM7HpIWCB1InI
 LaOSyoyDBgKX3T9+24hjMAV1y4lFY3c6TVIa7kolWbSK0ik4lMyaCXYVWkN6X0j07Ble
 If0fzVssdVXXYCan4YXZzy2cxyeVShgHfimuuTkLEQpPCk2agA1PzCsuD35FoTZCUhoW
 xOKM70JQm9yXnc1Y7PNVpG78ph9b1lMuHOBlFq58zE7QvCgLLkS63be/X5VyD+GE5w3g
 KkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KDyx4Ql8/Qn5VAoH2DVKut2V/mwsU6XM8Sb1jgu629k=;
 b=mq2rZZ4do+2r12aXVWnfheKMnKlPDj0tyc2Kgx8qgS9bHNtta8eBUxcmxWSVBtvVbI
 4mvIVoeYCc4IAS2bf93PxFOOWLzWchCUJpWkcSMWDgixZUWFPepCbHOVGVgzl3sRI0ZM
 IE4qak8TtaVQAJ6hWKyc/yL6qLQJEvbEuN1qpoezYC2nHoaxU1MIJMUdK5L7+RAxCpxG
 U+ksbgfMV6YtDoLc/dqz6e6VgnoQFewObAO5M5UdFB/ZaWnvmiaPxTekcJP9RJtKlNlp
 KF20zodGrpcm3o/GImWtgcIcfY8ndLfanEr189p6XuKwAhPivqHrTlvGUIaIV+qXZWSs
 R5RA==
X-Gm-Message-State: APjAAAWdFMU79dKJuYbiE8KR6BZjmZbmnF1P+FJ5Lj3rG7WfgJINHLQZ
 Uzx850AetDh1B6aRLgXwQDx5GRa+ISsCaFwQHEEjhQ==
X-Google-Smtp-Source: APXvYqyYSrlPKI5wQd9gqwUk5XMTQiSu85EU/bUZcbyAqDwHkHjIuhxEB+wv6Wrj3RCcUP6u/oi9MxoAR4RhwmZvvsg=
X-Received: by 2002:a63:597:: with SMTP id 145mr705968pgf.384.1579820214473;
 Thu, 23 Jan 2020 14:56:54 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-7-brendanhiggins@google.com>
 <20191217080653.B672B2082E@mail.kernel.org>
In-Reply-To: <20191217080653.B672B2082E@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:56:43 -0800
Message-ID: <CAFd5g45YJrrOu=kvSF9LhkCy_gxrAa3Sa6UJLRFGQtDtepe9xg@mail.gmail.com>
Subject: Re: [RFC v1 6/6] kunit: Add 'kunit_shutdown' option
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145655_389417_C02B0555 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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

On Tue, Dec 17, 2019 at 12:06 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-12-16 14:05:55)
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
> >  lib/kunit/executor.c                | 18 ++++++++++++++++++
> >  tools/testing/kunit/kunit_kernel.py |  2 +-
> >  tools/testing/kunit/kunit_parser.py |  2 +-
> >  3 files changed, 20 insertions(+), 2 deletions(-)
>
> Can you document it in Documentation/admin-guide/kernel-parameters.txt ?

Ah, yes. That would be a good idea. Sorry, I just expected to be
shouted at loudly for doing this, and didn't want to expend the effort
until some people told me that they didn't hate the idea.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
