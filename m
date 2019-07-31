Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408227D008
	for <lists+linux-um@lfdr.de>; Wed, 31 Jul 2019 23:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jeTe5mNLMCyBohucnGnScvB1guLw8atb3moBcj1LRYg=; b=I5nn06d5q5WsCoa9o3O7XqDY9
	Fc6TXpdpvityCBb6hr8h0meDpI5GCB5pDxE0wnh3NTIKi432OfRhelg9ZYEuG0LYSVZrDV0tbfDqM
	Yob25mT1mqrfTBuLg8zCjwOfltaKGPq/JZeF4HK+yvwvMMVC5RWAGCx+aV1uM7hQtVlaHxPCKoHjM
	vOp5aEcIyYqzfGzfaZwgUL6IrEkN0SiYFAmOdN5tjUfkRf2Ao/Tye/KM2hp3+tNFMzjkGcmsRhyJW
	Mr/4HQ9kGqqVmMIUm0lu++DwHlq58Af2pxoDHmZ+IaNeSrRhstf6tXZ0rHTf4AwVNI+uxpuDaseRd
	7BzS18MbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsw8g-0001id-R4; Wed, 31 Jul 2019 21:28:02 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsw8d-0001hH-Qt
 for linux-um@lists.infradead.org; Wed, 31 Jul 2019 21:28:01 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hsvUg-0001TN-5R; Wed, 31 Jul 2019 20:46:42 +0000
Received: from m193-12-128-188.cust.tele2.hr ([193.12.128.188]
 helo=[192.168.8.108]) by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hsvUd-00008G-C4; Wed, 31 Jul 2019 21:46:41 +0100
Subject: Re: [PATCH 1/2] um: irq: Fix LAST_IRQ usage
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731202942.29630-1-johannes@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <438c824c-a5bb-b639-4f17-abb827d03b37@cambridgegreys.com>
Date: Wed, 31 Jul 2019 21:46:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731202942.29630-1-johannes@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_142800_000794_F4262342 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 31/07/2019 21:29, Johannes Berg wrote:
> From: Erel Geron <erelx.geron@intel.com>
> 
> LAST_IRQ was used incorrectly in init_IRQ.
> Fix this.
> 
> Signed-off-by: Erel Geron <erelx.geron@intel.com>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
> Anton submitted a very similar patch, but didn't update init_IRQ(),
> which seems necessary.
> ---
>   arch/um/include/asm/irq.h | 2 +-
>   arch/um/kernel/irq.c      | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/include/asm/irq.h b/arch/um/include/asm/irq.h
> index 49ed3e35b35a..ce7a78c3bcf2 100644
> --- a/arch/um/include/asm/irq.h
> +++ b/arch/um/include/asm/irq.h
> @@ -23,7 +23,7 @@
>   #define VECTOR_BASE_IRQ		15
>   #define VECTOR_IRQ_SPACE	8
>   
> -#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ)
> +#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ - 1)
>   
>   #else
>   
> diff --git a/arch/um/kernel/irq.c b/arch/um/kernel/irq.c
> index efde1f16c603..402e59bdb65b 100644
> --- a/arch/um/kernel/irq.c
> +++ b/arch/um/kernel/irq.c
> @@ -480,7 +480,7 @@ void __init init_IRQ(void)
>   	irq_set_chip_and_handler(TIMER_IRQ, &SIGVTALRM_irq_type, handle_edge_irq);
>   
>   
> -	for (i = 1; i < LAST_IRQ; i++)
> +	for (i = 1; i <= LAST_IRQ; i++)
>   		irq_set_chip_and_handler(i, &normal_irq_type, handle_edge_irq);
>   	/* Initialize EPOLL Loop */
>   	os_setup_epoll();
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
