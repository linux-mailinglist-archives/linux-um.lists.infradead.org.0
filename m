Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD243BC7AD
	for <lists+linux-um@lfdr.de>; Tue, 24 Sep 2019 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDgGCDb25CoD9y8orJHJY44SFUHb2lGVWfDtvukMVA4=; b=s6nO6MDeysbXnD
	yirxOmCJD7eQxriD7npkk+Wd6XXKy/bwAOek3rfEWSCCiedLLurN0/dTr7hZVFhJdtPgas0w/hpm4
	v0MO4lu0Dkn1rOT7s0Z2WHiIqaT61JL9kyOUxqPdyOke30IcsL9bSTctr6665aqWyo84xozJRHbHx
	XV1R0QM72YfjMpkPvA1T+UXOLJHMji9GqwNEiE6sevE2e2xSv/geKKoPhsY0Fk9r7T5+OdIVboudg
	ak0d0IgO3ViFqnyCVjqRyEH1O2JtDtRfAG4567jEIXW+o5aXlQkTpBL+6/hh6hwSawjyNAzgbyJzs
	yWDxinald5vtaOgsrsBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjf3-0000eK-V5; Tue, 24 Sep 2019 12:11:17 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjf0-0000de-Fg
 for linux-um@lists.infradead.org; Tue, 24 Sep 2019 12:11:16 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x8OCAXFB021398
 for <linux-um@lists.infradead.org>; Tue, 24 Sep 2019 21:10:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x8OCAXFB021398
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569327033;
 bh=rffgi7Bwl5qrpCk6eSIVxCw+MSyC05bj12lcb0fj3wo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KpBi1sRllQGt2TQBK2EYL3FS5VGMG/DiVCyBDqLdVRqhAe2IaFYnsb0nix1O7PlnA
 jLVcilaS9Z6Z+Tk6yw6DEapVnZ/lsghCjGV4zTHpKGQxNOdJhHqqxg6e6aEbXsTUlk
 Zr8TVepdVYpfz+9LpROTvFU7L7/YeE6TEb6TWWc5jCEjepAiLxE9obKCXEl/aaz82+
 1CxXGa7M+7ou9lutfDVL2KulT7uIE5wfbBE71zWxeyfGVK9EkOfpaWP0JaRKR1+Apa
 IYB0pz03QGtpvjHmpVEQAkM4A3NxApeN0kAmtJiUcBr6hhEGypFRWkisyS4kzR3Yhy
 7vR8UjHAl4zSQ==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id r19so460953uap.9
 for <linux-um@lists.infradead.org>; Tue, 24 Sep 2019 05:10:33 -0700 (PDT)
X-Gm-Message-State: APjAAAUSYx8QrYFsG2+oWpFEZZh3hRhjZ/ryERClDJG5cwMm1uCKbai9
 XBobmW3NS3dsr+asRc2nA0CnCZGQYw1JcXUQ0N0=
X-Google-Smtp-Source: APXvYqwgke60eyPgLk4MA/iZti/hXxqsb489w2oWagoqfwSTYwHUP/vUABgrIbkliIdWqMyxykTxwu+iTxAVncatUPE=
X-Received: by 2002:ab0:261a:: with SMTP id c26mr1266596uao.121.1569327032303; 
 Tue, 24 Sep 2019 05:10:32 -0700 (PDT)
MIME-Version: 1.0
References: <c8cbee753dc0306fd7597f43a45e05d99d404b29.camel@sipsolutions.net>
In-Reply-To: <c8cbee753dc0306fd7597f43a45e05d99d404b29.camel@sipsolutions.net>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 24 Sep 2019 21:09:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNATkejPwwsfJoR4veX+pvCnoK4Seg-ZOcDrZgeTaJTfp0w@mail.gmail.com>
Message-ID: <CAK7LNATkejPwwsfJoR4veX+pvCnoK4Seg-ZOcDrZgeTaJTfp0w@mail.gmail.com>
Subject: Re: static EXPORT_SYMBOL checker causes false positives on ARCH=um
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_051114_742102_74404BEF 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Emil Velikov <emil.l.velikov@gmail.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Denis Efremov <efremov@linux.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Johannes,

On Tue, Sep 24, 2019 at 5:17 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> Hi,
>
> With the new commit 15bfc2348d54 ("modpost: check for static
> EXPORT_SYMBOL* functions") we get a lot of warnings on ARCH=um builds:
>
> WARNING: "rename" [vmlinux] is a static EXPORT_SYMBOL
> WARNING: "lseek" [vmlinux] is a static EXPORT_SYMBOL
> WARNING: "ftruncate64" [vmlinux] is a static EXPORT_SYMBOL
> [...]
> see https://p.sipsolutions.net/7232995f34907b9d.txt

Thanks for the report.

I think this should work:
https://lore.kernel.org/patchwork/patch/1131017/

It fixes "__guard" and "__stack_smash_handler" too.


Thanks.



>
>
> This hack fixes *most* of them:
>
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index 820eed87fb43..3e443563ebea 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -1931,12 +1931,18 @@ static void check_sec_ref(struct module *mod, const char *modname,
>  static char *remove_dot(char *s)
>  {
>         size_t n = strcspn(s, ".");
> +       char *at;
>
>         if (n && s[n]) {
>                 size_t m = strspn(s + n + 1, "0123456789");
>                 if (m && (s[n + m] == '.' || s[n + m] == 0))
>                         s[n] = 0;
>         }
> +
> +       at = strchr(s, '@');
> +       if (at)
> +               *at = 0;
> +
>         return s;
>  }
>
>
> (but obviously just serves to give you an idea of what's going on).
>
>
> With that, only two remain for me:
>
> WARNING: "__guard" [vmlinux] is a static EXPORT_SYMBOL
> WARNING: "__stack_smash_handler" [vmlinux] is a static EXPORT_SYMBOL
>
> and I think that's because they don't even exist at all, so arguably the
> code shouldn't export them, but I didn't find a way to detect at build
> time if -fstack-protector was enabled or not?
>
> Any thoughts?
>
> Thanks,
> johannes
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
