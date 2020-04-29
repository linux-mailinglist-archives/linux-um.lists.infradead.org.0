Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840F11BE74D
	for <lists+linux-um@lfdr.de>; Wed, 29 Apr 2020 21:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNrQ2as/Htr/dJQ8S9uo/PaO/wYkst2LjjxsgH2t+ik=; b=XmTeKJokFKdXnW
	FzcZU5UcHahaI2Bek8imTis8ScmA9DBzx8VvWrIGjWem8SkqLsjtrDkoS2LUWaJ30qi5R4GUYxOq6
	w8JuA1BbHJoRelvDPTSXvnCTOP3CCK/LC/r0n7kfj3SNuNKHqjg1dJw2Dyd3pord3XHbq7X+0fSLA
	uahkI56H/4+2RwW0UyBWxY5+B9TtciQxiE4s47ympcSsg7WRM94SKViH+c/E/XJTlYC48413FyhFv
	lw9to7NfxGN5Qd9VU/bKdU7r8eXeIVD2Se75eaSpEhiXUFmKNGq9fHPHu0vy/feK8x50UHgB6PdP9
	2liTZ1T4HX8rPNIeYbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsKq-0008Sx-SK; Wed, 29 Apr 2020 19:25:32 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsKo-0008RK-EE
 for linux-um@lists.infradead.org; Wed, 29 Apr 2020 19:25:31 +0000
Received: by mail-qk1-x744.google.com with SMTP id t3so3285744qkg.1
 for <linux-um@lists.infradead.org>; Wed, 29 Apr 2020 12:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XQdJRMKAJtLtFtzwmDsuMFzwcgxeB43IJaXUhpFtUg8=;
 b=GWXztpfxEN07k/amob2e2wXHrJXaUPkmw7niomSAwD9yH9PN7IuoU6kLU+nShAvGVQ
 IeMbBZFcUmnQWRZvrWcvJhuJHKwp+6k/oVsGVd9AwRtzy5V/e+FlmEnZTr6omhs+t43Z
 OTIlsb1i+GRrfmpN9jeptGqxbQ9kjtZBsP9uEkL9Auag2aUxQlsvpTAfvXQokQ8lTGYR
 AYoWMlXG5vvhoguIcLpipk94TcZ2oJU+nlekWXhnJeLvTpAh9dY/i35I/1a7rx9DbyR2
 PkHzkeYhsXMsZLRpVhJWS6Jjsva2ZdAGwpy4yGcyCHFkjoM1zCSscyctc7EK4Yg3ttNd
 unzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XQdJRMKAJtLtFtzwmDsuMFzwcgxeB43IJaXUhpFtUg8=;
 b=hVmeblP9MPAK+8qDtINz2fTqVtyQoJRgjDC9JQg15ZIrYt7uk0c2V+yw1HdArWCMMz
 GPUszdwVv3BNM7A+SA7r9iETwPLVZHo3cHSebgS5ydc+7ycOrmITQGnQ99ZBedGNK9TH
 KpZatsJMsHytn1jQAHaHaQzTgQenH6q3aShyRB6IsNZx6dTybhpcIKV/0hoF605WXhNE
 axpuyyCSs/jzzXuOE80C2BC4LEsG08bn4TmhKU+dAFWRQJNyuC0XLhjjuR8b2mZtsqGR
 W0kpsXt64nss2hlaXyL/iAuhjZhHV/CqS6GAUYejgQYGL+i5d9UqxZFIXB3Te6oA46oa
 bFtw==
X-Gm-Message-State: AGi0PuY9whSp4DX9L52S5BkopGA4YqQa5k4zBj1Dl36u52pjdUgt7k+U
 3ZOhermUbt+0e6ziU2mfAsViiB6JcYR/EI8x/yqFAA==
X-Google-Smtp-Source: APiQypIfxLIg/yZqvk5mao7UU7Gx/e+um9DRstsffI0/8Q7MHO/3hO45vl2yCH69kGla+HUhCFMwD5zzcuWltKmMqvY=
X-Received: by 2002:a37:8346:: with SMTP id f67mr31584825qkd.283.1588188329337; 
 Wed, 29 Apr 2020 12:25:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200425081842.4365-1-ignat@cloudflare.com>
In-Reply-To: <20200425081842.4365-1-ignat@cloudflare.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 29 Apr 2020 21:25:18 +0200
Message-ID: <CAFLxGvyZJxoTtHSmAmZVR36GT6fRx_XhOrY=mmpsjZvpRR9s9A@mail.gmail.com>
Subject: Re: [PATCH] um: Fix typo in vector driver transport option definition
To: Ignat Korchagin <ignat@cloudflare.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_122530_492529_F2F41EEA 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
Cc: Trivial patch monkey <trivial@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 10:19 AM Ignat Korchagin <ignat@cloudflare.com> wrote:
>
> No big problem as "raw" and "gre" have the same length, but could go wrong if
> they don't in the future.
>
> Signed-off-by: Ignat Korchagin <ignat@cloudflare.com>
> ---
>  arch/um/drivers/vector_user.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
> index 91f35b266aba..d29d5fdd98fa 100644
> --- a/arch/um/drivers/vector_user.h
> +++ b/arch/um/drivers/vector_user.h
> @@ -17,7 +17,7 @@
>  #define TRANS_TAP_LEN strlen(TRANS_TAP)
>
>  #define TRANS_GRE "gre"
> -#define TRANS_GRE_LEN strlen(TRANS_RAW)
> +#define TRANS_GRE_LEN strlen(TRANS_GRE)
>
>  #define TRANS_L2TPV3 "l2tpv3"
>  #define TRANS_L2TPV3_LEN strlen(TRANS_L2TPV3)
> --

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
