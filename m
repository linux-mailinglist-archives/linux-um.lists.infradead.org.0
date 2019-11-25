Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E7C10955B
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCtWCvdWHDx9XU/fNCRso/6C1q7Drsfau7gf2Ck6Lj4=; b=f2tUFw+KTfu1AC
	22bXnIlpPBfofKnQzm/I63hb3KQa/iyBNL9o4cvLFYm7j1KGx8AD/cLNlx6joUP2Dbuvo81MyUx43
	HFrtXHwgCJxR8Vn3oUkLgXTiCgxijao3fSy1MCA7FQXVdkimSIzf7RYXaJT7IC1pjD6kG2YOceKVC
	8BZki1IySFFt/6ClW740GhtMDrEbSbrsHLC46a27KtvPPNbtBiBxnvJ+Z2cjJRqO/InmeqK4b5Y7g
	6AMYbrcU7O5F0oqqsiUoaOleDbHcrezD73UMpAWfS2U5/uAvHLNViA89f8Pq98fy9OApBB1ar+TuX
	z9OsnLYBH5RlC2asGqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMRr-0008DH-Ew; Mon, 25 Nov 2019 22:03:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMRn-00089J-5a
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:03:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id g206so1006507wme.1
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EzOmcmNHJdjS3Y2PaRjjbyy934rGJTZugK/pwbwbb3g=;
 b=nsPsx6SfKAY6dgvf13xQZCtgM7ygn595xGFhwvE0B5tLMUyxzkVIzPDDalMPq4E/2O
 hrv7hVxohXzwZML1VYhQ25BklRdZ3oC1vwb/i9EBWJH92VNPM3jtSSkRt0BHVISzYeFI
 bdjI7VC8P1mVt+hcYqW+I6Hc5J94s5m2nIRqUdoGTMAfLls7/XlcCYWUuRTT3zep89aW
 lZzx4duyXy9AIlmmJZsDtTTmP4E39prAe6wN8nf4S66LTjZv1++CzHYJoCkHhzOD+a+8
 naykuQ6AAntIjJoCeFUgT5Fm+Cgqf4F+6GxHnmLGztggfBd+hMg8QchZmlLglUIdUmuP
 hUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EzOmcmNHJdjS3Y2PaRjjbyy934rGJTZugK/pwbwbb3g=;
 b=oZdU3YVeDx6ZAdn3bHQ4BR0M9Xb6ehiLD7zmcme/D315EiKG59WKLUXsgQaJvpLNx0
 uypyEOrYyg3VuB3CXil0XGjBzGX3xa1p9CpHDHfJxi2B4i9BOgp59w8b0KXuSaIFjXlZ
 c3/BC+qqCr76tPD4sTBXu1+B3PqFbRzQEK+mphGaIMCsaIy6eeNxpcUrlIoK9T+4iQha
 WKbAf6TsrsQ6NePZgaIByyVXlj+7vBjX7megNB8c62XGbFxkqGqwAnVjCCxFZ6aNrHG+
 GbgazW3cz0FuxSa/h74VGk4usV9OC12NgLSTSkGi1IrY9wHT87MNtNgew7jhzJ60xUrL
 6pCg==
X-Gm-Message-State: APjAAAXzFZZwagvgYkCQDuwR5mXozyWryi+/iqYwUN7jLpHNuX1pumEK
 X6TviRzZ7Pj35v5inDk+IAtQuTfQD/kwVAKi9L0=
X-Google-Smtp-Source: APXvYqyOvmJ23ZWAdclliOXwtrLgKRKOlnx7ntGHWUeymvVxt4BIF0v2s6A8/PBlYSukX7GFyJlFqwB+brTCEY1aU3Y=
X-Received: by 2002:a1c:8055:: with SMTP id b82mr903209wmd.176.1574719385674; 
 Mon, 25 Nov 2019 14:03:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <d2d52cac3eff859b8cef0bc755cb6ae4590f27a6.1573179553.git.thehajime@gmail.com>
In-Reply-To: <d2d52cac3eff859b8cef0bc755cb6ae4590f27a6.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:02:54 +0100
Message-ID: <CAFLxGvyQhi+uKoAv34RE8LSgQMLGwDEWgCT4un1K_-mMvz29vA@mail.gmail.com>
Subject: Re: [RFC v2 02/37] arch: add __SYSCALL_DEFINE_ARCH
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_140307_228038_FBD9127F 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, Akira Moroo <retrage01@gmail.com>,
 linux-um@lists.infradead.org, Linux-Arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
>
> This allows the architecture code to process the system call
> definitions. It is used by LKL to create strong typed function
> definitions for system calls.
>
> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> ---
>  include/linux/syscalls.h | 6 ++++++

Same here, core developers need to agree on this.

>  1 file changed, 6 insertions(+)
>
> diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
> index 88145da7d140..77e52fe19923 100644
> --- a/include/linux/syscalls.h
> +++ b/include/linux/syscalls.h
> @@ -203,9 +203,14 @@ static inline int is_syscall_trace_event(struct trace_event_call *tp_event)
>  }
>  #endif
>
> +#ifndef __SYSCALL_DEFINE_ARCH
> +#define __SYSCALL_DEFINE_ARCH(x, sname, ...)
> +#endif
> +
>  #ifndef SYSCALL_DEFINE0
>  #define SYSCALL_DEFINE0(sname)                                 \
>         SYSCALL_METADATA(_##sname, 0);                          \
> +       __SYSCALL_DEFINE_ARCH(0, _##sname);                     \
>         asmlinkage long sys_##sname(void);                      \
>         ALLOW_ERROR_INJECTION(sys_##sname, ERRNO);              \
>         asmlinkage long sys_##sname(void)
> @@ -222,6 +227,7 @@ static inline int is_syscall_trace_event(struct trace_event_call *tp_event)
>
>  #define SYSCALL_DEFINEx(x, sname, ...)                         \
>         SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
> +       __SYSCALL_DEFINE_ARCH(x, sname, __VA_ARGS__)            \
>         __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
>
>  #define __PROTECT(...) asmlinkage_protect(__VA_ARGS__)
> --
> 2.20.1 (Apple Git-117)
>
>
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um



-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
