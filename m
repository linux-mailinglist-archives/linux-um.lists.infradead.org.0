Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED523CFEC4
	for <lists+linux-um@lfdr.de>; Tue,  8 Oct 2019 18:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IKLEPJsNrgcYkHJZR8CMeSDP94PKfiMHH8YtctxbNyk=; b=QGmzvHTPzhn+hnfQ20rrVLQEB
	enS6I3hCwQ3L/nerNi/QaMu3mdYqlFtIeB+A4Qu9HvIooVmbqBPo8nDlD6Bgsw78RAoZ3sp+0aH4j
	pSB2g4QoFI5aEqq0rVL7SZ34E9pu0eNEbRqpEvcKyMRFei1nHaXE+dO75t6TvysRrWkjY/1YtqiHx
	ZKTijc4F97Q2yBykToe6s/fkuCPkWr7EwJcfMMXudKdAC/BNhHOXNAjzbJlG/gh70qcvpdY3UfaYM
	1XkSsKI4FQrCHYK8dO9decpArl+SDrnY5CNOMaTVfEOMXO1gD/tLX2n3WXEVE4bxAUTa4c6ZTU8Zg
	P91kU9Tew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsAL-0002rM-Hq; Tue, 08 Oct 2019 16:16:49 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsAI-0002qX-3q
 for linux-um@lists.infradead.org; Tue, 08 Oct 2019 16:16:47 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iHsAC-0004GC-01; Tue, 08 Oct 2019 16:16:40 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iHsA9-0005rK-Pv; Tue, 08 Oct 2019 17:16:39 +0100
Subject: Re: [PATCH] um: virtio_uml: disallow modular build
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1570549401-Ia2c524a2c48a33cecd9d956898cebe358a37563d@changeid>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <63d60527-1bc0-cb76-75e2-3d051f583c1b@kot-begemot.co.uk>
Date: Tue, 8 Oct 2019 17:16:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570549401-Ia2c524a2c48a33cecd9d956898cebe358a37563d@changeid>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_091646_154448_C90CF751 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Johannes Berg <johannes.berg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 08/10/2019 16:43, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> This driver *can* be a module, but then its parameters (socket path)
> are untrusted data from inside the VM, and that isn't allowed. Allow
> the code to only be built-in to avoid that.
> 
> Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/drivers/Kconfig      | 2 +-
>   arch/um/drivers/virtio_uml.c | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
> index fea5a0d522dc..388096fb45a2 100644
> --- a/arch/um/drivers/Kconfig
> +++ b/arch/um/drivers/Kconfig
> @@ -337,7 +337,7 @@ config UML_NET_SLIRP
>   endmenu
>   
>   config VIRTIO_UML
> -	tristate "UML driver for virtio devices"
> +	bool "UML driver for virtio devices"
>   	select VIRTIO
>   	help
>   	  This driver provides support for virtio based paravirtual device
> diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
> index fc8c52cff5aa..511f595a3c3d 100644
> --- a/arch/um/drivers/virtio_uml.c
> +++ b/arch/um/drivers/virtio_uml.c
> @@ -4,12 +4,12 @@
>    *
>    * Copyright(c) 2019 Intel Corporation
>    *
> - * This module allows virtio devices to be used over a vhost-user socket.
> + * This driver allows virtio devices to be used over a vhost-user socket.
>    *
>    * Guest devices can be instantiated by kernel module or command line
>    * parameters. One device will be created for each parameter. Syntax:
>    *
> - *		[virtio_uml.]device=<socket>:<virtio_id>[:<platform_id>]
> + *		virtio_uml.device=<socket>:<virtio_id>[:<platform_id>]
>    * where:
>    *		<socket>	:= vhost-user socket path to connect
>    *		<virtio_id>	:= virtio device id (as in virtio_ids.h)
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
