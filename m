Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D773C11D730
	for <lists+linux-um@lfdr.de>; Thu, 12 Dec 2019 20:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71Zrq4qqDUN/H8ZGINjvi73fwbbOEP59cKL8udoH0vk=; b=Fdgs/Lft0IL7Yn
	z98OdqjbHArPBVumi5ob3NycXg2wzGs4KYviVsMQ1g/og5g6PqCmQuVoJ5wjLfMLCzIYi9tY7hX9u
	qiIHsElbRVcSrq53f3zNtpINgZHE/NhbXMSXLRrhZyylJQwCb7+fdfBw7AusCWUVicTdJfsBYg/O6
	ahqAjWJ3k9gXMoHEX31DIR+lz141VLmU8Rw1/mqU75v9d+oUl8PC9Su2kCFvG/ENBXnKTxB1NB9wI
	gFBPfMJ/CI77X7JL1DfGFG7KY1j8GOhi/qvnlAgCNBMMI6ZBrYyS5+dkPurI7WINVD0PJmMrlf7j5
	hDLav9p3RbqI27QiBJjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUGV-0003S8-Dr; Thu, 12 Dec 2019 19:36:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUGS-0003Pv-4G
 for linux-um@lists.infradead.org; Thu, 12 Dec 2019 19:36:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so4056248wro.2
 for <linux-um@lists.infradead.org>; Thu, 12 Dec 2019 11:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=26CQo4we7KtCfvTKv993lhoi2F1fM7dxkL37tJToeiU=;
 b=0bWiTGIV4TBC4HQqKJut7ledSmNzlbafeuunBgzcIJHkJax0jtZ0jMLzGHUvMlvUuL
 wBaw5vXg3akzsq37fDpW0Q77N7e5aXa/S06o7cgYA7NgLr0o69KowlOxqiuu19P8M24q
 /Bg6rqy7WTOzij1WpJmt3SfL44lA5iGWSoYTl66uT3vqQrhKxRcmNhCen02yyDuy5XyE
 Rk3rRk22Fpc5+Xowl9Ui0okoHiTUhTzE0iEYZvYdCHBVlXEumzAdIY+w4iT13p2AFJGP
 /Zi5u3XtQbysQFaHFQQYTaPgLmcFyDyiTa8KzJsxJc2zxI3dBjQlIcRzYDX5UHHITBRQ
 mIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=26CQo4we7KtCfvTKv993lhoi2F1fM7dxkL37tJToeiU=;
 b=fW/lJS8dV0n0qzwcVcuwxt1lEXLkj3HjuqFyH2dDnbKeRI/LpMGBiSTg2L2spMPrSd
 jjRLil1ONe8SUU3Z2wwOSBrhlnsT9BQA5OK7jiK+AYxH6TC/NQGcWI2ruZdmhVRmzmR0
 0r0ulT9ynEoE9/eJBjvfnQlk9xbHKDOrv0U039Am3rnq9MQINQR96Kozh3AK4ZNbm3zZ
 hajFbwwHlhIjzh5vfcb8UM4iT9O3BTh4aJvBW/7OrZ4kXenzFqth9+ffmZ3NOXY2y2Vg
 W9hGzTeqR393YxtR2sysK97pKKRk39t/LhkeAuGbS4YJI717FO00Q6mFwoIYSnDZ4Ic1
 64Iw==
X-Gm-Message-State: APjAAAX5/Inb+73gJ2Q6KUrnpiQ61vB9cWCD+qUW1Y646dfB8+OWbKJR
 0YvcMyzG15UVLy7T5ErCtMieNQ==
X-Google-Smtp-Source: APXvYqwQhaWhC3pY0IFwMztpCBjDmmW+hlZfOXqucMqAQkOxn9NE6sIr+fEMQaQAqzfUrg84KXG7Dw==
X-Received: by 2002:a5d:6441:: with SMTP id d1mr8161069wrw.93.1576179402329;
 Thu, 12 Dec 2019 11:36:42 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id k19sm6820349wmi.42.2019.12.12.11.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:36:41 -0800 (PST)
Date: Thu, 12 Dec 2019 20:36:39 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 5/7] crypto: amlogic: add unspecified HAS_IOMEM
 dependency
Message-ID: <20191212193639.GA25451@Red>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-6-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211192742.95699-6-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_113644_162546_A06D2372 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, davidgow@google.com,
 linux-amlogic@lists.infradead.org, "David S. Miller" <davem@davemloft.net>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:27:40AM -0800, Brendan Higgins wrote:
> Currently CONFIG_CRYPTO_DEV_AMLOGIC_GXL=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> ld: drivers/crypto/amlogic/amlogic-gxl-core.o: in function `meson_crypto_probe':
> drivers/crypto/amlogic/amlogic-gxl-core.c:240: undefined reference to `devm_platform_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  drivers/crypto/amlogic/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/crypto/amlogic/Kconfig b/drivers/crypto/amlogic/Kconfig
> index b90850d18965f..cf95476026708 100644
> --- a/drivers/crypto/amlogic/Kconfig
> +++ b/drivers/crypto/amlogic/Kconfig
> @@ -1,5 +1,6 @@
>  config CRYPTO_DEV_AMLOGIC_GXL
>  	tristate "Support for amlogic cryptographic offloader"
> +	depends on HAS_IOMEM
>  	default y if ARCH_MESON
>  	select CRYPTO_SKCIPHER
>  	select CRYPTO_ENGINE

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
