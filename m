Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DEA166741
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 20:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KwkAotDa74cZOtW1DRIGMfMizkn5zC/5y0YSwQbPxkg=; b=dEjtTaV3u84JvhriGv4C1a92a
	GBe4ZynlPLgeOp3qTzT8W9s+Zq3hnBG2H+3mXLK/Uw+VMz5J3C4xHgf6ohQHAu6NXkOVZUoAFFpWA
	OZY4TnIE2Otd6mVWYU5BWqn9oPmvcuLcdjyVLmk8uq1bOEynY/M5bzWqZLQ/mjLKAgAI1zlrHdMsd
	sOJ14kPH0x/rNTZKOiYYfWPxaw5WvLey7+/M7vHvOdACszky1TdC7Fdu0Fonhz89+LLEZKYOXxXs+
	K8N2zXItERZfAZUHIkFOUK56zSZX8r/yq1YxB6qFx+uWLPiNVKDjosdHRRh3Yf7GJJa6YmAKtg3eo
	ZjlWJYYXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rbu-00014q-BH; Thu, 20 Feb 2020 19:35:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rbr-00014R-Bc
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 19:35:44 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rbq-0007PD-5T; Thu, 20 Feb 2020 19:35:42 +0000
Received: from [151.251.251.9] (helo=[192.168.14.3])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rbn-0003mY-JL; Thu, 20 Feb 2020 19:35:42 +0000
Subject: Re: [PATCH 1/2] um: Don't overwrite ethtool driver version
To: Leon Romanovsky <leon@kernel.org>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>
References: <20200220084014.238768-1-leon@kernel.org>
 <20200220084014.238768-2-leon@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <3857ae89-3cfc-a409-e0d6-ce2dab008d9b@cambridgegreys.com>
Date: Thu, 20 Feb 2020 19:35:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220084014.238768-2-leon@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_113543_396947_991CC2A8 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 20/02/2020 08:40, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@mellanox.com>
> 
> 
> In-tree drivers don't need to manage internal version because
> they are aligned to the global Linux kernel version, which is
> reported by default with "ethtool -i".
> 
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>   arch/um/drivers/net_kern.c    | 1 -
>   arch/um/drivers/vector_kern.c | 2 --
>   2 files changed, 3 deletions(-)
> 
> diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
> index 35ebeebfc1a8..af07733c2dc8 100644
> --- a/arch/um/drivers/net_kern.c
> +++ b/arch/um/drivers/net_kern.c
> @@ -266,7 +266,6 @@ static void uml_net_get_drvinfo(struct net_device *dev,
>   				struct ethtool_drvinfo *info)
>   {
>   	strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> -	strlcpy(info->version, "42", sizeof(info->version));
>   }
> 
>   static const struct ethtool_ops uml_net_ethtool_ops = {
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 0ff86391f77d..9693dfca7651 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -46,7 +46,6 @@
> 
> 
>   #define DRIVER_NAME "uml-vector"
> -#define DRIVER_VERSION "01"
>   struct vector_cmd_line_arg {
>   	struct list_head list;
>   	int unit;
> @@ -1378,7 +1377,6 @@ static void vector_net_get_drvinfo(struct net_device *dev,
>   				struct ethtool_drvinfo *info)
>   {
>   	strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> -	strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
>   }
> 
>   static int vector_net_load_bpf_flash(struct net_device *dev,
> --
> 2.24.1
> 
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
