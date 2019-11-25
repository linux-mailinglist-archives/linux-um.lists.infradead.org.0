Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8118109555
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsY6BBu12wssIowtWM2TJKlPUqCkL8/dGctMnQfDNfs=; b=sHneqX6VRuqE5q
	3GI2VGtEFKYt5v2oxqe4VFXZASmqlPtol7ZAX5pdMk+VdjUfve/ik/xRJwylj2fbl3e5UYwbSfDgI
	wre8Ovf9Uk3jkKvs9JV3EGdjgRp7YNajXp5pm1LRnlLCu3aTxkp13spScPtSn9k/JYnvV8Nt4AvdK
	AkBYRhKQI+Efxjd/w/EJvD0dOu7aBHTE0G3tZ9MSdRw2CLY4OWq4AVyQUkVWtCkHfUsC2Wm2w9XO4
	1b4q1fdxcd1a68p1yRyMOAKBZzGpCJ0HgoCv4e5cO2gWr5wNtplP62L6XTQ6l+ZGIRwJvYwKDVqA0
	M9GcaSv3xF1WKGTGpjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMR1-0007wE-2F; Mon, 25 Nov 2019 22:02:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMQy-0007vj-OO
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:02:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so1013130wmh.0
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Siahvh+RN3JBEPcY4HC2+CrgvWiJj3EvQGXrV37Qh98=;
 b=OII9ZI9714IwrXeLwLBmD9Fm3xINuYGIwm/zdiM4hVqMNOvJzvHBrTOaO9oCxqJWNl
 NnRc2IwxqqIW3JOqV2GPtQcZKWySxkxABl/ANwwFkGV/gktuObcZpym2Xxtc3DuGgl6b
 inLGqqN0uuTi/p+yoQ2ZjMKn18X/zXpRYWovB3tyND7hMUyuDHdwuli6tq153X5qdjT4
 /Qz+MQg7BYndlixqPLXdr0vVJRHLa6FjHCP8ErNripInhAVwwcgugrkYSszGIbtRZ3pI
 bfeeEPo47PVepMQFqCwWVx3lgT/YclmgwPWPtAoUPVfz8qaGs3xCybFA04320iSZ9au6
 QElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Siahvh+RN3JBEPcY4HC2+CrgvWiJj3EvQGXrV37Qh98=;
 b=PATEkcyTBdfVHdrj87LBhIpeLSq4x1SHd8NMwAy2g3zO5k1NicxcPpCthujharvaLH
 Jm6qTwIxsC6KKd0YQD11in+UdoiExvAR5mqAIHWieldTwATL1XcYgEWyPs29aRzfLKZO
 EEU8MEJj7y45ECu4niCghQaNqbhpUFka91nO8rj+nFBaeTRw5j0pR12Opy3bI0LTbcwf
 SLMkJXGMv1GuGl2sHZR21QPNF2yBDnWybASbGTU3HPUG8GW4cbM8qCN5PXfGKCWl/dR/
 gJChuxDtQahB2G9hC2J22vx/V12uN9QokPoAyHaRiM8Si2EvSHj1RSWaCeu/9rxe8k0r
 afZw==
X-Gm-Message-State: APjAAAVlatEzlS2VKQHoD1lrv62v9xA4evB04g+9F3G7UEzhrr7052ia
 fxyWQYKS4S/CMZU8D/fWUHAA6ND9RkyXw7023yaNBbgjD1g=
X-Google-Smtp-Source: APXvYqz9JiXDbAZQRCTwuOtVpnuyn/5fzZTQ/dslF6XeKtqpYlrUBUQQCjcIfdaQytFhopC9JO8xKbddtaKLAcsr7e0=
X-Received: by 2002:a1c:3c86:: with SMTP id j128mr849466wma.137.1574719335520; 
 Mon, 25 Nov 2019 14:02:15 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <3ed3c306fc51b0073fcf3a222f7314fcaf50ccf4.1573179553.git.thehajime@gmail.com>
In-Reply-To: <3ed3c306fc51b0073fcf3a222f7314fcaf50ccf4.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:02:04 +0100
Message-ID: <CAFLxGvzXv7pHaY8i_RBs2BL5qHLMQJO97MWGF5cnh34kmeGZJg@mail.gmail.com>
Subject: Re: [RFC v2 01/37] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_140216_794117_D2E4D711 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
> are not compiled due to type conflict of atomic64_t defined in
> linux/type.h.
>
> This commit fixes the issue and allow using generic atomic64 ops.

Hmm, why is this specific to LKL?
This need a review from core developers.

> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> ---
>  include/asm-generic/atomic64.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/asm-generic/atomic64.h b/include/asm-generic/atomic64.h
> index 370f01d4450f..9b15847baae5 100644
> --- a/include/asm-generic/atomic64.h
> +++ b/include/asm-generic/atomic64.h
> @@ -9,9 +9,11 @@
>  #define _ASM_GENERIC_ATOMIC64_H
>  #include <linux/types.h>
>
> +#ifndef CONFIG_64BIT
>  typedef struct {
>         s64 counter;
>  } atomic64_t;
> +#endif
>
>  #define ATOMIC64_INIT(i)       { (i) }
>
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
