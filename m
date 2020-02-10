Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28E3157D8C
	for <lists+linux-um@lfdr.de>; Mon, 10 Feb 2020 15:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4IXLk0Q9myUKw0DkYNtwX540CmNgKWyBxphI/Aa5a48=; b=JlCjrddvcJfbV1gyl3Ji0xEcr
	AIEyQWZit93gtphrMFZy6Qq06BUcOWlUH0QafgFBQvnb3/A0KRQJGs9c+9kN6eJZBqRWoxokEYsGh
	DYZCrPsNEUPpvGf77tGKpLajVyvWRM7KxpjRwr0Y4J3A4LKgKPq90U/tqEgXsPUwf4JGdIaQY5FrC
	V8lkL3S5g5EMLty1wfAjk0recLjmuJvxZMPxFaGXh7QD1UBA1U30Cc5WL1gdKmYYnI0Ipiowi6f4b
	iEHaG50vx1yi5YogwMcC73yxA/x6i1lGKaGoCE+9AqhpGWIGIhgGlbBeqFk8Eet/aAGRMaxpzjjoA
	8C++cBllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AF3-0005vw-RH; Mon, 10 Feb 2020 14:40:53 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AF1-0005vC-Nd
 for linux-um@lists.infradead.org; Mon, 10 Feb 2020 14:40:53 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1AEy-0004Yi-HX; Mon, 10 Feb 2020 14:40:48 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1AEw-00017J-5Z; Mon, 10 Feb 2020 14:40:48 +0000
Subject: Re: [PATCH] um: configs: Cleanup CONFIG_IOSCHED_CFQ
To: Krzysztof Kozlowski <krzk@kernel.org>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200130192226.2776-1-krzk@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <6e686a54-2e1c-b690-d465-369e0d712bba@cambridgegreys.com>
Date: Mon, 10 Feb 2020 14:40:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200130192226.2776-1-krzk@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_064051_769083_0CA47D06 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 30/01/2020 19:22, Krzysztof Kozlowski wrote:
> CONFIG_IOSCHED_CFQ is since commit f382fb0bcef4 ("block: remove legacy
> IO schedulers").
> 
> The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
> previously choosing the latter.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>   arch/um/configs/i386_defconfig   | 2 +-
>   arch/um/configs/x86_64_defconfig | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/configs/i386_defconfig b/arch/um/configs/i386_defconfig
> index 73e98bb57bf5..fb51bd206dbe 100644
> --- a/arch/um/configs/i386_defconfig
> +++ b/arch/um/configs/i386_defconfig
> @@ -26,7 +26,7 @@ CONFIG_SLAB=y
>   CONFIG_MODULES=y
>   CONFIG_MODULE_UNLOAD=y
>   # CONFIG_BLK_DEV_BSG is not set
> -CONFIG_IOSCHED_CFQ=m
> +CONFIG_IOSCHED_BFQ=m
>   CONFIG_SSL=y
>   CONFIG_NULL_CHAN=y
>   CONFIG_PORT_CHAN=y
> diff --git a/arch/um/configs/x86_64_defconfig b/arch/um/configs/x86_64_defconfig
> index 3281d7600225..477b87317424 100644
> --- a/arch/um/configs/x86_64_defconfig
> +++ b/arch/um/configs/x86_64_defconfig
> @@ -24,7 +24,7 @@ CONFIG_SLAB=y
>   CONFIG_MODULES=y
>   CONFIG_MODULE_UNLOAD=y
>   # CONFIG_BLK_DEV_BSG is not set
> -CONFIG_IOSCHED_CFQ=m
> +CONFIG_IOSCHED_BFQ=m
>   CONFIG_SSL=y
>   CONFIG_NULL_CHAN=y
>   CONFIG_PORT_CHAN=y
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
