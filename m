Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592AA14AE5E
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 04:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV41W05di/DEQC9JcNBVHfHyeBbe82Kb508YXQBJAyU=; b=H88KPpQW2viR+B
	wBTtyAXY02uN/QJTim7/iEHS9UzFFTL/EWxX5LSQRN92qcPOLlJBtGz2Qge9qrvgGyRPWA9PMzqwp
	ToO4ExJhtANJGIdW28/Kgjso9rw0z3d2ZUprDj7W1m7uxreuwSLvrVB12dw7kbwUXPRLbSmlCw/mi
	8KBfa3r6ULyUohSpRPKvLAC9S0cMEfFK2SuZFpOQnt2jpI5fU+JTuNgkVH9V/b/t+ywFu9j4iq2qr
	4ajVz8ldNdca4PtByV6v0rMMbMir4sYId6+3wYa5Igora0WrhtoRraq7KbxdtXdGoGvCNnoZZbMyo
	L2POGtHfeTyARp6DChUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwHYD-0007Bl-KU; Tue, 28 Jan 2020 03:28:29 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwHYA-0007BA-MP
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 03:28:28 +0000
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 00S3S3RZ020545
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 12:28:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 00S3S3RZ020545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1580182084;
 bh=jPg30W9Wd4V1k+r19IZv85tXWHy/WeE9O1ipLqP4Wa0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dPj6ubQBmkVGjEEQKh3kQ5BMIKfaMjT4WjNc2VVZ+e/FixOuiozeJbLJ5G7tIufSa
 7E4cM/QmC389xoRBRUhqtw2zKPfwrlo4Xzaz3WuxrfpVfxMnIf3/hqdZqw5tlXQwel
 V6IX6Bf8fkrXR+uJlC5KKjaW2LTEwRNgAlNgHXwJeAaHe1JHQccDYn/JlmBTtF+uS8
 BsBUazz29Twp6bHjHEk6fhuykfDUFXLo+EdU25wLJQgz+03fQIQE05CESWLLSF4THA
 tWYzIQWDginPR1NK9FSYn8DINIfU7roeNvQP9sF6ltlR7w4JGhJDFXIlEp6IurNAz4
 STy4TyIxJaDHA==
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id e188so6967786vse.3
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 19:28:04 -0800 (PST)
X-Gm-Message-State: APjAAAXkMvdN5URnmWWJpHKRMkv/URGCvCgFeM+Sx5j+W5gwMDSNv7rm
 aH6an63L/SxsXjel6YVeojf4bGxT4odvrH3F5tc=
X-Google-Smtp-Source: APXvYqwGIUxHJH2LBGc/TLAR3nkqL69dSib07JC9anxXOAaH117GDjLj548pzb7bFWOb8NNbUUp9rV4BKO6PMGnMkfQ=
X-Received: by 2002:a05:6102:48b:: with SMTP id
 n11mr12542394vsa.181.1580182083009; 
 Mon, 27 Jan 2020 19:28:03 -0800 (PST)
MIME-Version: 1.0
References: <20200127193549.187419-1-brendanhiggins@google.com>
 <20200127193549.187419-2-brendanhiggins@google.com>
In-Reply-To: <20200127193549.187419-2-brendanhiggins@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 28 Jan 2020 12:27:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNASR13WjasKPmq-8gURhNUpOsrsCN2ODUh56fpM9DKWq7A@mail.gmail.com>
Message-ID: <CAK7LNASR13WjasKPmq-8gURhNUpOsrsCN2ODUh56fpM9DKWq7A@mail.gmail.com>
Subject: Re: [RFC v1 1/2] kbuild: add arch specific dependency for BTF support
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_192826_963543_9E3C1C63 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, heidifahim@google.com,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Randy Dunlap <rdunlap@infradead.org>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Changbin Du <changbin.du@intel.com>, davidgow@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi.

On Tue, Jan 28, 2020 at 4:36 AM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> Some archs (like UM) do not build with CONFIG_DEBUG_INFO_BTF=y, so add
> an options for archs to select to opt-in or out of BTF typeinfo support.


Could you use a different subject prefix (e.g. "btf:") ?

This is unrelated to kbuild.

Thanks.


> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  lib/Kconfig.debug | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index e4676b992eae9..f5bcb391f1b7d 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -238,9 +238,12 @@ config DEBUG_INFO_DWARF4
>           But it significantly improves the success of resolving
>           variables in gdb on optimized code.
>
> +config ARCH_NO_BTF_TYPEINFO
> +       bool
> +
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> -       depends on DEBUG_INFO
> +       depends on DEBUG_INFO && !ARCH_NO_BTF_TYPEINFO
>         help
>           Generate deduplicated BTF type information from DWARF debug info.
>           Turning this on expects presence of pahole tool, which will convert
> --
> 2.25.0.341.g760bfbb309-goog
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
