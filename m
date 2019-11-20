Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84EE103DC1
	for <lists+linux-um@lfdr.de>; Wed, 20 Nov 2019 15:51:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dkDDH0TjZIWlzYwglzV5G92/N+a9FOoS+0K4PV19ydE=; b=c0vgI8a+B4JilLRpsLel1Ak2p
	oIwiAfdK+w74yi2MGLamweIg6L2EUdxMkQj3hSYxircak5wQkfhlKUVblyUs3BPQu9SDzXtoYWoQg
	qmIOjQKDqkRzqESWsl9pq3S6A6ldD4wOlC7snewaU/6XdTr8Wnf318/rQ6MDus9vEk6ZdLcC9Mkyu
	GoP1novebP59qEKtHd9jif++CPKgStCabO9U7JZZg/UCywCNZiRTseRWC0Aj0TMUcz5E0cKABZDL5
	DtHwJ20qc78YYg+OaKVuO6XoW5dxHJ/23Ns8iHw25Xx95E+qq9w9FmagLoNyDEWWtJTyPF+72RJm+
	6hwU/ZWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRKD-0002NW-Jl; Wed, 20 Nov 2019 14:51:21 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRKB-0002MV-2S
 for linux-um@lists.infradead.org; Wed, 20 Nov 2019 14:51:20 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iXQtc-0001X2-6T; Wed, 20 Nov 2019 14:23:52 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iXQtZ-00056K-Uh; Wed, 20 Nov 2019 14:23:51 +0000
Subject: Re: [PATCH] um: Fix Kconfig indentation
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
References: <20191120133654.11838-1-krzk@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <0c2c2d49-563d-d7bd-bb01-26156ef8f398@cambridgegreys.com>
Date: Wed, 20 Nov 2019 14:23:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120133654.11838-1-krzk@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_065119_112425_8E48D987 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 20/11/2019 13:36, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>   arch/um/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index fec6b4ca2b6e..2a6d04fcb3e9 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -153,7 +153,7 @@ config KERNEL_STACK_ORDER
>   	  It is possible to reduce the stack to 1 for 64BIT and 0 for 32BIT on
>   	  older (pre-2017) CPUs. It is not recommended on newer CPUs due to the
>   	  increase in the size of the state which needs to be saved when handling
> -          signals.
> +	  signals.
>   
>   config MMAPPER
>   	tristate "iomem emulation driver"
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
