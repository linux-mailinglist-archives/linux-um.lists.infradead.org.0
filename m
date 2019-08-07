Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6FF850D0
	for <lists+linux-um@lfdr.de>; Wed,  7 Aug 2019 18:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6aiT1ljjzRlS9DGitEx8rOowMviw/jsdsVDvh44iaC4=; b=a+BkYeze2N0Pg3DTvZcREAIro
	bwHNPreGQGfRFK1+eE7BF95/l/Htc4hI8D620nQm+b+bVT3I8bjuBFFk4YAC65T84aup2Kmld2Kx5
	oeZJRcmkWNu/tTiINbM8VlwsFA2HdKr+m2pXhN7KxTSyj3OYdkrQZEVRPEijHsHhwB3bIq8yEvozJ
	CI6SDnyPIvHenNe8mzuh61mP1f/m9OIS8YWmk3D3AXeLFVZaRLapoEsQMa1gwEPLBmOfC/tFfEGOm
	kNpbb5h5vsFevc14OD6Mq0A76FqTgPCCus7pWYSHk3iCWo+pzhbBbSlOA2RI4bCqqjZM9HFRkcKFT
	SOJ5Nia7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOao-0002Ol-0t; Wed, 07 Aug 2019 16:15:14 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOak-0001ny-Ca
 for linux-um@lists.infradead.org; Wed, 07 Aug 2019 16:15:12 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvOaX-0007mz-KZ; Wed, 07 Aug 2019 16:14:57 +0000
Received: from [151.251.253.105] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvOaU-000403-V4; Wed, 07 Aug 2019 17:14:57 +0100
Subject: Re: [RFC] um: virtio: Workaround for using virtio_net with snabb
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731203030.29821-1-johannes@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <394f11ad-88e3-1d1f-8b8e-51fdc14aea8d@cambridgegreys.com>
Date: Wed, 7 Aug 2019 17:14:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731203030.29821-1-johannes@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091510_620750_BF21C795 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Erel Geron <erelx.geron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 31/07/2019 21:30, Johannes Berg wrote:
> From: Erel Geron <erelx.geron@intel.com>
> 
> Workaround a crash of snabb when using virtio_uml.
> 
> Signed-off-by: Erel Geron <erelx.geron@intel.com>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/drivers/virtio_uml.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
> index 30eeb907f42a..9c1308f56b93 100644
> --- a/arch/um/drivers/virtio_uml.c
> +++ b/arch/um/drivers/virtio_uml.c
> @@ -31,6 +31,10 @@
>   #include <os.h>
>   #include "vhost_user.h"
>   
> +/* TODO for the workaround in vhost_user_init */
> +#include <linux/virtio_ids.h>
> +#include <linux/virtio_net.h>
> +
>   /* Workaround due to a conflict between irq_user.h and irqreturn.h */
>   #ifdef IRQ_NONE
>   #undef IRQ_NONE
> @@ -200,6 +204,11 @@ static int vhost_user_init(struct virtio_uml_device *vu_dev)
>   	if (rc)
>   		return rc;
>   
> +	/* TODO workaround for some implementations */
> +	if (vu_dev->vdev.id.device == VIRTIO_ID_NET)
> +		vu_dev->features &= ~BIT_ULL(VIRTIO_NET_F_CTRL_VQ) &
> +				~BIT_ULL(VIRTIO_NET_F_MQ);

If it is needed only for some implementations, then it should be an option.

Have you tried it vs let's say dpdk (IIRC it supports vhost_user as an 
interface).

> +
>   	if (vu_dev->features & BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)) {
>   		rc = vhost_user_get_protocol_features(vu_dev,
>   				&vu_dev->protocol_features);
> 

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
